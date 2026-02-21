#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*#ul[Chapitre 11 :]\  La déduction naturelle*
])

Sources :\
David, Nour, Raffali, #ul[Introduction à la logique]\
Cori-Lascar, #ul[Logique mathématique, tome 1]

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

== Introduction : _Les systèmes logiques_

Un système logique est la donnée de :
+ Une syntaxe qui décrit la forme des objets étudiés par la logique, c'est à dire qui explique comment construire des formules
+ Une sémantique qui donne du sens aux objets définis à l'étape 1.
+ Un système de preuve / de déduction, qui est un outils syntaxique qui décrit comment manipuler des formules pour tenir des raisonnements

Les propriétés classiques qu'on aimerait qu'un système de preuve vérifie sont :
- La cohérence : on ne peut jamais prouver à la fois une formule et sa négation
- La correction : si une preuve d'une formule existe, alors cette formule est vraie selon la sémantique
- La complétude : si une formule est vraie, alors il en existe un preuve

#info(title : [Point culture])[
	Le premier théorème d'incomplétude de Gödel assure que tout système de déduction cohérent qui permet de tenir des raisonnements arithmétiques (comportant la succession, l'addition, la multiplication et la récurrence) est incomplet.

	Le second théorème d'incomplétude donne un exemple de choses vraies non prouvale pour tout système de déduction cohérent sur l'arithmétique.
]

#pagebreak()

= Rappels sur le calcul propositionnel

Pour ce chapitre il faut être au clair sur les concepts de :
- Formule du calcul propositionnel
- Valuation
- Formule satisfiable / tautologique / antilogique
- Formules équivalentes
- Conséquence logique
#definition([
	Si $Sigma$ est un ensemble de formules et $F$ est une forumle, on dit que *F est une conséquence sémantique de $Sigma$*, notée $Sigma tack.double F$ si pour toute valuation satisfaisant $Sigma$, $v$ satisfait $F$
])

#exemple([\
	$emptyset tack.double a or not a$\
	$Sigma tack.double top$
])

#prop([
	$Sigma tack.double F$ si et seulement si $Sigma union {not F}$ est non satisfiable
])

#remarque([
	- Si $Sigma$ est réduit à une seule formule $G$, on écrit $G tack.double F$ plutôt que ${G} tack.double F$
	- Si $Sigma = {G_1, ..., G_k}$, on peut même voir la notation $G_1, .... G_k tack.double F$
])

= Systèmes de déduction

== Séquents

#definition([
	Un *séquent* est un couple de deux ensembles de formules $Delta$ et $Gamma$, noté $Gamma tack Delta$

	- Si $Gamma = {G_1, ..., G_n}$ et $Delta = {D_1, ..., D_n}$,\ on s'autorise à écrire $G_1,...,G_k tack D_1,...D_k$

	- Si $Gamma = emptyset$, on peut écrire $tack Delta$

	- Si $Gamma$ est un emseble de formulse et $F$ une formule, on peut écrire $Gamma, F tack Delta$, à la place de $Gamma union {F} tack Delta$

	Dans la suite, $Delta$ est toujours réduit à une unique formule
])

#pagebreak()



#info(title : [Défintions])[
	- Si $Gamma tack Delta$ est un séquent, les formules de $Gamma$ sont les *hypothèses* (ou le contexte) du séquent, et les formules de $Delta$ sont ses *conclusions*

	- Un séquent $Gamma tack Delta$ est dit *valide* si $Gamma tack.double Delta$
]

#question([
	Comme détecter les séquents valides ?

	+ Par la sémantique (dans le cadre du calcul propositionnel, on dresse une table de vérité)
	+ Grâce à un système de déduction correct : il consiste en un ensemble de règles syntaxiques qui permettent de transformer les ensembles de formules
])

== Morphologie d'un système de déduction

