#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*#ul[Chapitre 6 :]\  Grammaires non contextuelles*
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
== Introduction

Les langages rationnels sont utiles pour détecter les motifs présents (par exemple dans un code source), mais pas pour en déduire la structure de ce qui est lu.

Un autre problème des langages rationnels : ils ne capturent pas certains langages importants comme le langage de Dyck

#goal(title : [Objectifs])[
  - Découvrir une classe de langages plus expressive que les langages rationnels.
  - Découvrir un nouveau formalisme de construction de langage.
  - Effleurer les concepts d'analyse lexicale et syntaxique.
]

#info(title : [Point Culture : La hiérarchie de Chomsky])[
  #set text(size : 10pt)
  #table(
  columns: (auto, auto, auto),
  inset : 10pt,
  table.header(
    [Dispotisif de construction\ = Grammaire], [Classe de langage], [Dispositif de reconnaissance\ = Machine]
  ),
  [Grammaires de type $0$], [Langages récurisvement\ énumérables], [Machines de Turing],
  [Grammaires de type 1\ = Grammaires contextuelles], [Langages contextuels], [Automates linéairements\ bornés],
  [Grammaires de type $2$\ = Grammaires non contextuelles], [Langages algébriques], [Automates à pile],
  [Grammaires de type $3$\ = Grammaires régulères], [Langages rationnels], [Automates finis]
 )
 #set text(size : 13pt)
]

#pagebreak()
= Grammaires non contextuelles

== Définitions

#definition([
  Une *grammaire non contextuelle* ou *hors contexte* / *algébrique* est un quadruplet $G = (Sigma, V, S, cal(R))$ avec
  - $Sigma$ est un alphabet, dont les symboles sont dits "*(symboles) terminaux*"
  - $V$ est un alphabet dont les symboles sont dits "*variables*"\ ou *non-terminaux*.\
  - $Sigma inter V = emptyset$
  - $S in V$ est l'"*axiome*" de G
  - $cal(R)$ est une #ul[partie finie] de $V times (V union Sigma)^*$, chaque élément de $cal(R)$ est une *règle de production*
])

#exemple[

  $G = ({a,b}, {S}, S, {(S, epsilon), (S, a S b)})$ est une grammaire

  #info(title : [Conventions])[
    - À la place d'écrire $(X, m)$ pour décrire une règle,\ on écrit $X -> m$, où ($->$ se lit "sse réécrit en")

    - Si $X -> m_1$ et $X -> m_2$ sont des règles, on écrit plutôt $X -> m_1 | m_2$

    - Souvent, on écrira les terminaux avec des lettres minuscules et les non-terminaux avec des lettres majuscules.
  ]

  Ainsi, on peut présenter $G$ de la manière suivante :\
  $G$ est la grammaires dont les règles sont : $S -> epsilon | a S b$
]

#remarque([
  $G$ engendre ${a^n b^n | n in NN}$
])

#info(title : [Point Culture : Pourquoi "hors contexte" ?])[
  Dans les grammaires non-contextuelles, on remplace un non-terminal indépendament du contexte et des symboles extérieurs. Dans une grammaire contextuelle, on pourrait avoir des règles comme : $a X -> a Y$ et $b X -> b Z$ ou bien $X Y -> a b | z$ et $a X -> Y b$
]

== Dérivations

#definition([
  Soit $G = (Sigma, V, S, cal(R))$ une grammaire non-contextuelle et $u in (Sigma union V)^*$.\ On dit que :
  - $u$ se *dérive immédiatement* en $v$ dans G s'il existe une règle\
    $X -> m$ telle que $u = u_1 X u_2$ et $v = u_1 m u_2$\
    On le note $u => v$
  - Si $u_1 in Sigma^*$, on dit que la dérivation est immédiate à gauche
  - Si $u_2 in Sigma^*$, on dit que la dérivation est immédiate à droite\
    Notées $u =>_g v$ et $u =>_d v$
])

#remarque([
  Une dérivation peut n'être ni gauche ni droite.
])

