#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*#ul[Chapitre 9 :]\  Stratégies algorithmiques*
])

Sources :\
Vazinami, #ul[Approximation algorithms]\
Mohavani & Raghavan, #ul[Randomized algorithms]

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

== Introduction : _"Résoudre" un problème NP-Complet_

Pour trouver une solution d'un problème (en particulier d'optimisation) NP-Complet, on a plusieurs idées élémentaires :
+ L'exploration exhaustive (du bruteforce) $->$ possible sur de petites instances\
  cf. "branch-and-bound" dans la suite
+ Concevoir un algorithme ad-hoc sur une instance particulière qui nous intéresse
+ Si c'est possible (si le contexte s'y prête, fout pas ça dans un avion connard), on peut se contenter de calculer une solution approchée au problème (algorithmes d'approximation)
+ Si c'est possible, on peut concevoir un algorithme qui\
  $->$ Donne la bonne réponse presque tout le temps (et rapidement)\
  $->$ Donne la bonne réponse tout le temps en étant presque tout le temps rapide\
  Il est ici question d'algorithmes probabilistes

#pagebreak()

= Alorithmes d'appproximations à facteur constant

== Définition

On se place dans le cadre des problèmes d'optimisation.

#definition([
	Soit $cal(P)$ un problème d'optimisation\ $cal(A)$ un algorithme qui pour tout instance $x$ de $cal(P)$, fourni une solution $cal(A)(x)$ (pas forcément optimale)\
	$alpha in RR_+^*$

	On dit que $cal(A)$ est un *algorithme d'approximation à facteur constant* de $cal(P)$ si :
	- $cal(P)$ est un problème de minimisation, $alpha > 1$ et pour toute instance $x$ de $cal(P)$,\ $C(x, cal(A)(x)) <= alpha C^*(x)$ où $C^*(x)$ est le coût d'une solution optimale sur $x$
	- $cal(P)$ est une problème de maximisation, $alpha < 1$ et pour toute instance $x$ de $cal(P)$,\ $alpha C^*(x) <= C(x, cal(A)(x))$ 

	On dit que $a$ est le *facteur d'approximation* de l'algorithme. On aimerait que $alpha$ soit le plus proche de 1 possible
])

#remarque([
	Pour un problème de minimisation, $alpha C^*(x) >= C(x, cal(A)(x)) >= C^*(x)$\
	Pour un problème de maximisation, $alpha C^*(x) <= C(x, cal(A)(x)) <= C^*(x)$
])

#warning([
	Il existe une autre façon de définit un algorithme d'approximation de facteur d'approximation $alpha >= 1$ :\
	$max(C/C^*, C^* / C) <= alpha$

	Problème : ce n'est pas cohérent avec la première définition dans le cadre des problèmes de maximisation. Avec le deuxième définition, $C^* / C <= alpha$, donc $C^* /alpha <= C$
])

#remarque([
	Dans le cadre des problèmes NP-Complet, on troque des algorithmes exponentiels exacts contre des algorithmes approchés polynomiaux
])

#warning([
	Si $cal(A) <= cal(B)$ et $cal(A^'), cal(B^')$ sont des problèmes d'optimisation associés, connaître un algorithme d'approximation pour $cal(B)$ n'en fournit pas nécessairement un pour $cal(A)$
])

== Exemples

#exemple([
	On considère le problème ORDONNANCEMENT\
	$ cases(#ul("Entrée :") n in NN " tâches de durées" (t_1, ..., t_n) in NN^n", " m in NN " mâchines",#ul("Solution :") "une partition" {E_1, ..., E_m} "de "[|1, n|], #ul("Optimisation :") "minimiser " underset(max, i in [|1, m|]) underset(sum, j in E_i)t_j) $

	La version décisionnelle est NP_complète

	#figure[
		#image("EX1.png")
	]

	Un premier aglorithme est un algorithme glouton où on prend les tâches dans un ordre quelconque, puis on assigne la tâche i à la machine qui termine le calcul le plus tôt au moment où i est considéré
])

#prop([
	L'algorithme donné est une 2-approximation pour ORDONNANCEMENT
])

