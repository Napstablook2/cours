#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*Fiche 2 : Bonheur*
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

== Aristote

#cadre[
	*Aristote (384-322 av. JC)* est le premier phiolosophe à faire *du bonheur le centre explicite de son éthique*. Dans l'_Éthique à Nicomaque_, il part d'un constat simple : *tous les hommes agissent en vue d'une fin*, et il doit exister une fin ultime qui soit désirée pour elle-même et non comme moyen vers autre chose. *Cette fin, c'est le bonheur*, _eudaimonia_ ("eudémonisme"), que 'lon traduit par aussi par "félicité" ou "épanouissement". Mais Aristote se distingue d'emblée des conceptions superficielles : *le bonheur n'est pas le plaisir* (c'est la vie des esclaves de leurs passions), *ni la richesse* (simple moyen), ni l'honneur (trop dépendant du regard d'autrui). *Le bonheur est une _activitée de l'âme conforme à la vertu_*, c'est-à-dire l'exercice plein et durable de nos facultés les plus hautes, au premier rang desquelles la raison. Il est donc inséparable de la vertu, de l'amitié, et d'un minimum de biens extérieurs (la santé, les ressources nécessaires). Le bonheur aristotélicien n'est pas un état passif qu'on attendrait de recevoir : *c'est une pratique, une façon de vivre bien et d'agir bien, qui se construit sur la durée.*

	"Le bonheur est une activité de l'âme en accord avec la vertu parfaite."\
	-- Aristote, _Éthique à Nicomaque, I, 13_
]

== Épicure

#cadre[
	*Épicure (341-270 av. JC)* est souvent caricaturé en philosophe du plaisir sans limite, ce qui va à l'encontre de sa pensée. Dans la _Lettre à Ménécée_, il *définit le bonheur comme l'_ataraxie_* (tranquillité de l'âme, absence de trouble) *et l'_aponie_* (absence de douleur corporelle). Loin de prôner la débauche, il *propose une ascèse de la jouissance* : distinguer les *désirs naturels et nécessaires* (manger à sa faim, se désaltérer, se protéger du froid), les *désirs naturels mais non nécessaires* (le plaisir raffiné, la sexualité) et les *désirs vains* (richesse, gloire, immortalité), et *s'en tenir autant que possible aux premiers.* La raison qui satisfait *les désirs vain* ne fait qu'engendrer de nouveaux manques : elle est *source de servitude,* *non de bonheur.* Épicure insiste aussi sur la *nécessité de l'amitié* : "de tous les biens que la sagesse procure pour la félicité de la vie tout entière, le plus grand est de loin la possession de l'amitié", et sur la *nécessité de surmonter la peur de la mort*, qui empoisonne l'existence : "la mort n'est rien pour nous, car quand nous sommes, la mort n'est pas là, et quand la mort est là, nous ne sommes plus".

	"Il est impossible de vivre heureux sans vivre avec prudence, honnêteté et justice"\
	-- Épicure, _Lettre à Ménécée_
]

#pagebreak()

== Les stoïciens (Zénon, Épictète, Marc Aurèle)

#cadre([
	*Les stoïciens* poussent encore plus loin que les épicuriens la thèse de l'indépendance intérieure. Leur principe fondamental est *la dichotomie du contrôle*, formulée par Épictète dans le _Manuel_ : *certaines choses dépendent de nous* (nos jugements, nos désirs, nos actions, nos refus), *d'autres non* (le corps, la réputation, les richesses, la santé, la mort). *Le bonheur ne peut reposer que sur ce qui dépend de nous,* c'est-à-dire sur la vertu et sur la manière dont nous interprétons les événements. Un stoïcien ne dira pas "je souffre de la pluie", mais "je juge que la pluie est un mal", *et c'est ce jugement qu'il peut corriger*. Cette *liberté intérieure est absolue* : même en prison, même en esclavage (Épictète était lui-même un esclave affranchi), le sage peut rester libre dans ses pensées et ses valeurs. Marc Aurèle, dans ses _Pensées pour moi-même_,* applique ce programme à la tête de l'empire romain*, montrant que la philosophie stoïcienne n'est pas une retraite du monde mais une manière d'y agir sans en dépendre. *Le bonheur stoïcien est donc une souveraineté de soi-même*, conquise contre les accidents de la fortune.

	"Les hommes ne sont pas troublés par les évènements, mais par les opinions qu'ils ont sur les évènements."\
	-- Épictète, _Manuel, §5_
])

== Kant

