#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*Fiche 11 : Raison*
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
  	#pagebreak()
  	#if it.numbering != none [
  		#counter(heading).display(it.numbering)
  	]
  	#it.body
  ]
#set heading(numbering: "I.A.a")

#set par(justify: true)

#let cadre(text, ..other) = [#block(
  fill : luma(240),
  inset : 8pt,
  radius : 4pt,
  width : 100%,
  [#text]
)]

= Les penseurs

== Platon -- La raison comme accès aux Idées

#cadre[
	Pour *Platon (427-347 av. JC)* , la raison (_logos_, _nous_) est la faculté la plus haute de l'âme. Elle seule peut accéder au monde intelligible, c'est-à-dire aux Idées (le Vrai, le Beau, le Juste, le Bien). Les sens nous montrent des choses changeantes et imparfaites ; la raison nous montre l'essence immuable. Cette thèse a une conséquence politique : seuls les philosophes (ceux qui exercent leur raison) peuvent gouverner la cité, car ils connaissent le Bien en soi. L'allégorie de la caverne (_République_, livre VII) illustre ce mouvement : sortir de la caverne (le monde sensible) par un long effort de raison, pour voir le soleil (l'Idée du Bien).

	$=>$ Platon est la référence pour une raison ontologique (elle saisit l'être) et politique (elle doit commander).
]

== Aristote -- La raison comme ce qu'il y a de plus divin en l'homme

#cadre[
	*Aristote (384-322 av. JC)* ne sépare pas radicalement la raison des sens. La connaissance commence par l'expérience sensible, mais la raison (l'intellect, _nous_) tire des concepts universels à partir des cas particuliers. Il distingue deux types de raison : la raison théorique (qui connaît ce qui ne peut pas être autrement, comme les mathématiques) et la raison pratique (qui délibère sur ce qui pourrait être autrement, comme les actions morales). La vie la plus heureuse, pour Aristote, est la vie contemplative (_theoria_), car c'est celle qui s'approche le plus de la perfection divine. Mais cette vie n'est pas la seule bonne ; la vie pratique (politique, éthique) est aussi excellente.

	$=>$ Aristote distingue la raison théorique (savoir) et la raison pratique (délibération). Le bonheur est dans l'exercice de la raison, mais une raison incarnée.
]

== Descartes -- La raison comme pouvoir du doute

#cadre[
	*René Descartes (1596-1650)* fait de la raison la faculté la plus haute de l'homme, mais il la définit d'abord par le doute. Dans le _Discours de la méthode_ et les _Méditations métaphysiques_, il propose de tout remettre en question (les sens, les opinions reçues, même les mathématiques) pour trouver un fondement indubitable. Ce fondement, c'est le _cogito_ : "Je pense, donc je suis." La raison ne reçoit pas la vérité du dehors ; elle la produit par ses propres opérations (intuition, déduction, méthode). Cette confiance dans la raison s'accompagne d'un projet technique : la raison nous permet de connaître la nature et de la dominer.

	$=>$ Descartes est la référence pour une raison souveraine, maîtresse du doute et de la certitude, fondatrice de la science moderne.
]

== Pascal -- Les limites de la raison

#cadre[
	*Blaise Pascal (1623-1662)* est souvent présenté comme l'adversaire de Descartes. Il ne nie pas la puissance de la raison, mais il en montre les limites. La raison ne peut pas tout connaître. Elle ne peut pas prouver Dieu (les preuves de l'existence de Dieu sont insuffisantes). Elle ne peut pas fonder la morale : "Le cœur a ses raisons que la raison ne connaît point." Elle ne peut pas nous rendre heureux, mais la pensée est aussi une source d'angoisse. Pascal distingue l'*esprit de géométrie* (la raison abstraite, qui démontre) et l'*esprit de finesse* (l'intuition, le sentiment, la finesse des rapports subtils).

    "Le cœur a ses raisons que la raison ne connaît point."\
    Pascal — _Pensées_, fragment 423

	$=>$ Pascal est la référence pour la critique des limites de la raison : la raison ne peut pas tout, et il y a des vérités (le cœur, la foi) qu'elle ne peut pas atteindre.

]

== Kant -- La raison pose ses propres limites

#cadre[
	*Emmanuel Kant (1724-1804)* opère une révolution : la raison ne découvre pas des vérités préexistantes (Platon) ; elle ne reçoit pas passivement des données (empiristes) ; elle *constitue* l'objet de sa connaissance par ses propres catégories (temps, espace, causalité...). Dans la _Critique de la raison pure_, il examine ce que la raison peut connaître légitimement : les phénomènes (ce qui apparaît dans l'espace et le temps). La raison ne peut pas connaître les noumènes (les choses en soi, Dieu, l'âme, le monde comme tout). Mais cette limitation n'est pas un échec ; c'est une auto-limitation salutaire. La raison théorique s'arrête où commence la raison pratique (la morale). Dans la _Critique de la raison pratique_, Kant montre que la raison peut fonder la morale par l'impératif catégorique.

	"Agis de telle sorte que la maxime de ton action puisse être érigée en loi universelle."\
    Kant — _Fondements de la métaphysique des mœurs_

	$=>$ Kant est la référence pour une raison qui se critique elle-même, qui connaît ses limites (la métaphysique est impossible) mais aussi ses pouvoirs (la morale est rationnelle).
]

