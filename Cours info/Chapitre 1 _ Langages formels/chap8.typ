#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*#ul[Chapitre 1 :]\  Langages formels*
])

Sources :
- Olivier Carton, #underline("Langages formels, calculabilité et complexité")
- Sakarovitch, #underline("Elements of automation theory")

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

Le but est d'étudier des ensembles de mots : les langages. Ceci permet entre autre la reconnaissance de motifs et la compilation, en particulier l'analyse lexicale et syntaxique

Fondamentalement, par exemple, tout prolbème de décision revient à tester l'appartenance d'un mot à un langage.

= Mots et alphabets

== Définition

#definition([
	Un *alphabet* est un ensemble fini de symboles, appelés *lettres*
])

#remarque([
	Dans ce cours, les alphabets seront noté $Sigma$ en priorité, puis $Gamma$, etc...
])

#exemple([
	Les ensembles suivants sont tous des alphabets :\
	{A, T, C, G}\
	{0, 1}\
	{(, )}\
	{"L'ensemble des caractères ASCII"}\
	{$square$, $arrow.r.long.squiggly, aleph, die, gradient$}\
	{let, in, for, while, else, if, ;}

	Dans le dernier, "let" n'est pas un mot mais une simple lettre
])

#definition([
	Un *mot* sur un alphabet $Sigma$ est une suite finie (eventuellement vide) de lettres de $Sigma$
])

#info(title : [Notation])[
	On note
	- $Sigma^*$ l'ensemble des mots sur $Sigma$
	- $epsilon$ le mot vide
	- $Sigma^+$ l'ensemble $Sigma^*\{epsilon}$ des mots non vides sur $Sigma$ 
]

#warning([
	C'est une très mauvaise idée de mettre le symbole $epsilon$ dans un alphabet (collision avec $epsilon$ pour le mot vide)
])

#info(title : [Notation])[
	Si $m_1, ..., m_k$ sont des lettres de $Sigma$, le mot ($m_1, ..., m_k$) se nbotre $m_1...m_k$
]

#prop([
	Si $Sigma$ est non vide, $Sigma^*$ est infini
])

#demo[
	$Sigma$ est non vide donc il existe $a in Sigma$.\
	Ainsi, ${epsilon, a, a a, a a a, ...} = {a^n, n in NN} subset Sigma^*$ 
]

#definition([
	Si $m$ est un mot sur $Sigma$ et $a in Sigma$

	- La *longueur* du mot $m$, note $|m|$ est son nombre de lettres

	- Le nombre d'occurence de $a$ dans $m$ est noté $|m|_a$
])

#exemple([
	Pour le mot $m = (()(()$ sur $Sigma = {(,)}$\
	$|m| = 6, |m|_"(" = 4$
])

== Structuration de $Sigma^*$

On introduit sur $Sigma^*$ l'opération de concaténation

#definition([
	Si $u = u_1...u_n$ et $v = v_1...v_m$ sont des mots sur $Sigma$, la *concaténation* de $u$ et $v$ est le mot $u_1...u_n v_1...v_m$

	On peut trouver les notation $u dot v$ pour la concaténation mais elle est souvent omise.
])

#prop([
	($Sigma^*, dot$) est un monoïde
])

#demo([\
	$dot$ est interne\
	$dot$ admet un élément neutre $epsilon$\
	$dot$ est associative : $(u v)w = u(v w)$
])

L'opération de concaténation permet de définir les puissances d'un mot

#definition([
	Si $u in Sigma^*$, $u^0 = epsilon$ et $forall n in NN, u^n+1 = u dot u^n$
])

#prop([\
	$u^n u ^m = u^(n+m)$ \
	$(u^n)^m = u^(n times m)$
])


#definition([Si $m = m_1..m_n$ et $u = u_1...u_m$ sont des mots sur $Sigma$, on dit que :
- $u$ est un *préfixe* de $m$ si $exists v in Sigma^*, m = u v$ 
- $u$ est un *suffixe* de $m$ si $exists v in Sigma^*, ù = v u$
- $u$ est un *facteur* de $m$ si $exists v, w in Sigma^*, m = v u w$
- $u$ est un *sous-mots* de $m$ si $u$ est une suite extraire de $m$
])