#cadre([
	*Emmanuel Kant (1724-1804)* opère une *rupture radicale avec toute la tradition antique* : il refuse de faire du bonheur le fondement de la morale. *Agir pour être heureux, c'est agir par inclination,* c'est-à-dire par intérêt personnel, *ce n'est pas agir moralement.* La morale exige d'agir par devoir, par respect de la loi morale universelle, indépendamment de ce que cela nous rapporte, y compris en termes de bonheur. Dans la _Critique de la raison pratique_, Kant *distingue nettement le bonheur* (satisfaction de toutes nos inclinations sensibles) *de la vertu* (conformité à la loi morale). Mais il ne dit pas pour autant que le bonheur n'a aucune valeur : il introduit le *concept de souverain bien*, qui est la synthèse de la vertu et du bonheur. *L'homme vertueux mérite d'être heureux*, et la raison pratique nous conduit à postuler l'existence de Dieu comme garant de cette coïncidence que le monde terrestre ne réalise pas toujours. *Le bonheur est donc légitime*, mais seulement comme récompense d'une vie vertueuse, *jamais comme motif de l'action morale.*

	"Agis de telle sorte que tu traites l'humanité, aussi bien dans ta personne que dans celle tout autre, toujours en même temps comme une fin, et jamais simplement comme un moyen."\
	-- Kant, _Fondements de la métaphysique des mœurs_
])

#pagebreak()

== Bentham

#cadre[
	*Jeremy Bentham (1748-1832)* est le *fondateur de l'utilitarisme.* Son point de départ est : "la nature a placé l'humanité sous la gouvernance de deux maîtres souverains, la douleur et le plaisir". Tout ce que nous faisons, nous le faisons pour rechercher le plaisir ou fuir la douleur. La morale et la politique doivent donc partir de là : *est bonne toute action qui maximise le plaisir et minimise la douleur, pour le plus grand nombre de personnes possible.* C'est le _principe d'utilité_. Pour rendre ce principe opérationnel, Bentham *propose un calcul hédoniste* : le "félicifique calculus", qui permet d'*évaluer chaque plaisir selon sept critères* : son intensité, sa durée, sa certitude, sa promiximité dans le temps, sa fécondité  (la probabilité qu'il produise d'autres plaisirs), sa pureté (qu'il ne soit pas suivi de peines), et son étendue (le nombre de personnes concernées). L'idée est que *la morale peut devenir une science exacte* : on peut calculer objectivement quelle action produit le plus de bonheur agrégé. Pour lui, *tous les plaisirs se valent en nature* : "la quantité de plaisir étant égale, le jeu d'épingle vaut la poésie". *Ce qui compte, c'est la quantité de bonheur produit*, non sa qualité ou sa noblesse. Cette position a des conséquences politiques directes : *Bentham s'implique dans la réforme des prisons* (il conçoit le Panoptique, une prison où un seul gardien peut surveiller tous les détenus sans être vu), *dans la réforme du droit pénal, et dans la défense des droits des animaux* : s'ils peuvent souffrir, ils entrent dans le calcul utilitaire. Son utilitarisme est *profondément démocratique* : chaque individu compte pour un, et un seul, dans le calcul du bonheur collectif. La souffrance d'un pauvre pèse autant que le plaisir d'un aristocrate.

	"La plus grande somme de bonheur pour le plus grand nombre, voilà le critère de ce qui est juste et injuste"\
	-- _Introduction aux principes de morale et de législation_ 
]

== Mill

#cadre[
	*Mill (1806-1873)* *hérite de Bentham* une thèse utilitariste : la bonne action est celle qui produit le plus grand bonheur pour le plus grand nombre, mais il *l'enrichit d'une distinction qualitative* que Bentham ignorait. Pour Bentham, les plaisirs ne diffèrent qu'en quantité (durée, intensité) ; *pour Mill, ils diffèrent aussi en qualité.* Les plaisirs intellectuels et moraux sont supérieurs aux plaisirs sensoriels, non parce qu'ils sont plus intenses, *mais parce que ceux qui ont expérimenté les deux leur accordent toujours la préférence.* D'où la formule célèbre : "il vaut mieux être Socrate insatisfait qu'un imbécile satisfait". Dans _L'Utilitarisme_, Mill tente aussi de résoudre la *tension entre bonheur individuel et collectif *: l'éducation morale doit conduire les individus à identifier leur bonheur à celui de la communauté, de sorte que la promotion du bonheur général devienne naturelle. Le problème classique de l'utilitarisme, qu'il semble autoriser à sacrifier un individu pour le bien du plus grand nombre, traverse toute sa philosophie.
	
	"Il vaut mieux être Socrate insatisfait qu'un imbécile satisfait."\
	-- Mill, _L'Utilisarisme, ch. II_
]

== Schopenhauer

