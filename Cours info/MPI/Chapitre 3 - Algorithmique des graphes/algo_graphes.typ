#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*Algorithmique des graphes (2)*
])

Sources :
- Erickson, #underline("Algorithms")
- Cormen, #underline("Algorithmique")

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
  	#pagebreak()
  	#if it.numbering != none [
  		#counter(heading).display(it.numbering)
  	]
  	#it.body
  ]
#set heading(numbering: "I.1.a")
#set par(justify: true)

= Rappels sur les parcours

*Rappel :*\
  - Dans un graphe non-orienté (S,A) $ sum_(s in S) "deg"(s) = 2|"A"| $
  - Dans un graphe orienté (S, A), avec $"deg"_(+(-))$ le degré sortant (entrant)
  $ sum_(s in S) "deg"_+(s) = sum_(s in S) "deg"_-(s) = |A| $

== Principes

Algorithme générique de parcours "Whatever-first-search"\
Entrée : G = (S,A) un graphe ; $s in S$\
Effet : parcours de G à partir de $s$

```
Parcours(G,s)
1.  Initialiser une structure de marquage
1.  Marquer les sommets de G comme étant non vus
2.  Initialiser un sac
2.  Mettre s dans le sac
2.  Tant que le sac est non-vide{
2.    Retirer un sommet v du sac
1.    Si v n'est pas vus{
1.      Marquer v comme vus
3.      Pour tout voisin u de v{
2.        Mettre u dans le sac
      }
    }
  }
```

#prop[Les sommets accessibles dans G depuis s sont exactement les sommets marqués comme vus lors du Parcours(G, s)\

La complexité de Parcours (G, s) avec G = (V,E) si
- les opérations  d'insertion et de suppression dans le sac se font en $O(k)$ avec $k = |"sac"|$
- Le graphe est représenté par listes d'adjacence
- le marquage se fait via un tableau de taille |V|\
est en $O(|"V"|+k|"E"|)$]

#remarque[
  La complexité dépend
  - 1. De l'implémentation de la structure de marquage
  - 2. De l'implémentation du sac
  - 3. De l'imprémlentation du graphe
]

#demo[- Terminaison : le variant (nb de sommets non vus, |sac|) décroit strictement pour l'ordre lexicographique au cours de la boucle "Tant que".\ Comme cet ordre est bien fondé sur $N^2$

- ($==>$) Montrons par récurrence sur $n in N$, H(n) : "si u est acessible depuis s via un plus court chemin à n arrêtes alors u est marqué comme< vu"\
 - Si $n=0$, il suffit de montrer que s est marqué, et c'est le cas : cf. déroulé de l'algo

 - Soit $n$ tel que H($n$). Soit $u$ un sommet à distance $n+1$ de s.\ \ Alors considérons v le sommet précédant u dans un plus court chemin de s vers u. Le chemin de s à v est un plus court chemin (sinon, le plus court chemin de s à u n'aurait pas une longueur $n+1$)\ \ On applique alors l'hypothèse de récurrence à v : il a été marqué comme vu.\ D'après l'algo, on a effectué les instructions l.9-11 pour v. En particulier, on a ajouté son voisin u au sac et comme u en est sorti (le sac est vide à la fin), il a été marqué

- $(<==)$ Par l'absurde, supposons qu'il existe v un sommet marqué comme vu et non accessible depuis s.\ Prenons v le $1^("er")$ tel sommet qui entre dans le sac.\ Comme s est accessible depuis s, $"v" eq.not "s"$, donc v a été ajouté au sac lors du\ traitement d'un sommet u dont v est voisin.\ u est nécessairement accessible depuis s par définition de v (s'il ne l'était pas, v ne serait pas le $1^("er")$ mauvais sommet)\ Ainsi, v est accessible depuis s.

- Complexité \
  - Initialisation : $O(|"V"|)$
  - Coût de la boucle tant que :
    - Coût des marquages : $O(|V|)$
    - Coût des insertions et suppressions $= 2times"coût des insertions"$\ En effet, le coût d'une insertion et d'une suppression sont égaux, et chaque sommet inséré doit être supprimé \ \ \ Chaque sommet est ajouté au sac au plus $"deg"_-(s)$ fois (ou deg(s) si non-orienté) \ Donc au global, le nombre d'insertion est $ sum_(s in V)"deg"_-(s) = |E| "dans le cas orienté" $
    $ sum_(s in V)"deg"(s) = 2times |E| "cas non-orienté" $ \
  Finalement, on se retrouve avec un $O(|V|+k(|E|)|E|)$]

#remarque[On peut enrichir WES en adaptant le sac, en calculant des dates de début/fin de traitement, en stockant les prédécesseurs dans le parcours]

== Parcours en profondeur décoré

#underline("But") : Parcourir en profondeur complet un graphe en calculant au passage :
- Les dates de début de de fin de traitement des sommets
- La classification des arcs
#pagebreak()
```p
Parcours(G = (V,E)) =
    P <- pile vide
    D, F <- tableaux de |V| cases contenant des 0 //D servira de marquage
    t <- 0 //Horloge
    explorer (s) = 
           Ajouter (-1, s) à P
           Tant que P non vide
                (u, v) <- extraire de P //v est le sommet courant et u son prédécesseur
                Si u = -1
                        t <- t+1
                        D[v] <- t
                        ajouter (v,v) à P
                        pour tout w voisin de v
                                Ajouter (v,w) à P
                Sinon, si u = v
                        t <- t+1
                        F[v] <- t
                Sinon, si D[v] = 0
                        t<t+1
                        D[v] <- t
                        Ajouter (u, v) aux arcs arbres
                        Ajouter (v, v) à P //Pour pouvoir détercter la fin de traitement de v
                        Pour tout w voisin de v
                                Ajouter (v, w) à P
                Sinon //D[v] != 0
                        Si D[v] < D[u]
                            Si F[v] = 0
                                Ajouter (u,v) aux arcs arrières
                            Sinon
                                Ajouter (u,v) aux arcs transverse
                        Sinon
                            Ajouter (u,v) aux arcs avant
    Pour tout s dans V, explorer(s)
```

#figure(caption: [Un graphe que l'on va parcourir (oui oui)])[
  #raw-render(
    ```
    digraph {
      0 -> 2
      0 -> 1
      1 -> 2
      1 -> 3
      1 -> 4
      3 -> 0
      3 -> 5
      4 -> 1
      4 -> 2
      5 -> 10
      6 -> 1
      6 -> 9
      7 -> 8
      8 -> 6
      9 -> 7
      9 -> 10
      10 -> 11
      11 -> 5
    }
    ```
  )
]