#demo[
	Soit $m, t_1, ..., t_n$ une instance d'ORDONNANCEMENT. Notons T le temps de traitement pour la solution fournie par l'algorithme sur cette instance, et $"T"^*$ le temps de traitement optimal sur cette instance.

	Notons $i$ l'indice de la machine telle que T = $"T"_i$ et $j$ le numéro de la dernière tâche assignée à la machine $i$.

	$"T"_i - t_j$ est plus petit que tous les temps de traitement de toutes les machines au moment où $j$ est considéré

	Ainsi, $"T"_i - t_j <= "T"^*$, car la machine est la moins chargé, donc toutes les machines ont déjà un temps de traiement supérieur à $"T"_i - t_j$ et dans une solution optimale, cela signifie que toutes les machines ont aussi un temps de traitement supérieur à $"T"_i - t_j$

	Ainsi, $"T" = "T"_i <= "T"^* + t_j <= "T"^* + "T"^* = 2"T"^*$

	Donc, $"T" <= 2"T"^*$ et cet algorithme est une 2-approximation pour ORDONNANCEMENT.
]

#prop([
	Le facteur d'approximation de l'algorithme précédent est exactement 2.
])

#info(title : [Point méthode : Pour montrer qu'un algorithme d'approximation a un facteur d'approximation qui est exactement $alpha$])[
	- Trouver une intance telle que $C = alpha C^*$
	- Trouver une suite d'instance telle que le ration entre $C$ et $C^*$ tende vers $alpha$
]

#demo([
	Soit $m in NN$. Considérons l'instance suivante pour ORDONNANCEMENT : $m$ machines et $m(m-1)$ tâches de durée 1 + une tâche de durée $m$

	Notons $T_m$ le temps de traitement pour la solution fournie par l'algorithme sur cette instance et $T_m^*$ son temps de traitement optimal.

	On peut donner la tâche de taille $m$ à la première machine, et $m$ tâches de taille 1 à chaque machine restante. Il y a donc une durée de traîtement de $m$ pour chaque machine, donc $T_m^* = m$

	Or, avec l'algorithme, $T_m = 2m-1$, car on va remplir toutes les machines avec $m-1$ tâches chacune et mettre la tâche à $m$ au début de la première

	Si $beta$ est le facteur d'approximation de l'algorithme, on doit avoir\ $forall m in NN, T_m <= beta T_m^*$, donc $beta >= T_m/T_m^* = (2m-1)/m$.\ En passant à la limite, on constate que le facteur d'approximation de l'algorithme est supérieur à 2. On a montré qu'il était inférieur à 2, donc il vaut exactement 2.
])

On trouve ainsi un deuxième algorithme qui se comporte comme le première mais en considérant les tâches par ordre décroissant de durée

#prop([
	Ce deuxième algorithme est un algorithme d'approximation pour ORDONNANCEMENT de facteur inférieur à $3/2$
])

#demo([
	On note $T$ le temps de l'algorithme et $T^*$ le temps optimal, $t_1 >= t_2 >= ... >= t_n$

	Notons $i$ la machine telle que $T_i = T$ et $j$ la dernière tâche mise dedans.\
	$T_i - t_j <= T^*$ par même raisonnement que pour le premier algorithme\
	Donc $T <= T^* + t_j$

	Or, si $n < m$, l'algorithme donne déjà la solution optimal et $T = T^*$\ sinon, si la dernière tâche mise sur $i$ est l'une parmi $1,...,m$ alors c'est la seule et $T = T^*$\
	sinon, si la dernière tâche mise sur $i$ est la $j$-ième avec $j >= m+1$, alors $T <= 3/2T^*$

	Ainsi, pour toute instance, $T <= 3/2 T^*$
])

#exemple([
	Problème du sac à dos KP
	$ cases(#ul("Entrée :") (p_1, ..., p_n) in NN "des poids",
    "            "(v_n, ..., v_n) in NN "des valeurs",
		"            "P in NN,
		#ul("Solution :") I subset [|1,n|] "tq " underset(sum,i in I)p_i <= P,
		#ul("Optimisation :") "Maximiser" underset(sum, i in I) v_i) $

	La variante décisionnelle de ce problème est NP-complet

	Un algorithme proposé est celui de considérer les objets par valeurs décroissant et de remplir le sac dans cet ordre tant que ça rentre
])