#exemple([
  Avec $G_D$ telle que $ cases(S -> T S | epsilon, T -> a S b) $

  TSaSbT se dérive immédiatement à gauche en aSbSaSbT\
  TSaSbT se dérive immédiatement en TSabT
])

#definition([
  Soit $G = (Sigma, V, S, cal(R))$ une grammaire non-contextuelle et $u in (Sigma union V)^*$.\ On dit que $u$ se dérive en $v$ s'il existe une suite de dérivations immédiates (potentiellement vide) $(u_i => v_i)_(i in [|0,k|])$ tel que $u_0 = u$ et $v_k$ = $v$ et $u_(i+1) = v_i$.

  On note $u =>^* v$.

  On note $u => ^k v$ si la dérivation permettant de passer de $u$ à $v$ fait $k$ étapes.
])

#remarque([
  - Pour tout mot $u$, $u =>^* u$
  - Si toutes les dérivations immédiates étaient gauche on dit que la dérivation est gauche, idem pour droite.
])
#pagebreak()
#exemple([
  Dans $G_D$, $S =>^* a b a a b b$\
  En effet,\ $S => T #ul[S] => #ul[T] S T => a #ul[S] b T S => a b #ul[T] S => a b a #ul[S] b S => a b a #ul[T] S b S => a b a a #ul[S] b #ul[S] b #ul[S] => a b a a b b$ 
])

#remarque([
  Si $u =>^* v$, il n'y a pas unicité de la dérivation
])

#remarque([
  Dans le programme, la dérivation se note $=>$ et $=>^*$ mais on retrouve aussi parfois $->$ et $->^*$
])

== Langages algébriques

#definition([
  Le *langage engendré* par une grammaire $G = (Sigma, V, S ,cal(R))$ est\ $cal(L)(G) = {m in Sigma^* | S =>^* m}$
])

#exemple([
  $G_D$ engendre le langage de Dyck à une parenthèse\ $cal(D) = {epsilon} union {m in {a,b}^* | exists (u,v) in cal(D)^2, m = a u b v}$

  Par double inclusion
  - $cal(D) subset cal(L)(G_D)$

    Montrons par récurrence forte sur $n in NN$, $cal(H)_n : $ tout mot de $cal(D)$ de longueur $n$ est dans $cal(L)(G_D).$\

    - Le seul mot de longeur $0$ dans $cal(D)$ est $epsilon$. Or, $S => epsilon$ dans $G_D$ donc $epsilon in cal(L)(G_D)$\
    - Soit $n in NN$ tel que $forall k <= n, cal(H)_k$. Soit $m in cal(D)$ de longueur $n+1$.\
      Alors il  existe $(u,v) in cal(D)^2$ tel que $m = a u b v$ avec $u$ et $v$ de taille $< n$ donc on peut leur appliquer l'hypothèse de récurrence. Ainsi, $S =>^* u$ et $S =>^* v$\
      Ainsi, $S => T S => a S b S =>^* a u b v = m$\ Donc $m in cal(L)(G_D)$
  
  - $cal(L)(G_D) subset cal(D)$

    Montrons par récurrrence forte sur $n in NN^*$, $cal(H)_n$ : pour tout $m in {a,b}^*$,\ si $S =>^n m$ alors $m in cal(D)$

    - Pour $n = 1$, le seul mot engendrable est $epsilon$ et $epsilon in cal(D)$
    - Soit $n in NN^*$ tel que $forall k <= n, cal(H)_k$. Soit $m in {a,b}^*$ tel que $S =>^(n+1) m$\
      Comme $n+1 >= 2$, la première dérivation immédiate est $S => T S$. On peut supposer que la dérivation immédiate suivante est $T S => a S b S$ car T doit être éliminé et la grammaire est hors-contexte.\
      Ainsi, $S => T S => a S b S =>^(n-1) m$. Ainsi, il existe $(u,v) in {a,b}^*$ et $n_1, n_2 in NN$ tel que
      $ cases(m = a u b v, S =>^(n_1) u, S =>^(n_2) u, n_1 + n_2 = n-1) $
      Comme $n_1 < n$ et $S =>^(n_1) u, u in cal(L)(G_D)$ donc $u in cal(D)$\
      Comme $n_2 < n$ et $S =>^(n_2) u, u in cal(L)(G_D)$ donc $u in cal(D)$

      Ainsi, $m in cal(D)$
])