#definition([
	Un *système de déduction* $tack$ est un ensemble fini de règles de déductions / d'inférences de la forme\

	#prooftree(rule(
		label: [],
		name : [Nom de la règle],
		[$P_1$],
		[...],
		[$P_k$],
		[P],
	))
	Avec $P_1, ..., P_k, P$ des séquents

	- Les $P_1, ..., P_k$ s'appellent les *prémisses* de la règle
	- Le séquent P s'appelle la *conclusion*
	- Si l'ensemble de prémisses d'une règle est vide, on dit que c'est un *axiome*

	L'ensemble des *arbres de preuves* pour un ensemble de déduction donné $tack$ est un ensemble défini indictivement par :
	- Tout arbre réduit à un seul noeud étiqueté par un axiome de $tack$ est un arbre de preuve
	- Si $A_1, ..., A_k$ sont des arbres de preuve dont les racines sont les séquents $H_1, ..., H_k$, $C$ est un séquent et #prooftree(rule(
		label : [],
		name : [],
		[$H_1$],
		[...],
		$H_k$,
		"C"
	)) est une règle, alors l'arbre ayant pour racine $C$ et pour sous-arbres les $A_i$ est un arbre de preuve
])

#warning(title : [Convention])[
	Les arbres de preuve sont dessinées avec la racine en bas
]

#definition([
	On dit que $tack$ *prouve* le séquent $S$ s'il existe un arbre de preuve dans $tack$ dont la racine est $S$. Cet arbre s'appelle une *preuve* de S
])

#idea(title : [Méthode])[
	- Si un exercice demande de prouver $Gamma tack F$, l'objectif est construire un arbre de preuve pour $Gamma tack F$

	- Si un exercice demande de prouver $F$, le but est de construire un arbre de preuve pour $tack F$
]

#remarque([
	Si $F$ est une formule telle que $tack F$ est prouvable, on dit que $F$ est un théorème
])

#warning([
	Quand on écrit $Gamma tack F$, ça peut vouloir dire selon le contexte qu'on pose le séquent $Gamma tack F$ ou qu'on peut prouver $Gamma tack F$
])

#remarque([
	Si on manipule deux systèmes de déduction $tack_1$ et $tack_2$, il faut préciser quel est le système utilisé quand on écrit que $Gamma tack F$ est prouvable. Si par exemple il est prouvable dans $tack_1$ mais pas dans $tack_2$, il faut écrire $Gamma tack_1 F$
])

#definition([
	Un système de déduction $tack$ est dit
	- *correct* si pour toute formule $F$ et pour tout ensemble de formules $Gamma$\ si $Gamma tack F$ alors $Gamma tack.double F$
	- *complet* si pour toute formule $F$ et pour tout ensemble de formules $Gamma$\ si $Gamma tack.double F$ alors $Gamma tack F$
])

= Déduction naturelle pour le calcul propositionnel

#definition([
	Dans toute la suite, les capitales grec sont des ensembles de formules et les capitales latines des formules.\
	La *déduction naturelle* est un système de déduction dont les règles sont :
	- Axiome
	#let axiome = rule(label : [], name : [ax], [$Gamma, A tack A$])
	#prooftree(axiome) 

	- Affaiblissement
	#let affaiblissement = rule(label : [], name : [aff], [$Gamma tack A$], [$Gamma, B tack A$])
	#prooftree((affaiblissement))

	- Règles pour $arrow.double$
	#let elim_imp = rule(label : [], name : [elim-$arrow.double$],
	[$Gamma tack A arrow.double B$], [$Gamma tack A$], [$Gamma tack B$])
	#prooftree(elim_imp)

	#let intro_imp = rule(label : [], name : [intro-$arrow.double$],
	[$Gamma, A tack B$], [$Gamma tack A arrow.double B$])
	#prooftree(intro_imp)

	- Règles pour $and$

	#let elim_et_d = rule(label : [], name : [elim-$and$-droite],
	[$Gamma tack A and B$], [$Gamma tack A$])
	#prooftree((elim_et_d))

	#let elim_et_g = rule(label : [], name : [elim-$and$-gauche],
	[$Gamma tack A and B$], [$Gamma tack B$])
	#prooftree((elim_et_g))

	#let intro_et = rule(label : [], name : [intro-$and$],
	[$Gamma tack A$], [$Gamma tack B$], [$Gamma tack A and B$])
	#prooftree(intro_et)

	- Règles pour $or$

	#let elim_ou = rule(label : [], name : [elim-$or$],
	[$Gamma tack A or B$], $Gamma, A tack C$, $Gamma, B tack C$, $Gamma tack C$)
	#prooftree(elim_ou)

	#let intro_ou_d = rule(label : [], name : [intro-$or$-droite],
	[$Gamma tack A$], $Gamma tack A or B$)
	#prooftree(intro_ou_d)

	#let intro_ou_g = rule(label : [], name : [intro-$or$-gauche],
	$Gamma tack B$, $Gamma tack A or B$)
	#prooftree(intro_ou_g)

])