#prop([
	Cet algorithme n'est pas un algorithme d'approximation à facteur constant pour KP
])

#demo([
	Pour tout $m in NN,$ on considère l'instance de KP suivante :\
	$P = m$, les objets sont un $(m, m)$ et $m-1$ fois $(m-1,1)$

	La valeur obtenue pour la solution fournie par l'algorithme est $V_m = m$ et la valeur optimale est $V_m^* = m(m-1)$.

	Ainsi, si l'algorithme était une $alpha$ pour KP avec $alpha > 0$,\ on aurait $forall m in NN, alpha V_m^* <= V_m$, donc $alpha <= V_m/V_m^* = m/(m(m-1)) underset(arrow.r.long, m -> + infinity) 0$,\ ce qui contredit $alpha > 0$

	Ainsi, il n'existe pas de tel facteur $alpha$
])

Un deuxième algorithme est de trier les objets par ordre décroissant de $v_i / p_i$, et remplir tant que possible

#prop([
	Cet algorithme n'est toujours pas un algorithme d'approximation pour KP
])

#demo([
	Pour tout $m in NN$, on considère l'instance\
	$P = m$, les objets sont $(m,m), (2,1)$

	$V_m = 2, V_m^* = m$
])

#prop([
	Voici une 2-approximation pour KP :
	0. Supprimer tous les objets ayant un volume plus grand que celui du sac
	+ Trier les objets par valeur décroissante puis les placer dans le sac dans cet ordre s'ils rentrent\
		$->$ Donne une solution pour laquelle la valeur est $V_1$
	+ Trier les objets par ratio $"valeur"/"poids"$ décroissant puis les placer dans le sac tant qu'ils rentrent.\
		$->$ Ceci donne une solution de valeur $V_2$
	+ Choisir la meilleure solution parmis les deux 
])

#demo([
	Soit $(p_1, ..., p_m, v_1, ..., v_m, P)$ une instance de KP

	Notons $V$ la valeur du sac obtenu sur cette instance avec cet algorithme et $V^*$ la valeur optimale du sac sur cet instance.

	- Si aucun objet ne rentre dans le sac seul, $V = 0 = V^*$, donc $V >= 1/2V^*$
	- Sinon, notons $I subset [|1,n|]$ les indices des objets dans le sac selon 2.\
		- Si $I = [|1, m|]$, alors $V = V^*$ donc $V >= 1/2 V^*$
		- Sinon, notons $j$ l'indice du premier objet qui ne rentre pas selon 2.\ On a $v_j <= V_1$ car seul il rentre dans le sac donc 1. a choisi un objet de valeur au moins $v_j$.

			Si on pouvait prendre des fractions d'objet, on aurait :
			$ V^* &<= (underset(sum,i", objets qui rentrent") v_i) + v_j times ("fraction de l'objet" j "pour completer")\
			&<= V_2 + v_j\
			&<= V_2 + V_1\
			&<= 2max(V_1, V_2) = 2V $

			Ainsi, $V >= 1/2 V^*$ donc l'algorithme est une 2-approximation
])

#pagebreak()

= Algorithmes probabilistes

== Principes et intérêts

#definition([
	Un *algorithme probabiliste* est un enchaînement d'opérations élémentaires, comme pour un algorithme déterministe, à ceci près que dans les opérations élémentaires on rajoute une opération de choix probabiliste consistant à générer un bit.

	Ainsi, si la suite de bits aléatoires est deux fois la même, on obtiendra sur la même instance le même résultat. Sinon, une même instance peut engendrer des résultats ou temps de calcul différent
])

#warning([
	Un algorithme non-déterministe et algorithme probabiliste ne veulent pas dire la même chose

	Un algorithme déterministe ne fais pas de choix, un algorithme probabiliste fait des choix probabiliste et un algorithme non déterministe fait un choix au sens où on "devine" l'instruction suivante correspondante
])

#exemple[
	On considère un tableau de boolénes qui contient des vrai et des faux uniformément, on cherche l'indice d'une case qui contient vrai.

	- Un algorithme déterministe : parcourir le tableau jusqu'à trouver une case qui contient V

	La complexité pire cas est en O(n) avec n la taille du tableau

	- Un algorithme probabiliste :

	```
	Pour k = 1 à 100
		tirer uniformément aléatoirement aléatoirement i dans [|0, n-1|]
				Si T[i] = V, renvoyer i
	renvoyer -1
	```

	Cet algorithme peut répondre incorrectement mais ça n'arrive qu'une fois sur $2^100$
]

