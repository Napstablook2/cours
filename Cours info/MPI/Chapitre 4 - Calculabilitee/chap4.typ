#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*#ul[Chapitre 4 :]\ Calculabilité et décidabilité*
])

Sources :\
- Carton : #ul[Langages formels: Calculabilité et complexité]
- Wolper : #ul[Introduction à la calculabilité] (/!\\ Pas très bien traduit)

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

Un des buts principaux de l'informatique, c'est résoudre des "problèmes" avec des "algorithmes".

On se pose plusieurs questions :
+ Est-ce que tout "problème" peut se résoudre avec un "algorithme" ?
+ Pour les "problèmes" qu'on peut résoudre, combien de temps met le "meilleur" algorithme pour s'exécuter ?
+ Que faire si le "meilleur" "algorithme" prend trop de temps ?

Pour la première, la réponse est non, par exemple le $10^"e"$ problème de Hilbert : soit $a x + b y + c z = 0, (a,b,c) in ZZ$ une équation diophantienne, est-ce qu'il y a une solution entière ?

= Problèmes algorithmiques

== Fonctions calculables

#definition([ Un *problème algorithmiques* dont les entrées vivent dans un ensemble E et les solutions dans un ensemble S est une relation binaire $R$ sur E$times$S
])

#remarque([
Une entrée peut être associée à plusieurs solutions, $R$ n'est donc pas forcément une fonction mais on se concentre souvent sur ce cas.
])

- En calculabilité, on impose implicitement que E soit infini, sans quoi il suffirait de tabuler toutes les réponses pour résoudre le problème

#definition([
Définition : Une fonction $f : E arrow S$ est dite *calculable* s'il existe un "algorithme" A tel que pour tout $e in E$, appliquer A sur $e$ calcule $f(e)$ en temps fini
])

#remarque([Fonction mathématique n'est pas équivalent à fonction informatique :

#table(
  columns: (auto, auto),
  inset : 10pt,
  table.header(
    [Fonction mathématique], [Fonction informatique]
  ),
  [Pas de procédure de calcule nécessaire], [Description de comment calculer les images nécessaire],
  [Domaine de définition quelconque], [Domaines de définitions restreints, par exemple on ne peut pas avoir de fonctions informatiques $RR -> X$ car on ne peut pas représenter chaque réel de manière finie.]
)

])

== Problèmes de décision

#definition([
Un *problème de décision* est une fonction $f : E -> BB$, où $BB$ est l'ensemble des booléens.\
Généralement, on exprime un problème de décision en donnant
- Son domaien d'entrées E
- Une question à laquelle on ne peut répondre que par oui ou non.
])
#pagebreak()
#example(title : [ de problèmes de décision])[
#deci([PREMIER],
[$" "n in N$],
[Est-ce que $n in PP$])

La fonction sous-jacente est $𝟙_PP : NN -> BB$
\
\
#deci([RATIONNEL],
[$" "L in "Alg"(Sigma^*)$],
[$" "L in "Rat"(Sigma^*)?$])
\

#deci([H10],
[Une équation dipohantienne (E)],
[Est-ce que (E) admet une solution entière ?])
]
#example(title : [ de problèmes qui ne sont pas des problèmes de décision])[
$ "Gaillac-Grenoble" cases(#ul[Entrée :] "Le réseau ferroviaire français pondéré","           par temps de trajet", #ul[Question :] "Est-ce qu'on peut faire le trajet entre","              Grenoble et Gaillac en moins d'une heure ?") $

#deci([PREMIER_R],
[$" "n in [|1, A(100,100)|]$],
[$" "n in PP" ?"$])


]

#definition([
Un élément qui fait partie de l'ensemble d'un problème de décision est une *instance* de ce problèmes.\
Si la réponse à la question pour une instance est "oui" on dit quelle est *positive*, sinon qu'elle est *négative*.
])

//#pagebreak()
== Problèmes d'optimisations