#cadre[
	*Schopenhauer (1788-1860)* est le *grand pessimiste de la philosophie du bonheur *: il soutient que le *bonheur durable est structurellement impossible*. Dans _Le Monde comme volonté et comme représentation_, il analyse la *condition humaine comme une servitude à la "Volonté"*, une force aveugle, insatiable, qui nous pousse sans cesse vers de nouveaux désirs. *La vie humaine oscille perpétuellement entre deux pôles également misérables* : la souffrance du manque (tant que le désir n'est pas satisfait) et l'ennui (sitôt qu'il l'est, avant qu'un nouveau désir ne surgisse). Il n'y a *pas d'issue heureuse dans ce balancement* : le bonheur positif n'existe pas, *seulement des instants de répit*. Cependant, Schopenhauer propose *trois voies de suspension momentanée* de cette servitude : *la contemplation esthétique* (dans l'art, on cesse provisoirement de désirer pour contempler purement), *la compassion* (qui dissout l'égoïsme en nous faisant ressentir la souffrance d'autrui comme la nôtre) et *l'ascèse* (le renoncement volontaire à la "Volonté", proche du bouddhisme). *Ces voies ne conduisent pas au bonheur, mais à une paix négative : le silence du désir.*

	"La vie oscille comme un pendule de droite à gauche, de la souffrance à l'ennui."\
	-- Schopenhauer, _Le Monde comme  volonté et comme représentation, §57_
]

== Nietzsche 

#cadre[
	*Nietzsche (1844-1900)* *se méfie profondément de l'idéal du bonheur* tel que le conçoivent les philosophes et les moralistes : il *y voit une aspiration à la médiocrité et au confort* qui trahit les instincts vitaux les plus puissants. Dans _Ainsi parlait Zarathoustra_, il *crée la figure des "derniers hommes"* : ces êtres qui ont *éteint toute ambition*, toute tension vers le grand, et se contentent d'un bonheur tiède : "nous avons inventé le bonheur", disent-ils en clignant de l'œil. C'est *la figure la plus méprisable de Nietzsche*, celle du déclin de la vie. À cet idéal du bonheur-confort, *Nietzsche oppose la joie*, non pas l'absence de souffrance, mais une affirmation extatique de la vie qui inclut la souffrance et la dépasse. Cette joie est le propre du créateur, de celui qui se dépasse lui-même,* qui dit "oui" à la vie dans sa totalité*, c'est le sens de l'_amor fati_, l'amour du destin. Le bonheur nietzschéen n'est pas un état à atteindre mais un mouvement perpétuel de dépassement de soi : *"l'homme est quelque chose qui doit être surmonté".*

	"Ma formule pour ce qui est grand dans l'homme, c'et l'amor fati : ne rien vouloir d'autre que ce qui est, ni en avant, ni en arrière, ni dans les siècles des siècles"\
	-- Nietzsche, _Ecce Homo_
]

== Alain

#cadre[
	*Alain (1868-1951) apporte une contribution originale* et très française à la question du bonheur dans ses _Propos sur le bonheur_ : *le bonheur n'est pas un état que l'on reçoit passivement*, ni une récompense accordée par les circonstances, mais une conquête active et quotidienne qui exige un effort constant sur soi-même. Son idée centrale est que *l'humeur* (la tristesse, l'anxiété, le pessimisme) *est une forme de paresse morale* : on se laisse aller à ses états d'âme au lieu de les corriger par la volonté. "Le pessimisme est d'humeur, l'optimisme est de volonté" : *il faut décider d'être heureux*, comme on décide de se lever le matin malgré la fatigue. *Alain ajoute une dimension sociale forte* : le malheur est contagieux, et se complaire dans sa tristesse est un manque d'égard envers les autres,* être heureux devient ainsi une forme de politesse*, voire un devoir envers ceux qui nous entourent. Il *se distingue des stoïciens* en insistant sur le rôle du corps et des habitudes : on peut discipliner son corps (par l'exercice, le travail manuel) pour discipliner son âme. *Le bonheur est un art de vivre*, un savoir-faire qui s'apprend et se pratique.
]

== En bref