#definition([Deux types d'algorithme probabiliste au programme

- Les algorithmes *La Vegas* : toujours correct, probablement rapide
- Les algorithmes *Monte Carlo* : toujours rapide, probablement correct

])

== Les algorithmes Las Vegas

#definition([
	Un *algorithme de type Las Vegas* est un algorithme probabiliste dont le résultat est toujours correct mais dont le temps de calcul est une variable aléatoire
])

#remarque([
	La terminaison d'un tel algorithme n'est pas garantie mais on impose qu'elle soit presque sûre

	Dans le cadre de la MPI, elle sera même sûre
])

L'objectif ici est de déterminer leur complexité espérée, on fixe une instance de taille $n$ et on estime le temps de calcul en moyennant sur les choix aléatoires.

#exemple([
	L'algorithme de tri rapide :

	```
	Entrée : Un ensemble S de n valeurs comparables
	Sortie : Les éléments de S triés dans l'ordre croissant

	Si n <= 1, renvoyer S
	Sinon, on choisit un pivot x dans S
			Comparer chaque élément de S\{x} à x pour construire :
				S_sup = {s dans S | s >= x}
				S_inf = {s dans S | s < x}
			Appeler récursivement le tri rapide sur S_sup et S_inf
			Renvoyer (S_inf trié) union {x} union (S_sup trié)
	```
])

#prop([
	La complexité pire cas d'un tri rapide est en $O(n^2)$ où $n$ est la taille de l'ensemble à trier.
])

#demo([
	On note $C(n)$ le nombre d'opérations effectués sur un tableau de taille n, l'algorithme donne que $C(n) = underset(max,p+q= n-1)(C(p)+C(q))+ O(n)$

	Il existe des instances pour laquelle la complexité est quadratique, car si on a $p = n-1$, $q = 0$, à chaque étape :\ $C(n) = C(n-1) + O(n)$\
	Ainsi $C(n) = ouset(sum, n, i=0)i = O(n^2)$

	Pour obtenir la majoreation, on peut pracéder par récurrence, c'est à dire montrer par récurrence que $C(n) <= k n^2$ avec $k$ fixé indépendant de n
])

#prop([
	La complexité pire cas du Tri rapide randomisé (où le pivot est choisit aléatoirement uniformément) est en $O(n^2)$ mais en espérence elle est en $O(n log n)$
])

#demo([
	On note $s_1 < s_2 < ... < s_n$ les éléments de S, on peut supposer les inégalités strictes, sinon on trie selon l'ordre lexicograpgique sur (valeur position)

	Pour $1 <= i < j <= n$, on note $X_(i j)$ le nombre de comparaisons faites entre $s_i$ et $s_j$. On note $X$ le nombre de comparaisons totales.

	On cherche à calculer\ $EE[X] = EE[ouset(sum X_(i j),,1<=i<j<=n)] = ouset(sum EE[X_(i j)],,1 <= i < j < n) = ouset(sum,,1<=i<j<=n)[1PP(X_(i j) = 1) + 0PP(X_(i j) = 0)]$.

	La dernière égalité est vraie car $X_(i j)$ prend ses valeurs dans {0,1}, en effet si $s_i$ et $s_j$ sont comparés une fois, l'un des deux est pivot donc ne sera plus jamais comparé à quoi que ce soit

	Pour calculer $PP(X_(i j) = 1)$, on considère le jeu suivant : $E_(i j) = {s_i, ... , s_j}$\
	On tire un pivot uniformément aléatoirement dans S, et :
	+ Si le pivot est dans $E_(i j)$, et vaut $s_i$ ou $s_j$, on arrête le jeu
	+ Si le pivot est dans $E_(i j)$, et n'est ni $s_i$, ni $s_j$, on arrête le jeu
	+ Si le pivot n'est pas dans $E_(i j)$, on recommence le tirage mais juste sur la moitié S' telle que $E_(i j) subset S'$

	Si on est dans 1, $X_(i j) = 1$\
	Si on est dans 0, $X_(i j) = 0$, car le pivot sépare les deux\
	Si on est dans trois, on ne sait pas encore car les deux peuvent encore être comparés

	Ainsi, $forall k in NN, PP_("le jeu a fait" k " étapes")(X_(i j) = 1) = 2 / (j - i + 1)$\
	Ainsi, $PP(X_(i j)) = ouset(sum, + infinity, k = 1) PP(X_(i j) = 1 | "le jeu a fait" k "étapes")times PP("jeu fait" k "étapes")$\
	$= 2/(j-i+1) ouset(sum,,k>=1)PP("le jeu fait "k " étapes") $ où la somme fait $PP("le jeu termine") = 1$

	On remplace dans $EE[X]$\
	$ EE[X] &= ouset(sum,,1 <= i < j <= n)EE[X_(i j)]\
	&=ouset(sum,,1<=i<j<=n)PP(X_(i j) = 1)\
	&=ouset(sum,n,i=1)ouset(sum,n,j=i+1)2/(j-i+1) \
	&=ouset(sum,n,i=1)ouset(sum,n-i+1,k=2)2/k\
	&<= ouset(sum,n,i=1)ouset(sum,n,k=2)2/k\
	&= 2ouset(sum,n,i=1)(H_n-1)\
	&= 2n(H_n-1)\
	&= O(n log n) $
])