// #info(title : [Culture G])[
// 	Ce système de déduction est la logique minimale
// ]

#remarque([
	Les règles symétriques pour l'introduction du $or$ et l'élimination du $and$ sont importantes car elles sont syntaxique donc le côté où on élimine ou introduit pourrait avoir de l'importance
])

#definition([
	#let explo = rule(label : [], name : [principe d'explosion (elim-$bot$)],
	$Gamma tack bot$, $Gamma tack A$)
	#prooftree(explo)
	- Règles sur le $not$
	#let elim_non = rule(label : [], name : [elim-$not$],
	$Gamma tack A$, $Gamma tack not A$, $Gamma tack bot$)
	#prooftree(elim_non)

	#let intro_non = rule(label : [], name : [intro-$not$],
	$Gamma, A tack bot$, $Gamma tack not A$)
	#prooftree(intro_non)

	- Il suffit d'une règle sur les trois suivantes pour obtenir un système complet
	#let tiers_exclu = rule(label : [], name : [TE],
	$Gamma tack A or not A$)
	#prooftree(tiers_exclu)

	#let elim_non_non = rule(label : [], name : [elim-$not not$],
	$Gamma tack not not A$, $Gamma tack A$)
	#prooftree(elim_non_non)

	#let absurde = rule(label : [], name : [RA],
	$Gamma, not A tack bot$, $Gamma tack A$)
	#prooftree(absurde)
])

#info(title : [Point culture])[
	Si on ne prend que l'axiome, les règles pour $=>, and$ et $or$, on obtient la *logique minimale*. Si on ajoute à cela le principe d'explosion et les règles pour le $not$, on obtient la *logique intuitioniste*. Enfin, si on rajoute une des trois dernières règles, on a la *logique classique*.

	Il y a des théorèmes prouvables en logique classique et non prouvable en logique intuitionniste
]

#pagebreak()

#exemple[
	Montrer en déduction naturelle : $(A and B) => (B and A)$

	#prooftree(
		rule(
			label : [], name : [intro-$=>$],
			rule(
				label : [], name : [intro-$and$],
				rule(
					label : [], name : [elim-$and$],
					rule(label : [], name : [ax], $A and B tack A and B$),$A and B tack B$
				),
				rule(
					label : [], name : [elim-$and$],
					rule(label : [], name : [ax], $A and B tack A and B$),$A and B tack A$,
				),
				$A and B tack B and A$
			),
			$tack (A and B) => (B and A)$
		)
	)
]