#remarque([
	Pour exclure les cas "limites", on utilise souvent les termes préfixe ou suffixe stricte ou préfixe et suffixe propre.
])

#warning([
	- Les définitions de ces termes peuvent varier selon le contexte
	- Ne pas confondre facteur et sous-mot
])

#prop([
	- Si $u$ est un préfixe ou suffixe de m, il en est aussi facteur
	- Si $u$ est facteur de $m$, il en est aussi sous-mot
	- Toutes les réciproques sont fausses
])

#exemple([
	Pour le mot hippopomonstrosesquipedaliophobie :
	- hippo est un préfixe
	- phobie est un suffixe
	- monstro est un facteur
	- strophe est un sous-mot
])

= Langages

Dans cette partie, $Sigma$ estu n alphabet non-vide

#definition([
	Un *langage* sur $Sigma$ est une partie de $Sigma^*$, c'est à dire un ensemble de mots
])

#exemple([ Sur $Sigma = {a,b}$, les ensmelbes suivants sont des languages

{a, $epsilon$, bab}\
$Sigma^*$\
$emptyset$\
{$epsilon$}\
{$"a"^n"b"^n | n in NN$} = {$epsilon$, ab, aabb, aaabbb, ...}

Sur $Sigma =$ {"l'ensemble des caractères ASCII"}

{"codes des fonctions OCaml de type `int -> unit` qui remine sur toute entrée"}\
{code des fonctions OCaml qui sont syntaxiquement correctes}

De manière générale, pour définir un langage : 
- on énumère les mots
- on décrit une propriété que doivent vérifier les mots
- on définit des règles de construction

Par exemplen le langage de Dyck des expressions bien parenthésées sur $Sigma = {(,)}$ est défini par $epsilon in cal(D)$, $u,v in cal(D), (u)v in cal(D)$

])

== Mauvaise nouvelle

#prop([
	Il y a un nombre infini indénombrable de langages
])

#demo[
	Montrons que $cal(P)(Sigma^*)$ est non dénombrable

	+ Montrer que $Sigma^*$ est dénombrable
	+ Montrer que E et $cal(P)"(E)"$ ne peuvent pas être en bihection si E est un ensemble

	1. $Sigma^*$ est dénombrable car $Sigma^* = underset(union.big, n in NN){m in Sigma^* | |m| = n}$. $Sigma^*$ est donc une union dénombrable d'ensembles finis donc est dénombrable

	+	Supposons par l'absurde qu'il existe une sujection $phi : E -> cal(P)(E)$ 

		On note $X = {x in E | x in.not phi(x)} subset cal(P)(E)$

		Comme $X subset cal(P)(E)$ et $phi$ est une surjection, il existe $x_0 in E$ tel que $X = phi(x_0)$

		- Si $x_0 in X,$ alors $x_0 in.not phi(x_0) = X$
		- So $X_0 in.not X = phi(x_0),$ alors par définition de $X, x_0 in X$

		Ainsi, il y a contracition dans tous les cas : $phi$ n'existe pas et donc, comme il n'y a pas de surjections de E sur $cal(P)$(E), il n'y pas de bijection entre les deux
	
	Aisni, $Sigma^*$ est en bijection avec $NN$ et pas avec $cal(P)$(E), donc $cal(P)$(E) n'est pas en bijection avec $NN$ et $cal(P)$(E) n'est pas dénombrable.
]

#memo(title : [Conséquence])[
	Il existe un nombre dénombrable d'algorithme, car il fomre un langage sur $Sigma^*$ avec $Sigma$ les caractères autorisés, mais il existe un nombre indénombrable de langages. Par conséquent, il existe des langages (une infinité indénombrable) pour lesquels le test d'appartenance à ce langage ne peut pas être fait algorithmiquement
]