#goal(title : [Méthode])[Pour montrer que la langage engendré par une grammaire connue $G$ est le langage $L$, on montre :
- $cal(L)(G) subset L$ se montre par récurrence forte sur la longueur dérivations dans G.
- $L subset cal(L)(G)$ se montre par récurrence forte sur la longueur des mots de $L$.
]

#exemple([
  $G$ tel que $S -> a S b | epsilon$ engendre ${a^n b^n | n in NN}$

  - Montrons par récurrence forte sur $n in NN^*$,\ $cal(H)_n :$ tout mot $u in {a,b}^*$ tel que $S =>^n u$ est dans $L$
  
    La seule dérivation de longueur $1$ dans $G$ est $S => epsilon$ et $epsilon in L$.

    Soit $n in NN^*$ tel que $forall k <= n, cal(H)_k$ et soit $u in {a,b}^*$ tel que $S =>^(n+1) u$.\
    Cette dérivation commmence par $S => a S b$ sinon elle serait trop courte.\ Ainsi, $S => a S b =>^n u$.  Donc il existe $n in {a,b}^*$ tel que $S =>^n v$ et $u = a v b$.\
    En appliquant l'hypothèse de récurrence à $v$, $v in L$ donc il existe $i in NN$ tel que $v = a^i b^i$.\
    Ainsi $u = a^(i+1) b^(i+1) in L$

  - Montrons par récurrence forte sur $n in NN$, \ $cal(H)_k : $ tout mot de $L$ de longueur $n$ est engendré par $G$.

    Le seul mot de longueur $0$ dans $L$ est $epsilon$. Or $S => epsilon$ dans $G$ donc $epsilon in cal(L)(G)$.
   #colbreak()
    Soit $n in NN$ tel que $forall k <= n, cal(H)_k$ et soit $u in L$ de longueur $n + 1$.\
    $u in L$ donc $n +1$ est pair.\
    Ainsi, il existe $i in NN^*$ tel que $u = a^i b^i = a a^(i-1) b^(i-1) b$ avec $a^(i-1) b^(i-1) in L$ car $i eq.not 0 $ et ce mot est longueur $< n+1$.\ 
    On applique l'hypothèse de récurrence sur ce mot : il existe une dérivation $S =>^* a^(i-1) b^(i-1)$.\ Alors $S => a S b =>^* a a^(i-1) b^(i-1) b = u$ est une dérivation dans $G$ et donc $u in cal(L)(G)$.
])

#exemple[\
  - Le langage engendré par $S -> a S | b$ est dénoté par $a^* b$

  - Le langage engendré par\ $ cases(S -> T S | epsilon, T -> a_1 S overline(a_1) | a_2 S overline(a_2) | ... | a_n S overline(a_n))  $ sur ${a_1,  overline(a_1), ..., a_n, overline(a_n)}$ est le langage de Dyck à $n$ couples de parenthèses.

  - le langage engendré par $S -> S T | epsilon$, $T -> a S b$ est le langage de Dyck à une parenthèse.
]

#remarque([
  Un même langage peut être engrendré par deux grammaires différentes. on dit que ces grammaires sont #ul[faiblement équivalentes].
])

#exemple[
  On consiède la grammaire $G_C$\ dont les terminaux sont ${x,y,0,1,...,9,==,"if","else",(,),;,=,<,>, }$\
  dont les non-terminaux sont {I, E, T, V, N, C}\
  dont l'axiome est I\
  dont les règle sont :\
  I → if (T) I | if (T) I else I | E;\
  E → V = N\
  V → $x | y$\
  N → CN | C\
  T → V < N | V > N | V == N

  Par exemple, if ($x < 36$) $y$ = 7; est engendré par $G_C$.
]
#pagebreak()
== Langages algébriques et langages rationnels