#exemple([
	Montrer en déduction naturelle : $not A <=> (A => bot)$,\
	i.e. $(not A => (A => bot)) and ((A => bot) => not A)$

	#prooftree(
		rule(
			label : [], name : [intro-$and$],
			rule(
				label : [], name : [intro-$=>$],
				rule(
					label : [], name : [intro-$=>$],
						rule(
							label : [], name : [elim-$not$],
							rule(
								label : [], name : [ax],
								$A, not A tack A$
							)
							,rule(
								label : [], name : [ax],
								$A, not A tack not A$
							)
							,$not A, A tack bot$
						)
					,$not A tack A => bot$
				)
				,$tack not A => (A => bot)$
			)
			,rule(
				label : [], name : [intro-$=>$],
				rule(
					label : [], name : [intro-$not$],
					rule(
						label : [], name : [elim-$=>$],
						rule(
							label : [], name : [ax],
							$A => bot, A tack A => bot$
						)
						,rule(
							label : [], name : [ax],
							$A => bot, A tack A$
						)
						,$A => bot, A tack bot$
					)
					,$A => bot tack not A$
				)
				,$tack (A => bot) => not A$
			)
			,$tack (not A => (A => bot)) and ((A => bot) => not A)$
		)
	)
])

#thm[
	La déduction naturelle est un système de déduction correct (pour la sémantique standard)\
	C'est à dire que si $Gamma tack F$, alors $Gamma tack.double F$
]

#demo([
	Si $Gamma tack F$ est prouvable, montrons que $Gamma tack.double F$ par induction sur l'arbre de preuve

	Cas de base :\
	Si l'arbre de preuve pour $Gamma tack F$ est réduit à un axiome, il est d'une des formes :

	- #prooftree(rule(label : [], name : [ax], $Gamma, A tack A$))

		Dans ce cas, si $v$ est une valuation qui satisfait $Gamma, A$, alors elle satisfait $A$, donc $Gamma, A tack.double A$
	
	- #prooftree(rule(label : [], name : [TE],$tack A or not A$))

		Dans ce cas, si $v$ est valuation qui satisfait $emptyset$, alors elle satisfait $A or not A$ puisque c'est une tautologie, donc $emptyset tack.double A$


	Cas inductif :\
	L'arbre dont $Gamma tack F$ est la racine est obtenu à partir de l'application d'un des règles à des séquents $Gamma tack F_1,..., Gamma tack F_k$, pour lesquels on a $Gamma tack.double F_1, ..., Gamma tack.double F_k$ par hypothèses inductive

	Pour montrer que $Gamma tack.double F$, il suffit de montrer que la règle est correcte, c'est à dire que si on a conséquence sémantique pour toutes les prémisses alors on a conséquence sémantique pour la conclusion.

	On montre donc que toutes les règles de la déduction naturelle sont correctes par disjonction de cas, on le fait ici pour elim-$=>$ et intro-$=>$, le reste ne exo :

	- #prooftree(rule(label : [], name : [intro-$=>$], $Gamma, A tack B$, $Gamma tack A => B$))

		On suppose que $Gamma, A tack.double B$.\
		Soit $v$ une valuation qui satisfait $Gamma$, montrons qu'elle satisfait $A => B$
		- Si $v(A) = 0$, alors $v(A => B)$ = 1 car $bot => F$ est vrai pour tout $F$
		- Si $v(A) = 1$, alors $v(Gamma, A) = 1$ et par prémisse, $v(B) = 1$, donc $v(A => B) = 1$
	
	- #prooftree(rule(label : [], name : [elim-$=>$], $Gamma tack A=> B$, $Gamma tack A$, $Gamma tack B$))

		On suppose que $Gamma tack.double A => B$ et $Gamma tack.double A$.\
		Soit $v$ une valuation qui satisfait $Gamma$, montrons qu'elle satisfait $B$.\
		$v(A) = 1$ et $v(A => B) = 1$, donc par la table de vérité de $=>$, $v(B) = 1$
])

#info(title : [Conséquences de la correction])[
	+ Il est impossible de construire un arbre de preuve pour un séquent non valide
	+ Si en construisant un arbre de preuve on se retrouve sur un noeud sémantiquement faux alors on est dans une impasse
]

#thm[
	La déduction naturelle est complète, ainsi tout séquent valide admet un arbre de preuve.
]

#info(title : [Conséquence de la complétude])[
	Pour s'entraîner à construire des arbres, il suffit avec une table de vérité de trouvr $Gamma, F$ tels que $Gamma tack.double F$ pour être sûr que $Gamma tack F$ est prouvable
]

