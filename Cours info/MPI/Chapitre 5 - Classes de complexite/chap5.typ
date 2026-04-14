#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*#ul[Chapitre 5 :]\  Classes de complexité*
])

Sources :\
- Carton : #ul[Langages formels: Calculabilité et complexité]
- Wolper : #ul[Introduction à la calculabilité] (/!\\ Pas très bien traduit)
- Garey-Johnson : #ul[Computers and intractability : a guide to the theory of NP-completness]

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

= Modèles de calcul

== Taille d'une entrée

#definition([
  La *taille* d'une instance d'un problème (de décision) est l'espace mémoire nécessaire à sa représentation, c'est à dire le nombre de caractères nécessaire pour encoder cette instance.
])

#remarque([
  On se satisfait d'ordres de grandeur de la taille dans les estimations de complexité.
])

#warning([
  Il y a deux cas à distinguer pour caractériser la taille d'un entier :
  - Si les entiers sont bornés, on peut considérer que leur taille est en O(1).
  - Si les entiers ne sont pas bornés, on peut considérer que la taille de leur représentation en base $b$ est en $log_b (n)$, donc que leur taille est en O$(log (n))$.

  Dans le second cas, un algorithme en O($n$) si $n$ est un entier non borné est *_exponentiel en la taille de son entrée_*.
])

#exemple([\
  Pour le problème PREMIER, la taille de l'entrée est $log n$\
  Pour le problème PGCD la taille de l'entrée est $log a + log b$, donc $log a b$
])

== Temps d'exécution

#definition([
  Une *valeur atomique* est une valeur alphanumérique représentable dans notre modèle de calcul sur un nombre fixe de bits.
])

#exemple([\
  Un entier sur 32 bits est une valeur atomique.\ Un entier sans plus de précisions n'est pas une valeur atomique
])

#definition([
  Une *opération élémentaire* est une opération s'exécutant en temps constant.
  
  Dans notre modèle de calcul, les opérations élémentaires sont les lecture, écritures, comparaisons et opérations arithmétiques sur des valeurs atomiques

  Si A est un algorithme, le *temps d'exécution* de A sur une entrée $x$ est le nombre d'opérations élémentaires faites par A lors de son exéution sur $x$.
])

= Classes de complexité en temps

== Classes de complexité en temps déterminisite

#definition([
  Une *classe de complexité* est un ensemble de problèmes de décision partageant un point commun vis à vis de la complexité des algorithmes qui les résolvent.
])

#definition([
  Si $t : NN -> NN$, on note DTIME($t(n)$) l'ensemble des problèmes de décision $scr(P)$ tel qu'il existe un algorithme déterministe qui résout $scr(P)$ et ayant une complexité en O($t(n)$).

  Si T est un ensembles de fonctions de $NN -> NN$, on note\ DTIME(T) = $underset(union.big,t in "T")"DTIME"(t(n))$
])

#definition([
  P = $underset(union.big, k in NN)"DTIME"(n^k) = "DTIME"(n^("O"(1)))$ est donc l'ensemble des problèmes de décision résolubles en temps polynomial
])

#warning([
  - Si $scr(P)$ est un problème de décision et qu'on trouve un algorithme exponentiel pour résoudre $scr(P)$, on ne peut pas conclure $scr(P) in.not P$

  - Le fait que $scr(P)$ soit dans P ne veut pas dire qu'_en pratique_ on saura résoudre $scr(P)$ de manière efficace

  - Ce sont les problèmes de décision qui sont dans P, pas les fonctions ni les algorithmes.
])

#remarque([
  On notre EXP la classe des problèmes résolubles en temps exponentiel.
])

