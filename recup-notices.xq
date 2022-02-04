<html><head><title>Index des personnes</title></head><body><index type="personnes">{
  (: On fait la liste de chaque identifiant de notices bibliographiques différent dans le corpus.:)
  for $persId in distinct-values(db:open("base-version")//*:sourceDesc//*:listPerson//*:person/@xml:id)
  let $db := db:open("base-version")
  let $refdId := concat('#', $persId)
  
  (: On va chercher la première notice de la personne courante et on extrait ses éventuelles dates. :)
  let $person := subsequence($db//*:sourceDesc//*:listPerson//*:person[@xml:id=$persId],1,1)
  let $notice := if($person/@sameAs) then(data($person/@sameAs)) else('')
  let $birth := if($person//*:birth) then($person//*:birth/text()) else('')
  let $death := if($person//*:death) then($person//*:death/text()) else('')
  let $dates := if($birth != '') then(concat($birth, ' — ', $death)) else('')
  
  (: On va chercher les différentes formes possibles du nom enregistrées (français/anglais et/ou latin) individuellement.:)
  let $persFRENGname := if($person/*:persName[@xml:lang='fr']) then(string-join($person/*:persName[@xml:lang='fr']//text(),", ")) else(
    if($person/*:persName[@xml:lang='eng']) then(string-join($person/*:persName[@xml:lang='eng']//text(),", ")) else(''))
  let $persLATname := if($person/*:persName[@xml:lang='la']) then(string-join($person/*:persName[@xml:lang='la']//text(),", ")) else('')
  
  (: On combine les noms français/anglais et latin sans espace pour trier alphabétiquement.:)
  let $fullName := concat(replace(replace($persFRENGname, "\s", ""),"é","e"), replace(replace($persLATname, "\s", ""),"é","e"))
  let $initial := upper-case(substring($fullName,1,1))
  order by lower-case($fullName)
  
  (: On met en forme, selon quel(s) nom(s) est/sont présent(s). Puis on appelle la fonction
  local:get_docs_with_mentions() pour commencer la liste des mentions de la personne courante
  dans le corpus. :)
  return <details type="{$initial}" id="{$persId}"><summary class="hover"><span type="freng">{if($persFRENGname!='') then($persFRENGname) else()}</span>{if($dates != '' and $persFRENGname != '') then(concat(" [",$dates,"] ")) else()}{if ($persFRENGname!='' and $persLATname!='') then(', (')}{if ($persLATname!='') then (<span type="lat">{$persLATname}</span>) else()}{if ($persFRENGname!='' and $persLATname!='') then(')') else()}{if($persLATname !='' and $persFRENGname = '' and $dates!='') then(concat(' [',$dates,"] ")) else()}</summary><hr/>{if($notice != '') then(<a target="_blank" rel="noopener noreferrer" href="{$notice}">Notice d'autorité</a>) else()}</details>
}</index></body></html>