#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*Décidabilité / Calculabilité : Compléments*
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
#pagebreak()
= Machines de Turing

== Défintions

#definition([
  Une *machine de Turing* (MT) est un 7-uplet $(Q, Sigma, Gamma, square, q_0, F, delta)$ avec :
  - $Q$ est un ensemble fini d'états
  - $Sigma$ est l'alphabet du ruban tel que $Sigma subset Gamma$
  - $square in Gamma\\ Sigma$ est le symbole blanc
  - $q_0 in Q$ est l'état initial
  - $F subset Q$ est l'ensemble des états finaux
  - $delta$ est un ensemble fini de transitions, c'est à dire d'éléments de $Q times Sigma times Q times Gamma times {arrow.l,arrow}$. Ces éléments correspondent à : l'état avant ; la lettre lue ; l'état après ; la lettre écrite ; le sens de déplacement
  #figure(
    image("Machine_Turing.png")
  )
])

#pagebreak()

#example([
  #figure(caption : [Avec $Sigma = {0,1}," "Gamma = {0,1,square}$\ reconnaît l'ensemble des mots finissant par un 0.])[
    #raw-render(
      ```
      digraph
      {
        "" [color = white]
        "" -> q0
        q3 [shape = doublecircle]
        q0 -> q0 [label = "0 | 0 , →\n 1 | 1 , →"]
        //q0 -> q0 [label = "1 | 1 , →"]
        q0 -> q1 [label = "□ | □ , ←"]
        q1 -> q2 [label = "0 | 0 , →"]
        q0 -> q3 [label = "1 | 1 , →"]
      }
      ```
    )
  ]

])

#definition([
  Une *configuration* d'une machine de Turing M est un triplet de $Q times Gamma^ZZ times ZZ$ qui décrit l'état dans lequel se retrouve cette machine. Il indique l'état actuel, le contenu du ruban et la position de la tête de lecture.

  Un *calcul* de M sur le mot $u_0...u_k in Sigma^*$ est une suite de configurations cohérentes vis à vis des transitions et telle que la première est\ $(q_0, (v_i)_(i in ZZ), 0) "avec" forall i in [|0,k|], v_i = u_i, forall i in.not [|0, k|], v_i = square$
])

#definition([
  Si un calcul sur $u$ termine dans une configuration $(q, \_, \_)$ avec $q in F$, $u$ est *accepté* par M.\
  On note $L(M) = {u in Sigma^* | u" est accepté par "M}$
])
#pagebreak()
== Comparaisons entre machines de Turing et automates

#definition([
  Soit $L in Sigma^*$
  - $L$ est *semi-décidable* s'il existe une machine de Turing M telle que $L = L(M)$
  - $L$ est *décidable* s'il existe une machine de Turing M dont tous les calculs terminent en temps fini et tel que $L = L(M)$ On note $R(Sigma^*)$ leur ensemble.
])

#remarque([
  Un problème est (semi-)décidable si et seulement si le langage des encodages\ $<x>$ des instances positives $x$ du problème est (semi-)décidable par la définition précédente
])

#prop([
  $"Rat"(Sigma^*) subset R(Sigma^*)$
])

#demo([
  Si $L in "Rat"(Sigma^*)$, il existe un automate $A = (Sigma, Q, q_0, F, delta_A)$ déterministe et complet qui reconnâit $L$ (théorème de Kleene).\ On construit la machine de Turing M suivante :
  - L'alphabet d'entrée = $Sigma$
  - L'alphabet de ruban = $Sigma union {square}$
  - Les états = $Q$
  - L'état initial = $q_0$
  - Les transitions : $ &forall q in Q, forall a in Sigma, delta_M (q,a) = (delta_A (q,a), a, arrow)\ &forall q in Q, delta_M (q, square) = (q, square, arrow) $
  - Les états finaux $F$

  $M$ accepte $u$ si et seulement si $u in L(A) = L$
])

#prop[
  $"Rat"(Sigma^*) subset.neq R(Sigma^*)$
]
#pagebreak()
#demo([
  #figure(caption : [Cette machine de Turing sur\ $Sigma = {a,b}, Gamma = Sigma union {square, X}$ accepte (décide même car tous les calcus sont finis) les mots ayant autant de a que de b. Cependant, ce langage n'est pas rationnel\ (peut être montré par le lemme de l'étoile)\ Tester sur aabbba pour s'en convaincre.])[
    #raw-render(
      ```
      digraph
      {
        "" [color = white]
        "" -> 0
        0 -> 0 [label = "X | X, →"]
        0 -> 1 [label = "a | □, →"]
        1 -> 1 [label = "X | X, →\n a | a, →"]
        1 -> 3 [label = "b | X, ←"]
        3 -> 3 [label = "X | X, ←\n a | a, ←\n b | b, ←"]
        3 -> 0 [label = "□ | □, →"]
        0 -> 2 [label = "b | □, →"]
        2 -> 2 [label = "X | X, → \n b | b, →"]
        2 -> 3 [label = "a | X, ←"]
        4 [shape = doublecircle]
        0 -> 4 [label = "□ | □, →"]

      }
      ```
    )
  ]
])