#exemple([
  $ "PGCD :" cases(#ul("Entrée :") (a, b) in N, #ul("Solution :") d in NN "tel que" d|a "et " d|b, #ul("Optimisation :") "maximiser" d) $
  Ce problème est résolu par l'algorithme d'euclide d'Euclide en temps O($log(a  +b)$) ce qui est bien polynomial en la taille $log a + log b$ de l'entrée
  \
  \
  \
  $ "PREMIER :" cases(#ul("Entrée :") n in NN, #ul("Question :") n in PP" ?") $
  Ce problème est dans EXP via l'algorithme naïf en O($sqrt(n)$).\ En fait il est dans P via l'algorithme AKS.
  \
  \
  \
  $ "PCC :" cases(#ul("Entrée :") G = (S,A) "un graphe non pondéré ; "(s,t) in S, #ul[Sortie :] "un chemin "(s, s_0, ..., s_k, t), #ul[Optimisation :] "minimiser k") $
  Est résoluble via un parcours en largeur en O(|S| + |A|) donc est dans P

  #deci(
  [ARRET_BORNE],
  [Une fonction $f$, un argument $x$ et un entier $k$],
  [L\'exécution de $f$ sur $x$ termine-t-elle en moins de $k$ étapes ?]
  )

  L'algorithme consistant à simuler l'exécution de $f$ sur $x$ pendant $k$ étapes dans une machine universelle a une complexité en O($k$) = O($e^log(k)$). Donc ce problème est dans EXP.\ Est-il dans P ?
])

== Certificats et vérificateurs

#idea[
  P = {Problèmes résolubles en temps polynomial}\
  NP = {Problèmes vérifiables en temps polynomial}
]

#info(title : [Rappel])[
  Si A est un problème de décision et $I_A$ est son ensemble d'instances, on note
  $ P_A : cases(I_A &-> BB, x &mapsto cases("vrai si" x " est positive pour A", "faux sinon")) $
]

#definition([
  La classse NP est l'ensemble des problèmes de décision A tel qu'il existe :

  - Un problème $B in P$ tel que $I_B$ = $I_A times {0,1}^*$
  - Une fonction polynomiale $f$ telle que pour tout $x$ instance de A,\ $P_A (x) <==> exists c in {0,1}^* "tel que "|c| <= f(|x|)" et " P_B ((x,c))$
])

#definition([
  - Une algorithme polynomial qui résout B s'appelle un *vérificateur*
  - Un indice permettant de confirmer la positivité d'une instance s'appelle un *certificat*
])


#exemple[
  SAT est dans NP

  On note : #deci([VAL], [Une formule du calcul propositionnel $phi$ et une valuation $v$], [Est-ce que $v$ satisfait $phi$])
  $f : n mapsto n$

  $f$ est polynomial et\ $"VAL" in P$ car on peut le résoudre avec un algorihtme linéaire en $|phi|$.

  $phi$ est satisfiable si et seulement s'il existe une valuation $v$ telle que $v(phi) = 1$\ $phi$ est une instance positive de SAT si et seulement s'il existe un indice $v$ de taille $f(|phi|)$ tel que $(phi, v)$ est positive pour VAL.
]

#goal(title : [Méthode])[
  En pratique, on n'utilise pas ce formalisme mais, quand on veut faire une preuve que $scr(P)$ est fans NP, on doit mentionner 3 points :
  + Indiquer si une instance $i$ est positive, quel objet $o$ permet de le vérifier
  + Vérifier que la taille de l'objet $o$ est polynomial en |$i$|
  + Expliquer comment la connaissance de $o$ permet de savoir si $i$ est bien positive et justifier que la méthode utilisée est polynomiale en $|(i,o)|$
]
#pagebreak()
#exemple([
  #deci([CH],
  [Un graphe non orienté G = (S,A)],
  [Est-ce qu\'il y a un cycle dans G qui passe une et une seule fois par chaque sommet ?])

  est dans NP

  Pour toute instance positive de CH, il existe une suite C de sommets de taille inférieure à |S| sans doublons, qui contient tous les sommets s et qui représente un cycle dans G.

  Or, étant donné un graphe G et une suite C de moins de |S| sommets, on peut vérifier en temps polynomial en |G| si G vérifie les propriétés voulues :
  - On vérifie que C est un chemin en vérifiant que deux sommets consécutifs de C sont liés par une arête (O(|S|) ou O($"|S|"^2$) selon la représentation du graphe)
  - On vérifie que le premier sommet est connecté au dernier
  - On vérifie que C est dans doublons en O($"|S|"^2$)
  - On vérifie que |C| = |S| pour s'assurer que tous les sommets de G sont dans C
])