#warning([
	La complétude est hors-programme, donc ce n'est pas un argument valide dans une copie
])

#pagebreak()

= Logique du premier ordre
*(= calcul des prédicats)*

== Syntaxe

#definition([
	Un *langage du premier ordre* ou une *signature* est la couple de :
	- Un ensemble (potentiellement infini) de symboles de fonction $cal(S)_F$
	- Un ensemble (potentiellement infini) de symboles de relation/prédicat $cal(S)_R$

	Chaque symbole de $cal(S)_F$ est accompagné d'une arité positive et chaque symbole de $cal(S)_R$ est accompagné d'une arité strictement positive

	Un symbole de fonction d'arité 0 s'appelle une *constante*
])

#exemple([\
	$cal(S)_F = {c:0, f : 1, circle.small : 2, circle.filled.small : 2}$\
	$cal(S)_R = {z : 1, = : 2}$\
	$L_0 = (cal(S)_F, cal(S)_R)$ est un langage du premier ordre

	La signature pour la théorie des ensembles est :\
	$cal(S)_F = {emptyset : 0$, #super[c]$ : 1, union : 2, inter : 2}$\
	$cal(S)_R = {= : 2, subset : 2, in : 2}$
])

#definition([
	Soit $(cal(S)_F, cal(S)_R)$ un langage du premier ordre et $X$ un ensemble infini dénombrable de variables. L'ensemble des *termes* sur la signature $(cal(S)_F, cal(S)_R)$ est définie inductivement par :

	- $forall x in X, x in T$
	- $forall f in cal(S)_F$, d'arité 0, $f in T$
	- $forall f in cal(S)_F$, d'arité $n > 0, forall (t_1, ..., t_n) in T^n, f" " t_1" "  ... " "t_n  in T$
])

#exemple([
	Voici un terme sur $L_0$ avec $X = {x, y}$ : $circle.small " " f " " x " " circle.filled.small " " f " " x " " f " " y$

	En écriture infixe, celà correspondrait à $(f(x)) circle.small (f(y) circle.filled.small f(x))$
])

#remarque([
	Certains symboles de fonctions peuvent parfoirs être urilisés en notatin infixe ou postfixe. Par exemple si $circle.small$ et $circle.filled.small$ sont infixes, on écrirait plutôt\
	$f" "x" "circle.small" "(f" "y" "circle.small.filled" "f" "x)$
])

#definition([
	Étant donné $(cal(S)_F, cal(S)_R)$ un langage du permier ordre et $$ un ensemble de variables, *l'ensemble des formules du premier ordre* est l'ensemble $cal(F)$ défini inductivement par :

	- Si $cal(R) in cal(S)_R$ d'arité $n$ et $t_1, ..., t_n$ sont des termes alors $cal(R)" "t_1" ... "t_n in cal(F)$ (une telle formule est dite atomique)

	- Si $phi$ et $psi in cal(F) : phi and psi, phi or psi, phi => psi, not phi in cal(F)$
	- Si $phi in cal(F), x in X$ : $exists x" "phi, forall x" "phi in cal(F)$


	De plus,
	- "Logique du premier ordre" peut aussi être appelé "calcul des prédicats"

	- $forall$ s'appelle quantificateur universel
	- $exists$ s'appelle quantificateur existentiel
])

#exemple([\
	Sur $L_1$, $forall x" "forall y" "((x union y)^complement = x^complement inter y^complement)$ est une formule\
	SUr $L_0$, $exists x" "f(c) = c$ est une formule

	Comme pour le calcul propositionnel, chaque formule a une arbre syntaxique, sur les formules précédentes ce sont :

	
])

#remarque([
	Classiquement, les priorités des connecteurs sont :\
	$->" "<" "forall x," "exists x" "<" "or, and" "<" "not$

	Par exemple, $forall x" "p(x) => q(x)$ s'interprète $(forall x" "p(x)) => q(x)$
])

== Occurences libres et liées de variables