#warning([
	Complexité en espérance et complexité en moyene ne sont pas la même chose.
	#set text(size : 10pt)
  	#table(
  		columns: (auto, auto),
  		inset : 10pt,
  		table.header(
    	[Complexité en espérance], [Complexité en moyenne])
			,
			[Analyse d'un algorithme probabiliste], [Analyse probabiliste d'un algorithme déterministe],
			[On moyenne sur les choix probabilistes], [On moyenne sur les entrées d'une taille donnée],
			[On calcule le maximum sur les entrée de\ taille $n$ du temps espéré sur l'entrée\ où le temps espéré sur l'enrée est la somme\ pour tout les choix possible du temps de\ calcul en faisant ce choix, pondérés par la\ probabilité du choix], [On calcule $1/("nombre d'entrées de taille n")times$ la somme du temps de calcul sur chaque entrée]
 	)
	#set text(size : 13pt)
])

== Algorithmes de Monte Carlo

#definition([
	Un *algorithme de type Monte Carlo* est un algorithme probabiliste tel que son résultat dépend des choix probabilistes effectués, mais dont son temps de calcul pire cas est fixe
])

#exemple([
	La technique d'empruntes, par exemple :\
	But : Déterminer si un polynôme est identiquement nul\
	Algorithme : 
	```
	Tirer uniformément aléatoirement x dans k
	Si P(x) = 0, renvoyer vrai
	sinon renvoyer faux
	```
])

#definition([
	Si $A$ est un algorithme Monte Carlo qui résout un problème de décision :
	- Un *faux positif* est une exécution de A qui renvoie vrai sur une instance négative
	- Un *faux négatif* est une exécution de A qui renvoie faux sur une instance positive

	Un algorithme de Monte Carlo qui n'as pas de faux positifs ou pas de faux negatifs est dit *à erreur unilatérale*\
	S'il a des faux négatifs et des faux positifs, il est dit *à erreur bilatérale*
])

#exemple([
	L'algorithme précédent n'as pas de faux négatif car il ne peut pas renvoyer faux si P est effectivement nul, il est donc à erreur unilatérale.
])

#prop([
	Si $A$ est un algorithme Monte Carlo pour un problème sans faux négatifs et dont la probabilité de faux positifs est inférieur à $p$.\ Alors pour tout $k in NN^*$, $k$ itérations indépendantes de A est également un algorithme de Monte Carlo sans faux négatifs avec une probabilités de faux positifs inférieure à $p^k$
])

#demo([
	Cet algorithme n'as pas de faux négatif sinon A en aurait De plus, la probabilité de faux positifs est la proba que A réponde incorrectement $k$ fois sur une instance négative ce qui arrive avec une probabilité inférieure à $p^k$ par indépendance des itération.
])