#exemple([
  #deci([CLIQUE],
  [Un graphe G = (S,A) non orienté, $k in NN$],
  [Est-ce qu\'il existe un sous-graphe de G complet à $k$ sommets])
  est dans NP.

  Pour toute instance de CLIQUE il existe un ensemble X de sommets tels que pour tout $(x,y) in X^2$, $(x,y) in A$ et tel que |X| = k.\ On remarque que |X| $<=$ |S|.

  De plus, étant donné un grpahe G = (S,A) et une semble X $subset$ S, on peut vérifier que X est une clique de taille $k$ dans G en temps polynomial :
  - On vérifie qu'il y a $k$ éléments dans X
  - On vérifique que pour pour tout $(x,y) in X^2, (x,y) in A$, ce qui peut se faire en O($|X|^2$) = O($|"S"|^2$) si on représente le graphe par liste d'adjacence.
])

#prop([
  P $subset$ NP
])
#demo([
  En exercice
])

#remarque([
  On pense que cette inclusion est stricte mais c'est une quesiton ouverte
])

#warning([
  Si dans une copie vous écrivez quelque chose qui implique que  P = NP c'est qu'il y a sûrement une merde quelque part.
  

  NP veut dire "non-deterministic polynomial" et PAS "non-polynomial"
])

= Complétude

== Réduction polynomiale

#definition([
  Si A et B sont des problèmes de décision, on dit que *A se réduit polynomialement à B* (noté $"A" <= "B"$) si et seulement s'il existe une fonction $f : I_A -> I_B$ calculable en temps polynomial et telle que pour tout $x in I_A, P_A (x) = P_B (f(x))$
])

#exemple([
  STABLE $<=$ CLIQUE avec :
  #deci([STABLE],
  [Une graphe non orienté G = (S,A), $k in NN$],
  [Est-ce qu\'il existe $X subset S$ de taille $k$ tq $forall(x,y)in X^2, (x,y) in.not A$])

  Soit (G = (S, A), $k$) une instance de STABLE.\ On peut la transofrmer en ($overline(G)$ = (S, $overline(A)$), $k$) qui est une instance de CLIQUE, avec $overline(A)$ le complémentaire de $A$ dans $delta^2$.

  Cette transformation peut s'effectuer en temps O(|S$|^2$) si G est représenté par matrice d'adjacence, ce qui est polynomial en |G|.

  De plus, (G = (S, A), $k$) est une instance positive pour STABLE si et seulement si $overline(G)$ = (S, $overline(A)$), $k$) est une instance positive pour CLIQUE.
])

#prop[
  Si $A <= B$ :
  - Si $B in P$ alors $A in P$
  - Si $B in "NP"$ alors $A in "NP"$
]

#demo([
  Comme $B in P$, il existe une fonction calculable en temps polynomial $f_B : I_B -> BB$ qui résout B.\
  Comme $A <= B$, il existe une fonction $f : I_A -> I_B$ calculable en temps polynomial et telle que pour toute instance $x in I_A$, $P_A (x) <==> P_B (f(x))"  "(star)$

  Pour résoudre A on peut donc calculer $f(x)^bold(1.)$ et résoudre le problème B avec $f_B$ sur l'instance $f(x)^bold(2.)$. Ceci donne une résolution correcte de A grâce à $(star)$

  Cet algorithme s'exécute en temps polynomial en |$x$| car :
  + s'exécute en temps polynomial en |$x$| par définition d'une réduction.
  + s'exécute en temps polynomial car :
    - $|f(x)|$ est polynomial en $|x|$ car la complexité spatiale d'une fonction est plus petite que sa complexité en temps et $f$ a une complexité polynomiale en $|x|$
    - $f_B$ s'exécue en temps polynomial en |$f(x)$| mais comme cette taille est polynomiale en $|x|$, $f_B (f(x))$ s'exécute bien en temps polynomial en $|x|$
])