== Nietzsche -- La raison est une illusion nécessaire

#cadre[
	*Friedrich Nietzsche (1844-1900)* propose la critique la plus radicale de la raison. Dans _Par-delà bien et mal_ et la _Généalogie de la morale_, il soutient que ce que nous appelons "raison" est en réalité un ensemble de contraintes logiques et grammaticales qui reflètent notre besoin de sécurité, non la structure du réel. La raison a une histoire : elle est née de la peur, de la volonté de prévoir, de l'instinct grégaire. La logique elle-même n'est pas vraie ; elle est utile. Nietzsche s'attaque à Descartes : le "je pense" suppose déjà un "je", une substance, un sujet – or rien ne prouve que la pensée ait besoin d'un support substantiel. Il s'attaque aussi à Kant : les catégories de l'entendement ne sont pas a priori universelles ; elles sont des habitudes ancestrales.

    "La raison est une illusion née de la grammaire."\
    Nietzsche — _Par-delà bien et mal_ (paraphrase)

	$=>$ Nietzsche est la référence pour le soupçon sur la raison : la raison n'est pas une faculté noble et désintéressée ; elle est un instrument de domination, un produit de l'histoire, une illusion utile.
]

== Adorno & Horkheimer --- La raison devenue déraison

#cadre[
	*Theodor Adorno (1903-1969) et Max Horkheimer (1895-1973)* publient en 1944 (en exil américain) la _Dialectique de la raison_. Leur thèse est double. D'abord, la raison des Lumières (Descartes, Kant) promettait l'émancipation, la liberté, la vérité. Elle a produit la science, la technique, la démocratie. Mais cette même raison, devenue instrumentale (calculatrice, efficace, aveugle aux fins), a produit les totalitarismes, les camps, la destruction systématique. La raison devient déraison. Ensuite, la dialectique de la raison signifie que la raison retourne contre elle-même ce qu'elle avait produit. Pour échapper à cette impasse, ils proposent une raison critique (héritée de Marx) : une raison qui ne se contente pas de calculer les moyens les plus efficaces, mais qui interroge aussi les fins de l'action.

    "La raison qui devient purement instrumentale finit par se détruire elle-même."\
    Adorno et Horkheimer — _Dialectique de la raison_

	$=>$ Adorno et Horkheimer sont la référence pour le diagnostic d'une raison devenue déraison : l'outil a dévoré la fin, la technique a dévoré l'émancipation.
]

= Exemple : _Discours de la méthode_ -- La raison souveraine

== Contexte et situation

#cadre[
	_Discours de la méthode_ paraît en 1637, en français (et non en latin, comme c'était l'usage pour les ouvrages savants). Descartes veut s'adresser à un large public, pas seulement aux clercs. Le livre est une autobiographie intellectuelle : il raconte son parcours, ses doutes, sa méthode, ses découvertes. Il ne s'agit pas d'un traité systématique (comme le seront plus tard les _Méditations métaphysiques_), mais d'une introduction, d'une propédeutique.

	Le contexte intellectuel est celui de la crise de la scolastique. L'enseignement universitaire repose encore sur Aristote, interprété par les commentateurs médiévaux. Descartes juge ce savoir incertain. Les philosophes se contredisent ; les théologiens s'affrontent ; les sens nous trompent. Il faut tout reconstruire sur des bases nouvelles.

	Le projet de Descartes est donc ambitieux : fonder l'ensemble du savoir humain (physique, biologie, morale, métaphysique) sur un principe indubitable : la raison. Non pas la raison comme faculté particulière, mais la raison comme méthode : un ensemble de règles simples et universelles qui permettent de distinguer le vrai du faux.

	$=>$ _Discours de la méthode_ est l'œuvre fondatrice du rationalisme moderne. Contre l'empirisme (la connaissance vient des sens), contre la tradition (la connaissance vient des autorités), contre la foi aveugle, Descartes pose la raison comme seule autorité légitime.

	*Trois apports majeurs se dégagent.*

	D'abord, la définition de la raison par le doute. Le doute n'est pas un scepticisme (le doute cartésien est provisoire et méthodique). Il est un outil pour déblayer le terrain : éliminer tout ce qui n'est pas absolument certain. La raison ne s'exerce pas en accumulant des opinions ; elle s'exerce en doutant de tout jusqu'à trouver une vérité que le doute ne peut pas ébranler.

	Ensuite, la découverte du cogito : "Je pense, donc je suis." C'est la première vérité, indubitable. Même si je doute de tout (des sens, du monde, de mon corps), je ne peux pas douter que je doute. Et douter, c'est penser. Donc je suis, au moins comme chose qui pense. Le cogito est le fondement de tout savoir : à partir de lui, on peut reconstruire la certitude.

	Enfin, la méthode comme instrument universel. Descartes formule quatre règles (ne jamais rien admettre de non évident, diviser les difficultés, conduire les pensées du simple au complexe, faire des dénombrements complets). Ces règles s'appliquent à tous les domaines : mathématiques, physique, biologie, morale. La raison est une et universelle ; ce n'est pas une faculté spécialisée.

	Le dialogue avec Pascal est implicite. Descartes veut prouver l'existence de Dieu par la raison (les preuves a priori, l'argument du parfait). Pascal répond que ces preuves sont insuffisantes et que la raison ne peut pas atteindre Dieu. Le _Discours de la méthode_ est la cible des _Pensées_.
]