#definition([
  L'ensemble des *langages algébriques* sur $Sigma$, noté Alg($Sigma^*$) est l'ensemble des langages engendrés pas une grammaire algébrique.
])

#prop([
  Alg($Sigma^*$) $eq.not scr(P)(Sigma^*)$
])

#demo[\
  $scr(P)(Sigma^*)$ est indénombrable\
  Alg$(Sigma^*)$ est dénombrable car il y a moins de langages algébriques que de grammaires sur $Sigma$. Or, l'ensemble des grammaires est l'union sur $n in NN$ de l'ensemble des grammaires décrites par $n$ caractères, qui est fini.
]

#info(title : [Point Culture])[
  ${a^n b^n c^n | n in NN}$ n'est pas algébrique.
]

#prop[
  Rat($Sigma^*$) $subset.neq$ Alg($Sigma^*$)
]

#demo[\
  Si on a l'inclusion, elle est stricte car ${a^n b^n | n in NN} in "Alg"({a,b}^*)\\"Rat"({a,b}^*)$

  Soit $L in $ Rat($Sigma^*$). Par le théorème de Kleene, il existe $A = (Sigma, Q, q_0, F, delta)$ un ADC qui reconnaît L.

  Considérons alors $G_L = {Sigma, V, X_q_0, cal(R)}$ avec :
  - $V = {X_q | q in Q}$ qui est bien un alphabet car $Q$ est fini.
  - $cal(R) = {X_q  -> a X_(delta(q,a)) | q in Q, a in Sigma} union {X_q -> epsilon | q in F}$

  $G_L$ engendre le langage $L$.

  #ul[Étape 1 :] Montrons par récurrence sur $n in NN$ :\
  $cal(H)_n$ : Pour tout mot $u$ de longueur $n$, et pour tout $q,q' in Q$, $X_q =>^* u X q'$ si et seulement si $delta^*(q, u) = q'$

  Laissé en exercice au lecteur

  #ul[Étape 2 :] Montrons que $L = cal(L)(G_L)$ par double inclusion

  Si $u in L$, il existe $q_f in F$ tel que $delta^*(q_0, u) = q_f$.\
  Il existe alors une dérivation $X_q_0 => ^* u X_q_f$.\
  En appliquant $X_q_f -> epsilon$, on a $X_q_0 =>^* u$ donc $u in cal(L)(G_L).$

  Si $u in cal(L)(G_L)$, il existe une dérivation $X_q_0 =>^* u$\ Comme $u$ ne contient plus de variable et vu la forme des règles de $G$\ cette dérivation se décompose en $X_q_0 =>^* u X_q_f => u$.\ Alors $delta^*(q_0, u) = q_f in F$, donc $u$ est reconnu par A et $u in L$.
]

= Arbres syntaxiques

== Défintion

#definition([
  Soit $G = (Sigma, V, S, cal(R))$ uen grammaire

  Un *arbre de dérivation* dans $G$ est un arbre dont les noeuds sont des étiquettés par des éléments de $V union Sigma union {epsilon}$ tel que :
  - La racine est étiquettée par S
  - Les feuilles sont étiquettées par des éléments de $Sigma union epsilon$
  - Les noeuds internes sont étiquettés par des éléments de $V$
  - Si $u_1, ..., u_n$ sont les étiquettes des fils du noeud étiquetté par $X in V$ alors $X -> u_1 .... u_n in cal(R)$
])

#remarque([
  On dit aussi *arbre syntaxique* ou *arbre d'analyse*
])

