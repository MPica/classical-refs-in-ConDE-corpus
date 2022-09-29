### Final data visualization:

#### The proportion of "classical" references in each work
Source : [Summary table](output/dataviz_2022-09-28/tableau-recap.csv)
Parameters on Raw Graphs : Multi-set bar chart. Sets : column 'Témoin'. Size : columns 'Total de citations', 'Citations de "classiques"'
![total of references vs classics](dataviz/2022-09-28/total-vs-classics.png)

#### How rich each work is in "classical" references, given its number of tokens
Source : [Summary table](output/dataviz_2022-09-28/tableau-recap.csv)
Parameters on Raw Graphs : Bar chart. Sets : column 'Témoin'. Size : column 'Rapport tokens/citations classiques'.
![work size vs number of classical references](dataviz/2022-09-28/temoins-par-rapport_tokens-classiques.png)

#### How authors are distributed on a timeline
Source : ['Authors for Gantt chart' table](output/2022-09-27_authors_for_gantt_chart.csv)
Parameters on Raw Graphs : Gantt chart. Start date : column 'start'. End date : column 'finish'. Groups : column 'author'. Color : column 'information'.
![authors by life dates timeline](dataviz/2022-09-27/authors-by-lifedates.png)

#### How much is each author mentionned across the corpus
Source : ['Authors' table](output/dataviz_20220924_2057/authors_20220924_2057.csv)
Parameters on Raw Graphs : Bar chart. Sets: column 'Auteur'. Size: column 'size'. Color: column 'Naissance (min)', sequential, middle = 0. Bar orientation: horizontally. Order bars by: size (descending).
![authors by most cited and colored by birth date](dataviz/2022-09-24/authors-by-most-cited_and_birth.png)

#### How much is each author mentionned, by work
Source : ['By custom author' table](dataviz/dataviz_20220924_2057/by_custAuthor_20220924_2057.csv)
Parameters on Raw Graphs : Alluvial diagram. Steps: 'Auteur', 'Témoin'. Sort nodes by size (descending). Colors defined manually.
![alluvial diagram by most mentions](dataviz/2022-09-28/alluvial-diagram_by-most-mentions.png)

#### How much each work mobilizes time periods
Source : ['No quote' table](dataviz/dataviz_20220924_2057/no_quote_20220924_2057.csv)
Parameters on Raw Graphs : Line chart. X Axis : 'Naissance (min)'. Y Axis : 'size' (sum). Lines : 'Témoin'. Color : 'Témoin' (CSV unique).
![work by time period](dataviz/2022-09-27/temoin_par_epoque.png)

#### How many times "classical" authors are mentionned in each main theme
Source : ['Themes' table](output/2022-09-27_no_quote.csv)
Parameters on Raw Graphs : Bar chart. Bars : 'Thème'. Size : 'size' (sum). Color : 'Thème' (CSV unique).
![the number of classical references by theme](dataviz/2022-09-27/themes.png)
Parameters on Raw Graphs : same as previous, adding : Series : 'Témoin'.
![the number of classical references by theme, but by author](dataviz/2022-09-27/themes-by-author.png)

#### How much each work mentions "classical" authors, in each main theme
Source : ['Authors by theme 3' table](dataviz/2022-09-27/authors-by-theme-3.png)
Parameters on Raw Graphs :  Bar chart. Bars : 'Auteur'. Size : 'size' (sum). Color : 'Auteur' (CSV unique). Series : 'Thème'.
![the number of classical references by work for each theme](dataviz/2022-09-27/authors-by-theme-3.png)
Parameters on Raw Graphs : Tree map. Hierarchy : 'Thème', 'Auteur'. Size : 'size' (sum). Color : 'Thème'.
![the importance of authors for each theme](dataviz/2022-09-27/authors-by-theme.png)

#### The authors frequently mentionned in the same section of text
Source : ['Couples' table](output/dataviz_202209-28/couples-resume.csv)
Parameters on Raw Graphs : Alluvial diagram. Steps : 'couple', 'theme'. Size : 'cooccurrences'. Colors set manually.
![alluvial diagram by couple of authors](dataviz/2022-09-28/couples.png)