#prop([
  $"RE"(Sigma^*) subset.neq P(Sigma^*)$
])

#demo[
  $"RE"(Sigma^*)$ est dénombrable car les machine de Turing ont une description fini, donc $ {"Machine de Turing"} = union_(n in NN) {"Machine de Turing qui ont une description de taille" n}$
]
#pagebreak()
= Langages indécidables

#info(title : [Notation])[
  On note $"<"x">"$ l'encodage de $x$
]

== Le problème de l'arrêt

#thm[Le problème suivant :\
$ "ARRET" : cases("Entrée" : "Une machine de Turing déterministe M et un mot u", "Question" : "Est-ce que le calcul de M sur u termine ?") $ est indécidable
]

#demo[
  Par l'absurde, supposons qu'il existe une machine de Turing A qui décide ARRET. Tous les calculs de A terminent et L(A) = {\<M,u> | le calcul de M sur u termine}.

  Alors on peut construire une machine de Turing P qui a le comportement suivant :\ P prend en entrée l'encodage d'une machine de Turing. Si A accepte \<M, \<M>> alors P boucle sinon P accepte son entrée.

  Que se passe-t-il si on donne \<P> à P ?

  $&"Le calcul de P sur <P> ne termine pas"\
  &<==>" <P, <P>>" in "L(A) par construction de P"\
  &<==> "le calcul de P sur <P> termoine par définition de L(A)"$

  Ainsi, P n'existe pas et A non plus
]

== Réduction

#definition([
  La fonction $f : Sigma^* -> Gamma^*$ est calculable s'il existe une machine de Turing déterminisite telle que pour tout $u in Sigma^*$ le calcul de M sur $u$ termine toujours avec $f(u)$ écrit sur le ruban.
])
#pagebreak()
#example[
  #figure(caption : [Machine de Turing pour l'incrément sur les entiers])[
    #raw-render(
      ```
      digraph
      {
        "" [color = white]
        "" -> 0
        0 -> 0 [label = "n | n, →"]
        0 -> 1 [label = "□ | □, ←"]
        1 -> 1 [label = "9 | 0, ←"]
        2 [shape = doublecircle]
        1 -> 2 [label = "n | n + 1, →\n □ | 1, →"]
      }
      ```
    )
  ]


]

#definition([
  Si $L_A "sur " Sigma_A^*" et "L_B "sur "Sigma_B^*$ sont des langages, $L_A$ se réduit à $L_B$\ (noté $L_A <= L_B$), si et seulement s'il existe $f : Sigma_A^* -> Sigma_B^*$ calculable\ telle que $u in L_A <=> f(u) in L_B$
])

#prop([
  Si $L_A <= L_B$ et $L_A$ est indécidable alors $L_B$ l'est aussi
])

#demo([
  cf cours
])

== Théorème de Rice

#thm([
  Pour tout $cal(P)$ un ensemble de langage tel que $emptyset subset.neq cal(P) subset.neq "RE"$, $cal(L_P)$ est indécidable avec $cal(L_P) = {"<M> | M est une machine de Turing telle que "cal(L)(M)in cal(P)}$
])

+ #info(title : [Notation])[
  $cal(M) = {cal(M)_i | i in NN} = {"Ensemble des machines de Turing"}$

  $ cal(N) : cases(Sigma^* -> NN, omega mapsto cal(N)(omega)) " Une fonction de numérotation des mots" $

  $L_0 = {omega in Sigma^* | omega in.not cal(L(M_N(omega)))}$

  $L_in = {(M, omega) in cal(M)times Sigma^* | omega in cal(L)(M)}$
]

+ #lemme([
  $L_0$ est indécidable
])

  #demo[
    Par l'absurde, supposons que $L_0$ est semi-décidable par une machine de Turing M.\
    Il existe $i in NN$ tel que M = $cal(M_i)$. Ce $i$ a un antécédent $omega$ par $cal(N)$
    - Si $omega in L_0", " omega in.not cal(L(M_N(omega)))$, donc $omega in.not L_0$
    - Si $omega in.not L_0", " omega in cal(L(M_N(omega)))$, donc $omega in L_0$
]

  #tip(title : [Conséquence])[Le complémentaire de $L_0$ n'est pas décidable non plus]