Si on a le choix, on explore le sommet de plus petit numéro
#pagebreak()
#figure(image("graph.png"),caption :[Le parcours en question (à refaire au propre)])

#figure(image("arbre.png"), caption : [Visualisation des types d'arcs sous forme d'arbre])

#prop[Si u et v sont deux sommets :\ [D[u], F[u]] et [D[v], F[v]] sont soit disjoints soit invlus l'un dant l'autre]

#underline("Démonstration :")\
- Supposons $D[u] < D[v]$
    - Si $F[u] < D[v]$, on a disjonction
    - Sinon, $F[u] > D[v]$ et donc v est accessible depuis u\ Donc l'arc fictif (v,v) est mis dans la pile au dessus de l'arc fictif (u,u).\ (v,v) sera donc traité avant (u,u), donc $F[v]<F[u]$. D'où l'inclusion

#info(title: "Définition")[
- (u,v) est un arc avant si $D[u]<D[v]<F[v]<F[u]$
- (u,v) est un arc arrière si $D[v]<D[u]<F[u]<F[v]$
- (u,v) est un arc transverse si [D[u], F[u]] et [D[v], F[v]] sont disjoints
]

#remarque[
  Un arc arbre est donc un arc avant particulier, c'est celui qui permet de découvrir v pour la $1^("ère")$ fois
]

= Calcul de composante fortement connexe
Contexte : graphes orientés

== Rappels sur les composantes fortements connexes

#definition[Une *composante fortement connexe* (CFC) est une classe d'équivalence pour la relation $arrows.rl$\
$u arrows.rl v$ si et seulement si il existe un chemin de u vers v et un chemin de v vers u]

#remarque([On confond souvent une CFC avec le sous graphe qu'elle induit])

#example[
  #figure[
    #raw-render(
    ```
    digraph {
      s -> w
      w -> v
      v -> s
      s -> q
      w -> q
      t -> q
      x -> z
      z -> x
      x -> t
      q -> y
      y -> t
      y -> r
      u -> r
      y -> u
    }
    ```
  )
  ]

  Ici, les CFC sont {s,v,w}, {z,x}, {u}, {r} et {q,t,y}
]

#definition([Le *graphe des composantes fortements connexes* associé à G est le graphe tel que :
- ses sommets sont les CFC de G
- $c_i -> c_j$ est un arc si et seulement si il existe $x_i in c_i, x_j in c_j$ tel que $x_i -> x_j$ dans G])

#example[
  #figure[
    #raw-render(
    ```
    digraph {
      "s,v,w" -> "q,t,y"
      "z,x" -> "q,t,y"
      "q,t,y" -> r
      u -> r
      "q,t,y" -> u
    }
    ```
  )
  ]
]

#prop[
  $G_("CFC")$ est acyclique
]

#demo[
  Supposons pas l'absurde qu'il existe un cycle $c_1 -> c_2 -> ... -> c_k -> c_1$ dans $G_("CFC")$

  Alors, il existe dans le graphe G un chemin $x_1 -> y_2 ~~> x_2 -> y_3 ~~> x_3 ... y_k -> z_1$ avec $..._i in c_i$\
  Alors tous les sommets sur ce chemin sont dans $c_1$ et les CFC $c_1, c_2, ..., c_k$ sont confondues.
]

== Algorithme de Kosaraju

On note _parcours\_profondeur_ un algo de parcours en profondeur qui calcule D et F les dates de début et fin de traitement des sommets et les arbres de parcours dans un parcours complet.

#definition([
  Si G est un graphe, on note $"G"^T$ son transposé, c'est-à-dire le graphe G dans lequel on a renversé le sens de tous les arcs
])

#remarque([
  Les CFC de G et de $"G"^T$ sont les mêmes
])

Algorithme de Kosaraju\
Entrée : G un graphe orienté\
Sortie : les CFC de G dans un ordre topologique (si $c_1,...,c_k$ est la liste des CFC renvoyées, si $c_i -> c_j$ alors $i < j$)
```p
Lancer parcours_prondeur sur G
Calculer G^T
Lancer parcours_prondeur sur G^T en considérant les sommets par ordre de fin de traitement décroissant selon (1)
Renvoyer les arbres de parcours obtenus en (3) //(dans l'ordre dans lequel ils ont été calculés)
```
#figure(image("tri_topo.png"), caption : [Tri topologique du graphe, on obtient \[x,z,s,w,v,q,y,u,t,r\]])

#figure[
    #raw-render(
    ```
    digraph {
      s -> v
      v -> w
      w -> s
      q -> w
      q -> s
      q -> t
      t -> x
      x -> z
      z -> x
      t -> y
      y -> q
      r -> y
      u -> y
      r -> u
    }
    ```
  )
  ]