#definition([
  Si $u$ est le mot obtenu en concaténant les feuilles les feuilles d'un arbre syntaxique $A$ de gauche à droite, on dit que $A$ est #ul[un] *arbre syntaxique pour $u$*
])
#exemple([
  Avec $G_D$ voici un arbre syntaxique pour ab.

  $S => T S => A S b S => a b S => a b$\
  $S => T S => T => a S b => a b$

  Ces deux dérivations différentes ont le même arbre syntaxique, ce qui montre qu'elles ont la même structure.

  #raw-render(
    ```
    graph{
      S1 [label = "S"]
      S1 -- T
      S2 [label = "S"]
      S1 -- S2
      T -- a
      S3 [label = "S"]
      T -- S3
      e1 [label = "ε"]
      S3 -- e1
      T -- b
      e2 [label = "ε"]
      S2 -- e2
    }
    ```
  )

  
])

#remarque([
  Deux dérivations différentes peuvent correspondre au même arbre syntaxique
])

#warning([
  Parfois, on peut avoir des mots qui ont plusieurs arbres syntaxiques vraiment différent
])

#exemple([
$S -> S + S | S times S | 2$ sur {2, +, $times$}\
Observons le mot $2 + 2 times 2$, il a deux arbres syntaxiques différents :

#raw-render(
   ```
    graph{
      subgraph graph1{
        S1 [label = S]
        S2 [label = S]
        Plus [label = "+"]
        S3 [label = S]
        
        S1 -- S2
        S1 -- Plus
        S1 -- S3
        
        Deux1 [label = "2"]
        S2 -- Deux1

        S4 [label = "S"]
        Times [label = "×"]
        S5 [label = "S"]

        S3 -- S4
        S3 -- Times
        S3 -- S5

        Deux2 [label = 2]
        Deux3 [label = 2]

        S4 -- Deux2
        S5 -- Deux3
      }
      subgraph graph2{
        S6 [label = "Faire l'inverse avec fois d'abord"]
      }
    }
   ```
)

$2 + (2 times 2) = 6$ mais $(2 + 2) times 2 = 8$
])

== Grammaires ambigues

#definition([
  Une grammaire $G$ est dite #ul[ambigue] s'il existe $u in cal(L)(G)$ qui admet deux arbres syntaxiques différents
])

#warning[
  Pour avoir ambiguité, il faut bien deux #ul[arbres] différents, et pas deux dérivations différentes.

  En revanche, l'existence de deux dérivation gauche (ou droite) différents est bien le signe que la grammaire est ambigue.
]

#exemple([
  La grammaire $G_C$ est ambigue car\ if ($x < 5$) if ($x == 3$) $y$ = 36 ; else $y$ = 42; admet deux abres syntaxiques différents

  #ul[Fait sur feuille, prend en photo et fait pas chier]

  L'ambiguité vient du fait que le else peut être avec un if ou l'autre, on peut reparenthéser de deux manières:
  #colbreak()
  ```c
  if (x < 5){
    if (x == 3) y = 36;
    }
    else{
      y = 42;
    }
  }

  if (x < 5){
    if (x == 3) y 36;
    else y = 42;
  }
  ```

  Ce problème est *le problème du "dangling-else"*

  #ul[Solutions :]

  - Utiliser du parenthésages
  - Fixer des conventions de priorité, par exemple en C le else se rattache au if le plus proche
  - Trouver une autre grammaire pour le langage qui ne soit pas ambigue
])

#question([
  Peut-on éviter les grammaires ambigues ?
])

#exemple([\
  $S -> S S | a$ est ambigue. En effet, le mot aaa admet deux arbres syntaxiques différents (cf. Fig 1)

  Cependant, $cal(L)(G)$ est dénoté par $a^+$. Donc $G' : S -> a S | a$ engendre aussi $a^+$.\
  Or, cette grammaire n'est pas ambigue car tout mot qu'elle engendre l'est via une unique dérivation, donc admet un unique arbre syntaxique

  #definition([
  Un langage est dit *inhéremment ambigu* ou *intrinsèquement ambigu* si toute grammaire qui l'engendre est ambigue.])

  Ainsi, ici le langage dénoté par $a^+$ n'est pas intrinsèquement ambigu.
])




  #figure(caption : [Deux arbres syntaxiques pour aaa])[
  #raw-render(
    ```
    graph{
      subgraph graph1{
        S1 [label = "S"]
        S2 [label = "S"]
        S3 [label = "S"]
        a1 [label = "a"]
        S1 -- S2
        S1 -- S3
        S3 -- a1
        S4 [label = "S"]
        S5 [label = "S"]
        S2 -- S4
        S2 -- S5
        a2 [label = "a"]
        a3 [label = "a"]
        S4 -- a2
        S5 -- a3
      }
      subgraph graph2{
        S11 [label = "S"]
        S12 [label = "S"]
        S13 [label = "S"]
        a11 [label = "a"]
        S11 -- S12
        S11 -- S13
        S12 -- a11
        S14 [label = "S"]
        S15 [label = "S"]
        S13 -- S14
        S13 -- S15
        a12 [label = "a"]
        a13 [label = "a"]
        S14 -- a12
        S15 -- a13
      }
    }
    ```
  )]

