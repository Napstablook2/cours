#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*#ul[Chapitre 10 :]\  Algorithmique des jeux*
])

//Sources :\
//Vazinami, #ul[Approximation algorithms]\
//Mohavani & Raghavan, #ul[Randomized algorithms]

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

== Introduction : _La théorie des jeux_

La théorie des jeux est l'analyse formelle de problèmes posés par l'interaction stratégique d'un groupe d'agents rationnels poursuivant des buts qui leur sont propre.\
Elle permet en particulier des paradoxes réels.
- Dilemme du prisonnier
- Paradoxe de Braess\
On ne fera pas ici de théorie des jeux mais seulement de l'algorithmique des jeux.

#pagebreak()

= Jeux à deux joueurs


== Restrictions

On s'intéresse à des jeux :
- à deux joueurs antagonistes
- à somme nulle : les deux joueurs ne peuvent pas gagner en même temps (mais le nul est possible)
- à coup asynchrones (pas de synchronisation, les joueurs jouent les coups l'un après l'autre)
- à information complète (les deux joueurs ont parfaitement connaissance de l'état du jeu à tout moment)
- sans aléatoire
- finis (pas de partie infinie)
- ayant un nombre fini de configurations possible

#remarque([
	Il reste quand même des jeux "intéressants" (échecs ou go par exemple)
])

#goal([
	Construire un algorithme qui joue bien (idéalement : parfaitement) à un tel jeu
])

== Modélisation

#definition([
	Un jeu à deux joueurs est un quadruplet $(G, s_0, T_1, T_2)$ où 
	- $G = (S,A)$ est un graphe appelé *graphe des configurations* ou *arène* /*dont les sommets représentent les états possibles de la partie et les arcs représentant l'existence d'un coup permettant d'aller d'un état à un autre*/\
		Ce graphe est orienté et est "biparti" au sens où $S = S_1 union.sq S_2$ et\ $A subset S_1 times S_2 union S_2 times S_1$ où $S_i$ représente les sommets contrôlés par le joueur $i$.\
		Les sommets de ce graphe s'appellent des *états* ou *configurations* et les arcs des *coups*.\
		Si $(x,y)$ est un coup, cela signifie qu'il est possible pour le joueur qui contrôle $x$ d'amener dans la configuration $y$ en respectant les règles du jeu
	- $s_0 in S$ représente la configuration initiale du jeu. Si $s_0 in S_i$, le joueur $i$ commence
	- $(T_1,T_2) subset S^2$ tel que $T_1 inter T_2 = emptyset$ sont des ensembles de sommmets de degré sortant 0.\ $T_i$ est l'esmeble des configurations finales où le joueur $i$ gagne
])

#remarque([
	- $T_0$ l'ensemble des configurations nulles se déduit de la description du jeu par\
		$T_0$ est l'ensemble des sommets de degré sortant nul n'étant pas dans $T_1 union T_2$

	- Souvent, les descriptions des jeux se feront en langage naturel et pas avec cette formalisation
])

#figure(caption : [Un extrait de l'arène du morpion])[
	#image("Arène morpion.png")
]

#remarque([
	La taille des arènes devient rapidement très grande ($tilde 10^44$ configurations pours les échecs)
])

#definition([
	Une *partie* d'un jeu est un chemin depuis $s_0$ vers un états terminal (de degré sortant nul)

	Une *stratégie* pour le joueur $i$ est une fonction $f : S_i\\T -> S_(3-i)$ telle que $(S,f(S))$ est un coup possible et qui indique que coup jouer dans chacune des configurations contrôlées par le joueur $i$.
	
])

#definition([
	Une partie est jouée *avec le joueur $i$ qui suit la stratégie* $f$ si $forall S in S_i\\T$, le sucesseur de $S$ est $f(S).$

	On dit qu'une stratégie $f$ est *gagnante* pour le joueur $i$ si pour toute stratégie $g$ suivie par l'autre joueur, une partie jouée avec ces stratégies termine dans une configuration gagnante pour $i$.

	Un  état $s in S$ est une *position gagnante* pour le joueur $i$ s'il existe une stratégie gagnante pour $i$ dans le jeu ($G, s, T_1, T_2$).

	L'ensemble des positions gagnantes pour $i$ s'appelle *l'attracteur* de $i$, noté $A(i)$
])

#figure(caption : [Une position gagnante pour O])[
	#image("pos gagnante morpion.png")
]

#warning([
	Quand on demande si une position $s$ est gagnante pour $i$ ça peut vouloir dire :
	+ Est-ce  que $s$ est gagnante pour $i$ quel que soit le joueur qui contrôle $s$ ?
	+ Est-ce que $s$ est gagnante pour $i$ sachant que $s$ est contrôlée par $j$ ?
])

#pagebreak()

= Calcul des positions gagantes

== Construction d'une stratégie optimale à l'aide des attracteurs