#figure(image("Kosaraju_exemple.png"), caption : [Etape 2 à 4, on obtient \{x,z\}, \{x,v,w\}, \{q,t,y\}, \{u\}, \{r\}])
#pagebreak()
#prop([L'algorithme de Kosaraju est correct])
#lemme([\
Pour chaque CFC de G, on note $f(c) = max_(s in C)F(s)$ la date de fin totale de traitement de C selon le parcours 1.\
 Si C $->$ C' dans $"G"_("CFC")$ alors $f(C) > f(C')$\
  #underline([Preuve du lemme]) :
  On note $x$ le $1^("er")$ sommet de $C inter C'$ parcouru par parcours 1
  - $1^("er")$ cas : $x in C$\ Comme $C -> C'$, le parcours de $x$ déclenche le parcours de tous les sommets dans $C'$\ Donc $forall y in C'$, $y$ est terminé d'être parcouru avant que $x$ ne soit terminé d'être parcouru (car parcours en profondeur).\ $forall y in C', f(C) = max_(s in C) F[s] >= F[x] > max_(y in C')F[y] = f(C')$
  - $2^("e")$ cas : $x in C'$\ $f(C') = F[x]$ vu le fonctionnement du parcours en profondeur.\ De plus, le parcours de $x$ ne déclenche aucun parcours d'un sommet $y in C$, sinon, C et C' seraient confondus.\ Donc le $1^("er")$ élément de C qui est parcouru l'est après la date $F[x]$. Il est donc fini après cette datte et donc $forall y in C, F[y] > F[x]$, puis $f(C) > F[x]=f(C')$
])
#demo[
  Montrons à présent que pour tout $k in [|1, "nb de CFC de G"|]$, le $"k"^("e")$ arbre calculé par le parcours 2 est une CFC de G

  Considérons le $"k"^("e")$ arbre construit. Il l'est à partir du sommet $x$ qui n'est pas encore parcouru et dont la date de fin de traitement selon le parcours 1 est maximale.

  On note $A_x$ = {sommets dans l'arbre parcourus depuis $x$}\
  $C_x$ = la CFC qui contient x \
  Montrons que $A_x = C_x$

  - $C_x subset A_x$\
    En effet, si $y in C_x$, montrons que $y$ n'est pas encore exploré au moment où le parcours sur $x$ est lancé.\
    Si $y$ était exploré, comme il existe un chemin $y ~~> x$, alors $x$ le serait aussi, ce qui est contradictoire.
    Donc $y in A_x$

  - $A_x subset C_x$, par l'absurde, supposons qu'il existe $y in A_x\\C_x$ \
    Comme $y in A_x$, il existe un chemin $x ~~> y$ dans $"G"^"T"$. De plus, comme $y in.not C_x$, sur ce chemin il y a un premier sommet $s in C$ avec $C eq.not C_x$.

    Dans $"G"_("CFC")$, il y a un arc $C -> C_x$ donc $f(C) > f(C_x)$ d'après le lemme. Avec $f(C) = F[z]$ pour un certain $z$ dans C.\
    On a donc $F[z] > F[x]$.\
    De plus, $z$ n'est pas parcouru car comme $y in A_x$, aucun sommet sur le chemin $x ~~> y$ n'est parcouru, en particulier pas $s$. Donc $s$ n'est dans aucun des arbres de parcours et donc la CFC de $s$ n'est pas parcourue non plus. En partiulier $z$ ne l'est pas.
    Ainsi, on obtient une contradiction avec la définition de $x$
]

#prop[On peut implémenter l'algorithme de Kosaraju avec une complexité en O(|V| + |E|) si l'entrée est G = (V, E)]

#demo[
  + Peut se faire en O(|V| + |E|) (parcours)
  + Peut se faire en O(|E|)
  + Peut se faire en O(|V| + |E|)
  Total = O(|V| + |E|)
]

= Arbres couvrant minimaux
(Contexte : graphes non orientés et pondérés)

== Arbres couvrants
#definition([Un *arbre* est un graphe acyclique et connexes

Une *forêt* est un graphe acyclique])

#definition([Si G = (V, E) est un graphe alors un *arbre couvrant* de G est un graphe (V, A) avec A $in$ E et qui est un arbre])

#remarque([On confond souvent le graphe (V, A) et A])

#prop[G est connexe si et seulement si il admet un arbre couvrant]

#demo([cf. cours de sup])
#demo([($=>$) Via un algorithme par suppression d'arrête\
Entrée : G = (V, E) connexe\
Sortie : un arbre couvrant de G
```
A <- E
Pour chaque arrête (x,y) de E
    Si retirer (x,y) conserve la connexité de (V,A):
        A <- A\{x,y}
Renvoyer(V,A)
```
])
#pagebreak()
#demo([($=>$) Via un algorithme par ajout d'arêtes\
Entrée : G = (V, E) connexe\
Sortie : un arbre couvrant de G
```
A <- vide
Pour chaque arête (x,y) de E
    Si ajouter (x,y) à A ne crée pas de cycle dans (V,A)
        A <- A+{(x,y)}
Renvoyer (V,a)
```
])
#warning(title : [Notation])[Dans la suite, p est la fonction de pondération des arêtes.]

#definition([
  Le poids d'un sous-graphe H de G est noté p(H) et est $ sum_((x,y) "arête de H")("p"(x,y)) $
])

#definition([
  Un *arbre couvrant minimal* (ACM) de G est un arbre couvrant H de G tel que p(H) = min{p(A) | A arbre couvrant de G}
])

#remarque([
  Si G est connexe, il admet nécessairemment un ACM (pas forcément unique)
])

== Algorithme de Kruskal

Algorithme de Kruskal\
Entrée : G = (V, E) non orienté pondérés connexe\
Sortie : Un ACM de G
```
T <- vide
Pour chaque arête (x,y) prise dans l'ordre croissant des poids
        Si ajouter (x,y) à (V, T) le laisse acyclique
              T <- T+{(x,y)}
Renvoyer (V, T)
```

#example([
  #figure(image("ACM.png"))
])

#prop[
  L'algorithme de Kruskal esr correct
]
#demo([
  On note A le graphe renvoyé par cet algo
  - *A est un arbre couvrant de G* car l'algorithme de Kruskal estu n cas particulier de construction d'arbre couvrant par ajout d'arêtes
  - *Supposons par l'absurde que A n'est pas minimal*\
    Notons $"A"^*$ un arbre couvrant minimal de G qui partage avec A le plus d'arêtes possibles.

    Notons $e_0, ..., e_(|"V"|-2)$ les arêtes de A dans l'ordre dans lequel elles sont sélectionnés par Kruskal.\
    *Notons $e_i$ la $1^("ère")$ de ces arêtes qui n'est pas dans $"A"^*$*
    Alors $"A"^* union {e_ i}$ contient un cycle. Sur ce cycle, il existe $e in.not {e_1, ..., e_(i-1)}$, sinon il y aurait un cycle dans l'arbre A.\
    *Considérons alors $"A"' = ("A"^*\\{e}) union {e_i}$, c'est un arbre couvrant de G.*\
    Comme $"A"^*$ est un ACM : $"p(A"^*")" <= "p(A"')="p"("A"^*)-"p"(e) + "p"(e_i)$ donc $"p"(e) <= "p"(e_i)$\

    $->$ *Si p($e$) < p($e_i$)* alors $e$ aurait été considérée avant $e_i$ par l'algorithme, et au moment où $e$ est considérée, l'ajouter ne crée pas de cycle, sinon il y en aurait dans $"A"^*$. Donc on aurait du ajouter $e$ à A, ce qui est contradictoire.

    $->$ *Sinon, p($e$) = p($e_i$)* et A' est un ACM qui a en commun avec A les arêtes ${e_0, e_1,...,e_i}$, soit une de plus que $"A"^*$, ce qui en contredit la définition.

    *Ainsi, p(A) est minimal*
])

== Structure union-find