#info(title : [Point Culture])[
  CG : {$a^n b^n c^m | n,m >= 0} union {a^n b^m c^m | n,m >= 0}$ est intrinsèquelement ambigu.
]

#question([
  Est-ce qu'on peut éviter les langages "très" ambigus ?
])

#definition([
  Le *degré d'ambiguité* d'une grammaire $G$ est la borne supérieure du nombre d'arbres syntaxiques pour un même mot du langage.
])

#memo(title : [Problème])[
  Il existe des langages pour lesquels toute grammaire qui l'engendre a un degré d'ambiguité infini.
]

#thm[
  Le problème : #deci([AMBIGUE],[Une grammaire algébrique $G$] ,[Est-ce que $G$ est ambigue ?]) est indécidable
]

= Formes normales et stabilités de Alg($Sigma^*$)

== Grammaires réduites

#definition([
  Si $G = (Sigma, V, S, cal(R))$ est une grammaire et $X in V$,\ on note $cal(L)(G,X) = {m in Sigma^* | X =>^* m}$
])

#remarque([
  $cal(L)(G) = cal(L)(G,S)$
])

#definition([
  Une grammaire $G$ est dite *réduite* si :
  + Pour tout $X in V$, $cal(L)(G,X) eq.not emptyset$
  + Pour tout $X in V$, $exists (m_1, m_2) in (Sigma union V)^*$ tel que $S =>^* m_1 X m_2$
])

#remarque([
  + est l'analogue de la notion d'état co-accessible.
  + est l'analogue de la notion d'état accessible.

  Réduite est l'analogue de la notion d'état émondé.
])

#info(title : [Vocabulaire])[
  Une variable $X$ qui vérifie 1. est un symbole productif.\
  Une variable $X$ qui vérifie 2. est un symbole accessible.
]

#prop([
  Pour toute grammaire $G$, il existe $G'$ réduite telle que $cal(L)(G) = cal(L)(G')$
])

#demo([ Voici un algorithme permettant de créer $G'$ :
+ On calcule les symboles productifs récursivement de la façon suivante :\
  $p_0 = Sigma$ et $forall n >= 0, p_(n+1) = p_n union {X in V | X-> m, m in p_n^*}$

  $(p_n)_(n in NN)$ stationne car elle croît et tous les $p_n$ sont inclus dans $Sigma union V$ qui est fini. Les symboles producteurs de $G$ sont ceux de $p_infinity inter V$, appelés $P$.
+ On supprime les symboles non-producteurs

+ On calcule les symboles accessibles récursivement  de la façon suivante :\
  $A_0 = {S}$ et $forall n >= 0$, \ $A_(n+1) = A_n union {X in V | exists Y in A_n, (m_1, m_2) in (Sigma union V)^*, Y -> m_1 X m_2 in cal(R)}$

  Cette suite stationne en l'ensemble des smboles accessibles $A$ de $G$.

+ $G' = (Sigma, P inter A, S, cal(R'))$ avec $cal(R')$ est $cal(R)$ dans lequel on enlève les règles qui font intervenir des variables qui ne sont pas dans $P' inter A$. Et $G'$ convient.
])