#cadre[
	- *Aristote* : Les hommes agissent en vue d'une fin : le bonheur. Le bonheur est une façon de vivre bien et d'agir bien, conformément à la vertu, et qui se construit sur la durée.
	- *Épicure* : Le bonheur est un mélange d'ataraxie et d'aponie. Il classe les désirs en trois catégorie et voit les désirs vain comme source de serviturde. Il insiste sur la nécessité de l'amitier et de surmonter la peur de la mort.
	- *Les stoïciens* : Certaines choses dépendent de nous, d'aute non. Le bonheur ne repose que sur ce qui dépend de nous, et pour le reste il ne s'agit que d'un jugement à corriger de par notre liberté intérieure absolue.
	- *Kant* : Agir pour être heureux, c'est agir par inclination : ça n'as rien de moral. Il distingue bonheur et vertu et introduit le concept de souveriain bien. L'homme vertueux mérite d'être heureux et ce bonheur est légitime, comme récompense.
	- *Bentham* : Fondateur de l'utilitarisme, il faut maximiser la quantité totale de bonheur. Tous les plaisrs se valent et la morale devient une science exacte.
	- *Mill* : Moins extrême que Bentham, il enrichit l'utilitarisme d'une dimension qualitative : les plaisirs intellectuels sont supérieux à ceux sensoriels.
	- *Schopenhauer* : Grand pessimisme, le bonheur est pour lui un objectif impossible. L'homme oscille entre souffrance et ennui. Il y a trois voies de suspension momentanée : contemplation, compassion et ascèse.
	- *Nietzsche* : Voit la quête du bonheur comme une aspiration à la médiocrité et au confort. Crée la figure des derniers hommes, qu'il méprise. Il voit le bonheur dans le dépassement de soi.
	- *Alain* : Le bonheur n'est pas un état passif, c'est un art de vivre qu'il faut choisir et vers le quel

]

= Exemple : _Le Meilleur des mondes_

== Contextualisation de l'œuvre

#cadre[
	*Un État mondiel fondé sur le bonheur comme principe de gouvernement*

	Le roman se déroule dans un *futur dystopique* où la civilisation a été entièrement réorganisée autour d'un seul objectif : *garantir le bonheur permanent de tous les citoyens*. La devise de l'État mondial est "Communauté, Identité, Stabilité". Pour y parvenir, les dirigeants ont *éliminé toutes les sources potentielles de malheur* : la *famille* (remplacée par la reproduction en usine), l'*amour romantique* (remplacé par une sexualité libre et sans attache), la *religion*, l'*art difficile*, la *pensée critique*, la *vieillesse* (maintenue à distance par des soins), et la *mort* (dédramatisée et collectivisée). Les êtres humains sont produits en série dans des "Centres de conditionnement" et répartis en castes biologiquement déterminées : Alphas (l'élite intellectuelle), Bêtas, Gammas, Deltas, Epsilons (les travailleurs abrutis), *chacun conditionné pour aimer sa place et n'en désirer aucune autre.*

	$=>$ Ce cadre *illustre la thèse que le bonheur peut être un instrument de domination.* Huxley montre qu'une société peut garantir techniquement le bonheur de ses membres tout en les privant de tout ce qui fait la dignité humaine. *C'est la version la plus sophistiquée de la critique du bonheur comme valeur suprême*
]

== Le soma, le bonheur chimique

#cadre[
	*Omniprésent et distribué gratuitement à tous les citoyens*

	Le *soma est la pièce maîtresse du système* : une drogue parfaite, sans effets secondaires, qui procure une euphorie immédiate et durable. *Dès qu'un citoyen ressent une pensée désagréable, une tristesse, un doute, il prend du soma.* La société encourage activement sa consommation : "Un gramme de soma vaut mieux que dix prises de conscience." Le soma *ne résout aucun problème réel*, il supprime simplement la capacité de le percevoir. Les citoyens sont *heureux *non parce que leur vie est bonne, mais *parce qu'ils ont été chimiquement empêchés de ressentir qu'elle pourrait être meilleure.* C'est un bonheur par anesthésie, non par épanouissement.

	"Un gramme guérit dix sentimens moroses."

	$=>$ Le soma illustre la *distinction entre bonheur authentique et bonheur illusoire*. Il permet de mobiliser Épicure, Kant, et surtout Nietzsche : *le "dernier homme" content de son soma*, c'est exactement la figure que Nietzsche méprise. On peut également argumenter qu'un habitant du Meilleur des mondes est "l'imbécile satisfait" de Mill
]

#pagebreak()

== Les personnages : trois rapports au bonheur

#cadre[
	*Lenina, le bonheur conditionné, assumé et sincère*

	*Lenina est heureuse, sincèrement, profondément heureuse.* Elle aime son travail, apprécie les plaisirs que la société lui offre, consomme son soma sans culpabilité, et *ne comprend pas les états d'âme de Bernard Marx ou de John*. Son *bonheur est parfaitement réel* dans sa subjectivité : elle ne souffre pas, ne doute pas, ne désire rien de plus que ce qu'elle a. Et c'est précisément ce qui le rend *philosophiquement troublant* son bonheur est indiscutable sur le plan de l'expérience vécue, mais il repose entièrement sur un conditionnement qu'elle n'a pas choisi et dont elle est incapable de prendre conscience.

	$=>$ Lénina pose la question centrale du roman : *peut-on dire qu'une personne n'est pas vraiment heureuse si elle se sent heureuse ?* C'est la *question de la concience du bonheur*. On peut ici parler d'*Aristote* : Lenina ne vit pas selon la vertu ni selon la pleine actualisation de ses facultés rationnelle. Elle n'est pas "eudaimon" au sens aristotélicien, même si elle est satisfaite. *Le bonheur sans conscience de soi est-il un vrai bonheur ?*
]