#prop[
  Cette relation de réduction est transitive et refléxive
]

#demo[
  Laissée en exercice au lecteur
]

== Problèmes NP-complets

#definition([
  Si A est un problème de décision :
  - A est *NP-difficile* si pour tout problème $B in "NP"$, $B<=A$
  - A est *NP-complet* si'il est NP-difficile et dans NP.
])

#prop([
  Si A est NP-dfficile et $A in P$ alors P = NP
])

#demo([
  On a déjà $P subset$ NP, il suffit donc de montrer l'inclusion réciproque.

  Soit $B in$ NP, comme A est NP-difficile, alors $B <= A$.\ Or, par la proposition 2, B est alors dans P.
])

#warning([
  Si on montre qu'un alogrithme qui résout un problème NP-difficile est polynomial, on a montré que P = NP, un peu sus.
])

#thm(title : [ de Cook-Levi])[
  SAT est NP-complet
]

#demo([
  On a déjà montré que SAT est dans NP. De plus SAT est NP-difficile (hors-programme)
])

#goal(title : [Méthode])[
  Pour montrer qu'un problème $scr(P)$ est NP-complet :
  + On montre qu'il est dans NP
  + On trouve un problème NP-complet $C$ tel que $C <= scr(P)$
]

#prop([
  Si $A <= B$, $A$ est NP-difficile et $B in$ NP\ Alors $B$ est NP-complet
])

#demo([
  + $B in$ NP par hypothèse
  + Soit $C in$ NP. Comme A est NP-difficile, $C <= A$\
    Comme  $A <= B$ et par transitiviété de $<=$, $C <= B$\
    Pourt tout $C in $ NP, $C <= B$ : c'est la définition de $B$ est NP-difficile.
])

#thm()[
  *3SAT est NP-complet* avec
  $ "3SAT" : cases(#ul[Entrée :] "Une formule "phi" du calcul propositionnel, sous FNC", "            avec au plus trois littéraux par clause",#ul[Question :] "Est-ce que" phi "est satisfiable ?") $
]