#exemple([
  $Sigma = {a,b}$, $V = {S, A, B, C}$\
  $S -> a A | b A B | a b A S | B C$\
  $A -> a B | b A | a$\
  $B -> a B | b B$\
  $C -> a A | b S | a$\

  $p_0 = Sigma , p_1 = {A, C} union Sigma$, $p_2 = {A, C, S} union Sigma$, $p_3 = {A, C, S} union Sigma$\

  On supprimes les symboles non producteur (B)\
  $S -> a A | a b A S$\
  $A -> b A | a$\
  $C -> a A | b S | a$

  $A_0 = {S}, A_1 = {S, A}, A_2 = {S, A}$\
  $S -> a A | a b A S$\
  $A -> b A | a $
])

#warning([
  Attention à l'ordre de calcul : si on calcule les accessibles d'abord et les producteurs ensuite, la grammaire obtenue n'est pas forcément réduite.

  $S -> a | S_1 ; S_1 -> S_1 S_2 ; S_2 -> b$\
  Ici toutes les variables sont accessible.\
  Les producteurs sont ${S_2, S}$.\
  Si on supprime $S_1$, on obtient $S-> a ; S_2 -> b$ et ainsi $S_2$ n'est plus accessible.
])

#info(title : [Conséquence])[
  On peut décider si $cal(L)(G) = emptyset$ quand $G$ est une grammaire algébrique : il suffit de calculer l'ensemble des symboles producteurs et vérifier si S est dedans.\ Cela peut se faire en $O(|V"|"|cal(R)|)$ où $|cal(R)|$ est le nombre de symboles utilisés pour écrire les règles.
]
#pagebreak()
== Grammaires propres

#definition([
  $G$ est *propre* si elle ne contient aucune règle de la forme $X -> epsilon$ ou $X -> Y$ avec $(X, Y) in V^2$
])

#prop([
  Pour toute grammaire $G$, om existe une grammaire propre $G'$ telle que $cal(L)(G') = cal(L)(G)\\{epsilon}$
])

#remarque([
  Si c'est vraiment important de conserver $epsilon$, on peut rajouter quelques règles à $G'$ pour rattraper la génération
])

#demo([
  + On supprime les $epsilon$-productions (c'est à dire $X -> epsilon$)\
    On ne peut pas juste les supprimer :\ si on supprime le $epsilon$ dans $ S-> a S b | epsilon$, on perd (tous) les mots du langage.

    On calcule récursivement :\
    $E_0 = {X in V | X -> epsilon in cal(R)}$\
    $forall n in NN, E_(n+1) = E_n union {X in V | X -> m_1...m_k in cal(R), m_1 in E_n}$

    $(E_n)_(n in NN)$ stationne en $E = {X in V | X =>^* epsilon}$

    Pour toutes les règles $Y -> m_1...m_k$ on ajoute les règles $Y -> m'_1...m'_k$\ avec $m'_i = m_i$ si $m_i in.not E$, et $m'_i = m_i$ ou $epsilon$ si $m_i in E$.\

    Puis on supprime les $X -> epsilon$

    Pour $S -> a S b S | epsilon $, $S$ est $epsilon$-producteur et on obtient les règles :\
    $S -> a S b S | a b S | a S b | a b$

  + On supprime les règles de la forme $X -> Y$ avec $(X,Y) in V$\
    On ne peut toujours pas simplement les supprimer :\
    $S -> X ; X -> a$ donnerait $emptyset$ au lieu de $S -> a$

    Pour cela, on calcule pour toute variable $X$ l'ensemble\ $E(X) = {Y in V | Y =>^* X}$.\
    $E(X)$ se calcule de la manière suviant :
    - On construit le graphe orienté dont les sommets sont les variables et tel que $(X,Y)$ est un arc si et seulement si $X -> Y in cal(R)$.

    - On parcourt $G^T$ à partir de $X$ : les sommets atteints forment $E(X)$.

    Ensuite, pour chaque variable $X$, pour chaque règle $X -> alpha$ avec $alpha in.not V$ et pour chaque $Y in E(X)$, on ajoute la règle $Y -> alpha$

    Enfin, on supprime les règles de la forme $X -> Y$.
])