== Le doute méthodique : raisonner en détruisant

#cadre[
	*Douter de tout pour trouver le certain*

	Le doute cartésien n'est pas le doute sceptique. Le sceptique doute pour douter ; il reste dans l'incertitude. Descartes doute pour trouver le certain ; le doute est un outil, non une fin.

	Dans la première partie du _Discours_, Descartes raconte qu'il a renoncé à tout ce qu'il avait appris pour tout reconstruire sur des bases nouvelles. Il refuse l'argument d'autorité (ce que disent les maîtres) et le témoignage des sens (les sens nous trompent parfois, donc on ne peut pas leur faire confiance absolument). Il va jusqu'à douter des mathématiques : un démon malin pourrait me faire croire que 2+2=4 alors que c'est faux.

	Mais ce doute hyperbolique ne dure pas. Il est un exercice, un parcours. Descartes s'arrête quand il touche le fond : le cogito.

	"Je pensais donc qu'il fallait prendre pour règle de ne jamais recevoir aucune chose pour vraie que je ne la connusse évidemment être telle."\
	Descartes — _Discours de la méthode_, II

	$=>$ Le doute méthodique est l'acte fondateur de la raison cartésienne. Contre Pascal (qui doute aussi, mais pour aboutir à la foi), Descartes doute pour aboutir à la certitude rationnelle. La raison se purifie en doutant d'elle-même.
]

== Le cogito : "Je pense donc je suis"

#cadre[
	*La première vérité, indubitable*

	Après avoir tout remis en doute, Descartes trouve un point fixe. Il peut douter de son corps, de ses sens, du monde extérieur. Mais il ne peut pas douter qu'il doute. Et douter, c'est penser. Donc il existe au moins en tant que chose qui pense. "Je pense, donc je suis" (le fameux _cogito ergo sum_).

	Cette formule n'est pas un syllogisme (une déduction logique avec deux prémisses). C'est une intuition : une évidence immédiate, saisie par l'intelligence sans passage par les sens. Dès que je pense, j'ai la certitude immédiate que j'existe.

	Le cogito a deux conséquences. La première est ontologique : l'essence de l'homme est la pensée. "Qu'est-ce donc que je suis ? Une chose qui pense." L'homme n'est pas son corps ; il est son âme (l'esprit). La seconde est épistémologique : la vérité se mesure à l'évidence. Est vrai ce qui apparaît clairement et distinctement à l'esprit.

    "Je pense, donc je suis."\
    Descartes — _Discours de la méthode_, IV

	$=>$ Le cogito est le fondement du rationalisme moderne. La raison trouve en elle-même sa propre certitude ; elle n'a pas besoin des sens ni de l'autorité extérieure. Contre Pascal (le cœur a ses raisons), Descartes pose la raison comme seul juge du vrai.
]

== Les quatres règles de la méthode

#cadre[
	*Une procédure universelle pour bien conduire sa raison*

	Descartes formule quatre règles dans la deuxième partie du _Discours_.

	La première est la règle de l'évidence : "Ne recevoir jamais aucune chose pour vraie que je ne la connusse évidemment être telle." Éviter la précipitation et la prévention ; n'admettre que ce qui se présente "si clairement et si distinctement" qu'on ne puisse pas en douter.

	La seconde est la règle de l'analyse : "Diviser chacune des difficultés que j'examinerais en autant de parcelles qu'il se pourrait et qu'il serait requis pour les mieux résoudre." Casser les problèmes complexes en problèmes simples.

	La troisième est la règle de la synthèse : "Conduire par ordre mes pensées, en commençant par les objets les plus simples et les plus aisés à connaître, pour monter peu à peu comme par degrés jusqu'à la connaissance des plus composés." Remonter du simple au complexe.

	La quatrième est la règle du dénombrement : "Faire partout des dénombrements si entiers et des revues si générales que je fusse assuré de ne rien omettre." Vérifier qu'on n'a rien oublié.

	Ces règles s'appliquent à tous les domaines. La raison n'est pas une faculté spécialisée ; c'est une méthode universelle.

	"Ces longues chaînes de raisons, toutes simples et faciles, dont les géomètres ont coutume de se servir pour parvenir à leurs plus difficiles démonstrations, m'avaient donné occasion de m'imaginer que toutes les choses qui peuvent tomber sous la connaissance des hommes s'entre-suivent en même façon."\
	Descartes — _Discours de la méthode_, II

	$=>$ La méthode cartésienne est la tentative d'étendre la rationalité mathématique à tous les domaines du savoir. Contre la tradition (qui distinguait des facultés différentes pour la physique, la morale, la théologie), Descartes affirme l'unité de la raison.
]