== Opérations sur les langages

Les langages sont des ensembles donc on peut faire toutes les opérations ensemblistes usuelles dessus

#warning([
	L'union est noté soit + soit | 
])

Il est également possible de construire des opérations sur les langages à partir des opérations sur les mots

#definition([
	Si L et L'  sont des langages sur $Sigma$

	- La *concaténation* de L et L' est LL' = {$omega in Sigma^* | exists (u,v) in L times L', omega = u v$}
	- On définit récursivement sur $NN$ la puissance n-ième de L par :
		- $L^0 = {epsilon}$
		- $forall n in NN, L^(n+1) = L L^n$
	
	- La *fermeture de Kleene* de L, aussi appelée l'étoile de L :
		$L^* = underset(union.big, n in NN)L^n$\
		L esst commposé des mots sur $Sigma$ qui sont la concaténation d'un nombre arbitraire de mots de L
])

#exemple([
	Avec L = {a, ab, bb} et G = {$epsilon$, a, ba}

	LG = {a, ab, bb, aa, aba, bba, abba, bbba}\
	$"L"^2$ = {aa, aab, abb, aba, abab, abbb, bba, bbab, bbbb}\
	${u^2, u in "L"}$ = {aa, abab, bbbb}

	#warning([
		$L^n eq.not {u^n | u in L}$
	])
])

#remarque([
	$epsilon in L^*$ pour tout $L$ car $L^0$ = ${epsilon}$\
	En particulier, $emptyset^*= {epsilon}$
])

#info(title : [Notation])[
	Si $L$ est un langage, on note $L^+ = underset(union.big, n in NN)L^n$
]

#warning([
	$L^+$ n'est pas toujours égal à $L^*\\{epsilon}$, en effet si $epsilon in L$, alors $epsilon in L^+$
])

== Langages et expressions rationnelles (= régulières)

#definition([
	L'ensemble des *expressions régulières* sur un alphabet $Sigma$ est défini inductivement par :

	- $emptyset$ est une expression régulière
	- $epsilon$ est une expression régulière
	- $forall a in Sigma, a$ est une expression régulière
	- Si $e_1, e_2$ sont des epxressions régulières, alors :
		- $(e_1 e_2)$ est une expression régulière
		- $(e_1 + e_2)$ est une expression régulière
		- $e_1^*$ est une expression régulière
])

#exemple([
	Sur $Sigma = {a, b}, E = (((a b) + a)^*b)$ est une expression régulière

	#raw-render(
		```
		graph {
			point1 [label = "."]
			etoile [label = "*"]
			b1 [label = "b"]
			point1 -- etoile
			point1 -- b1

			plus [label = "+"]
			etoile -- plus

			point2 [label = "."]
			a1 [label = "a"]
			plus -- point2
			plus -- a1

			a2 [label = "a"]
			b2 [label = "b"]
			point2 -- a2
			point2 -- b2
		}
		```
	)
])

#remarque([
	On n'écrit jamais toutes les parenthèses car on utilise les règle de priorité suivante : $star > dot > plus$ 

	Dans l'exemple précédent, E s'écrirait plutôt (ab + a$)^star$b
])

#definition([
	On définit le langage $cal(L)(e)$ associé à une expression régulière $e$ inductivement :

	- $cal(L)(emptyset) = emptyset$
	- $cal(L)(epsilon) = {epsilon}$
	- $forall a in Sigma, cal(L)(a) = {a}$
	-	Si $e_1$ et $e_2$ sont des expressions régulières
		- $cal(L)(e_1 e_2) = cal(L)(e_1) cal(L)(e_2)$
		- $cal(L)(e_1 + e_2) = cal(L)(e_1) + cal(L)(e_2)$
		- $cal(L)(e_1^star) = cal(L)(e_1)^star$

	On dit aussi que $cal(L)(e)$ est le *langage dénoté* par $e$
])