#cadre[
	*Bernard Marx, le mal-être comme éveil*

	Bernard est un Alpha (membre de l'élite intellectuelle) mais il *souffre d'un défaut de conditionnement* qui le rend légèrement inadapté : trop petit physiquement, trop introspectif, trop conscient de son conditionnement pour s'y soumettre pleinement. Il *éprouve un malaise diffus* que ses contemporains jugent pathologique. Plutôt que de prendre du soma pour l'effacer, il choisit parfois de le ressentir, de "rester seul avec lui-même". *Son mal-être est le signe d'une humanité qui résiste*, imparfaitement, lâchement parfois, au bonheur imposé. Mais Huxley est lucide : Bernard reste vaniteux et finit par se soumettre au système dès qu'il y trouve une gloire sociale.

	$=>$ Bernard *illutre que la capacité à souffrir est inséparable de la liberté et de la conscience.* Un être incapable d'éprouver le malheur est aussi incapable de vouloir authentiquement son bonheur. On peut le relier auxx stoïciens : la liberté intérieure exige qu'on soit capable de distinguer ce qui dépend de soi, ce que le conditionnement rend impossible
]

#cadre[
	*John le Sauvage : le refus du bonheur au nom de la dignité*

	John, *élevé hors du système dans une réserve*, a connu Shakespeare, la souffrance, l'amour et la mort. Confronté au bonheur aseptisé de l'État mondial, il *le rejette radicalement.* Lorsqu'il le rencontre, le Contrôleur Mustapha Menier lui explique pourquoi l'art, la science et la religion ont été supprimés : ils introduisent de l'instabilité et du malheur. John réplique qu'il *revendique le droit à être malheureux* : "Je réclame le droit d'être malheureux. Le droit de vieillir, de devenir laid et impotent. Le droit de souffrir. Le droit de vivre dans la crainte permanente de ce qui pourrait arriver demain. Le droit d'attraper la typhoïde. Le droit d'être torturé par d'indicibles douleurs." Mustapha répond simplement : *"Vous y avez droit."* John conclut : *"Je le prends."*

	$=>$ C'est la scène philosophique centrale du roman. John formule ce que Kant dirait autrement : *la dignité humaine ne peut pas être sacrifiée au bonheur*. On peut aussi y lire une réponse à Mill : les "plaisirs supérieurs" (Shakespeare, l'amour, la souffrance authentique) valent plus que la satisfaction permanente. Et une réponse à Épicure : la tranquillité de l'âme achetée au prix de l'abrutissement n'est pas l'ataraxie, c'est l'inexistence.
]

= Exemple : _Candide ou l'Optimisme_

== Le projet philosophique de Voltaire

#cadre[
	*Un conte philosophique contre Leibniz*

	Candide n'est pas simplement un roman d'aventures picaresque, c'est une *réfutation narrative de la philosophie optimiste de Leibniz*, selon laquelle "tout est pour le mieux dans le meilleur des mondes possibles". *Leibniz soutenait que Dieu, étant parfait, a nécessairement créé le monde le plus parfait possible, et que les maux apparents sont en réalité nécessaires à l'harmonie du tout.* *Voltaire,* traumatisé par le tremblement de terre de Lisbonne de 1755 (qui tua entre 30 000 et 60 000 personnes), *juge cette thèse indécente* : elle revient à justifier toutes les souffrances réelles par une harmonie abstraite et consolatrice. *Candide est la mise à l'épreuve concrète*, cruelle et ironique de cet optimisme : à chaque désastre, Pangloss répète que "tout est pour le mieux", et c'est chaque fois absurde et révoltant.

	$=>$  Le cadre intellectuel du roman permet de poser d'emblée la question du bonheur sur le plan métaphysique : *le monde est-il structurellement favorable au bonheur humain ?* Voltaire répond non, ce qui oblige à chercher le bonheur ailleurs que dans une harmonie providentielle. À lier à Schopenhauer (la souffrance est constitutive de l'existence) et à Camus (l'absurde comme point de départ).
]

== Les épisodes clés

