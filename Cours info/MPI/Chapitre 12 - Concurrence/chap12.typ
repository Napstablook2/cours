#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*#ul[Chapitre 12 :]\  Concurrence*
])

Sources :\
Downey, #ul[The little book of semaphores]\
Shavit, #ul[The art of multiprocessor programming]

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

== Introduction

Pour faire plusieurs "calcul" réellement en même temps, il faut plusieurs unités de calculs : les coeurs. Si le nombre de calculs est supérieur au nombre de coeurs, on simule l'exécution simultanée des calculs en les entrelaçant

#info(title : [Pseudo-définition])[
	Un programme est dit *concurrent* s'il est constitué d'"unités" chacune s'exécutant séquentiellement eet dont les exécutions sont simultanées ou entrelacées
]

#pagebreak()

= Processus lourds et threads
(fils d'exécution)

== Processus lourds

#definition([
	Un *processus (lourds)* est une instance d'un programme en cours d'exécution

	Une centaine de processus en moyenne tournent sur une machine au repos

	Le système d'exploitation par le biais de l'*ordonnanceur* garantit l'étanchéité entre les processus de sorte que chaque processus se comporte comme s'il était le seul à s'exécuter sur la machine.  
])

#figure(caption : [La distribution de la mémoire physique par l'ordonnanceur])[
	#image("Ordonnancement.png")
]

#definition([
	La partie du système d'exploitation en charge de l'interruption, la reprise, la sauvegarde des données des processus et la correspondance mémoire physique/mémoire virtuelle est *l'ordonnanceur*
])

#definition([
	- L'interruption d'un processus par l'ordonnanceur pour permettre à un autre de s'exécuter est *la préemption*, on dit que le programme est *préempté*

	- L'ensemble des actions de l'ordonnanceur permettant la sauvegarde des données d'un processus et la correspondance mémoire physique/mémoire vrituelle est le *changement de contexte* ou *commutation de contexte*\
		Pour faire une commutation de contexte, il faut :
		- Sauvegarder l'état du program counter, des variables locales des fonctions en cours d'exécution
		- Sauvegarder la pile
		- Changer la correspondance mémoire physique/mémoire virtuelle

	Deux inconvénients des processus lourds :
	+ La commutation de contexte est couteuse en temps
	+ Comme les processus ne paertagent rien, la seule façon de les faire communiquer est de passer par le système d'exploitation (c'est long)
])

== Processus légers
(= fils d'exécutions)

#definition([
	Un *fil d'exécution* est une alternative aux processus lourds qui vérifie les propriétés suivantes : 
	+ Ils sont "inclus" dans un processus lourd
	+ Les fils d'un même processus partagent les mêmes ressources (accès au réseau, aux périphériques, aux descripteurs de fichier) et la même mémoire\
		$->$ Chaque fil a une pile et un program counter dédié (mais les autres fils peuvent a priori les consulter voire les changer)
	
	Ainsi, on résouds certains problèmes : la commutation de contexte entre fils est rapide et ils peuvent facilement communiquer
])

#goal(title : [Objectifs])[
	- Apprendre à créer des fils d'exécution
	- Étudier les principaux problèmes que posent la synchronisation des fils d'exécution et les outils pour les résoudre
]

#pagebreak()

= Mon premier programme concurrent

On considère qu'on a accès à deux fonctions :
- `crée_fil()` lance un fil d'exécution en lui demendant de calculer une fonction `f` sur un argument. Elle renvoie un identifiant correspondant au numéro du fil
- `joindre_fil()` prend en entrée l'identifiant d'un fil et attend que ce fil ait terminé son exécution

Avec `N` et `n` des variables globales

```
f(identifiant) :
		Afficher "le fil <identifiant> a démarré"
		Pour i = 1 à n :
				Afficher (<identifiant>, <i>)

main() :
		Afficher "Début"
		Pour i = 1 à N :
				creer_fil(f, i)
		Afficher "Pendant"
		Pour i = 1 à N :
				joindre_fil(i)
		Afficher "Fin"
```

L'ordre d'exécution des instructions de ce programme est non déterministe.\
On peut visualiser tous les ordres d'exécution possible avec un graphe\ (sommet = instruction, $x -> y$ si $x$ sefait avant $y$)

#exemple([
	Si `N = 2` et `n = 3`

	#figure(caption : [Graphe d'exécution])[
		#image("Graph exec.png")
	]
])

La différence entre un programme séquentiel et un programme concurrent est :
- Dans un programme séquentiel, les instructions sont ordonnées selon un ordre total
- Dans un programme concurrent, les instructions sont ordonnées selon un ordre partiel

(Cet ordre est celui de l'accessibilité dans le graphe : s'il y a un chemin de x vers y, x arrive avant y, si pas de chemin dans un sens ou l'autre, on ne peut pas prédir l'ordre de x et y)