#definition([
	Un langage $L$ sur $Sigma$ est *rationnel* si et seulement si il existe $e$ une epression réuglière telle que $L = cal(L)(e)$

	On note Rat($Sigma^star$) l'ensemble de tous les langages rationnels
])

#remarque([
	Un même langage rationnel peut être dénoté par plusieurs expressions rationnelles

	Par exemple sur $Sigma = {a, b}$, $a + emptyset, epsilon a, a + a + emptyset$ sont des expressions rationnelles différentens mais dénotent toutes ${a}$, on dit qu'elles sont *équivalentes*"
])

#exemple([\
	+ Tous les langages finis sont rationnels

		Chaque mot d'un langage fini est la concaténation de ses lettres, donc si $u = u_1...u_n$, alors $u_1...u_n$ est une expression rationnelle pour ${u}$. Comme le langage est fini, il suffit de faire l'union des expressions rationnelles dénotant chacun de ses mots

	+ $Sigma^*$ est rationnel car il est dénoté par $(a_1+ ...+ a_k)$ avec $Sigma = {a_1, ..., a_k}$

	+ Si $m in Sigma^*$, l'ensemble des mots qui contiennent $m$ est rationnel car il est dénoté par $Sigma^* m Sigma^*$

	+ Sur $Sigma = {a, b}$, le langage dénoté par $a^* b^*$ est rationnel
	#warning([
	Pour le dernier exemple, il serait abusif de dire que le langage $a^* b^*$ est rationnel, car il ne s'agit pas d'un langage mais d'une expression rationnelle, et seul les langages sont rationnels.

	On s'autorisera cependant rapidement à faire cet abus.
	])

	5. $(a + b a)^*$ est rationnel, c'est l'ensemble des mots tel que chaque b est suivi d'un a

	+ $(a^* b)^*$ est rationnel, c'est $epsilon$ et tous les mots qui finissent par b, une autre expression rationnelle pour ce langage est $(a + b)^* b + epsilon$
])

#thm[
	Il existe des langages non rationnels
]

#demo([
	$cal(P)(Sigma^*)$ est indénombrable alors que Rat($Sigma^*$) est dénombrable, car il y a plus d'expressions régulières sur $Sigma$ que de langages rationnels et l'ensemble des expressions régulières sur $Sigma$ est dénombrable.

	En effet, l'ensemble des expressions régulières sur $Sigma$ est inclus dans $Gamma^*$ où $Gamma = Sigma union {(, ), +, dot, ^*, epsilon, emptyset}$, qui est dénombrable
])

#remarque([
	Cette preuve n'exhibe pas de langage non rationnel mais en voici deux :
	- ${a^n b^n | n in NN}$
	- Le langage de Dyck
])

= Langages locaux


== Définitions

#prop([
	Si L est un langage sur $Sigma$, on note :

	- P(L) = ${a in Sigma | a Sigma^* inter L eq.not emptyset}$\
		L'ensemble des lettres de $Sigma$ qui sont la première lettre d'un mot de L

	- D(L) = ${a in Sigma | Sigma^* a inter L eq.not emptyset}$

	- F(L) = ${m in Sigma^2 | Sigma^* m Sigma^* inter L eq.not emptyset}$\
		L'ensemble des facteurs de taille 2 de mots de L

	- N(L) = $Sigma^2\\F(L)$

	Alors, $L\{epsilon} subset $ loc(L) où loc(L) $ = (P(L)Sigma^* inter Sigma^*D(L)) \\ (Sigma^* N(L) Sigma^*)$
])

#demo([
	Soit $m in L\{epsilon}$\
	Comme $m eq.not epsilon$, il a une première lettre qui appartient à P(L), donc $m in P(L)Sigma^*$

	$m$ a aussi une dernière lettre qui appartient à D(L), donc $m in Sigma^* D(L)$

	Supposons par l'absurde que $m in Sigma^* N(L) Sigma^*$\ Alors $m =  u f v$ et donc $f$ serait dans F(L) $ = Sigma^* \\ N(L)$, ce qui seraot absurde\
	Ainsi, $m in.not Sigma^* N(L) Sigma^*$ et finalement, $m in "loc(L)"$
])