#cadre[
	*Le château de Thunder-ten-tronck : le bonheur comme illusion originielle*\
	Chapitre 1/2 -- Candide avant l'expulsion

	Au début du roman, Candide vit dans le château du baron, qu'il croit être "le meilleur des mondes possibles". *Il est naïf, bien nourri, amoureux de Cunégonde, instruit par Pangloss.* Ce bonheur initial est présenté avec une ironie mordante : *c'est un bonheur d'ignorance, d'enfermement et de conditionnement.* Candide ne connaît rien du monde réel, ne choisit rien, ne pense rien par lui-même. Son expulsion brutale : chassé à coups de pied pour avoir embrassé Cunégonde, détruit cette bulle et lance le roman.

	$=>$ Voltaire montre d'emblée que *le bonheur fondé sur l'ignorance et l'illusion est fragile et illégitime.* On peut le relier à Épicure (qui distingue plaisirs véritables et plaisirs illusoires) et à Kant (le bonheur sans autonomie morale ne mérite pas son nom). L'expulsion du château est une métaphore de la sortie hors de l'état d'enfance intellectuelle, au sens où Kant définit les Lumières.
]

#cadre[
	*Le tremblement de terre de Lisbonne : le mal absolu contre l'optimiste*\
	Chapitre 5/6

	En quelques pages, *Voltaire accumule trois catastrophes* : un naufrage où un bienfaiteur se noie, le tremblement de terre qui dévaste Lisbonne, et l'autodafé organisé par l'Inquisition pour "prévenir" d'autres séismes. Face à tout cela, *Pangloss persiste* : "tout ceci est indispensable et les malheurs particuliers font le bien général". La réponse de Voltaire est dans le registre même : l'ironie grinçante montre que cette philosophie est non seulement fausse, mais moralement obscène. *Elle transforme la souffrance réelle des victimes en argument abstrait.*
	
	"Si c'est ici le meilleur des mondes possibles, que sont donc les autres ?"

	$=>$  Cet épisode est la réfutation la plus directe du bonheur fondé sur une vision providentialiste du monde. Il illustre que *toute philosophie du bonheur doit partir du mal et de la souffrance réels*, non d'une harmonie abstraite. On peut le mettre en regard avec Camus : "Il n'y a qu'un problème philosophique vraiment sérieux, c'est le suicide", autrement dit, comment vivre dans un monde absurde.
]

#cadre[
	*L'Eldorado, le bonheur parfait est invivable*\
	Chapitre 17/18 -- Découverte et abandon de la cité utopique

	Au cœur du roman, *Candide découvre l'Eldorado* : une cité parfaite où l'or jonche les rues, où tout le monde est heureux, où il n'y a ni prison ni tribunal ni prêtres querelleurs. C'est le bonheur absolu, réalisé. Et pourtant,* Candide choisit de partir.* Pourquoi ? Parce qu'il veut retrouver Cunégonde, parce qu'il veut être "plus riche que tous les rois ensemble" dans son propre monde, *parce qu'il s'ennuie de la perfection.* Voltaire souligne que l'Eldorado est inaccessible au reste du monde, et que Candide lui-même préfère la quête imparfaite au bonheur accompli.

	$=>$ L'Eldorado est l'illustration la plus subtile du roman : Voltaire montre que *le bonheur parfait et complet est soit inaccessible, soit insupportable à l'homme.* L'homme a besoin de désir, de manque, d'un horizon à poursuivre. On peut le relier à Schopenhauer (le bonheur accompli engendre l'ennui) et à Nietzsche (l'homme est "quelque chose qui doit être surmonté" : *le bonheur statique est une mort*).
]

#cadre[
	*La vielle et les souffrances comparées*\
	Chapitre 12 

	La vieille servante propose à Cunégonde un jeu : demander à chaque passager du bateau de raconter sa vie, et "s'il se trouve un seul qui n'ait souvent maudit sa vie, qui ne se soit souvent dit à lui-même qu'il était le plus malheureux des hommes, jetez-moi dans la mer." Le résultat est sans appel : *tout le monde a souffert*, tout le monde a été au bord du désespoir. *La souffrance est universelle* — ce n'est pas un accident, c'est la condition humaine. Et pourtant, personne ne se jette à la mer : on continue à vivre, on s'accroche à l'existence malgré tout.

	$=>$ Cet épisode *pose la question de la résilience et de l'instinct de vie face à la souffrance.* Il dialogue avec Camus (l'absurde n'est pas une raison de mourir mais de vivre autrement) et avec les stoïciens (la souffrance est inévitable, mais on peut choisir comment y répondre). Il montre aussi que* le bonheur ne peut pas être défini comme absence de souffrance : il doit coexister avec elle.*
]