Le coût pour Kruskal est la somme du :
- Coût du tri : O(|E|log|E|)
- Coût de tester si $x$ et $y$ sont dans une même composante connexe de (V, T)

#definition[
  Une *structure union-find* est une structure de donnée permettant de gérer une partition d'un ensemble X via les fonctions d'interface suivante :
  - _creer_partition_(X) crée une partition de X en singletons
  - _trouver_(P, $x in X$) renvoie un représentant canonique c de la partie qui contient $x$\ Si $x$ et $y$ sont dans la même partie de P, _trouver_(P, $x$) = _trouver_(P, $y$)
  - _unir_(P, $x$, $y$) remplace les partie $"P"_x$ et $"P"_y$ contenant respectivement $x$ et $y$ par $"P"_x union "P"_y$. Cette fonction détermine au passage le nouveau représentant de $"P"_x$ et $"P"_y$
]

Si on dispose d'une telle structure, l'algorithme de Kruskal se réécrit :
```
T <- vide
P <- creer_partition(V)
Pour chaque arête (x,y) de E par ordre croissant des poids
        Si trouver(P,x) != trouver(P,y)
                T <- T+{(x,y)}
                unir(P,x,y)
Renvoyer(V,T)
```

$"Coût hors tri" = $\
$1 times "coût de "$_creer_partition_\
$+" "2|"E"| times "coût de"$ _trouver_\
$+" "(|V|-1) times "coût de"$ _unir_

#question[
  Comment implément une structure union-find en pratique ?
  
  Dans la suite on numérote à partir de 0 les élément de X pour manipuler une partition de $[|0, n-1|]$ avec $n = |"X"|$
]

=== Implémentation naïve

On stoche dans un tableau de taille $n$, en case $i$ : le plus petit numéro d'un élément dnas le même morceau que $i$

#example([
  #figure(image("UF-naif.png"), caption :[Un exemple de l'algorithme de Kruskal avec l'implémentation naïve])
])

Avec cette implémentation :
  - Une partition se fait en O(|X|)
  - Trouver en O(1)
  - Unir en O(|X|) car l'union consiste à remplacer un des représentants par l'autre ce qui nécessite de parcourir le tableau.

Avec cette implémentation, coût de Kruskal hors tri = O(|V| + |E| + $|"V"|^2$) = O(|$"V"|^2$)\
En comptant le tri = O(|$"V"|^2$ + |E|log|E|)
#pagebreak()
=== Implémentation arborescente

Idée : chaque morceau de X est un arbre dont le représentant est la racine

#example([
#figure[
    #raw-render(
    ```
    graph {
      0 -- 6
      0 -- 3
      3 -- 10
      3 -- 2
      3 -- 1
      2 -- 8
      7 -- 14
      7 -- 5
      7 -- 11
      12
      4 -- 9
      9 -- 13
    }
    ```
  )
]
est une représentation de la partition {0,3,6,10,2,1,8}$union.sq${7,14,5,11}$union.sq${12}$union.sq${4,9,13} de $[|6,14|]$
])

Ce type d'objet peut être représenté par un tableau de taille |X| contenant en case $i$ le père de l'élement $i$ dans la forêt\
Par exemple ici on a [-1,3,3,0,-1,7,0,-1,2,4,3,7,-1,9,7]

Avec cette implémentation :
- _creer_partition_ coûte O(|X|)
- _trouver_ coûte O(|X|)
- _unir_ coûte O(|X|) car unir demande à faire 2 appels à trouver puis à connecter les racines ainsi trouvées

=== Implémentation arborescente avec union par hauteur

Idée : pareil avec un tableau supplémentaitre qui stocke en case $i$ la hauteur du sous-arbre enraciné à $i$ (mis à jour à chaque union en temps constant), de plus, quand on fait une union, on récupère les hauteurs $h_1$ et $h_2$ des deux arbres de racines respectives $r_1$ et $r_2$
- Si $h_1 < h_2$, $r_2$ devient la racine globale
- Si $h_1 > h_2$, $r_1$ devient la racine globale
- Si $h_1 = h_2$, au hasard parmi $r_1$ et $r_2$

#prop([
  En utilisant une union par hauteur, les complexités de unir et trouver sont en O(log|X|)
])

#demo([\
  Montrons q'une partie qui contient p élément est représentée par un arbre de hauteur inférieure à $log_2"p"$

  #underline[Initialement], c'est vrai car chaque partie contient un élément et est représenté par un arbre de hauteur 0 (car réduit à une racine).

  #underline[Si on avait cette propriété], et qu'on unit deux parties de cardinal $"p"_1$ et $"p"_2$ et dont les arbres représentatifs ont hauteur $h_1$ et $h_2$
  - Si $h_1 eq.not h_2$, on peut supposer $h_1 > h_2$ et alors, la partie résultant de l'union est représentée par un arbre qui contient $"p" = "p"_1 + "p"_2$ élément et est de hauteur $h_1$.\ Or, par hypothèse, $h_1 <= log_2"p"_1 <= log_2("p"_1 + "p"_2)$
  - Si $h_1 eq h_2$ alors la partie résultant de l'union est représentée par un arbre qui contient $"p" = "p"_1 + "p"_2$ élément et est de hauteur $h_1+1$.\ Or, on sait que $h_1 < log_2"p"_1$ et $h_2 < log_2"p"_2$\ Donc $"p" = "p"_1 + "p"_2 >= 2^(h_1) + 2^(h_2) = 2^(h_1+1) = 2^h$, c'est-à-dire $h <= log_2"p"$

  La compleixté de _trouver_(P, $x$) est en O($h$) avec $h$ la hauteur de l'arbre qui contient $x$ donc en O(log|$"A"_x$|) avec |$"A"_x$| le nombre d'élément dans l'arbre de $x$, donc en O(log|X|)\
  _unir_ consiste à appeler deux fois _trouver_ et à des opérations en temps constant, donc est en O(log|X|) aussi
])

Avec cette implémentation :
#prop([
  L'algorithme de Kruskal peut être implémenté avec une complexité temporelle en O(|E|log|V|)
])

#demo([\ 
  Coût du tri = O(|E|log|E|) = O(|E|log|V|) car log|E| $<=$ 2log|V|\
  Coût de _creer_partition_ = O(|V|)\
  Coût de _trouver_ = O(|E|log|V|)\
  Coût de _unir_ = O(|V|log|V|)

  Et avec |E| > |V| car G est connexe
])
#pagebreak()
=== Implémentation arborescente avec compression de chemin et union par rang