Imaginons qu'on connaisse $A(i)$ et $A(3-i)$, alors voici une stratégie pour $i$ qui est gagnante si la position initiale est gagnante et fait une nulle sinon :
```
Si s est dans l'attracteur de i:
		Alors il existe au moins un coup (s,t) tel que t est dans
		l'attracteur de i
		On pose alors f(s) = t
Si s est dans l'attracteur de 3-i :
		Alors on pose f(s) = un successeur au hasard
Sinon :
		Alors aucun successeur n'est dans l'attracteur de i, mais il
		existe au moins un successeur t de s qui ne soit pas dans
		l'attracteur de 3-i

```

La question devient alors, comment calculer $A(i)$ ?

== Calcul d'un attracteur (version ascendante)

#definition([
	Soit $i in {1,2}$, on définit $(A_n (i))_(n in NN)$ par
	- $A_0(i) = T_i$
	- $forall n >= 0, A_(n+1)(i) = A_n (i) union {s in S_i | exists(s,t), t in A_n (i)}\ "                                "union {s in S_(3-1)\\T | forall(s,t), t in A_n (i)}$
])

#prop([
	$(A_n (i)) _(n in NN)$ converge vers $A(i)$
])

#demo([
	$(A_n (i))_n$ est croissante et $forall n in NN, A_n (i) subset S$\
	Or, $S$ est fini, donc $A_n (i)$ converge vers A.

	Il reste à montrer que $A = A(i)$, on procède donc par double inclusion.
	- $A subset A(t)$ car on montre par récurrence sur $n in NN, cal(H)_n: A_n (i) subset A(i)$

		$A_0 (i) = T_i$ donc toute position finale gagnante pour $i$  est en particulier gagante pour $i$ et $A_0(i) subset A(i)$

		Soit $n in NN, $ tel que $cal(H)_n$.\
		Soit $s in A_(n+1)(i)$, montrons que $s in A(i)$
		- Si $s in A_n (i)$, on peut conclure avec $cal(H)_n$
		- Si $s in S_i$ et $exists(s,t)$ tel que $t in A_n (i)$, alors $cal(H)_n$ assure que $t in A(i)$ et donc il existe $f$ une stratégie gagnante depuis $t$, on étend donc $f$ avec $f(s) = t$, et on obtient une stratégie gagnate depuis $s$, donc $s in A(i)$
		- Si $s in S_(3-1)\\T,$ et $forall(s,t), t in A_n (i)$, on peut appliquer $cal(H)_n$ à tous les $t$, donc quelque soit le choix de $3-1$ on reste dans l'attracteur de $i$ et donc $s$ l'est aussi, donc $s in A(i)$
	
	- $A(i) subset A$ : en exercice
])

== Algorithme min-max
(Version descendante pour le calcul des attracteurs)

#goal([
	Calculer $A(i)$
])

#idea([
	On attribue un score à chaque état du jeu :
	- 1 pour les états gagnant pour le joueur dont on cherche l'attracteur
	- -1 pour les états gagnant pour l'adversaire
	- 0 pour les états nul

	On calcule récursivement le score de chaque état avec en tête que le joueur dont on cherche l'attracteur veut maximiser son score, et le joueur adverse le minimiser
])

#exemple([
	#raw-render(
		```
		digraph{
			0 [label = "0"]
			1 [label = "-1"]
			2 [label = "0"]
			3 [label = "0"]
			0 -> 1
			0 -> 2
			0 -> 3

			4 [label = "-1"]
			5 [label = "1"]
			6 [label = "0"]
			7 [label = "1"]
			1 -> 4
			1 -> 5
			2 -> 5
			2 -> 6
			3 -> 6
			3 -> 7

			8 [label = "1"]
			9 [label = "0"]
			10 [label = "-1"]
			11 [label = "-1"]
			5 -> 8
			5 -> 9
			6 -> 9
			6 -> 10
			6 -> 11
		}
		```
	)
])

#pagebreak()

#code(title : [Algortihme min-max])[
	```
	Entrée : Un joueur i et une position s dans un jeu
	Sortie : 1 ssi s est gagnante pour i, 0 ssi ..., -1 ssi ...

	minmax(i,s) =
		Si s est terminal et gagnant pour i
				Renvoyer 1
		Si s est terminal et gagnant pour 3-i
				Renvoyer -1
		Si s est terminal et nul
				Renvoyer 0
		Si s est au tour de i
				Renvoyer le maximum des minmax(i, t) avec (s,t) un coup
		Si s est au tour de 3-i
				Renvoyer le minimum des minmax(i, t) avec (s,t) in coup
	```


	En pratique, il est utile de mémoïser les scores déjà calculés pour éviter de lancer plusieurs fois le même appel à min-max
]

#remarque([
	Avec mémoïsation, les complexités temporelles et spatiales de minmax sont linéaires en la taille du graphe qui modélise le jeu. Le problème c'est que c'est grand, très très grand : $10^32$ pour les dames, $10^44$ pour les échecs, $10^100$ au Go
])

= Calcul d'une "bonne" stratégie