#cadre[
	*"Il faut cultiver notre jardin" : la conclusion du roman*\
	Chapitre 30 -- Dénouement sur la métairie

	À la fin du roman, Candide et ses compagnons, dont Pangloss, qui philosophe encore, et Martin, qui désespère encore, s'installent sur une petite métairie. Un voisin turc leur montre l'exemple : *il cultive son lopin de terre, ignore les grands débats politiques et religieux, et vit en paix. Candide tire la leçon* : "Il faut cultiver notre jardin." Cette formule concentre toute la philosophie pratique du roman. Elle signifie : renonce aux spéculations métaphysiques sur le meilleur des mondes possibles ; renonce aussi à la passivité pessimiste ; engage-toi dans une action concrète, limitée, maîtrisable. *Le bonheur n'est pas une vérité abstraite à trouver, c'est une pratique quotidienne à construire.*

	"Il faut cultiver notre jardin."

	$=>$ C'est l'une des conclusions philosophiques les plus commentées de toute la littérature française. Elle *résonne directement avec Épicure* (le bonheur dans le cercle restreint de l'amitié et du travail simple), avec *Aristote* (le bonheur comme activité, non comme état), et avec *Alain* (le bonheur se veut et se construit). Elle s'oppose frontalement à Pangloss (le bonheur comme harmonie donnée) et à Martin (le bonheur comme illusion). *C'est une synthèse dialectique incarnée dans une image.*
]

= Exemple : _Les Pensée_

== Le projet de pascal

#cadre[
	*Une apologétique chrétienne fondée sur la misère de l'homme*

	_Les Pensées_ sont des fragments inachevés d'une apologie de la religion chrétienne que Pascal n'a pas eu le temps de rédiger. Sa stratégie est paradoxale : *pour convaincre les "libertins"* (les incroyants raisonneurs de son époque) *de se tourner vers Dieu*, il commence par leur montrer la misère et l'insuffisance radicale de la condition humaine sans Dieu. *L'homme sans Dieu est condamné à chercher le bonheur sans jamais le trouver*, parce que le seul vrai bonheur, la béatitude, est d'origine divine et inaccessible par nos seules forces. Pascal n'est donc pas nihiliste : *il croit au bonheur, mais le situe ailleurs que dans le monde terrestre.* Cette position le rend philosophiquement très intéressant, car il propose une critique radicale de tous les bonheurs terrestres, y compris ceux d'Épicure, des stoïciens et d'Aristote.

	$=>$ Pascal permet d'introduire une *dimension verticale dans la question du bonheur*, non plus seulement "comment être heureux dans ce monde ?" mais "ce monde peut-il suffire au désir de bonheur de l'homme ?" C'est une position de rupture avec toute la tradition antique, et elle permet une alternative radicale.
]

== Exemples du texte

#cadre[
	*Le divertissement : fuir plutôt que chercher*\
	Fragments §136 -- "Divertissement"

	Pascal observe que *les hommes se jettent frénétiquement dans l'action*, les voyages, la chasse, le jeu, les guerres, les intrigues de cour, non pas parce que ces activités leur procurent un bonheur durable, mais parce qu'elles les empêchent de penser à leur condition. "Tout le malheur des hommes vient d'une seule chose, qui est de ne savoir pas demeurer en repos dans une chambre." *Si on donnait à un roi tout ce qu'il désire, mais sans divertissement, il serait misérable*, parce qu'il serait alors contraint de penser à lui-même, à sa mort, à sa condition. Le divertissement n'est pas le bonheur : c'est le moyen d'éviter d'y penser. Les hommes ne cherchent pas le repos — ils cherchent l'agitation qui les en dispense.

	"Tout le malheur des hommes vient d'une seule chose, qui est de ne savoir pas demeurer en repos dans une chambre."

	$=>$ Le divertissement est l'un des concepts principaux de Pascal. Il permet de *critiquer toute conception du bonheur fondée sur l'accumulation d'activités ou de plaisirs* (contre Bentham, contre l'hédonisme vulgaire). Il dialogue avec Schopenhauer (l'ennui comme revers inévitable de la satisfaction) et avec Huxley (le soma et les "feelies" comme divertissement institutionnalisé). À noter : *Pascal ne condamne pas le divertissement comme méchanceté, mais comme fuite inconsciente* — c'est sa subtilité.
]