#example([
  #figure(caption : [Un exemple de compression sur un arbre])[
    #raw-render(
      ```
      graph{
        0 -- 7
        0 -- 3
        3 -- 1
        3 -- 5
        3 -- 2
        5 -- 14
        5 -- 8
        5 -- 9
        14 -- 12
      }
      ```
    )
    #raw-render(
      ```
      graph {
        0 -- 5
        5 -- 8
        5 -- 9
        0 -- 3
        3 -- 1
        3 -- 2
        0 -- 7
        0 -- 14
        0 -- 12
      }
      ```
    )
  ]
])

Idée : On comprime les chemin et on conserve l'union par hauteur en la renommant union par rang

#pagebreak()
#prop([
  La complexitée amortie de unir et trouver si la taille de l'ensemble partitionné est $n$ est O($alpha(n)$)\
  Où $alpha$ est la réciproque de la fonction d'Ackermann. _(Pour n'importe quelle application pratique, $alpha(n) <= 5$)_
])

= Calcul du plus court chemin à origine et destination unique

== Rappels sur l'algorithme de Dijksta

Cadre : On travaille dans des graphes orientés ou non, et pondérés par une fonction de pondération p.\
On note p(e) le poirds de l'arête e, p(c) le poids du chemin c $ p(c)= sum_("e_i sur C")p(e_i) $

#definition([
  Si G est pondéré de sorte à ce qu'il ne contienne aucun cycle de poids strictement négatif
  - *la distance de x à y*, notée $delta$(x,y) est 
  $delta$(x,y) = inf{p(c) | c est un chemin de x vers y}, avec inf($emptyset$) = +$infinity$

  - Un *plus court chemin de x vers y* est un chemin de x vers y de poids $delta$(x,y) 
])

Algorithme de Dijksta (marquage en entrée de sac)\
#ul[Entrée] : Un graphe G = (V,E) pondéré par une fonction de pondération positive, et s un sommet\
#ul[Sortie] : Les poids des plus court chemins à origine s dans G / Ces plus court chemins directement

```
D <- tableau de |V| cases contenant +infty //Sert aussi de marquage
F <- file de priorité mine vide
Insérer s dans F avec priorité 0
Tant que F non vide :
        (x, dx) <- extraire de F
        Si D[x] = +infty
                D[x] <- dx
                Pour tout voisin y de x :
                        Insérer y dans F avec priorité D[x] + p(x,y)
Renvoyer D
```

#figure(caption : [Un exemple d'application à un graphe orienté])[
  #image("exemple Dijkstra.png")
]

#prop[
  L'algorithme de Dijkstra appliqué à G = (V,E) a une complexité temporelle pire cas en O(|V| + |E|log|V|) si G est représenté par listes d'adjacence
]

#demo[
  log(|E|) $<=$ log(|V$|^2$) = 2log|V|\
  Il s'agit d'un parcours classique avec une file de priorité comme sac
]

Algorithme de Dijksta (marquage en entrée de sac)\
Les lignes comportant un (\*) permettent de calculer les plus court chemins explicitement
```
    D <- tableau de |V| cases contenant +infty
(*) P <- tableau de |V| cases conetnant -1
    D[s] <- 0
    F <- file de priorité min vide
    Insérer s dans F avec priorité 0
    Tant que F non vide :
            (x, dx) <- extraire de F
            Pour tout y voisin de x
                    d <- D[x] + p(x,y)
                    Si d < D[y] alors
                            D[y] <- d
(*)                         P[y] <- x
                            inserer_ou_diminuer(F,y,d)
    Renvoyer D

    inserer_ou_diminuer :
            Si y n'est pas dans E, l'insérer avec priorité D, sinon, diminuer la priorité de y pour qu'elle valle d
```
#exercice([Implémenter _inserer\_ou\_diminer_ en O(log|E|)])

#figure(caption : [Le même exemple sur la deuxième version de l'algorithme])[#image("exemple Dijkstra 2.png")]

#remarque([
  Les deux versions de l'algorithme calculent toutes les deux des plus court chemins et ont la même complexité temporelle en O(|V| + |E|log|V|)

  Pour la version avec marquage précoce, la complexité spatiale est meilleure car la file a une taille en O(|V|) plutôt qu'en O(|E|)\
  Pour la version avec marquage tardif, elle est plus facile à analyser, et il n'y a pas besoin d'implémenter la diminution de priorité
])

Cet algorithme est très bien pour trouver tous les plus court chemins, mais quand il y a une destination précise à trouver il n'est pas du tout optimal car il cherche de tous les côtés en même temps dans une sorte de sphère qui grandit. Une idée pour l'améliorer est de faire en sorte que l'exploration soit dirigée vers le but plutôt qu'elle rayonne indistinctement depuis l'origine.\

//#pagebreak()
Algorithme basé sur Dijkstra pour calculer un plus court chemin à source s et but b\
```
D <- tableau de |V| cases contenant +infty
P <- tableau de |V| cases contenant une valeur par défaut
F <- file de priorité min vide
D[s] <- 0
Insérer s dans F avec priorité 0
Tant que F non vide :
        (x, dx) <- extraire de F
        Si x = b, return reconstruire_chemin(b, P)
        Pour tout y voisin de x
                d <- D[x] + p(x,y)
                Si d <= D[y] alors
                        D[y] <- d
                        P[y] <- x
                        inserer_ou_diminuer(F,y,d)
Renvoyer une valeur signifiant une absence de chemin

inserer_ou_diminuer(F, y, d) :
        Si y n'est pas dans F
                l'insérer avec priorité d
        Sinon
                diminuer la priorité de y pour qu'elle valle d

reconstruire_chemin(b, P) :
        Reconstruit le chemin de b vers s en remontant le tableau P jusqu'à tomber sur la valeur par défaut
        Retourne le chemin pour obtenir celui de s vers b
```

== Algorithme *$"A"^*$*

Le principe d'$"A"^*$ est d'utiliser une heuristique h pour orienter la recherche du but. On veut que h(x) renvoie une estimation de la distance entre x et le but. On modifie alors la priorité des sommets de (distance source $->$ x) à\ (distance source $->$ x) + (distance estimée x $->$ but)