#demo([
  - 3SAT $in $ NP, même preuve que pour SAT
  - Pour montrer que 3SAT est NP-difficile, on montre que SAT se réduit polynomialement à 3-SAT. (Comme SAT est NP-complet, cela montrera ce qu'on veut.)\
  
  Soit $phi$ une instance de SAT. On peut supposer que les seuls connecteurs dans $phi$ sont $or"et "not$ quitte à remplacer les autres en faisant augmenter la taille de $phi$ de manière linéaire.

  On note SF$(phi)$ l'ensemble des sous-formules de $phi$\ et V($phi$) l'ensemble des variables dans $phi$.

  $forall psi in "SF"(phi)$, on introduit une nouvelle variable $x_psi$.\ Enfin, on note T$(phi) = x_psi and underset(and.big,psi in "SF"(phi)\\V(phi))t(psi)$ avec :
  - $t(not" " psi) = (x_(not psi) or x_psi) and (not x_(not psi) or not x_psi)$

  - $t(psi_1 or psi_2) = (not x_(psi_1 or psi_2) or x_(psi_1) or x_(psi_2)) and (not x_(psi_1) or x_(psi_1 or psi_2)) and (not x_psi_2 or x_(psi_1 or psi_2))$

  + T transforme une instance de SAT en une instance de 3SAT.
  + T($phi$) est calculable en temps polynomial en |$phi$|.\
    Calculer SF($phi$) et V($phi$) se fait en O(|$phi$|) en parcourant l'arbre syntaxique de la formule.

  + $phi$ est satisfiable si et seulement si T($psi$) est satisfiable.\
  $(==>)$ On remarque que :

  - $t(not psi) equiv (not x_psi <=> x_(not psi))$\
  En effet, $ (not x_psi <=> x_(not psi)) &equiv (not x_psi => x_(not psi)) and (x_(not psi) => not x_psi)\ 
  &equiv (not x_(not psi) or not x_psi) and (x_psi or x_(not psi))\ 
  &equiv t(not psi) $

  - $t(psi_1 or psi_2) equiv (x_psi_1 or x_psi_2 <=> x_(psi_1 or psi_2))$

  Ainsi, si $phi$ est satisfiable par $v$, on construit $overset(v,tilde)$ qui satisfait $T(phi)$ comme suit :\
  $forall psi in "SF"(psi), overset(v,tilde)(x_psi) = v(psi)$.

  $overset(v,tilde)$ satisfait bien $T(phi)$
  - $overset(v,tilde)(x_phi) = v(phi) = 1$ car $v$ satisfait $phi$
  - $overset(v, tilde)(t(not psi)) = overset(v, tilde)(not x_psi <=> x_(not psi)) = 1$\
    car $overset(v, tilde)(x_(not psi)) = v(not psi) = overline(v(psi)) = overset(v,tilde)(not x_psi)$
  - $overset(v,tilde)(t(psi_1 or psi_2)) = ...$
  
  $(<==)$ Réciproquement, si $T(phi)$ est satisfiable par $overset(v, tilde)$, la valuation $v$ suivante satisfait $phi$ : $v(p) = overset(v, tilde)(x_p)$

  Comme $overset(v, tilde)$ satisfait $T(phi)$, $overset(v, tilde)(x_phi) = 1$ en particulier.\ Ainsi, $v(phi)=1$ aussi car pour toute formule $gamma, overset(v,tilde)(x_gamma) = v_gamma$.

  On a montré que SAT $<=$ 3SAT. Comme SAT est NP-difficile, 3SAT aussi.\
  Comme 3SAT $in$ NP, 3SAT est NP-complet.
])

#remarque([
  CNF-SAT et $k$SAT pour $k >= 3$ sont NP-complet
])

#thm[
  *2SAT $in$ P* avec :
  $ "2SAT" : cases(#ul[Entrée :] "Une formule "phi" du calcul propositionnel, sous FNC", "            avec exactement deux littéraux par clause",#ul[Question :] "Est-ce que" phi "est satisfiable ?") $
]
#pagebreak()
#demo([
  Voici un algorithme qui résout 2SAT en temps polynomial.

  + Calculer Var($phi$) l'ensemble des variables de $phi$
  + Construire un graphe $G_phi$ = (V, E) avec\ 
    V = $"Var"(phi) union {not x | x in "Var"(phi)}$\
    E = {$(not e_1, e_2) | e_1 or e_2$ une clause de $phi} union {(not e_2, e_1) | e_1 or e_2$ une clause de $phi$}
  + Calculer les CFC de $G_phi$
  + Pour chaque CFC C trouvée, on regarde s'il existe $x in "Var"(phi)$ tel que $x$ et $not x$ sont sommets de C.\
    Si oui : $phi$ n'est pas satisfiable\
    Si non : $phi$ est satisfiable et on peut construire une valuation $v$ satisfiant $phi$ en assignant à vrai tous les littéraux dont la valeur de vérité est encore inconnu CFC par CFC en remontant l'ordre topologique.
])