+ #lemme[$L_in$ est indécidable]

  #demo[
    Montrons que $overline(L_0) <= L_in$

    Voici une fonction $f$ qui transforme les mots de $Sigma^*$ en des couples $(M, u)$ et telle que $omega in overline(L_0)$ si et seulement si $f(omega) in L_in$

    $f(omega)$ se calcule en :
    - Détermintant $cal(N)(omega)$
    - Déterminant $cal(M_N(omega))$
    - Renvoyant $(cal(M_N(omega)), omega)$

    $omega in overline(L_0) & <==> omega in cal(L(M_N(omega)))\
    & <==> (cal(M_N(omega)), omega) in L_in\
    & <==> f(omega) in L_in$
  ]
#pagebreak()
+ #lemme[Soit $emptyset subset.neq cal(P) subset.neq "RE"$,

- On peut supposer que $emptyset in.not cal(P)$, sinon on fait le raisonnement avec RE\\$cal(P)$
- Comme $P eq.not emptyset$, il existe $L in cal(P)$. Comme $L in "RE"$, il est accepté par une certaine machine de Turing : $M_L$

Montrons que $L_in <= cal(L_P)$
]

  #demo([
    Si $M,omega in cal(M)times Sigma^*$, on construit M' = $f(M, omega)$ comme étant la machine suivante :

    #figure[
      #image("MT.png")
    ]

    $f$ est calculable

    On veut monter que $(M, omega) in L_in$ si et seulement si $f(M, omega) in cal(L_P)$\
    $x in cal(L)(M')$ si et seulement si $omega in cal(L)(M)$ et $x in cal(L)(M_L)$. Ainsi :

    $ cal(L)(M') = cases(cal(L)(M_L) "si "omega in cal(L)(M), emptyset "        sinon") $

    $f(M, omega) = M' in cal(L_P) &<==> cal(L)(M') in cal(P)\
    & <==> omega in cal(L)(M)\ 
    & <==> (M, omega) in L_in$
])
#pagebreak()
= Classes P et NP

== Définitions aevec les machine de Turing

#definition([
  Si M est une machine de Turing, $omega in Sigma^*$ et $C_0->...->C_m$ un calcul sur $omega$
  - Le *temps de calcul* du calcul C est $m$, noté $t(C)$
  - La complexité en temps de M sur $omega, t(omega) = underset(max, C "calcul sur " omega)(t(C))$.
])

#definition([
   La *complexité en temps* d'une machine M est $t : n mapsto underset(max,|omega|=n)(t(n))$
])

#remarque([
  On peut définir aussi la *complexité en espace* de M sachant que l'espace du calcul C sur $omega$ par M est le maximum des $C_i$.
])

#definition([
  DTIME($f(n)$) est l'ensemble des langages décidés par une machine de Turing déterministe en temps $O(f(n))$ et NTIME($f(n)$) est l'ensemble des langages décidés par une machine de Turing non déterministe.

  P = $underset(union.big, k >= 0)"DTIME"(n^k)$\
  NP = $underset(union.big, k >= 0)"NTIME"(n^k)$
])

#prop([
  Les définitions définitions coincident avec celles du cours
])

#demo([
  Voir le Carton
])

== Théorème de Cook

#info(title: [Rappel])[
  On peut se servir de machines de Turing déterministes pour calculer des fonctions : Si $x$ est le mot écrit sur le ruban de M, on note M$(x)$ le mot sur le reubant après l'exécution de M sur $x$
]

#definition([
  Si A et B sont des langages, on dit que A se réduit polynomialement à B, noté $A <= B$ s'il existe une machine de Turing déterminisite M qui s'exécute en temps polynomial tel que $x in A <==> "M"(X) in B$.
])

#definition([
  $cal(L)$ est *NP-difficile* si et seulement si pour tout $L in "NP", L <= cal(L)$.\
  $cal(L)$ est *NP-complet* si $cal(L)$ est dans NP et est NP-difficile.
])

#thm(title : [ de Cook])[
  #deci([SAT],
  [$" "phi$ une formule du calcul propositionnel],
  [Est-ce que $phi$ est satisfiable]) est NP-complet
]

#demo([
  #figure(caption : [Preuve que SAT $in$ NP])[
    #image("SAT_NP.png")
  ]
])