#definition([
	Un *problème d'optimisation* est la donnée d'une relation binaire sur E$times$S et d'une fonction de coût $c : S -> RR$

	Généralement, pour introduire un problème d'optimiation on donne
	- Son ensemble d'entrées
	- À quoi ressemble une solution pour chaque entrée e
	- La quantité à maximiser ou minimiser sur la solution
])
#pagebreak()
#example([\
#opti([PLUS COURT CHEMIN],
[Un graphe G(V,E) non pondéré et $(s,t) in V^2$],
[Un chemin simple C de $s$ vert $t$ dans G],
[Minimiser le nombre d\'arcs de C])

#opti([PGCD],
[$" "(p,q) in NN$],
[$" "d in NN$ tel que $d|p$ et $d|q$],
[Maximiser $d$])
])

#info(title : [Méthode])[
	Tout problème d'optimisation peut être transformé en problème de décision par l'introduction d'un seuil.\ Le principe pour un problème de maximisation est de transofrmer la recherche d'une solution de coût maximal et la recherche d'une solution plus grand que le seuil.
]

#example([\
	PGCD-DECI :\ #ul[Entrée :] $(p,q) in NN, k in NN$\ #ul[Question : ] Y a-t-il un $d in NN$ tel que $d|p$, $d|q$ et $d >= k$ ?

	PCC-DECI :\ #ul[Entrée :] G = (V,E), $(s,t) in V^2, k in NN$\ #ul[Question :] Y a-t-il un chemin de s vers t dans G de longueur en terme de nombre d'arêtes $<= k$ ?
])

#remarque([
	Techniqument, pour que cette transformation crée bien un problème de décision il faut que la fonction de coût arrive dans un ensemble dont les éléments sont représentables de manière fini (par exemple $NN$ ou $QQ$ sont acceptés, mais pas $RR$).
])

= Modèle de calcul

*But :* Répondre à la question : Qu'appelle-t-on un "algorithme" ?

== Modèle de calcul choisi par le programme

On se contente du modèle suivant : Un algorithme est un code (= une chaîne de caractères) en C ou en Ocaml qui s'exécute sur une machine avec une mémoire infinie
#pagebreak()
#tip(title : [Parenthèse culture G])[
	Il existe différents modèles de calcul (façon de définir ce qu'est un algorithme) : machines de Turing, $lambda$-calcul, fonctions récursives, automates cellulaires...

	*Thèse de Church-Turing :*\
	Tous ces modèles engendrent le même ensemble de fonctions calculables.\ Tout modèle de calcul qui permet de calculer les mêmes fonctions que celles calculables avec les machines de Turing est dit "Turing-complet". La plupart des langage de programmation sont Turing-complet donc la définition du programme est bien un modèle de calcul valable.

	Exemple de langage non Turing-complet : Gallina.


	*Points commun des modèles Turing-complet :*

	- Un nombre fini de commandes élémentaires
	- La possibilité d'enchaîner des commandes élémentaires.
	- De la "mémoire" infinie.

	Un autre point commun aux modèles Turing-complet est l'existence d'une *machine universelle*
]

#definition([
	Une *machine universelle* pour un modèle de calcul donné est un objet $M_u in O ={"objets décrits par le modèle de calcul"}$ qui permet de simuler le comportement de n'importe quel élément de $O$
])

#example([
	- PyPy est un interpréteur Python écrit en Python, c'est donc une machine universelle pour le modèle de calcul ${"codes Python qui s'exécutent sur machine à mémoire finie"}$

	- CPython est un interpréteur Python écrit en C : ce n'est pas une machine universelle
])

#warning([
	`let universel f x = f x` n'est pas une machine universelle en Ocaml car elle ne prend pas le code source de la fonction f mais son nom.\ Une machine universelle en Ocaml devrait avoir comme type `string -> string -> string` avec le code source, l'encodage de l'argument et l'encodage du résultat
])
#pagebreak()
= Décidabiltié

== Définition