En supposant que cette heuristique existe, l'algorithme $"A"^*$ est :
```
D <- tableau de |V| cases contenant +infty
P <- tableau de |V| cases contenant une valeur par défaut
F <- file de priorité min vide
D[s] <- 0
Insérer s dans F avec priorité h(s)
Tant que F non vide :
        (x, dx) <- extraire de F
        Si x = b, return reconstruire_chemin(b, P)
        Pour tout y voisin de x
                d <- D[x] + p(x,y)
                Si d <= D[y] alors
                        D[y] <- d
                        P[y] <- x
                        inserer_ou_diminuer(F, y, d + h(y))
Renvoyer une valeur signifiant une absence de chemin
```

#remarque([
  En pratique, on utilise un dictionnaire comme structure de marquage (pour D et P), afin d'éviter d'avoir des tableaux de très très grande taille dont seules quelques cases seront utilisées.
])

#remarque([
  Si h = 0, alors $"A"^*$ n'est autre que Dijksta
])

#question([
  Est-ce que $"A"^*$ calcule bien un plus court chemin de la source vers le but ?\ Non en général
])

#example[
  #figure(caption : [Si l'heuristique est mal choisie, $"A"^*$ n'est pas correcte])[#image("Exemple A*.png")]
]

== Heuristiques admissibles et monotones

#ul[Contexte] : On veut calculer un plus court chemin dans G = (V,E) pondéré avec des pondérations toutes positives, depuis un sommet s et vers un sommet b

#definition([
  Une heuristique h est 
  - *admissible* si pour tout sommet x, h(x) $<= delta$(x,b)
  - *monotone*, ou *cohérente* si pour toute arête (u,v), h(u) $<=$ h(v) + p(u,v)
])

#prop([
  Si h est monotone et h(b) = 0, alors h est admissible.
])

#demo([
  Montrons par récurrence sur $n in NN$ la propriété\ $H(n)$ : Pour tout sommet v tel que la longueur d'un plus court chemin (en terme de poirds) entre v et b vaut $n$, on a h(v) $<= delta$(v,b)

  Si v est à distance 0 de b en terme de nombres d'arcs, on a v = b.\ On a bien h(b) = 0 = $delta$(b,b)

  Soit $n in NN$ tel que $H(n)$. Soit v un sommet tel qu'un plus court chemin de v à b a $n$+1 arcs. Notons v = $u_0 -> u_1 -> ... -> u_(n+1)$ avec $u_(n+1)$ = b.\
  Alors $u_0 -> u_1$ est un chemin de poids p($u_0, u_1$), et $u_1 ->  ... -> u_(n+1)$ est un plus court chemin en terme de poids de $n$ arcs de $u_1$ à b.\ On peut donc lui appliquer l'hypothèse de récurrence : h$(u_1) <= delta"("u_1$,b) (\*)
  $ "Or, h"(v)  = "h"(u_0) &<= "h"(u_1) + "p"(u_0, u_1) "par monotonie de h"\ &<= delta(u_1,"b") + "p"(u_0,u_1) "par (*)"\
  &= delta(u_1,"b") + delta(u_0,u_1) "car " u_0 -> u_1 "est un plus court chemin"\
  &"en tant que sous chemin d'un plus court chemin"\
  &= delta("v,b") $

  On ainsi montré que pour tout sommet v tel qu'il existe un chemin de v vers b, on a h(v) $<= delta$(v,b).\
  Pour les sommets v tels qu'il n'xiste pas de chemin de v vers b, h(v) $<= delta$(v,b) car $delta$(v,b) $= + infinity$
])

#example([
  Dans l'exemple précédant, l'heuristique n'est pas admissble car\ h(C) > $delta$(C,D). De plus h(D) = 0 donc par contraposé de la proposition précédente alors h n'est pas monotone (par exemple, h(C) > h(D) + p(C,D) car 5 > 2)
])

#remarque([
  Si h est monotone est nulle au but, elle est admissible mais la réciproque est fausse.
])

#example([
  #figure(caption : "Ici, l'heuristique est admissible mais non monotone.
  Par exemple, h(A) = 4 > 3 = h(C) + p(A,C)")[#image("Admissible pas monotone.png")]
])

#prop([
  Si h est admissible, alors $"A"^*$ renvoie un plus court chemin de s vers b
])

#demo([
  S'il n'y a pas de chemin de s vers b dans G, alors comme $"A"^*$ est un cas particulier de parcours, il renverra $emptyset$, ce qui est bien le résultat attendu.

  Sinon, il existe un chemin, donc un plus court chemin de s vers b.\
  En tant que parcours, $"A"_*$ renvoie bien un chemin C de s vers b. Il reste donc à montrer qu'il a un poids minimal.\
  _L'idée générale est de supposer par l'absurde que C n'est pas minimal. On se saisit alors d'un chemin C' qui est un plus court chemin (et donc strictement plus court). On montre alors que tous les sommets sur C' sont extraits de la file dans $"A"^*$ au moins une fois strictement avant b. En particulier, comme b est sur le chemin C', alors il aura été extrait au moins une fois strictement avant lui-même, ce qui est impossible._
  #colbreak()
  #ul[Étape 1] : On note d le poids de C et d' le poids de C' \[d' < d\].\
  On montre que la priorité de b au moment où on l'extrait de F est d.

  La priorité de b au moment de l'extraction est D\[b\] + h(b). Or, h(b) $<= delta$(b,b) = b.\ Et h(b) $>= 0$ car h(b) est l'estimation d'une distance dans un graphe pondéré positivement. Donc h(b) = 0.\
  Ainsi, D\[b\] + h(b) = D\[b\] = d.

  #ul[Étape 2] : On note ($u_0,...,u_n$) les sommets sur C'\
  On veut montrer que pour tout $i$ dans $[|1,n|]$ que $u_i$ a eu une priorité strictement inférieur à d au cours de l'exécution de $"A"^*$

  Pour ça, on montre par récurrence sur $i in [|1,n|]$\ $H(n) : u_i$ a été extrait de F avec une priorité strictement inférieur à d au cours de $"A"^*$ et au moment de cette extraction, D\[$u_i$\] $<= delta(u_0,u_i)$

  *Initialisation :* Le fonctionnement de $"A"^*$ indique que $u_1$ a été mis dans la file suite au traitement de $u_0$ avec une priorité $"D"[u_0]$ + h($u_1$) = h($u_1$)\ et on a aussi fixé D$[u_1]$ à D$[u_0]$+p($u_0,u_1$) = p($u_0,u_1$)= $delta(u_0, u_1)$ car $(u_0,u_1)$ est un sous chemin d'un plus court chemin donc un plus court chemin.

  Comme h est admissible,
  $ "La priorité de" u_1 &= "D"[u_1] + "h"(u_1)\
  & <= "p"(u_0,u_1) + delta(u_0,b) "par admissibilité de h et"\
  &"par le fonctionnement de A"^*\
  &= delta(u_0,b) = d' "car p"(u_0,u_1)+delta(u_1,b)" est le poids de C'"\
  &< d "car C n'est pas minimal" $

  Comme la priorité de $u_1$ et D$[u_1]$ ne peuvent que diminuer, $u_1$ vérifie bien e qu'on veut.

  *Hérédité : * Soit $i in [|1,n|]$, on suppose $H(i)$.\
  $u_1$ est extrait de F au moins une fois strictement avant b, donc déclenche l'ajout de $u_(i+1)$ à F (car passer par $u_i$ améliore le chemin vers $u_(i+1)$ puisque c'est un plus court chemin).

  À ce moment, d'après $"A"^*$, \
$D[u_(i+1)] = D[u_i] + "p"(u_i, u_(i+1)) &<= delta(u_0,u_i) + "p"(u_i,u_(i+1))\ & <= delta(u_0,u_(i+1))$