#cadre[
	*La misère de l'homme sans Dieu : le vide intérieur*

	Pascal développe l'idée que *l'homme porte en lui un "vide infini" que rien de terrestre ne peut combler.* Il a essayé de le remplir avec les richesses, la gloire, les plaisirs, les philosophies, rien n'y fait. Ce vide est la trace d'une grandeur perdue (la condition adamique avant la chute) et d'une aspiration à l'infini que seul Dieu peut satisfaire. *L'homme est donc constitutionnellement insatisfait* : trop grand pour se contenter des biens terrestres, trop petit pour atteindre le bien suprême par ses propres forces. Cette "disproportion de l'homme" est la clé anthropologique des _Pensées_.

	"Il y a un vide infini que rien ne peut remplir sinon Dieu lui-même."

	$=>$ Cette thèse *montre les limites de toutes les philosophies antiques du bonheur *: Épicure (l'ataraxie ne comble pas le vide), les stoïciens (la vertu intérieure ne suffit pas), Aristote (l'eudaimonia est une fin humaine, mais l'homme aspire à plus que l'humain). On peut le relier à Schopenhauer qui, sans Dieu, tire la même conclusion pessimiste : *le désir est sans fond, le bonheur est impossible.*
]

#cadre[
	*La grandeur et la misère : l'homme roseau pensant*

	Pascal *formule la condition humaine par une image* : l'homme est "un roseau, le plus faible de la nature", il peut être écrasé par une goutte d'eau, par une vapeur. Mais il est "un roseau pensant" : *il sait qu'il meurt, et l'univers ne sait rien*. Cette conscience est *à la fois sa grandeur* (il dépasse l'univers par la pensée) *et la source de son malheur* (il sait sa misère, sa finitude, sa solitude). Le bonheur parfait est impossible à un être qui pense, parce que penser c'est toujours aussi se heurter à la mort, au néant, à l'insuffisance de toute chose.

	"L'homme n'est qu'un roseau, le plus faible de la nature ; mais c'est un roseau pensant."

	$=>$ Le roseau pensant illustre la *tension entre conscience et bonheur*. La conscience est *ce qui nous distingue de l'animal et nous rend capables de bonheur, mais c'est aussi ce qui nous en prive, en nous révélant notre finitude.* On peut le mettre en regard avec Rousseau (l'homme naturel, sans conscience réflexive, est plus heureux) et avec Nietzsche (qui accepte la finitude et en fait une force).
]

#pagebreak()

#cadre[
	*Le présent insaisissable : nous ne vivons jamais*

	Pascal observe que *les hommes ne vivent jamais dans le présent* : "Nous ne tenons jamais au temps présent. *Nous anticipons l'avenir comme trop lent à venir*, comme pour hâter son cours ; ou *nous rappelons le passé pour l'arrêter comme trop prompt*." Le bonheur est toujours *renvoyé à demain* ("quand j'aurai réussi, je serai heureux") *ou regretté dans le passé* ("j'étais heureux sans le savoir"). *Le présent*, seul lieu où le bonheur pourrait exister, *est constamment esquivé*. Cette fuite dans le temps est une autre forme de divertissement, non plus spatial (se jeter dans les activités) mais temporel (se projeter hors du maintenant).

	"Nous ne vivons jamais, mais nous espérons de vivre, et nous disposant toujours à être heureux, il est inévitable que nous ne le soyons jamais."

	$=>$ Ce fragment *préfigure les analyses contemporaines sur l'anxiété, la procrastination et l'incapacité à habiter le présent*. On peut le relier à Épicure (qui insiste sur le plaisir présent et la mémoire des plaisirs passés comme fondement de l'ataraxie) et à Proust (qui cherche à ressaisir le temps perdu par la mémoire involontaire).
]

#cadre[
	*Le pari : parier sur Dieu comme chemin vers le vrai bonheur*

	Le pari de Pascal est un argument pragmatique célèbre : *si Dieu existe et que vous pariez pour lui, vous gagnez tout* (la béatitude éternelle) ; *si Dieu n'existe pas et que vous avez parié pour lui, vous ne perdez que les "plaisirs empoisonnés" de cette vie.* *Si Dieu existe et que vous pariez contre lui, vous perdez tout.* Le calcul des espérances est donc sans ambiguïté : il faut parier pour Dieu. Mais Pascal ne s'arrête pas là : il sait que la foi ne s'ordonne pas. *Il conseille alors d'agir comme si on croyait* (prier, fréquenter les sacrements) — *l'habitude finira par produire la foi, et avec elle, l'accès au seul vrai bonheur.*

	$=>$ Le pari permet d'introduire la dimension de *la foi comme réponse à la question du bonheur*. Il dialogue avec Kant (le postulat de Dieu comme garant du souverain bien) et s'oppose à Épicure et aux stoïciens (pour qui le bonheur est accessible sans Dieu). Utile pour montrer qu'elle est inséparable de la question du bonheur chez certains penseurs.
]