#definition([
	Soit $phi$ une formule du premier ordre et $x$ une variable :

	- Une *occurence de $x$* dans $phi$ est une feuille dans l'arbre de $phi$ étiquettée pax $x$
	- Une occurence de $x$ est *liée* s'il existe un noeud $forall x$ ou $exists x$ sur la branche menant de cette feuille à la racine, sinon elle est *libre*

	Si une occurence de la variale $x$ est liée, on appelle *point de liaison de cette occurence* le premier quantificateur trouvé en remontant depuis cette occurence vers la racine\
	La *portée* d'un quantificateur est le sous arbre enraciné par ce quantiificateur
])

== Substitution

#idea([
	Les occurences de variables liées sont "muettes" donc on peut les renommer mais il faut faire attention à ce que l'occurence soit bien liée

	Par exemple
	- $forall x f f x$ $checkmark$ $forall y f f y$

	- $forall x" "exists y" "x + y = 0$ $checkmark$ $forall x" "exists z" "x + z = 0$

	- $forall y" "x + y = y$ X $forall y" "z + y = y$\
		$->$ Renommage d'occurence de variable libre

	- $forall x" "exists y" "x + y = y$ X $forall x" "exists z" "x + z = y$\
		$->$ Renommage d'une partie des occurences dans la portée du renommage

	- $forall y" "x + y = y$ X $forall y" " x + x = x$\
		$->$ Capture de variable
	
	- $exists x" "forall y" "x + y = y$ X $exists y" "forall y" "y + y = y$\
		$->$ Changement de point de liaison
])

#definition([
	Soit $phi$ une formule, $x$ une variable et $t$ un terme\
	Substituer $x$ par $t$ dans $phi$ produit une formule $phi[t\/x]$ qu'on obtient à partir de $phi$ de manière suivante :
	- Renommer les occurences de variables liées dans $phi$ de sorte ) ce qu'aucune variable intervenant dans $t$ ne soit capturée
	- Remplacer toutes les occurences libres de $x$ par $t$
])

#exemple([
	Substituer $z$ par $x^complement$ dans $phi = (forall x" "x inter z = z inter y) and (x = z union z)$

	Renommage : $(forall u" "u inter z = z inter y) and (x = z union z)$\
	On remplace : $(forall u" "u inter x^complement = x^complement inter y) and (x = x^complement union x^complement)$
	\
	\
	De même pour $(forall x" "exists z" "x inter z = z inter y) and (x = z union z)$\
	
	Renommage : ($forall u" "exists z" " u inter z = z inter y) and (x = z union z)$\
	On remplace : $(forall u" "exists z" "u inter z = z inter y) and (x = x^complement union u^complement)$
])

== Déduction naturelle pour le calcul des prédicats

#info(title : [Règles])[
	Les règles de ce système de déduction sont celles de la déduction naturelle pour le calcul propositionnel auxquelles on ajoute :

	- Introduction du $forall$ (règle de généralisation)
	#prooftree(rule(label : [], name : [intro-$forall$], $Gamma tack A$, $Gamma tack forall x A$))
	$=>$ Valable uniquement si $x$ n'a aucune occurence libre dans $Gamma$

	- Élimination du $forall$ (règle de spécification)
	#prooftree(rule(label : [], name : [elim-$forall$], $Gamma tack forall x A$, $Gamma tack A[t\/x]$))
	$=>$ Valable uniquement pour les termes $t$ qui ne font pas intervenir de variable qui a des occurences liées dans A\
	Si on a des variables de $t$ qui risquent de se faire capturer par des quantificateur de $A$, on renomme les occurences liées dans $A$

	- Introduction du $exists$ (règle de construction de témoin)
	#prooftree(rule(label : [], name : [intro-$exists$], $Gamma tack A[t\/x]$, $Gamma tack exists x A$))
	$=>$ Valable si $t$ est un terme dont les occurences de variables ne sont pas liées dans A

	- Elimination du $exists$
	#prooftree(rule(label : [], name : [], $Gamma tack exists x A$, $Gamma, A tack B$, $Gamma tack B$))
	$=>$ Valable si $x$ n'a aucune occurence libre ni dans $Gamma$ ni dans $B$
]