Ainsi, si on a un algorithme de Monte Carlo à erreur unilatérale alors on peut créer un algorithme de Monte Carlo à erreur unilatérale avec une probabilité de bonne réponse aussi grande que l'on veut, ce procédé s'appelle *l'amplification* de l'algorithme

== Liens entre algorithmes Las Vegas et Monte Carlo

#idea[
	Sous certaines conditions, on peut convertir un algorithme d'un type en l'autre selon ce qu'on préfère
]

=== Las Vegas vers Monte Carlo

Dans la résolutions des problèmes NP-Complet, il est fréquent de construire des algorithmes Las Vegas du type :
```
Tant qu'aucune solution n'as été trouvée
		Construire un candidat à être solution aléatoirement
		S'il est solution, le renvoyer
```

On peut les transformer en algorithme Monte Carlo en bornant le nombre de candidats qu'on essaie et en renvoyant le dernier candidat testé si on a atteint la borne

=== De Monte Carlo à Las Vegas

#prop([
	Si $A$ est un algorithme Monte Carlo résolvant un problème et $V$ est un vérificateur, c'est à dire un algorithme capable de vérifier si une sortie $y$ est bien solution pour instance $x$ de $cal(P)$\
	Alors on peut construire un algorithme $B$ de type Las Vegas qui résout $cal(P)$\
	De plus, si le temps d'exécution de $A$ sur une entrée de taille $n$ est $f(n)$, si le temps d'exécution de $V$ sur une entrée de taille $n$ est $g(n)$ et si la probabilité d'erreur de A est $p$, alors l'espérance du temps de calcul de B est $1/(1-p) times(f+g)$
])

#demo[
	$B$ consiste à faire les instructions suivantes sur $x$ :
	```
	Calculer A(x)
	Si V indique que A(x) est solution pour x : renvoyer A(x)
	Sinon : recommencer
	```
	Comebien d'opération fait-on en espérance sur une enttrée de taille $n$ ?

	Chaque itération coût $f(n) + g(n)$, on en fait en espérance $EE[X]$ avec $X$ la variable aléatoire qui compte le nombre d'itérations.\
	$EE[X] = ouset(sum,,k>=1)k PP(X=k) = ouset(sum,,k>=1)k p^(k-1)(1-p)$\
	En effet, $X = k$ quand A s'est trompé $k-1$ fois puis on a vu juste à l'itération d'après, et par indépendance des variables\
	Ainsi, $EE[X] = (1-p)ouset(sum,,k>=1)k p^(k-1) = (1-p)/(1-p)^2$, car on reconnaît la dérivée d'une série géométrique.
]

== Exemple : algorithme de Freivalds

Le problème qu'on cherche à résoudre est : $ cases(#ul("Entrée :") (A,B,C) in M_n (QQ), #ul("Question :") A B = C " "?) $

#pagebreak()
Algorithme de Freivalds :

```
Freivalds(A,B,C):
	Tirer uniformément aléatoirement X dans Mn,1({0,1}])
	Si A(BX) = CX renvoyer vrai
	Sinon, renvoyer faux
```

Un algorithme déterministe pour résoudre ce problème est en $O(n^2)$.\
L'algorithme de Freivalds est un algorithme Monte Carlo sans faux négatif. Sa probabilité de faux positifs est inférieur à $1/2$.

#demo[
Soit $A,B,C$ tels que $A B eq.not C$,\
déterminons $PP("Freivalds"(A,B,C) = "oui")$

On note $D = A B - C eq.not 0$\
Ainsi, $exists (i,j), d_(i j) eq.not 0$

Observons la ligne $i$ de $D X$, $l_i = d_(i j) x_j + r$ avec $r$ le reste des termes.

$ PP(l_i = 0) &= PP(l_i = 0 and r = 0) + PP(l_i = 0 and r eq.not 0)\
&= PP(l_i = 0 | r = 0)PP(r = 0) + PP(l_i = 0 | r eq.not 0)PP(r eq.not 0)\
&<= PP(x_j = 0)PP(r = 0) + PP(x_j eq.not 0)PP(r eq.not 0)\
&<= 1/2PP(r=0)+1/2(1-PP(r=0))\
&<= 1/2 $

De plus, $PP("Freivalds"(A, B, C) = "oui") = PP(D X = 0) <= PP(l_i = 0) <= 1/2$

]