== La preuve de Dieux par la saison

#cadre[
	*Prouver Dieu, pour garantir la vérité*

	Descartes ne se contente pas du cogito. Il a besoin de prouver l'existence de Dieu pour deux raisons. La première est métaphysique : sans Dieu, on ne peut pas garantir que nos idées claires et distinctes correspondent à la réalité. Un démon malin pourrait me faire croire que 2+2=4 alors que c'est faux. Dieu, qui est bon, ne peut pas me tromper. La seconde est morale : sans Dieu, pas de fondement pour la morale.

	La preuve de Dieu chez Descartes est a priori (elle ne part pas de l'expérience). Il raisonne ainsi : j'ai l'idée d'un être parfait (infini, tout-puissant, tout-bon). Or une idée ne peut pas être plus grande que ce qui la cause. La cause de l'idée de l'être parfait doit être au moins aussi parfaite que cette idée. Donc l'être parfait existe. C'est l'argument ontologique (repris de saint Anselme).

	Cette preuve est souvent jugée fragile. Pascal la rejettera. Kant aussi. Mais Descartes en a besoin pour son système.

    "Il est aussi impossible que Dieu ne soit pas, que de concevoir qu'une montagne soit sans vallée." Descartes — _Discours de la méthode_, IV

	$=>$ La preuve cartésienne de Dieu est l'application de la méthode rationnelle à la théologie. Contre Pascal (la raison ne peut pas prouver Dieu), Descartes soutient que la raison le peut, et que cette preuve est démonstrative.
]

== La morale par provision

#cadre[
	*En attendant de fonder la morale sur la raison*

	Descartes n'a pas de morale définitive dans le _Discours_. Il propose une "morale par provision" (provisoire) pour ne pas rester sans règles pendant qu'il cherche la vérité. Cette morale par provision comporte trois maximes.

	La première : obéir aux lois et coutumes de son pays, conserver la religion de son enfance, suivre les opinions les plus modérées.

	La seconde : être ferme et résolu dans ses actions, suivre la voie qu'on a choisie même si elle est douteuse (comme un voyageur perdu dans une forêt doit avancer tout droit pour en sortir).

	La troisième : se rendre maître de soi plutôt que de la fortune, changer ses désirs plutôt que l'ordre du monde (influence stoïcienne).

	Cette morale par provision n'est pas la morale définitive. Descartes ne l'a jamais écrite (il est mort avant). Le projet d'une morale rationnelle fondée sur la raison pure est resté à l'état d'ébauche.

    "Tâcher toujours plutôt de me vaincre que la fortune, et de changer mes désirs que l'ordre du monde."
    Descartes — _Discours de la méthode_, III

	$=>$ La morale par provision montre que Descartes ne croit pas que la raison puisse immédiatement régir la vie pratique. Mais il croit qu'elle le pourra un jour, quand la métaphysique sera achevée. C'est une position optimiste.
]

= Exemple : _Les Pensées_ -- La raison et ses limites

== Contexte et situation

