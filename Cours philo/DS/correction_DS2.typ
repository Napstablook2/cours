#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*Correction DS2 : type Centrale*
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

= Correction du résumé

== Découpage

Le texte se découpe en trois parties :
- La première partie, ayant pour idée que plus on croit connaître la nature, plus elle nous échappe.
- La deuxième (de "La nature est morte [...]" à "[...] déterminés et impédictibles."), qui tente de définir la nature se basant sur trois points principaux.
- La troisième, qui fait des ajouts sous forme d'hypothèses.

== Corrigé

On ne contrôlera jamais entièrement la nature. Sa connaissance scientifique ne fait que souligner ce qui nous échappe à son *\/* sujet. Dès lors il faut en proposer une nouvelle définition : étroitement liée à l'humanité, intégrant même nos technologies, la *\/* nature n'est pas figée en un équilibre immuable, mais connaît une constante évolution où prennent place nos sociétés. Cette *\/* conception peut s'enrichir de trois éventuels prolongements selon lesquels la nature se hiérarchise en divers systèmes, qu'elle est *\/* ainsi d'une inépuisable richesse, enfin que son écosphère terrestre reste unique et fragile. Cette hypothèse impose de tenir compte *\/* de nos connaissances globales comme des limites de celles-ci.