#pagebreak()

#exemple([

	#set text(size:11pt)
	#prooftree(
		rule(
			label : [], name : [intro-$=>$],
			rule(
				label : [], name : [elim-$exists$],
				rule(label:[], name:[ax], $exists x (A and B) tack exists x A and B$)
				,rule(
					label : [], name : [intro-$and$],
					rule(
						label : [], name : [intro-$exists$],
						rule(
							label : [], name : [elim-$and$],
							rule(label:[], name:[ax],$exists x (A and B), A and B tack A and B$)
							,$exists x (A and B), A and B tack A$
						)
						,$exists x (A and B), A and B tack exists x A$
					)
					,rule(
						label : [], name : [intro-$exists$],
						rule(
							label : [], name : [elim-$and$],
							rule(label:[], name:[ax],$exists x (A and B); A and B tack A and B$)
							,$exists x (A and B), A and B tack B$
						)
						,$exists x (A and B), A and B tack exists x B$
					)
					,$exists x (A and B), A and B tack exists x A and exists x B$
				)
				,$exists x (A and B) tack exists x A and exists x B$
			)
			,$tack exists x (A and B) => exists x A and exists x B$
		)
	)
	#set text(size:13pt)

	Dans les règles elim-$exists$ et intro-$exists$ on a subsitué $x$ par $x$ (non lié dans $A$), $x$ n'as pas d'occurence libre dans $Gamma = {exists x (A and B)}$ ni dans $exists x A and exists x B$

	#warning([
		Les conditions pour appliquer les règles sont importantes
	])
	+ Si on néglige la condition pour intro-$forall$\
		Ici $e$ est une constante
	#prooftree(rule(
		label : [], name : [intro-$and$],
		rule(label:[], name:[ax],$e = x tack e = x$)
		,$e = x tack forall x(e = x)$
	))
	2. Si on néglige la codition pour elim-$exists$
	#prooftree(rule(
		label : [], name : [intro-$=>$],
		rule(
			label : [], name : [intro-$forall$ (légal)],
			rule(
				label : [], name : [elim-$exists$],
				rule(label:[], name:[ax], $exists x A tack exists x A$)
				,rule(label:[], name:[ax], $exists x A, A tack A$)
				,$exists x A tack A$
			)
			,$exists x A tack forall x A$
		)
		,$tack exists x A => forall x A$
	))

	Pour le elim-$exists$, il n'y a aucun quantificateur pour $x$ devant $A$ à droite, donc il peut y avoir des occurences libres de $x$ dans $A$, on ne peut donc pas l'utiliser
])

#thm[
	La déduction naturelle pour le calcul des prédicats est correcte et complète (par le thèorème de complétude de Gödel)
]

Un langage du premier ordre est dit égalitaire si $=$ est un symbole de relation dont la sémantique est l'égalité. Dans le cadre de ces langages, on ajoute deux règles :

#prooftree(rule(label:[pour tout terme $t$ : ],name:[intro-$=$],$Gamma tack t = t$))

#prooftree(rule(
	label : [], name : [elim-=],
	$Gamma tack s = t$, $Gamma tack A[s\/x]$, $Gamma tack A[t\/x]$
))

#pagebreak()
#exemple[
	Montrer que l'égalité est symétrique\ i.e. $forall x forall y(x=y=>y=x)$

	#prooftree(rule(
		label : [], name : [intro-$forall times 2$],
		rule(
			label : [], name : [intro-$=>$],
			rule(
				label : [], name : [elim-=],
				rule(label:[], name:[ax], $x=y tack x=y$)
				,rule(label:[], name:[intro-=], $x=y tack x=x$)
				,$x = y tack y = x$
			)
			,$tack x = y => y = x$
		)
		,$tack forall x forall y(x = y => y = x)$
	))
]