#cadre[
	_Les Pensées_ est un recueil de fragments préparatoires à une apologie du christianisme. Pascal meurt en 1662 sans avoir achevé son projet. L'ouvrage, publié en 1670 (dans une version souvent remaniée), rassemble des notes de toutes tailles : certaines sont des raisonnements suivis, d'autres des aphorismes, d'autres des simples notations. Ce caractère fragmentaire n'est pas un défaut ; il reflète la méthode de Pascal. Il ne construit pas un système (comme Descartes), mais il plante des jalons, il ouvre des pistes, il invite le lecteur à penser par lui-même.

	Pascal est à la fois un savant de premier plan (il invente la première calculatrice, travaille sur le vide, sur la pression atmosphérique, sur les probabilités) et un penseur religieux (converti à l'abbaye de Port-Royal, il défend le jansénisme). Cette dualité est essentielle pour comprendre sa position sur la raison. Pascal connaît la puissance de la raison (ses travaux scientifiques le montrent), mais il en connaît aussi les limites. La raison ne peut pas prouver Dieu ; elle ne peut pas fonder le bonheur ; elle ne peut pas dissoudre l'angoisse de la mort.

	$=>$ _Les Pensées_ apporte au thème de la raison un angle que n'ont ni _Discours de la méthode_ (la raison souveraine), ni _Dialectique de la raison_ (la raison devenue déraison). Pascal propose une position originale : la raison est puissante, mais elle ne peut pas tout ; au-delà de la raison, il y a le cœur, l'intuition, la foi. Cette position n'est pas de l'irrationalisme (Pascal ne rejette pas la raison), mais elle n'est pas non plus du rationalisme (il refuse l'idée que la raison puisse fonder toute vérité).

	*Trois apports majeurs se dégagent.*

	D'abord, une critique des prétentions de la raison. La raison croit pouvoir tout connaître, tout démontrer, tout fonder. Pascal montre qu'elle ne le peut pas. Les premiers principes de la raison (le temps, l'espace, le mouvement) ne se démontrent pas ; ils se sentent. Le cœur a ses raisons que la raison ne connaît pas.

	Ensuite, une distinction entre l'esprit de géométrie et l'esprit de finesse. Le premier est la raison abstraite, démonstrative, qui procède par définitions et déductions. Le second est l'intuition, le sentiment, la capacité à saisir d'un coup d'œil des réalités trop complexes pour être démontrées. Les deux sont rationnels, mais la raison géométrique ne peut pas tout ; l'esprit de finesse est nécessaire pour la vie morale, la politique, la religion.

	Enfin, une réflexion sur la raison et le bonheur. Pascal est célèbre pour sa formule : "Toute notre dignité consiste en la pensée." Mais la pensée est aussi une source d'angoisse. L'homme qui pense sait qu'il mourra ; l'animal qui ne pense pas ne le sait pas. La raison ne nous rend pas heureux ; elle nous rend lucides, et cette lucidité est douloureuse. Le bonheur, pour Pascal, n'est pas dans la raison, mais dans la foi.

	Le dialogue avec Descartes est constant. Pascal admire Descartes mais lui reproche d'avoir voulu tout fonder sur la raison seule. "Descartes, inutile et incertain." Inutile parce que sa métaphysique ne sert à rien pour bien vivre ; incertain parce qu'elle ne prouve pas ce qu'elle prétend prouver (l'existence de Dieu par la raison est une preuve fragile).
]

== La raison et ses limites : le cœur contre la raison

#cadre[
	*Le cœur a ses raisons que la raison ne connaît pas*

	Le fragment le plus célèbre de Pascal sur la raison est celui-ci :

    "Le cœur a ses raisons que la raison ne connaît point."\
    Pascal — _Pensées_, fragment 423

	Cette formule est souvent mal comprise. Pascal ne dit pas que le cœur est irrationnel. Il dit que le cœur a une rationalité propre, différente de celle de la raison démonstrative. Le cœur "sent" les premiers principes (l'espace, le temps, le mouvement, le bien, le mal) là où la raison ne peut que les constater sans les démontrer. Le cœur "sent" Dieu là où la raison ne peut que balbutier.

	Pascal ne rejette donc pas la raison. Il lui assigne un domaine, mais lui en retire un autre. La raison démontre dans les mathématiques, la physique, la logique. Le cœur saisit dans la morale, la religion, l'existence.

    "Nous connaissons la vérité non seulement par la raison, mais encore par le cœur."\
    Pascal — _Pensées_, fragment 110

	$=>$ Pascal est la référence pour l'idée qu'il y a des vérités (morales, religieuses) que la raison ne peut pas démontrer, mais que le cœur peut saisir. Contre Descartes (la raison souveraine), Pascal propose une dualité des facultés : la raison démontre, le cœur sent.
]

== Esprit de géométrie et esprit de finesse

#cadre[
	Deux formes de rationalité

	Pascal distingue deux "esprits" (c'est-à-dire deux manières de penser). L'*esprit de géométrie* est la raison qui procède par définitions, axiomes, déductions. C'est celle des mathématiques et de la physique. Elle est puissante, mais elle a un défaut : elle est lente, elle a besoin de principes clairs, elle ne peut pas saisir les réalités "fines" (complexes, mouvantes, nuancées).

	L'*esprit de finesse* est l'intuition rapide, globale, qui saisit d'un coup d'œil un ensemble de relations trop complexes pour être démontrées une par une. C'est celle du moraliste, du politique, de l'homme d'action. Elle n'est pas moins rationnelle que la première ; elle est rationnelle autrement.

    L'esprit de géométrie est tout à fait opposé à l'esprit de finesse. L'esprit de géométrie ne peut se rendre à l'évidence que par des définitions et des démonstrations ; l'esprit de finesse, au contraire, saisit d'un seul regard." \
	Pascal — _Pensées_, fragment 1

	$=>$ Pascal distingue deux formes de rationalité, non la raison et l'irrationalité. L'esprit de finesse est aussi rationnel que l'esprit de géométrie, mais sa rationalité est intuitive, non démonstrative.
]

== La raison et le divertissement : fuir sa propre pensée