#exemple([
  Voici $G_phi$ pour $phi = (not p or q) and (not r or s) and (p or s) and (not q or t) and (r or q) and (t or not s) and (not s or not q)$

  #figure[
    #image("G_phi.png")
  ]

  #figure[
    #image("cfc_topo.png")
  ]

  Ainsi, $phi$ est satisfait pour $v(t) = 1, v(p) = 1, v(q) = 1, v(s) = 0, v(r) = 0$

  L'algorithme est polynomial en la taille de $phi$ :
  + est en O($|phi|$) en parcourant $phi$
  + est en O($|"Var"(phi)|$ + nombre de clauses) = O($|phi|$) et produit un arc qui a O($|phi|$) sommets et O($|phi|$) arcs.
  + est en O($|phi| + |phi|$) par Kosaraju
  + esg en O($|"Var"(phi)|$) = O($|phi|$)
])

#demo[
  _*Suite de la démonstration*_

  Cet algorihtme résout 2SAT, pour montrer ceci on montre que $phi$ est satisfiable si et seulement si pour toute variable $x$ de $phi$, on n'as jamais $x$ et $not x$ dans la même CFC de $G_phi$

  $(==>)$ Comme $phi$ est satisifable, il existe une valuation $v$ telle que $v(phi) = 1$.\
  Montrons par récurrence sur $n in NN, H(n) :$ s'il existe un chemin de longueur $n$ de $l$ vers $l'$ dans $G_phi$ et que $v(l) = 1$ alors $v(l') = 1$

  Si $n = 0$ c'est direct.

  Soit $n in NN$ tel que $H(n)$ soit vrai.\ Soit $l$ et $l'$ deux littéraux liés par un chemin de longueur $n+1$ avec $v(l) = 1$.

  $l -> l'' arrow.squiggly.long l$.\ Comme $(l, l'')$ est une arête, la construction de $G_phi$ dit que $phi$ contient la clause $not l or l''$. Cette clause est satisfaite par $v$ mais ne satisfait pas $not l$, donc $v(l'') = 1$.\
  On n'as plus qu'à appliquer l'hypothèse de récurrence sur $l'' arrow.squiggly.long l$.

  Si on avait $x$ et $not x$ dans la même CFC, alors
  - Si $v(x) = 0, v(not x) = 1$ et comme $not x arrow.squiggly.long x$ on aurait $v(x) = 1$.
  - Si $v(x) = 1$, comme $x arrow.squiggly.long not x$, on aurait $v(not x) = 1$ donc $v(x) = 0$.
  #colbreak()
  $(<==)$ On note $C_1,...,C_k$ les CFC de $G_phi$ dans un ordre topologique. On construit une valuation $v$ en fixant à vrai les littéraux non encore assignés CFC par CFC en remonant l'ordre topologique.

  Montrons que $v$ satisfait $phi$.

  $phi$ est bien défini car assigner vrai à $x$ et $not x$ indiquerait que ces deux littéraux sont dans la même CFC, ce qui est exclu.

  Montrons que $v$ satisfait $l or l'$ une clause de $phi$.\
  $l or l' equiv (not l => l') and (not l' => l)$

  Notons $x$ l'un des premiers littéraux parmis ${l, l', not l, not l'}$ à apparaître dans une CFC en remontant l'ordre topologique.

  - Si $x = l$, alors par construction de $v$, $v(l) = 1$ et donc $v(l or l') = 1$
  - Si $x = not l$, alors par construction, $v(l) = 0$ et donc il faut montrer que $v(l') = 1$.\
    Comme $l or l'$ est une clause, il y a un arc $not l -> l'$, donc $l'$ est dans une CFC plus petite que $not l$.\ Ça ne peut pas être une CFC strict plus petite sinon la définition de $x$ est contredite.\ De plus, $not l'$ intervient dans une CFC plus grande pour l'ordre topologique (sinon la def de $x$ est contredite).\
    Donc, au moment où on consièdre la CFC contenant $l'$, ce littéral n'est pas encore assigné et donc on fixe par construction $v(l') = 1$, donc $v(l or l')=1$.
]

#thm(title : [ (hors-programme)])[\
  *Le problème du cycle hamiltonien orienté est NP-complet*

  $ "CHO" : cases(#ul("Entrée :") "Un graphe orienté G",#ul("Question :") "Existe-t-il un cycle dans G qui passe une et", "               une unique fois par chaque sommet ?") $
]

#demo([
  - CHO est dans NP car une instace de CHO est positive si et seulement s'il existe un ensemble $X subset S$ qui soit un cycle hamiltonien.

    Or, étant donné G = (S,A) et $X subset S$, vérifier que $X$ est un cycle hamiltonien se fait en temps polynomial en $|G|$ :
    - On vérifie que $X$ encore un chemin (en O($|X|$) si G est encodé par matrice d'adjacence)
    - On vérifie que le premier et derniser sommet de $X$ sont égaux
    - On vérifie que que $X$ contient tous les sommets exactement une fois (en O($|S|$))
    #colbreak()
  - CHO est NP-difficile par réduction polynomiale de 3SAT en CHO.

    On peut supposer quitte à prétraiter $phi$ en temps linéaire qu'aucune close ne fait intervenir un littéral et sa négation.\
    Soit $phi$ une instance de 3SAT dont on note $C_1,...C_k$ les clauses et $n$ le nombre de variables qui y interviennent.

    Pour chaque variable $x_i$ on construit un gadget $H_i$ qui est le graphe suivant :

    #figure[
      #image("gadget.png")
    ]

    On peut alors enchainer les gadgets de la manière suivante :
    #figure[
      #image("gadgets_2.png")
    ]
    #colbreak()
    Enfin, pour chaque clause $C_j$, on ajoute un sommet $c_j$. Pour chaque variable $x_i in C_j$, on ajoute les arcs rouge si $x_i$ apparaît positivement dans $C_j$ et on ajoute les arcs bleus s'il apparaît négativement.

    #figure[
      #image("ajout_arc.png")
    ]

    Calculer $G_phi$ se fait en temps polynomial en |$phi$| car il a 
    - $2 + k + n(4+2k)$ sommets avec $k$ clauses, $n$ variables.\
      `s et t + clauses + gadgets`\
      $= O(|phi|^2)$ sommets.
    - $n(4 + 2(2k +1)) + (n+2) + 6k$\
      `arcs dans les gadgets  + connection des gadgets + connection des clauses`\
      $= O(|phi|^2)$ arcs
    #colbreak()
    De plus, $phi$ est satisfiable si et seulement si $G_phi$ contient un cycle hamiltonien.

    - Si $phi$ est satisfiable via une valuation v, alors pour toute clause $C_j$, il existe une variable $x_i$ telle que ($x_i$ intervient positivement dans $C_j$ et $v(x_i) = 0$) ou ($x_i$ intervient négativement dans $C_j$ et $v(x_i)=0$).

    #ul[Alors, voici un chemin hamiltonien dans $G_phi$ dans entre $s$ et $t$ (qu'on peut donc compléter en cycle hamiltonien via ($t,s$)) :]

    - Si $v(x_i) = 1$, on parcours $H_i$ de haut en bas en faisant un détour pour chaque $C_j$ non encore visité.
    - Si $v(x_i) = 0$, on parcours $H_i$ de bas en haut en faisant un détour à chaque $C_j$ non encore visité.

    Réciproquement, s'il existe un cycle hamiltonien dans $G_phi$ on peut construire une valuation qui satisfait $phi$ en fixant $v(x_i)$ selon le sens du parcours du gadget $H_i$.
])

#goal(title : [Méthode pour montrer qu'un problème A est NP-complet])[
  - Montrer que A est dans NP
  - Trouver une réduction $B <= A$ avec B NP-difficile
    - Expliquer comment transformer les instances de B en instance de A.
    - Montrer que cette transformation est polynomiale en la taille des instances
    - Montrer qu'elle préserve la positivité ($top_B <==> top_A$)
]