#definition([
	Un problème de décision est *décidable* si la fonction $E -> BB$ est calculable. C'est à dire qu'il existe un algorithme _(= un élément défini par le modèle de calcul choisi)_ qui termine toujours et qui répond correctement.
])

#example([
	
	PGCD-DECI est décidable par l'algorithme d'Euclide.\
	PREMIER est décidable.
])

#remarque([
	Dans le contexte de la décidabilité, la complexité des algortihmes n'as aucun intérêt.
])

#prop([
	Il existe une infinité non dénombrable de problèmes indécidables.
])

#demo([\
	Le nombre de problèmes est plus grand que le cardinal de ${f : NN -> BB}$, qui est indénombrable car il est en bijection avec $scr(P)(NN)$. La bijection en question est\ $phi:  (f : NN -> BB) mapsto {x in NN | f(x) = top}$.

	Il y a moins de problèmes décidables que d'algorithmes.\ En effet, un algorithme est un code source en Ocaml donc\ |${"algorithme"}| = |{"codes sources"}| = |underset(union.big,n in NN)"{codes source de taille "n}|$.\
	Ainsi, c'est une union dénombrabre d'ensembles finis donc l'ensemble d'algorithmes est dénombrable.
])

== Problème de l'arrêt

#ul[*VERSION 1*] _(rigoureuse mais chiante)_

#definition([
	Le *problème de l'arrêt* est :\
	#ul[Entrée :] le code d'une fonction $f$, l'encodage d'une entrée $x$ pour $f$\
	#ul[Question :] L'exécution de $f$ sur $x$ se termine-t-elle ?
])

#thm[
	ARRÊT est indécidable.
]

#demo([
	Par l'absurde, ARRÊT est décidable.\ Alors il existe une fonction $"arrêt"$ en Ocaml de type `string -> string -> bool` qui décide ARRÊT.\
	À la place de donner à arrêt directement le code source de $f$, on lui donne le nom du fichier dans lequel on écrit le code source de $f$ (quitte à rajouter une étape de lecture dans un fichier pour passer de (nom du fichier) à (code source)).

	On écrit dans le fichier `paradoxe.ml` le code suivant :
	```
	let arret code arg = <code de arret>
	if arret "paradoxe.ml" "" then
			while true do () done;
	```

	Exécutons ce code source sur l'entrée \"\".

	- Si l'exécution termine alors, alors `arret "paradoxe.ml" ""` termine et renvoie vraie, donc on entre dans la boucle infini, et l'exécution ne termine pas.
	- Si elle ne termine pas, alors `arret "paradoxe.ml" ""` termine et renvoie faux, donc on n'entre pas dans la boucle infini, et l'exécution termine.

	L'exécution termine si et seulement si elle ne termine pas, ce qui est contradictoire, donc par l'absurde arrêt n'existe pas et ARRÊT est indécidable.
])

#ul[*VERSION 2*] _(avec abus mais partique et attendue en général)_

#definition([
	Le *problème de l'arrêt* est :\
	#ul[Entrée :] une fonction $f$, un argumeent $x$ pour $f$\
	#ul[Question :] L'exécution de $f$ sur $x$ se termine-t-elle ?
])

#thm[
	ARRÊT est indécidable.
]