#cadre[
	*La raison ne nous rend pas heureux*

	Pascal est l'un des premiers penseurs à analyser le phénomène du "divertissement". Les hommes fuient leur propre pensée. Ils s'agitent, jouent, travaillent, cherchent des distractions. Pourquoi ? Parce que penser, c'est se confronter à la mort, à la solitude, à l'infini. La raison nous rend lucides, et cette luciditude est insupportable.

    "Toute notre dignité consiste en la pensée."\
    Pascal — _Pensées_, fragment 347

	Mais cette dignité a un prix. L'animal ne pense pas ; il ne sait pas qu'il mourra. L'homme pense ; il le sait. La raison ne nous console pas ; elle nous désespère. D'où le divertissement : fuir la pensée.

    "Rien n'est si insupportable à l'homme que d'être dans un plein repos, sans passions, sans affaires, sans divertissement, sans application."\
	Pascal — _Pensées_, fragment 139

	$=>$ Pascal montre que la raison n'est pas la voie du bonheur. Elle est la voie de la vérité (la lucidité), mais cette vérité est douloureuse. Le bonheur vient du divertissement, c'est-à-dire de l'oubli de soi.
]

== Le pari de pascal : la raison impuissante, la décision nécessaire

#cadre[
	*Le pari de Dieu : quand la raison ne peut pas trancher*

	Le "pari de Pascal" est l'un des fragments les plus célèbres (et les plus discutés). Pascal pose la question : Dieu existe-t-il ? La raison ne peut pas trancher. Les preuves de l'existence de Dieu (les arguments métaphysiques) sont insuffisantes. Les preuves de la non-existence de Dieu le sont aussi. Nous sommes dans l'incertitude. Mais il faut décider. On ne peut pas rester indécis ; la vie nous force à agir comme si Dieu existait ou comme si Dieu n'existait pas.

	Pascal propose alors un raisonnement probabiliste (il est l'un des fondateurs de la théorie des probabilités). Si je parie que Dieu existe, je gagne une vie éternelle de bonheur ; si je perds, je ne perds rien (une vie finie). Si je parie que Dieu n'existe pas, je gagne une vie finie ; si je perds, je perds tout (la vie éternelle). Le calcul des probabilités penche donc en faveur du pari. Mais Pascal insiste : ce n'est pas une preuve de l'existence de Dieu. C'est une décision rationnelle face à l'incertitude.

    "Si vous gagnez, vous gagnez tout ; si vous perdez, vous ne perdez rien. Pariez donc pour Dieu sans hésiter."\
    Pascal — _Pensées_, fragment 418 

	$=>$ Le pari illustre les limites de la raison : elle ne peut pas tout connaître, mais elle peut orienter la décision dans l'incertitude. Pascal n'abandonne pas la raison ; il l'utilise pour gérer ce qu'elle ne peut pas savoir.
]

== La raison et l'infini : le silence des espaces infinis

#cadre[
	*L'homme pris entre deux infinis*

	Pascal est célèbre pour sa méditation sur l'infini. Il oppose la petitesse de l'homme (le corps, la vie brève) et l'immensité de l'univers (l'infiniment grand, l'infiniment petit). L'homme est un "rien" à côté de l'univers, et l'univers est un "rien" à côté de Dieu. Cette confrontation avec l'infini est angoissante.

    "Le silence éternel de ces espaces infinis m'effraie."\
    Pascal — _Pensées_, fragment 206

	La raison peut mesurer l'infini (les mathématiques le font), mais elle ne peut pas le comprendre. L'infini n'est pas un objet pour la raison ; il est ce qui la dépasse. Pascal ne s'en réjouit pas ; il s'en effraie. Mais cet effroi est la condition de la foi. C'est en voyant sa petitesse que l'homme se tourne vers Dieu.

	$=>$ L'infini pascalien n'est pas l'infini mathématique (qui est un objet de science) ; c'est l'infini existentiel, qui nous dépasse et nous effraie. La raison n'y a pas prise ; seule la foi peut l'habiter.
]

= Exemple : _La Dialectique de la raison_ -- La raison retournée contre elle-même

== Contexte et situation