#idea([
	Faire min-max mais sans explorer tout le graphe des configurations : s'arrêter à une profondeur donné et utiliser une heuristique pour estimer le score des états non-terminaux qui deviennent cas de base.

	On se place dans le cadre où on cherche une stratégie pour le joueur 1

	Pour que l'heuristique h soit "bonne" on aimerai que : 
	- $h(s) = + infinity$ si $s$ est gagnante pour 1
	- $h(s) > 0$ si $s$ est avantageuse pour 1
	- $h(s) approx 0$ si $s$ est nulle
	- $h(s) < 0$ si $s$ est avantageuse pour 2
	- $h(s) = - infinity$ si $s$ est gagnante pour 2

	Une autre caractéristique importante est qu'elle doit être rapide à calculer, l'idée étant que l'heuristique doit fournir rapidement des estimations du score
])

#exemple([
	Heuristique pour le domineering

	Le joueur 1 pose des dominos de taille 2 horizontalement et le joueur 2 pose des dominos de taille 2 verticalement, sur une grille contigüe de case\
	Le joueur qui perd est le premier joueur qui ne peut plus poser de dominos

	$ h(s) = cases(+ infinity "si" s "est gagnante pour J1",
								 - infinity "si" s "est gagnante pour J2",
								 "nb de couprs possibles pour J1" - "... pour J2 sinon") $
	
	#figure(caption : [Un exemple de calcul d'heuristique])[
		#image("Heuristique domineering.png")
	]

	Cette stratégie gloutonne ne produit pas forcément une stratégie optimale car un coup intéressant localement pourrait donner naissance à des positions désavantageusesœ
])

== Algorithme minmax à profondeur bornée

#idea[
	Pour construire une bonne strat pour J1

	+ Choisir une heuristique h et une profondeur d'exploration k
	+ Considérer le graphe G' des configurations en coupant à la profondeur k
	+ Appliquer minmax sur G' pour calculer le core d'une position $s$ :
		- Si $g$ est une feuille dans $G'$ :
			- Si $s$ est aussi une feulle dans $G$, renvoyer $plus.minus infinity, 0$ selon la nature
			- Sinon, renvoyer $h(s)$
		- Sinon, on renvoie le min ou le max selon la méthode classique
	+ Renvoyer le coup qui permet de maximiser le score
]

#exemple([
	#raw-render(
		```
		digraph{
			node [shape=circle, width=0];
			nodesep=0;
			00 [label="2"]
			10 [label="2"]
			11 [label="0"]
			12 [label="-3"]
			00 -> 10
			00 -> 11
			00 -> 12

			20 [label="2"]
			21 [label="9"]
			22 [label="3"]
			23 [label="7"]
			24 [label="4"]
			25 [label="0"]
			26 [label="3"]
			27 [label="4"]
			28 [label="-3"]
			10 -> 20
			10 -> 21
			10 -> 22
			11 -> 23
			11 -> 24
			11 -> 25
			12 -> 26
			12 -> 27
			12 -> 28

			30 [label="-5"]
			31 [label="2"]
			32 [label="-3"]
			33 [label="4"]
			34 [label="8"]
			35 [label="9"]
			36 [label="-1"]
			37 [label="2"]
			38 [label="3"]
			39 [label="7"]
			310 [label="2"]
			311 [label="6"]
			312 [label="4"]
			313 [label="1"]
			314 [label="0"]
			315 [label="-2"]
			316 [label="0"]
			317 [label="0"]
			318 [label="-2"]
			319 [label="3"]
			320 [label="1"]
			321 [label="-2"]
			322 [label="4"]
			323 [label="1"]
			20 -> 30
			20 -> 31
			20 -> 32
			21 -> 33
			21 -> 34
			21 -> 35
			22 -> 36
			22 -> 37
			22 -> 38
			23 -> 39
			23 -> 310
			23 -> 311
			24 -> 312
			24 -> 313
			24 -> 314
			25 -> 315
			25 -> 316
			25 -> 317
			26 -> 318
			26 -> 319
			26 -> 320
			27 -> 321
			27 -> 322
			27 -> 323

		}
		```
	)
])

#remarque([
	Une stratégie construite avec minmax borné avec heuristique ne garantit pas la victoire car
	+ On n'explore qu'une partie du graphe des configurations (calibré par la profondeur d'exploration)
	+ La qualité de l'heuristique peut donner de mauvais choix
])
#pagebreak()
== Élagage alpha-beta

#idea([
	Pour calculer le score d'une position rapidement avec minmax (à profondeur bornée ou non), on élague certaine branches qui ne ont plus utile pour déterminer le score.

	#image("elagage.png")
])

#info(title : [Principe])[
	On maintient à jour un intervalle $[alpha, beta]$ dans lequel on sait que se trouve lescore de la racine.\
	Lors de l'exploration :
	- On élague les branches qui donneraient un score hors de $[alpha, beta]$
	- On met à jouer $[alpha, beta]$ sinon
]

#exemple([
	#figure(caption : [Un élagage alpha-beta])[
		#image("ex alpha beta.png")
	]
])

#prop([
	Le score obtenu à la racine avec élagage $alpha-beta$ ou sans est le même. Les scores des positions intermédiaires peuvent être modifiés
])