#demo([
	Par l'absurde, ARRÊT est décidable.\ Alors il existe une fonction arret en Ocaml de type `('a -> 'b) -> 'a -> bool` qui décide ARRÊT. Ainsi, arrêt $f$ $x$ termine toujours et arrêt $f$ $x$ = vraie $arrow.l.r.double.long$ $f$ $x$ termine.\

	Si arret existe, on peut alors construire la fonction paradoxe : `unit -> unit` suivante :
	```
	let paradoxe () =
				if arret paradoxe () then
							while true do () done
	
	OU

	let rec paradoxe () =
			if arret paradoxe () then paradoxe ()
	```

	- Si paradoxe () termine, alors arret paradoxe () s'evalue à true, on entre dans la boucle infinie et donc paradoxe () ne termine pas.
	- Si paradoxe () ne termine pas, alors arret paradoxe () termine et s'évalue à faux, on n'entre pas dans la boucle infinie et donc paradoxe () termine.

	Ainsi, paradoxe () termine $arrow.l.double.long.r$ paradoxe () ne termine pas, ce qui est contradictoire, donc arret n'existe pas et ARRÊT est indécidable.
])

== Réductions

#idea[
	Pour montrer que P est indécidable, on peut essayer de montrer que si on sait résoudre P alors on sait résoudre ARRÊT.
]

#definition([
	On dit qu'un problème A *se réduit à* un problème B si et seulement si il existe une fonction $g : E_A -> E_B$ (avec $E_A$ l'ensemble des instances (entrées) de A,...) telle que pour tout $e in E_A$, $f_A (e) = f_B (g(e))$\ où $f_A : E_A -> BB$ est la fonction sous-jacente au problème A (de même pour $f_B$)

	On note $A <= B$
])

#remarque([
	Si $A <= B$ cela signifie que si on sait résoudre B alors on sait résoudre A.
])

#prop([
	Si $A <= B$ :
	- Si $B$ est décidable $A$ l'est aussi
	- Si $A$ est indécidable, $B$ l'est aussi
])

#demo([
	Supposons $A<=B$
	- Supposons $B$ décidable, un algo qui permet de résoudre A  est :
		- calculer g(e) avec g la fonction fournie par $A <= B$
		- calculer $f_B (g(e))$ (possible car $f_B$ est calculable car $B$ est décidable).
		Cet algorithme termine toujours et renvoie vrai ssi e est positif pour A.
	
	- Contraposé de précédemment
])

#example([
	#deci([ARRET_VIDE],
	[Une fonction $f$],
	[Est-ce que l\'exécution de $f$ sans argument termine ?])

	ARRET_VIDE est indécidable :\
	Supposons par l'absurde que ARRET_VIDE est décidable.\ Cela signifie qu'il existe une fonction OCaml av : `('a -> 'b) -> bool`.\ Alors on peut écrire la fonction suivante :\
	```
	let arret f x =
		let g () = f x in
		av g
	```

	Cette fonction décide le problème de l'arrêt car
	- arret f x termine toujours
	- arret f x renvoie true si f x termine
	- arret f x renvoie faux si f x ne termine pas

	On a monté que ARRET $<=$ ARRET_VIDE, donc par indécidabilité de ARRET, on déduit celle de ARRET_VIDE.
])

#example([
	#deci([EQUIV],
	[Deux fonction $f$ et $g$],
	[Est-ce que $f$ et $g$ sont équivalentes ?])C'est à dire :
	- terminent sur les mêmes entrées.
	- ne terminent pas sur les mêmes entrées.
	- pour les entrées où elles terminent, renvoient la même chose.

	est indécidable.

	Supposons par l'absurde que EQUIV est décidable.\ Par définition, il existe une fonction equiv : `('a -> 'b) -> ('a -> 'b) -> bool` qui termine sur toute entrée et telle que equiv $f$ $g$ vaut true si et seulement si $(f", "g)$ est une instance positive de EQUIV.
#colbreak()
	Construisons alors :
	```
	let array f x =
		let f1 () = f x in
		let rec f2 () = f2 () in
		not (equiv f1 f2)
	```

	- arret termine sur toute entrée car c'est le cas de equiv
	- Si f x termine, f1 termine sur toute entrée. De puis f2 ne termine sur aucune entrée, donc equiv f1 f2 renvoie false et arret f x renvoie true.
	- Si f x ne termine pas, f1 ne termine sur aucune entrée. De plus f2 ne termine sur aucune entrée, donc equiv f1 f2 renvoie true et arret f x renvoie false.

	Ainsi, arret décide le problème de l'arrêt, qui est indécidable, ce qui est contradictoire. EQUIV est donc indécidable.
]) 