#definition([
	Un langage est dit *local* si l'incusion $L\\{epsilon} = "loc(L)"$ est une égalité
])

#pagebreak()

#exemple([
	Sur $Sigma = {a,b}$
	- L = $a^star$ est local car
		- P(L) = {a}
		- D(L) = {a}
		- F(L) = {aa}
		- N(L) = {ab, ba, bb}
		et la localité est immédiate

	- L = $(a b)^star$ est local

		- On calcule P(L), D(L), F(L), N(L)
		- On montre que loc(L) $subset$ L\\{$epsilon$}

	- L = $(a b)^star + a^star$ n'est pas local

		- P(L) = {a}
		- D(L) = {a, b}
		- F(L) = {ab, ba, aa}
		- N(L) = {bb}

		Or, aab $in ("P(L)"Sigma^star inter Sigma^star"D(L)")\\(Sigma^star"N(L)"Sigma^star)$, mais aab $in.not ((a b)^star + a^star)\\{epsilon}$
])

== Stabilité des langages locaux

#prop([\
	Si $L_1$ et $L_2$ sont deux langages locaux, respectivement sur $Sigma_1$ et $Sigma_2$, et $Sigma_1 inter Sigma_2 = emptyset$

	Alors $L_1 + L_2$ et $L_1 L_2$ sont des langages locaux
])

#remarque([
	L'hypothèse $Sigma_1 inter Sigma_2 = emptyset$ est essentielle, si ce n'est pas le cas, on trouve dans l'exemple précédent un contre exemple
])

#demo([
	- Pour l'union

		Il suffit de montrer que loc($L_1 + L_2$) $subset (L_1 + L_2)\\{epsilon}$

		Soit $u = u_1...u_k in "loc"(L_1 + L_2)$ , alors par définition,\ $u_1 in "P"(L_1 + L_2) = P(L_1) + P(L_2)$\
		Sans perte de généralité, on peut supposer $u_1 in "P"(L_1)$
		#colbreak()
		Or, $ cases(u_1 u_2 in "F"(L_1 + L_2) = "F"(L_1) + "F"(L_2), u_1 in P(L_1)", donc" u_1 in Sigma_1) $

		Ceci implique que $u_1 u_2 in F(L_1)$, car les alphabets sont disjoints.\
		De même, en procédant facteur par facteur, $u_2 u_3, ..., u_(k-1) u_k in "F"(L_1)$

		$u_k in "D"(L_1 + L_2) = "D"(L_1) + "D"(L_2)$ et $u_k in "F"(L_1)$.\ Par conséquent, par disjonction des alphabets, $u_k in "D"(L_1)$

		Ainsi, $u in ("P"(L_1) Sigma^star inter Sigma^star "D"(L_1)) \\ Sigma^star"N("L_1) Sigma^star = "loc"(L_1) = L_1\{epsilon}$ par localité de $L_1$

	- Pour la concaténation, on veut montrer que loc($L_1 L_2$) $in L_1 L_2\\{epsilon}$\
		Soit $u = u_1...u_k in "loc"(L_1 L_2)$

		#info(title : [Interlude : Rappels du TP1])[
			$ P(L_1 L_2) = cases(P(L_1)" si "epsilon in.not L_1, P(L_1) + P(L_2)" si " epsilon in L_1) $

			$ D(L_1 L_2) = cases(D(L_2)" si " epsilon in.not L_2, D(L_1) + D(L_2)" si " epsilon in L_2) $

			$ F(L_1 L_2) = F(L_1) + F(L_2) + D(L_1)P(L_1) $
		]

		On sait que $u_1 in P(L_1 L_2)$

		- Si $u_1 in Sigma_2$, alors $u_1 in P(L_2)$ et $epsilon in L_1$

			De plus, $u_1 u_2 in F(L_2)$ par disjonction des alphabets

			Puis, avec le même raisonnement que précédemment, $u_2 u_3, ..., u_(k+1) u_k in F(L_2)$.\ Ainsi, $u_k in Sigma_2$, donc $u_k in D(L_2)$ et  $u_k in D(L_1 L_2)$

			Comme précédemment $u in "loc"(L_2) = L_2\\{epsilon}$ car $L_2$ est local.

			Ainsi, $u = epsilon u in L_1 L_2$

		- Si $u_1 in Sigma_1$

			On considère alors $u_1..u_p$ le plus grand préfixe de $u$ qui est dans $Sigma_1^star$

			- Si $p = k$, le plus grand préfixe de $u$ dans $Sigma_1^star$ est $u$.\
				Alors comme précedemment, on montre que $u_1 u_2, ... u_(k-1) u_k in "F"(L_1)$ et que $u_k in "D"(L_1)$

				Par conséquent, $u_k in "loc"(L_1) = L_1 \\ {epsilon}$ car $L_1$ est local, et $epsilon in L_2$\
				Et alors, $u epsilon in L_1 L_2$
			
			- Si $p < k$, on peut alors adapter la preuve précédente.
])