#info(title : [Conséquence])[
  #deci([MOT],
  [$G$ une grammaire algébrique sur $Sigma$ $", "m in Sigma^*$],
  [$m in cal(L)(G) ?$]) est décidable
]

#demo([
  - Si $m = epsilon$, on calcule $E = {X in V | X =>^* epsilon}$.\
    On cherche si $S in E$

  - Si $m eq.not epsilon$, on proprifie $G$ et on obtient une grammaire $G'$ telle que $m in cal(L)(G)$ si et seulement si $m in cal(L)(G')$.

    Comme $G'$ est propre, ses règles sont de la forme :\
    - $X -> a in Sigma$
    - $X -> u$ avec $|u| >= 0$

    Donc appliquer une règle dans $G'$, soit produit un terminal, soit augmente strictement la taille du mot engendré.

    Ainsi, une dérivation de $m$ dans $G'$ ne peut pas avoir une longueur supérieure à $2 times |m|$. Il y a donc un nombre fini de dérivations de longueur inférieur à $2 times |m|$, il suffit alors de les construire toutes et regarder si l'une d'entre elle donne $m$.
])

#info(title : [Point Culture])[
  Le problème MOT est dans P via l'algorithme de Cocke-Younger-Kasama (CYK).

  Pour des grammaires avec des contraintes dessus, il y a des algorithmes d'analyses (LL, LR) qui permettent de faire ceci en temps polynomial "rapide".
]
#pagebreak()
== Stabilité de Alg$(Sigma^*)$

#prop[
  Alg($Sigma^*$) est stable par l'union, la concaténation et l'étoile.
]

#demo([
  Soient $L, L' in "Alg"(Sigma^*)$

  Il existe $G = (Sigma, V, S, cal(R))$ et $G' = (Sigma, V', S', cal(R'))$ \ tels que $cal(L)(G) = L, cal(L)(G') = L'$

  - $L | L' in "Alg"(Sigma^*)$ car il est engendré par\
    $G'' = (Sigma, V union V' union {S_0}, cal(R) union cal(R') union {S_0 -> S | S'})$

  - $L L' in "Alg"(Sigma^*)$ car il est engendré par\
    $G'' = (Sigma, V union V' union {S_0}, cal(R) union cal(R') union {S_0 -> S S'})$

  - $L^* in "Alg"(Sigma^*)$ car il est engendré par\
    $G'' = (Sigma, V union {S_0}, S_0, cal(R) union {S_0 -> S_0 S | epsilon})$
])

#prop[
  $"Alg"(Sigma^*)$ n'est pas stable par intersection.
]

#demo([\
  $L_1 = {a^n b^m c^m | (n,m) in NN}$\
  $L_2 = {a^n b^n c^m | (n,m) in NN}$\
  sont algébriques mais $L_1 inter L_2 = {a^n b^n c^n | n in NN}$ ne l'est pas.

  Par exemple, $L_1$ est algébrique car voici une grammaire qui l'engendre :\
  $S -> a S | B$ ; $B -> b B c | epsilon$
])

#prop([
  $"Alg"(Sigma^*)$ n'est pas stable par complémentaire, par différence ou par différence symétrique.
])

#demo([
  Conséquence directe de la non-stabilité par l'intersection.
])

#info(title : [Point Culture])[
  Si $L$ est un langage algébrique et $K$ est un langage rationnel, alors l'intersection des deux est algébrique.

  En partiuclier, pour tout $n in NN$ et pour tout langage rationnel $K$,\ $K inter D_n$ est algébrique avec $D_n$ le langage de Dyck à $n$ parenthèses.

  Ce résultat a une presque réciproque : le théorème de Chomsky-Schützenberger : 

  Si $L$ est algébrique, il existe un langage rationnel $K$, un entier $n$ et un morphisme alphabétique $mu$ tel que $L = mu(K inter D_n)$.
]