$"Priorité de "u_(i+1) &= D[u_(i+1)]+h(u_(i+1))\
& <= delta(u_0,u_(i+1)) + delta(u_(i+1),b) "par admissibilité de h"\
& <= d'\
& < d$

D'où le but
])

#pagebreak()

#prop([
  - Si h est monotone, la complexité de $"A"^*$ est la même que celle de Dijksta , donc en O(|V| + |E|log|V|)
  - Si h est uniquement admissible, la complexité de $"A"^*$ peut être exponentielle en la taille du plus court chemin de s à b car un même sommet peut être extrait de la file de priorité avec des distances estimées à s de plus en plus petites.
])
#example([
  #figure(caption : [Un exemple de complexité exponentielle])[
    #raw-render(
      ```
      digraph{
        "A[0]" -> "B[6]" [label = 1]
        "B[6]" -> "C[3]" [label = 1]
        "A[0]" -> "C[3]" [label = 3]
        "C[3]" -> "D[0]" [label = 5]
      }
      ```
    )
  ]

  On veut un plus court chemin de A à D.\
  h est admissible mais non monotone car $h(B) > h(C) + (B,C)$\

  #table(
    columns: (auto, auto, auto, auto, auto),
    inset: 10pt,
    table.header(
      [Contenu de F], [D[A]], [D[B]], [D[C]], [D[D]]
    ),
    [(A,0)], [0], [$+infinity$], [$+infinity$], [$+infinity$],
    [(C,6), (B,7)], [0], [1], [3], [$+infinity$],
    [(B,7), (D,8)], [0], [1], [3], [8],
    [(C,5), (D,8)], [0], [1], [2], [8],
    [(D,7)], [0], [1], [2], [7]
  )

  On voit ici que C est inséré et supprimé plusieurs fois, ici cela n'arrive qu'une fois mais sur des graphes plus conséquents ce phénomène peut se répéter, ce qui entrainera en plus l'actualisation de tous les enfants du sommet concernés à chaque fois, ce qui entraîne le coût exponentiel.
])

= Couplages dans les graphes biparis

(Contexte : graphes non orientés)

== Problème de couplage
#definition([
  Soit G = (V,E) un graphe orienté M est un *couplage* de G si $M subset E$ tel qu'on n'a jamais deux arêtes de M incidente à un même sommet de G.

  Un sommet qui est une extrémité d'une arête de M est dit *saturé* ou *couvert* (par M).

  Un sommet qui n'est pas saturé est *libre* ou *exposé*.
])

#definition([
  Un couplage est dit
  - *maximal* (pour l'inclusion) s'il n'existe aucune pair de sommet adjacents non saturés par M.
  - *maximum* (pour le cardinal) s'il n'existe pas de couplages contenant plus d'arêtes.
  - *parfait* s'il sature tous les sommets
])

#prop([\
  Si M est parfait, il est maximum.\
  Si M est maximum, il est maximal.\
  Toutes les réciproques sont fausses.
])

#demo([
  Si M est maximum, supposons par l'absurde qu'il n'est pas maximal.\
  Alors il existe une arête (x,y) telle que ni x ni y n'est saturé par M, et alors $"M" union {"(x,y)"}$ est un couplage de cardinal |M| +1.

  Réciproque fausse puisque le graphe bleu dans l'exemple suivant est maximal mais pas maximum
])

#pagebreak()
#example([
  #figure(caption: [Bleu est de taille 3, sature 7 mais pas 4. M est maximal mais non maximum. Rouge est parfait])[
    #raw-render(
      ```
      graph{
        0 -- 1 [color = "red"]
        0 -- 1 [color = "blue"]
        0 -- 2
        1 -- 3
        2 -- 3 [color = "red"]
        2 -- 3 [color = "blue"]
        2 -- 5
        2 -- 6
        5 -- 6 [color = "red"]
        3 -- 4
        4 -- 7 [color = "red"]
        7 -- 6 [color = "blue"]
      }
      ```
    )
  ]
])

== Algorithme de Berge
(de calcul de couplage maximum)

Tout ce qui est dit ici est valable dans un graphe quelconque.
#definition([
  Soit M un couplage de G = (V,E) et un chemin simple C dans G.
  - On dit que le chemin C est *M-alternant*, *M-alterné* ou *alternant* (par rapport à M) si ses arêtes sont alternativement dans M et pas dans M.
  - On dit que C est un chemin *M-augmentant* si ce chemin est M-alternant et que ses extrémités ne sont pas saturées.
])

#pagebreak()
#example([
  #figure(caption : [Le chemin (1,2,5,7,6) est M-alternant, pas M-augmentant.\ Le chemin (4,1,2,5,7,6) est M-augmentant])[
    #raw-render(
      ```
      graph{
        0 -- 3
        0 -- 4
        4 -- 1
        1 -- 2 [color = "blue"]
        1 -- 5
        2 -- 5
        4 -- 6
        4 -- 7
        7 -- 5 [color = "blue"]
        6 -- 7
      }
      ```
    )
  ]
])

#prop([
  Si M est un couplage et C est M-augmentant, alors M$Delta$C est i, couplage de taille |M| + 1.

  Intuitivement, celà revient à inverser les arêtes étant dans M et pas dans M le long du chemin.
])