#demo([
  Soit L dans NP. Montrons que L $<=$ SAT.

  Comme L est dans NP, il existe une machine de Turing M non déterministe qui décide L en temps polynomial. Donc il existe $R in RR[X]$ tel que pour tout $omega in Sigma^*$ de taille $n$, le temps de calcul de M sur $omega$ est inférieur à R($n$).

  Ainsi, il faut pour tout $omega in Sigma^*$, construire $phi_omega$ une formule telle que\ $omega in L <==> phi_omega$ est satisfiable ($star$)\
  et telle que $phi_omega$ est calculable en temps polynomial en $|omega|$, donc que la taille de $phi_omega$ le soit.

  *Étape 1 :* On rend les calculs dans M infinis de la façon suivante : on construit M' qui coïncide avec M jusqu'à son arrêt puis qui boucle dans un état $alpha$ si M acceptait et dans un état $rho$ si M refusait.

  Ansi, si $omega$ est de taille $n$, $omega in L$ si et seulement si M accepte $omega$ si et seulement si M' est dans l'état $alpha$ à la $(R(n)+1)^"e"$ étape de calcul.

  Ainsi, $(star)$ se reformule $phi_omega$ est satisfiable si et seulement si M' est dand l'état $alpha$ à la $(R(|omega|)+1)^"e"$ étape.

  *Étape 2 :* Construire $phi_omega$ de sorte à ce qu'elle encode un calcul correct dans M'.

  La portion temps-espace d'un calcul de M' qui est intéressante est limité par $R(|omega|)+1$en temps et elle est aussi limité d'autaut en espace car la complexité spatiale est inférieure à la complexité temporelle.

  En conséquence, on peut encoder un calcul sur $omega$ de M' par un tableau de taille ($R(|omega|) +1)^2$ telle qu'une ligne soit égale à une configuration et en encodant les configurations $(g, q, d) in (Gamma union Q)^*$ avec $g$ le mot à gauche strict de la tête sur le ruban, $q$ l'état de la configuration et $d$ le mot à droite (large) sur le ruban. La ête de lecture est donc sur la première lettre de $d$.

  On construit $phi_omega$ de sorte à ce qu'elle soit satisfiable si et seulement si un tel tableau représente un calcul acceptant dans M', c'est à dire :
  $ cases("La première ligne encode la configuration initiale sur "omega : I,"Chaque case du tableau ne contient qu'un et un seul symbole" : C,
  "Passer d'une ligne à la suivante se fait via une transition" : T,
  "La dernière ligne contient "alpha : F) $

  On introdtion pour cela pour tout $(i,j) in (R(|omega|)+1)^2$, pour tout $a in Gamma union Q$ la variable propositionnelle $p_(i j a)$ (vraie si et seulement si le symbole $a$ est dans la case $(i,j)$)

  On introduit les notations suivantes :
  
  $(p_(i j) = p_(k l)) = underset(or.big,a in Gamma union Q)(p_(i j a) and p_(k l a))$

  $(p_(i j) in Gamma) = underset(or.big, gamma in Gamma)p_(i j gamma)$

  $((i,j) in.not R_(i j)) = p_(i j) in Gamma and p_(i (j-1)) in Gamma and p_(i (j+1)) in Gamma$\ Cette formule est à vraie si et seulement si (i,j) ne sera pas modifié à la prochaine itération

  $(i,j) in R_(i j) = not((i,j) in.not R_(i j))$

  $ overset(delta_(i j), arrow.l.long) = underset(or.big,gamma_1"," gamma_2 in Gamma\ "   "q in Q\ (q","gamma_2)->(q'","gamma_3","<-) "est une transition")(&p_(i (j-1)gamma_1) and p_(i j q) and p_(i (j+1) gamma_2) and p_((i+1)(j-1)q')\ &and p_((i+1) j gamma_1) and p_((i+1)(j+1)gamma_3)) $

  Idem pour $overset(delta_(i","j), arrow.long)$

  Alors $I = p_(0 0 q_0) and overset(underset(and.big,i = 1),|omega|)p_(0 i omega_i) and overset(underset(and.big,i = |omega|+1),R(|omega|)+1)p_(0 i square)$

  $C = underset(and.big, (i","j)in [|0,R(|omega|)+1|]\ |C| <= R^2(|omega|))(underset(xor,gamma in Q union Gamma)p_(i j gamma))$

  T\
    Voir photo\
  F

  *Etape 3 :* À $omega$ on associe $phi_omega = I and C and T and F$ calculable en temps $O(R|omega|^2)$ dans un temps polynomial et tel que $phi_omega$ est satisfiable si et suelement si le calcul de M' sur $omega$ est dans $alpha$ au bout de $R(|omega|)+1$ étaptes si et seulement si $omega in L$
])