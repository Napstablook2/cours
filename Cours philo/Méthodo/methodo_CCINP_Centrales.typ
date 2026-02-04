#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*Méthode de l'épreuve écrite\
  CCINP / Centrales*
])


#outline()
#set heading(numbering: "1.")
  #show heading: set block(above: 1.4em, below: 1em)
  #show heading.where(level: 2): it => [
  	#set text(font: "IBM Plex Serif")
  	//#pagebreak()
  	#if type(it.numbering) != none [
  		#counter(heading).display(it.numbering)
  	]
  	#it.body
  ]
  #show heading.where(level: 1): it => [
  	#set text(font: "IBM Plex Serif")
  	//#pagebreak()
  	#if it.numbering != none [
  		#counter(heading).display(it.numbering)
  	]
  	#it.body
  ]
#set heading(numbering: "I.1.a")
#set par(justify: true)

= Présentation de l'épreuve

Il s'agit d'une épreuve de 4 heures comportant deux parties : Résumé et Dissertation

À Centrales, le texte fait 1200 mots à contracter en 200 $plus.minus$ 10%\
À CCINP, le texte fait 800 mots à contracter en 100 $plus.minus$ 10%

Les deux parties sont présentées comme complémentaire et sont chacune notées sur 10 points. Ni l'une ni l'autre ne doivent êtres négligées, auquel cas la copie sera sanctionné

#attention([Une copie bien notée est une copie claire, lisible et propre])

Faire une copie complète, c'est à dire avec les deux épreuves et toutes les étapes de la dissertation.

Il n'y a pas d' barème officiel pour l'orthographe mais chaque prof a une barème propre à lui. De plus il faut surtout penser à ce que dégage la copie : une copie visible truffée de faute ne donnera pas envie d'être lue et entrainera une note forcément plus basse.
\ Ainsi, il faut :
- Éviter d'employer des mots ou expressions non maîtrisées
- Penser à la ponctuation
- Ne pas oublier les accents
- Se relire : privilégier au moins deux relectures
	- Une première globale.
	- Une deuxième sur des passages délicats identifiés lors de la rédaction.

= Le Résumé
(Compter 1h30 - 2h)

À l'air facile mais est surtout un exercice techinique, à effectuer sur deux moments :\
#pagebreak()
== L'appréhension du texte

Le résumé est d'anord une épreuve de compréhension. Il faut donc effectuer plusieurs lectures :
- Une première lecture de découverte, lire le texte sans s'arrêter pour avoir une vision d'ensemble et se familiariser avec le texte. On peut déjà commencer à surligner / annoter les passages importants.

- Une/des lecture(s) plus analytique(s)\ Il faut ici faire une analyse plus détaillée du texte en interrogeant chaque phrase et chaque idée.\ Mettre en évidence les passages primordiaux, les idées (qu'il faut hiérarchiser) ainsi que des mots-clés et connecteurs logiques du texte s'il y en a. Comment s'organise et progresse l'argumentation du texte. Mettre en valeur les spécificités d'énonciation du (si le texte dit "Nous", utilise beaucoup de questions rhétoriques, etc...)

== La rédaction
(d'abord au brouillon)

Pour le décompte des mots, toujours avoir en tête le nombre de mots restant pendant la rédaction.

#goal[Le but principal est la fidélité avec le texte, il ne faut jamais le trahir ou s'en écarter. Il faut comprendre le texte tout en gardant toutes les idées importants.]
Rater des idées essentielles fera invariablement baisser la note finale.

Le résumé doit reprendre l'énonciation du texte d'origine. il faut reprendre son style et ne pas d'accaparer le texte. Cependant, il faut toujours reformuler et bannir la paraphrase, le copié-collé, et pire que tout la citation..

Il est cependant bien que le correcteur retrouve des traces du texte dans le résumé, en reprennant les mots clés par exemple ou les connecteurs logiques.

#goal(title : [Format attendu])[Centrales préconise un résumé en 2/3 paragraphes.\ Les deux concours invitent à éviter les métaphores car elles ne possèdent pas le degré de précision préconisé pour cette épreuve.]
#pagebreak()
== Décompte des mots

"On appelle mot toute unité typographique qui est séparé d'une autre par un espace ou un trait et qui fait sens" CCINP\
#underline[Exemple] :
- Un après-midi $->$ 3 mots
- C'est-à-dire $->$ 4 mots
- Aujourd'hui $->$ 1 mot, en effet "hui" ne fait plus sens seul
- Socio-économique $->$ 1 mot, "socio" seul n'est pas dans le dictionnaire.
- Le _l_ et le _t_ de liaisons ne comptent pas :
	- "Si l'on" $->$ 2 mots
	- "A-t-il" $->$ 2 mots

#attention[S'assurer au brouillon de sa cohérence, de sa correction et de sa fidélité au texte.]

= La Dissertation
(Les temps sont basés sur une dissertation de 4h)

== Analyse du sujet et problématisation