#prop([
	La fermeture de Kleene d'un langage local est locale
])

#demo([
	Soit $L$ un langage local, on sait que
	- $P(L^star) = P(L)$
	- $D(L^star) = D(L)$
	- $F(L^star) = F(L) + D(L) P(L)$

	Soit $u in "loc"(L^star)$

	On sait que les facteurs de taille 2 de $u$ sont soit dans $F(L)$, soit dans $D(L)P(L)$. On découpe $u$ à chaque fois qu'on rencontre un facteur de taille 2 dans $D(L) P(L)$. Alors, chaque morceau est dans loc($L$), et est donc dans $L\\{epsilon}$ par localité de $L$. Ce qui donne donc immédiatement que $u in L^star\\{€epsilon}$, et donc $"loc"(L^star) subset L^star\\{epsilon}$

	Ainsi, $L^star$ est local.
])

== Expressions rationnelles linéraires

#remarque([
	Il existe des langages rationnels non locaux, par exmeple celui dénoté par $(a b)^star + a^star$. Le but de cette partie est de présenter un sous-ensemble de langages rationnels dont tous les éléments sont locaux
])

#definition([
	Une expression rationnelle $e$ sur $Sigma$ est dite linéaire si chaque lettre n'y apparaît qu'au plus une seule fois. Dit autrement, si $forall a in Sigma, |e|_a <= 1$
])

#prop([
	Toute expression rationnelle linéaire dénote un langage local
])

#demo([
	On montre par induction structurelle sur l'expression rationnelles $e$ la propriété $P(e) : e$ linéaire $=> L(e)$ local

	- $emptyset$ dénote $emptyset$ qui est local
	- $epsilon$ dénote ${epsilon}$ qui est local
	- Soit $a in Sigma$, $a$ dénote ${a}$ qui est local
	- Si $e = e_1 + e_2$ avec $e_1$ et $e_2$ des expressions rationnelles et $e$ linéaire.\
		Alors par $P(e_1)$ et $P(e_2)$, $L(e_1)$ et $L(e_2)$ sont locaux.

		Or, $L(e) = L(e_1) + L(e_2)$ et les alphabets de $e_1$ et $e_2$ sont disjoints par linéarité de $e$, et donc par le résultat précédent, $L(e)$ est local

	- Si $e = e_1 e_2$, avec $e$ linéaire, on applique le même raisonnement

	- Si $e = f^star$ est linéaire, alors $f$ est linéaire et donc $L(f)$ est locale par $L(F)$.

		Or, $L(e) = L(f^star) = L(f)^star$,, qui est local par stabilité des langages locaux par fermeture de Kleene
])

#remarque([
	Les récipriques sont fausses Par exemple, $a a^star$ dénote un langage local pour lequel aucune expression rationnelle n'est linéaire.
])s$$