#cadre[
	_La Dialectique de la raison_ est rédigé entre 1939 et 1944, pendant l'exil américain d'Adorno et Horkheimer. Tous deux sont des philosophes juifs allemands, membres de l'Institut de recherche sociale de Francfort (l'"École de Francfort"). Ils fuient le nazisme. Le livre paraît en 1944 à Amsterdam, dans une édition ronéotypée (tirage limité). Il ne sera largement connu qu'après-guerre.

	Le contexte est celui de la catastrophe. Les Lumières (le XVIIIe siècle européen) promettaient l'émancipation de l'homme par la raison : fin des superstitions, fin de l'arbitraire politique, progrès des sciences, bonheur général. Or le XXe siècle a produit Auschwitz, le Goulag, les camps, les bombardements de civils, la bombe atomique. Comment la raison des Lumières a-t-elle pu engendrer ces catastrophes ? Telle est la question centrale du livre.

	Adorno et Horkheimer ne répondent pas que "les Lumières ont échoué". Ils répondent que les Lumières portaient en elles-mêmes leur propre négation. C'est le sens de la "dialectique" : la raison se retourne contre elle-même ; ce qui devait libérer finit par enchaîner.

	$=>$ _La Dialectique de la raison_ apporte un angle critique radical. Contre Descartes (la raison souveraine), contre Kant (la raison critique mais confiante), contre Pascal (la raison limitée mais suppléée par le cœur), Adorno et Horkheimer montrent que la raison est devenue pathologique.

	*Deux apports majeurs se dégagent.*

	D'abord, le concept de raison instrumentale. La raison moderne n'est plus une raison qui interroge les fins (Que devons-nous faire ? Qu'est-ce qu'une vie bonne ?). Elle est devenue un pur calcul des moyens : comment être le plus efficace, le plus rapide, le plus rentable. Cette raison instrumentale est aveugle aux valeurs. Elle peut aussi bien servir l'hôpital que le camp de concentration.

	Ensuite, le diagnostic de la dialectique : la raison qui voulait dominer la nature (Descartes : "maître et possesseur de la nature") a fini par dominer l'homme lui-même. La technique devait nous libérer ; elle nous a enchaînés à des appareils, des bureaucraties, des logiques impersonnelles. L'individu, qui devait être le sujet de l'histoire, est devenu un objet interchangeable.

	L'œuvre dialogue avec Marx (l'aliénation, la critique du capitalisme), avec Weber (la rationalisation comme "désenchantement du monde"), avec Nietzsche (le soupçon sur la raison), mais aussi avec Kant (l'idée d'une raison critique est reprise, mais retournée contre la raison elle-même).
]

== Raison instrumentale : quand la fin disparaît

#cadre[
	*La raison ne calcule plus que les moyens*

	La distinction entre raison instrumentale et raison substantielle est au cœur du livre. La raison substantielle (ou raison objective) interroge les fins : qu'est-ce qui est bon en soi ? Qu'est-ce qu'une vie juste ? Qu'est-ce que la liberté ? C'est la raison des philosophes classiques (Platon, Aristote, Kant) et des Lumières (au moins en partie).

	La raison instrumentale (ou raison subjective) ne s'interroge pas sur les fins. Elle prend les fins comme données et cherche les moyens les plus efficaces pour les atteindre. Elle calcule, mais elle ne juge pas. Elle est efficace, mais elle est aveugle.

    "La raison, devenue purement instrumentale, a perdu sa dimension critique. Elle ne s'interroge plus sur la justice des fins, seulement sur l'efficacité des moyens." Adorno et Horkheimer — _La Dialectique de la raison_

	Cette évolution n'est pas un accident. Elle est liée à la domination de la nature. Pour dominer la nature, il faut calculer, prévoir, quantifier. Cette logique s'étend ensuite aux rapports sociaux. Les hommes deviennent eux-mêmes des objets à gérer, à optimiser, à contrôler.

	$=>$ La raison instrumentale est le diagnostic central d'Adorno et Horkheimer. La raison moderne a perdu sa capacité à juger des fins ; elle n'est plus qu'un outil. C'est pourquoi elle peut aussi bien servir l'émancipation que la barbarie.
]

== Dialectique des Lumières : la raison retournée en mythe

#cadre[
	*Les Lumières voulaient dissiper les mythes ; elles en ont créé un nouveau*

	La thèse provocatrice d'Adorno et Horkheimer est que les Lumières sont devenues un mythe. Comment ? Les Lumières ont combattu les mythes anciens (la religion, la superstition, la croyance aux esprits). Elles ont voulu que l'homme devienne "maître de la nature". Mais cette maîtrise est devenue si absolue qu'elle a produit un nouveau mythe : celui de la raison calculatrice, de l'efficacité, du progrès nécessaire.

	Le mythe, pour Adorno et Horkheimer, n'est pas une fausse croyance. C'est une forme de pensée qui absolutise ses catégories, qui ne se critique pas elle-même. La raison des Lumières croyait échapper au mythe par la critique. Elle n'a fait que remplacer un mythe par un autre.

    "La démythologisation paie le prix de sa propre mythologisation." Adorno et Horkheimer — _La Dialectique de la raison_, chapitre 1

	Cette thèse a des conséquences politiques. Si les Lumières ne sont pas la sortie du mythe, mais un mythe parmi d'autres, alors on ne peut pas simplement "retourner aux Lumières" contre la barbarie. Il faut plutôt une raison critique qui sache s'interroger sur ses propres présupposés.

	$=>$ La "dialectique des Lumières" signifie que les Lumières contiennent leur propre négation. Ce qui devait libérer a enchaîné. Ce qui devait éclairer a produit des ténèbres.
]

== Domination de la nature et domination des hommes