#demo([
  #figure(caption : [Les sommets des extrémités n'étant pas saturés, cette modification ne casse pas le couplage.])[
    #image("demo_dessin_p38.png")
  ]
])

#lemme([ *de Berge*\
Soit M un couplage dans un graphe G.

M est maximum si et seulement si il n'xiste pas de chemin M-augmentant dans G
])

#demo([
  On montre que M n'est pas maxiumum si et seulement s'il existe un chemin M-augmentant

  ($<==$) Si C est M-augmentant\ |M$Delta$C| = [M]+1 et M$Delta$C est un couplage donc M n'est pas maxiumum

  ($==>$) Supposons ue M n'est pas maximum\
  Alors il existe M' un couplage de G tel que |M'| > |M|.\ Considérons le graphe G' = (V, M$Delta$M').\ On va montrer qu'il existe un chemin M-augmentant dans G' et ce chemin existera dasn G ce qui concluera

  cf. Fig. 21.

  Dans G', les degré des sommets sont au plus deux car si on avait deg(s) $>=$ 3, s aurait deux arêtes incidentes provenant d'un même couplage, ce qui ne serait don pas un couplage. Ainsi, les composantes connexes dans G' sont de l'une des trois formes suivantes :
  - Sommet isolé
  - Chemin simple M-alternant
  - Cycle M-alternant

  Comme |M'| > |M| et que les cycles de G' contiennent autant d'arête de M que de M', il existe un chemin dans G' contenant une arête de plus dans M' que dans M, et comme le chemin est M-alternant, il est nécessairement de la forme : \
  $x_0 - x_1 - x_2 - ... - x_k - x_(k+1)$ où $x_0 - x_1$ et $x_k - x_(k+1)$ sont dans M'. Il est donc M-augmentant.

  #figure(caption : [Une illustration pour le preuve])[
    CF cours de Tristan
  ]
])

Algorithme de Berge (glouton)
```
couplage_maximum(G = (V,E))=
  M <- vide
  tant qu'il existe un chemin C M-augmentant
    M <- MΔC
  Renvoyer M
```

#prop([
  Cet algoritmhe est totalement correct
])

#demo([\
Il termine car [M] augmente à chaque itération et est majoré par |E| (et même par $v/2$).

Il est correct car "M est un couplage de G" est invariant pour la boucle tant que. De plus, en fin d'algo, il n'y a plus de chemin M-augmentant donc par le lemme de Berge le couplage est maximum.
])

== Le cas des graphes bipartis

#definition([
  Un graphe G = (V,E) est *biparti* s'il existe une bipartition V = $V_1 union.sq V_2$ telle que toute arête de E connecte un sommet de $V_1$ et un sommet de $V_2$
])

#example([
  #figure()[
    #raw-render(
      ```
      graph{
        1 -- A
        2 -- A
        2 -- B
        3 -- C
        4 -- C
        4 -- D
        3 -- D
        5
      }
      ```
    )
  ]
])

#prop([
  Un graphe est biparti si et seulement si il ne contient aucun cycle de longueur impair
])

#demo[
  cf. TD
]

#definition([
  Si G = ($V_1 union.sq V_2$, E) est un graphe biparti et M est un couplage de G, on note $G_M$ le graphe orienté tel que :
  - Ses sommets sont ceux de G plus deux nouveaux sommets s (source) et\ d (destination).
  - On met un arc depuis s vers chacun des sommets exposés dans $V_1$.
  - On met un arc depuis chacun des sommets exposé de $V_2$ vers d.
  - Les arêtes de G qui sont dans M sont orientés de $V_2$ vers $V_1$
  - Les arêtes de G qui sont dans E\\M sont orientés de $V_1$ vers $V_2$.
])

/*#example([
  #figure[
    #raw-render(
      ```
      graph{
        1 -- B [color = "red"]
        1 -- C
        2 -- C
        2 -- D
        3 -- B
        3 -- E [color = "red"]
        4 -- E
        5 -- A [color = "red"]
        5 -- B
        6 -- D
        6 -- F
        7 -- F [color = "red"]
      }
      ```
    )

    #raw-render(
      ```
      digraph{
        1 --> B
        1 --> C
        2 --> C
        2 --> D
        3 --> B
        3 --> E
        4 --> E
        5 --> A
        5 --> B
        6 --> D
        6 --> F
        7 --> F
        s --> 2
      }
      ```
    )
  ]
])*/

#prop([
  $(S, x_0, ..., x_k, d)$ est un chemin dans $G_M$si et seulement si $(x_0, ..., x_k)$ est un chemin M-augmentant dans G
])

#demo([
  - Si $s -> x_0 -> y_0 -> ... -> x_k -> y_k -> d$ (où tous les x sont dans $V_1$ et tous les y sont dans $V_2$) est un chemin dans $G_m$ et par construction toutes les arêtes d'un y à un x sont dans M et toutes celles d'un x à un y ne sont pas dans M. De plus, $x_0$ et $y_k$ sont exposés : il est augmentant

  - Un chemin M augmentant est nécessairement de longueur impair donc un tel chemin est de la forme $x_0 - y_0 - x_1 - y_1 - ... - x_k - y_k$.\ Comme sa longueur est impaire et que G est biparti, une de ses extrémités est dans $V_1$, mettons $x_0$ et l'autre est dans $V_2$, mettons $y_k$.

    Comme $x_0 in V_1$ est exposé, (s, $x_0$) existe dans $G_M$\
    Comme $y_k in V_2$ est exposé, ($y_k$, s) existe dans $G_M$

    Par bipartition du graphe, les $x_i$ sont dans $V_1$ et les $y_i$ sont dans $V_2$.\ Comme il est augmentant, pour tout i, $(x_i, y_i) in.not M$ et $(y_i, x_(i+1)) in M$

    Ainsi, les $(x_i, y_i)$ et $(y_i, x_(i+1))$ existent dans $G_M$.\
    Donc (s, $x_0$, ..., $y_k$, d) est un chemin dans $G_M$
])

#prop([
  L'algorithme de Berge dans un graphe biparti G = (V,E) peut être implémenté de sorte à avoir une complexité en O(|V|(|V| + |E|))
])

#demo([
  On fait O(|V|) itérations de la boucle tant que.\ Chaque itération coûte
  - O(|V| + |E|) pour construire $G_M$
  - O(|V| + |E|) pour trouver un chemin M-augmentant
  - O(|E|) pour calculer C$Delta$M
])