#cadre[
	*La logique de la domination s'étend de la nature à l'homme*

	Un des thèmes centraux du livre est la connexion entre la domination de la nature et la domination des hommes. Pour dominer la nature, il faut la quantifier, la mesurer, la prévoir. Cette attitude transforme la perception elle-même : on ne regarde plus un arbre pour sa beauté, mais pour son rendement en bois. On ne regarde plus un fleuve pour sa majesté, mais pour sa force hydraulique.

	Cette logique de quantification s'applique ensuite aux hommes. Pour dominer les hommes (les gérer, les contrôler, les optimiser), il faut les traiter comme des objets, des chiffres, des ressources. La bureaucratie, le marché, le camp de concentration : tous obéissent à la même logique instrumentale.

    "Ce que les hommes veulent apprendre de la nature, c'est comment l'utiliser pour dominer la nature et les hommes." Adorno et Horkheimer — _La Dialectique de la raison_, chapitre 1

	$=>$ La critique d'Adorno et Horkheimer n'est pas écologique au sens moderne (ils ne défendent pas la nature contre la technique). Elle est politique : la domination de la nature et la domination des hommes obéissent à la même logique. Pour libérer les hommes, il faudrait une autre relation à la nature.
]

== L'individu liquide : la fin du sujet

#cadre[
	*L'individu, qui devait être souverain, est devenu interchangeable*

	Le projet des Lumières était l'émancipation de l'individu. Chaque homme devait se libérer de la tutelle de la religion, de la tradition, de l'arbitraire. L'individu autonome était l'horizon du XVIIIe siècle.

	Or, au XXe siècle, l'individu a disparu. Ce ne sont pas seulement les totalitarismes qui l'ont nié (en le réduisant à un numéro, un soldat, une pièce de la machinerie). C'est aussi la société capitaliste avancée : l'individu y est un consommateur, un flux de données, un rouage interchangeable. La "culture de masse" (le cinéma, la radio, la publicité) normalise les goûts, les pensées, les désirs. Plus personne n'est vraiment singulier.

	"L'individu s'est effacé derrière l'appareil."\
	Adorno et Horkheimer — _La Dialectique de la raison_, chapitre sur l'industrie culturelle

	$=>$ Contre Descartes (l'individu souverain, le cogito), contre Kant (l'autonomie de la raison pratique), Adorno et Horkheimer diagnostiquent la mort du sujet. L'individu n'est plus une fin en soi ; il est un moyen. La raison instrumentale a achevé ce que les Lumières avaient commencé.
]

== L'industrie culturelle : la raison au service du divertissement

#cadre[
	*Le divertissement comme prolongation de la domination*

	Un chapitre célèbre du livre s'intitule "L'industrie culturelle". Adorno et Horkheimer analysent le cinéma, la radio, la musique populaire, la publicité. Leur thèse est que la culture est devenue une industrie : elle produit des biens standardisés, interchangeables, conçus pour endormir la conscience critique.

	Le divertissement ne libère pas ; il fatigue. Il ne permet pas de se reposer pour mieux réfléchir ; il empêche de penser tout court. Les films, les chansons, les séries formatent les désirs, les peurs, les attentes. L'individu croit choisir (quelle chanson écouter, quel film voir) ; en réalité, il consomme ce que l'industrie lui propose.

	Ce diagnostic rejoint la critique de Pascal. Pascal montrait que le divertissement est une fuite devant la pensée. Adorno et Horkheimer montrent que ce divertissement est organisé, planifié, industrialisé. La raison instrumentale s'est emparée du loisir lui-même.

	"L'industrie culturelle abolit la distance critique ; tout est absorbé dans la sphère de la production."\
	Adorno et Horkheimer — _La Dialectique de la raison_, chapitre sur l'industrie culturelle

	$=>$ L'industrie culturelle est l'application de la raison instrumentale à la culture. Plus aucune sphère n'échappe à la logique du calcul, de l'efficacité, de la standardisation.
]

== La raison critique : survivre à la catastrophe

#cadre[
	*Y a-t-il un usage non pathologique de la raison ?*

	Adorno et Horkheimer ne sont pas irrationnels. Ils ne proposent pas de revenir à la foi (Pascal) ni à l'intuition (Bergson). Ils veulent sauver la raison de la raison.

	Leur proposition est une raison critique (héritée de Marx et de Kant). Il ne s'agit pas de renoncer à la raison, mais de la tourner contre elle-même. La raison doit s'interroger sur ses propres présupposés, ses propres limites, ses propres pathologies. La raison doit devenir critique de la raison instrumentale.

	Mais cette raison critique a-t-elle des chances de réussir ? Adorno et Horkheimer sont pessimistes. L'ouvrage se termine sur une note sombre : la raison a produit Auschwitz ; rien ne garantit qu'elle ne le reproduira pas.

    "L'erreur est que les Lumières n'ont pas été assez radicales ; il faut les retourner contre elles-mêmes."\
    Adorno et Horkheimer — _La Dialectique de la raison_ (paraphrase)

	$=>$ Adorno et Horkheimer ne sont pas des irrationalistes. Ils veulent sauver la raison, mais une raison qui connaît ses propres limites, qui se méfie d'elle-même. C'est une position exigeante, rare, difficile à tenir.
]