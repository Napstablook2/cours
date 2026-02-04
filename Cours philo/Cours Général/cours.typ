#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*Cours général d'introduction sur le thème de l'année*
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
#set heading(numbering: "I.1.a")

#set par(justify: true)
#pagebreak()
#underline([Avant de commencer, quelques références cinématographiques :])

#underline([Le Mur invisible]) a été adapté en film en par Julian Pölsler\
#underline([Vingt mille lieues sous les mers]) a été adapté de multiples fois, mais en particulier par Disney, le film prend des libertés et est pour enfant mais plutôt sympa.

Première référence : _Into the Wild_, raconte l'histoire d'un homme qui, le jour de sa réussite à l'université, coupe tout et part seul à l'aventure, où il va fuir la société jusqu'en Alaska. Il plaque tout pour être plus proche de la Nature.

Deuxième référence : _The Revenant_ : 1823, nous raconte la survie d'un trappeur qui suite à l'attaque d'un ours est laissé pour mort en plein hiver, le tout dans un contexte de conquête de l'ouest américain.

Cela nous porte ainsi une question : "Quelle est la place de l'homme face à la nature ?"

Dans _Into the Wild_, la nature est perçu comme un refuge contre la corruption par la société. C'est à la fois un lieu de liberté retrouvée et de rédemption, mais également un lieu qui se révèle exigeant.

Dans _The Revenant_, la nature est comme une force brute, une entité à part entière, redoutable et indomptable. C'est anthropocentrique de penser que la nature est fragile : ce qui est fragile c'est une expression de la nature.\
La nature est comme un adversaire

À travers ces films s'illustrent différentes facettes d'expériences de la nature.\
Qu'est-ce qui nous pousse aujourd'hui à nous aventurer dans la nature ? La comprendre ? La vivre ? L'affronter ?

= Contextualisation

== Contexte historique
_(L'homme et la nature au $"XIX"^"e"$ et $"XX"^"e"$ siècle)_

Les oeuvres ont été composé sur une fourchette de moins de cent ans :
- #ul([Vingt mille lieues sous les mers]) paraît en feuilleton entre 1869 et 1870
- Les articles et conférences de #ul([La Connaissance de la vie]) datent de 1945 à 1952
- #ul[Le Mur invisible] date de 1963

Cette proximité chronologique prend place à un moment où l'on part de l'hégémonie de l'homme sur la nature à ce retournement :
- $"XIX"^"e"$  : L'homme écrase la nature
- $"XX"^"e"$ : L'homme est un monstre qui a détruit la nature, il faut la réparer

=== Le  second $"XIX"^"e"$ siècle _(1850 - 1900)_
Sauf exception notable, en France, le second $"XIX"^"e"$ siècle apparaît comme une époque de la puissance de l'homme et une conquête de la nature. C'est notamment l'époque de la révolution industrielle, de l'expansion coloniale, etc...

C'est également une période d'avancées scientifiques : le Nautilus apparaît comme une merveuille de la technologie mais la tradition y reste très projetée : la représentation de la mer, perçu comme un miroir inversant la vie à l'extérieur _(Quand Nemo fait ses partie de chasse, il va dans des forêts sous-marines)_\
C'est ainsi une vision paradoxale : le capitaine échappe à la vie terrestre mais en vivant exactement comme sur terre.

Aronnax va d'émerveillement en émerveillement, tout est extraordinaire. Il y a un côté d'exploît scientifique, il y a beaucoup de monde à bord mais on ne voit jamais où ils sont.\
L'émerveillement trend presque au rêve, on sent l'optimiste du $"XIX"^"e"$ siècle, l'appétit de connaissances.

1859 : Parution de #ul[L'Origine des espèces] de Darwin, on comprend que l'homme n'est plus une créature à part mais le résultat de la nature. C'est vu à l'époque comme une justification de la domination de l'homme.

C'est également l'époque de la maîtrise de l'énergie et des matières premières. En pleine exploitation des sources d'énergies telles que le charbon, la vapeur, le pétrole, l'électricité, etc...\
Cette vision est très présente dans #ul[Vingt mille lieues sous les mers], dans le chapitre XII de la première partie, on voit que tout est fait par l'électricité.

De plus, l'homme remodèle le paysage, c'est le moment des projets colossaux qui modifient la nature _(Canal transocéanique de Suez, évoqué dans le roman : on est dans les projets)_.
Dans le chapitre IV de la deuxième partie, le Nautilus utilise une sorte de trou sous le canal.\
On urbanise et on modernise à outrance, ce qui crée des écosystèmes artificiels : la nature sauvage est reléguée aux parcs, jardins des planetes, musées, etc...

Aronnax est professeur au muséeum d'histoire naturelle de Paris, et il pense à ramener des spécimens. Par cela il représente une nature artificielle et limitée, et c'est au contact du capitaine Nemo qu'il va voir ce qu'est la nature. Là-bas, la cage est le Natilus et la nature vis à l'extérieur.

L'oeuvre de Jules Verne ne dénote pas avec l'époque, il est le "bon enfant" de son siècle.\
Son oeuvre nous montre l'éloge de la conquête, de la domination. La nature n'est plus un environnement qu'on subit mais qu'on exploite.

Mais cependant, tout n'est pas aussi sobre, car c'est à cette époque qu'apparaît le terme "écologie", qui a été créé en 1866 par le biologiste allemand Ernst Haeckel à partir du grec _Oikor_ "la maison", et _logos_ "le discours"/"l'étude". Le discours sur l'habitat : se comprend comme la discipline qui étudie les organismes dans leur habitat.

Ceci est assez novateur et témoigne d'une prise de conscience : tout spécimen est lié à son environnement. #ul[Vingt mille lieues sous les mers] peut donc être considéré comme écologiste au sens étymologique du terme.

=== Le $"XX"^"e"$ siècle

Georges Canguilhem écrit dans les années 1930-1950. Son oevure peut être perçue comme un traît d'union entre le $"XIX"^"e"$ et notre époque.\
Même si d'un point de vue médical, la pensée de Canguilhem montre que chaque être vivant a ses spécificités, ses particularités : tout n'est pas orienté autour de l'homme : il remet l'anthropocentrisme en question.

"La vie n'est pas une machine voule par l'homme"

Pour ce qui est de Marlen Haushofer, elle écrit dans les années 60, pendant le second $"XX"^"e"$ siècle. À cette époque, la conscience écologique a fini par gagner les mentalités. Cependant, cela s'est passé en étapes, la prise de conscience est progressive et Haushofer est dans les prémisses.\
Les années 60 sont associées à la consommation excessive, on ne voit pas forcément ces prémisses, mais on commence à prendre conscience des limites de la nature.
- 1952 : Grand smog de Londres, 12000 morts
- 1962 : #ul[Printemps silencieux] dénonce l'effet des pesticides sur l'environnement
- 1967 : Première marée noire dans la manche
- 1969 : Dans le Rhin, un insecticide tue des miliers de poissons

Mais alors, pourquoi un mur ?
- Cela peut symboliser les limites que l'humanité est en train de franchir dans une catastrophe silencieuse.
- Cela peut symboliser un refuge
Le mur serait comme un point de non retour.

À côté de cette prise de conscience monte une idée de coexistence : la nature n'est plus un espace que l'on fuit mais un espace que l'on cherche

Ce siècle vois aussi la montée des premiers mouvements écologistes :
- 1960 : Création du statut officiel des parcs naturels
- 1961 : Création de la WWF

Dans l'oeuvre d'Haushofer, le personnage principal doit réapprendre à vivre avec la nature pour redevenir chasseur-cueilleur, elle n'essaie plus de dominer la nature mais s'y intégrer. On retrouve un lien quasi symbiotique (_sum_, _bios_ : "vivre avec")

À partir des années 60 se généralise la critique de l'anthropocentrisme.

De plus, ce n'est pas un hasard si le personnage principal est une femme, on peut voir #ul[Le Mur invisible] comme une oeuvre pré-écoféministe. À l'époque, la femme devrait être vue comme une figure de vulnérabilité, mais se montre au contraire résistante et forte.

De plus, on peut voir une symbolique de l'échec du modèle où la nature est déominée par l'homme. Ce second $"XX"^"e"$ siècle est un petit pas et le romand de Haushofer est à voir comme un roman visionnaire

== Contexte géographique

Trois lieux sont proposés : la mer, la montagne et le laboratoire.\
Ce sont tous les trois des lieux d'observation de la nature par l'homme, mais aussi des lieux de conservation du vivant

=== La mer
Depuis l'Antiquité, la mer à échappé à l'homme. Elle incarne historiquement un espace ambigu, un lieu de mythe et de ressources mais aussi de dangers et de catastrophes.

L'océan est d'abord une source de vie et d'émerveillement. Mais aussi d'abondance, par la surface, par la variété de ce qu'on y trouve et par l'aventure, l'inconnu. L'océan n'as pas fini de nous révéler ses richesse, et il en reste beaucoup à expliquer

La mer a aussi un côté esthétique, elle a nourri l'imaginaire collectif tout en étant un lieu qui fait peur et inconnu.

Dans #ul[Vingt mille lieues sous les mers], l'expérience de la nature se fait par une immersion totale. À une époque où le contact avec la mer était limité aux navire, et où aller sous l'eau était synonyme d'une mort certaine. Il y a ici quelque chose de révolutionnaire.

Le Nautilus est présenté comme un observatoire flottant, permettant d'entrer dans un lieu inexploré, permettant une plongé et une expérience aussi bien savante que sensorielle.

Cette description est inédite pour son époque, Jules Verne :
- Nous propose de faire l'expérience d'un lieu sublime, qui est un spectacle continu. Verne fait de multiples descriptions de la nature et c'est ainsi qu'on doit interpréter les promenades des personnages sous l'eau : le lecteur est invité à admirer tout ce qui le dépasse, et qui le dépasse en beauté ("sublime")
- Montre la mer comme un lieu propise aux expériences, une "nature laboratoire". La mer regorge de richesses et le tandem Nemo-Aronnax sait comment transformer l'expérience de la nature en savoir.
- Présente la nature comme un lieu de rupture, di'solement. La mer est ce qui nous coupe du monde terrestre. Quand ils y retournent c'est où pour repartir aussitôt, ou dans des lieux déserts. Il y a une forme de relation exclusive avec la nature

=== La montagne

De façon générale, la montagne est également un lieu spécifique, traditionellement symbole de l'inaccessible.

Elle s'oppose au jardin, au parc, à la plaine, des lieux d'une nature maîtrisée, de loisir. La montagne représente la démesure, elle incarne la résistance au progrès humain. C'est un lieu d'ascension physique et spirituelle, un lieu de confrontation avec les élément et même parfois un lieu des dieux. C'est en général un milieu d'exceptin et un espace de rupture.

Chez Haushofer, le cadre est le confinement d'une valée autrichienne. Il ne s'agit là pas tant d'un lieu d'ascension mais plutôt de repli qui devient un laboratoire à ciel ouvert où on vit en autarcie. On voit une dépendance à la nature, on vit coupé du monde et on doit faire l'expérience de la subsistance.

Cependant, contrairement à la mer, c'est un espace plutôt pauvre. À la différence de Nemo, le personnage principal compte tout parceque l'espace qu'elle habiter n'est pas un espace abondant.

Chez Haushofer, c'est aussi le lieu de la solitude. Tandis que chez Vernes, c'est une solitude recherché, qui n'ennuit pas, dans la montagne on est prisonnier d'une solitude subie.

Enfin, la montagne participe à une nature qui dépasse l'être humain. Elle surplombe le reste des hommes.\
On prend de la hauteur par rapport au monde qu'on est capable de mieux questionner.

=== Le laboratoire

Le laboratoire est le lieu de production de la connaissance. Quitte à recréer une nature artificielle. Le laboratoire est un élément artificiel qui traverse la nature pour mieux la comprendre. Elle représente un idéal de rationalisation de la nature.

#citation(["Ces salons du monde scientifique" Canguilhem, p.20])
Au sens large, c'est un lieu de travail. On qualifie de laboratoire tout local pourvu d'installation nécessaire à des expériences scientifiques.

p.27, Canguilhem nous faît une énumération de philosphes et d'hommes de sciences. Tous ces hommes là avaient également des laboratoires. C'est le lieu intriséquement lié à l'expérience scientifique du vivant. Un lieu déterminant pour la connaissance.

Plus précisément, le laboratoire est :
- Un lieu d'études (p.20/32), c'est un lieu où on observe la nature.
- On ne se contente pas de mesurer la vie, mais on va la produire, à la fois conceptuellement en faisant avancer les connaissances du vivant mais également littéralement en la modifiant.
- Lieu de normativité : on établi les normes.

Ce n'est pas un lieu neutre, on pose déjà un regard avec des jugements et des valeurs.

=== Conclusion

Finalement, les oevures offrent une typologie des lieux
- La mer est caractérisée par une immersion positive, par une découverte et une appropriation.
- La montagne est un lieu de repli. Il y a une dépendance à la nature mais une possibilité de survivre, on la subit.
- Le laboratoire passe d'un lieu d'expérience de la nature brute à un lieu de conceptualisation : on la définit, la maîtrise, la reproduit.

= Faire l'expérience de la nature
_Interrogation sur le thème de l'année_

Qu'est-ce qu'une expérience ? De quelle nature parle-t-on ?

L'expérience de la nature désigne une pluralité de choses, de la promenade dans les bois à une observation scientifique, etc...

#definition[*L'expérience* vient du latin _experientia_, du verbe _experiri_, signifiant "essayer", "éprouver". Il déigne l'ensemble des connaissance acquises par le biais des sens, des sensations.]

Elle s'oppose à la théorie, en ce qu'elle sous-entend une pratique. Faire l'expérience de la nature c'est pratiquer la nature.

Théorie vient du grec _théôria_, même racine que "théatre", et dérive du verbe _théan_ "voir", "observer", "examiner"...\
La théorie relève de simples observations. La pratique elle inclue l'idée de manipulation.

Observer ne suffit pas à en faire l'expérience.

Expérience en grec se fit _empeira_, qui formera "empirique", ce qui est éprouvé par les sens, renvoies aux donées scientifiques. Considérant que l'expérience sensible est à l'origine de la connaissance mais aussi des croyances et plaisirs.

Il y a différents expériences :
- L'expérience sensible
- L'expérience scientifique
- L'expérience acquises, le savoir faire "Erfahrung" en allemand
- L'expérience vécue, "Erlebnis"

L'expérience vécue désigne un évènement personnel, on insiste sur un aspect subjectif ou singulier, tandis que l'expérience acquise elle est plus commune, elle relève des expériences objectives, cumulatives.

- L'expérience collective\
	_(ex : L'expérience des deux guerres mondiales a créé l'ONU.)_

Au sens banal, l'expérience est aussi associée à l'age.

#ul[Vient ensuite la question de la connaissance :]

Les philosphes cherchent la connaissance, mais sur quoi ces connaissances se basent-elle ?\
Pour répondre à cette question il y a trois positions philosophiques :

- Nos connaissances dérivent de notre raison et uniquement d'elle. C'est une vue rationelle et cartésienne de la connaissance. Nos sans ne sont pas fiables mais superflus et trompeurs.

    Cette idée se retrouve chez deux auteurs majeurs : Descartes et Platon.\
    Tout d'abord Descartes et l'auteur principal dans cette idée, René Descartes développe le doute cartésien, ou doute méthodique. Il fait table rease de tout et en vient à la seule conclusion indubidable : il est. Il prend l'exemple d'un baton plongé dans l'eau qui apparaît brisé par illusion. Descartes préconise l'usage de la raison.\
    En cela, il rejoint Platon pour qui ce que nous appréhendons par nos sens est toujours moindre que ce que nous appréhendons pas nos sens. _(ex : L'allégorie de la caverne.)_

    Cependant, Platon le fait avec un autre argument, Platon affirme qu'il y a en nous des idées inées et qui ne dériveraient pas de l'expérience. Des choses que l'on saurait instinctivement. _(Par exemple, on a l'idée que le vrai est bon, le faux est mal, il y a quelque chose qui nous guide.)_

- Nos connaissances dérivent de nos sensations
    
    Les empiristes soutiennent que nos connaissances viennent de nos impressions et sensations. Par exemple Épicure, Locke, Bacon, Hume.

    Prenont pour exemple l'aveugle qui n'as jamais vu de couleur et ne sait donc pas ce que c'est.

    Locke prend le contrepied de Platon, dépeint l'esprit comme une table rase dans laquelle l'expérience grave nos connaissances. La connaissance vient donc de l'expérience et uniquement d'elle\
    Par exemple, l'enfant ne sais pas spontanément que les flammes brulent, il doit se bruler une fois ppur le savoir.

    VOIR TEXTE 1 : F. Bacon, #ul[Novum organum], Bacon va nou guider vers une voie médiane

    VOIR TEXTE 2 : J. Locke, #ul[Essai sur l'entendement humain]

    Cette idée de table rase peut d'ailleurs être reliée à Aronnax, il met toutes ses connaissances au rebut et réapprend par la mer. De même pour Haushofer.

- L'expérience concrète fourni les matériaux de nos connaissances mais il doit y avoir du rationnel qui organise ces matières. On pensera à Leibniz ou Kant.

    Rien n'existe sans passer par les sens sauf l'esprit, tout s'inscruste sur la table, mais il faut déjà avoir la table et qu'elle soit prête pour organiser les connaissances.\
    L'expérience que Nemo offre à Aronnax est bien mais il faut l'organiser, Conseil rappelle d'ailleurs que toutes les espèces qu'ils découvrent rentrent dans la classification.

#ul[Et quid des sens ?]

Expérience et différent d'expérimentation.\
En effet, le premier désigne un acte poncruel, pris dans la singularité du moment, tandis que le deuxième désigne une pratique systématique et mthodique pour utiliser des expériences. C'est un recours régulier à l'expérience.

Canguilhem revient sur la méthode expérimentale de Claude Bernard : elle préconise un recours régulier à l'expérience en ce qu'elle préssuppose une méthode scientifique en trois temps : l'observation, l'émission d'une hypothèse et l'expérience pour vérifier cette hypothèse. Il faut alors trouver un juste milieu entre la raison et lees sens dans lequel l'expérimentation permet des réconcilier les deux.\
On commence par faire appel à nos sens mais on ne leur fait pas confiance. On emet des hypothèses, la réponse de la raison aux sens. L'expérimentation permet alors de confronter le sens et la raison.

Les deux concepts d'expérience et de nature sont liés : expériences de la nature peut se comprendre de deux manières :
- L'expérience qu'on fait de la nature $->$ la nature est objet
- Les expériences faites par la nature $->$ la nature est sujet

#citation[
Canguilhem, p.152 : "La vie est expérience, c'est à dire improvisation, utilisation des occurences, elle est tentative dans tous les sens"]
La nature en elle même tatonne, fait des expériences, et c'est ainsi que la vie fait des "monstruosités"

Les pré socratiques, s'interrogent avant tout sur la nature qui entoure l'homme\
Toujours dans l'antiquité, quelqu'un comme Aristote étudie tout autant la philosophie que les sciences\
$==>$ La nature a une place importante dans la philosophie

La nature est un terme polysémique, et il faut avoir ses différents sens en tête :
#definition[- L'ensemble de la réalité matérielle indépendante de l'activité et de l'histoire humaine\ Le sens le plus "vulgaire"
- L'ensemble de l'univers en tant qu'il est le lieu, la source ou le résultat des phénomènes matériels\ La nature englobe ainsi tout ce qui existe et qui n'est pas produit par l'activité humaine, "le monde des choses et des lois", on parle en ce sens des lois de la nature, qui se confond tentôt avec Dieu :\ "Deus sine natura", Spinoza]

Canguilhem nous parle de la connaissance de la vie, et à plusieurs reprise donc du vivant, mais est-ce que nature et vivant sont la même chose ?\
Le vivant, c'est une sous catégorie de la nature, le vivant appartient à la nature mais pas l'inverse. Il se démarque de la nature par son organisation et sa finalité :
- La nature est caractérisée par des lois, par des agrégats de matière\ Exemple : un rocher est dans la nature, le casser en deux crée deux rochers distincts, ce n'est qu'un agrégats
- Les normes naturelles sont produites par des causes externes\ Exemple : une pierre tombe par une cause externe, la gravité ; Le soleil brille par des réactions et causes externes\
Le vivant se démarque de ça pour deux raisons :
- Il n'as pas d'agrégat, il présente des parties qui n'ont du sens que par rapport à cet ensemble\ Exemple, si on coupe une partie d'un être vivant, on n'obtient pas le même en deux exemplaires\
- Les causes ne sont plus externes mais internes, il est lui même a l'origine de ses propres normes, de ses propres lois, en distinguant le normal et le pathologique

$==>$ Le vivant est une incarnation stricte et particulière de la nature\

#definition([- La nature est également une réalité sensible qui constitue l'objet ou le point de départ d'une oeuvre artistique
- L'ensemble des caractères qui définissent l'homme indépendamment de la société, on parle de nature humaine])

Si on revient au premier sens, partons sur l'étymologie du mot nature :\ Vient du latin _nascor_ $->$ _natus_ $->$ _naturus,a,um_, signifiant "naître". Renvoie à l'action de devenir quelque chose.\
L'équivalent en grec est _phusis_, qui a donné "physique".\

Héraclite a écrit un traîté "Sur la nature" qui a la fameuse formule _panta rhei_, c'est à dire "tout passe ; tout coule", de puis il a dit "on se baigne pas deux fois dans le même fleuve", c'est à dire que l'être, le viviant est éternellement en devenir. La nature revient par cycle mais n'est jamais pareille, la nature est en perpétuelle évolution.\
La nature a ceci de mystérieux qu'elle prend de multiple visages
\
\

\
Pour rentrer dans l'oeuvre de Canguilhem, nous allons voir une opposition qui se trouve dans les deux premiers chapitres de "philosophie"\
Canguilhem évoque ici le vitalisme et le mécanisme, deux notions majeures pour comprendre la nature\ Il est important d'insister sur un point : Canguilhem n'est pas philosophe, c'est un historien de la philosophe et un épistémologue (i.e. un spécialiste de la connaissance). Ainsi, quand il évoque ces deux sujets il ne prend parti ni pour l'un ni pour l'autre.\
Ces deux notions abordent différemment la notion de la spécificité de la vie, du vivant par rapport à la matière inanimée. Canguilhem réfléchit lui aussi par ailleurs à cette spécificité.

#definition[
  Le mécanisme répond à la question "comment le vivant fonctionne ?"\ Pour répondre à cette question, il développe une idée : la nature est faite de lois et de structures matérielles. i.e. La nature est une machine.\ Ainsi, il encourage l'expérience dans l'ananlyse parcequ'il réduit les phénomènes biologiques à de simples processus physiques, chimiques, etc...\ Le mécanisme ne réfléchi pas à la vie sous l'angle de la finalité, mais sous l'angle de jeux de causes à effets
]
#underline("Exemple d'auteurs") :
- Claude Bernard

- Galilée, cité p.132 lorsqu'il parle des "iatromécaniciens", i.e. les savants du $17^e$ qui expliquaient le fonctionnement du corps humain par les lois de la mécaniques, défini p.133.

- Descartes avec sa théorie de l'animal machine, chap II p.141-...\ L'idée centrale de Descartes est que les animaux, par opposition à l'homme, sont de pures machines : tout le corps animal fonctionne de façon mécanique sans âme ni pensées. Autrement dit, les animaux réagissent pas automatisme comme des horloges.\ En celà l'homme est infiniment plus important : il a une âme pensante qui permet le langage ou ne serait-ce que la conscience.\ Pour lui, cela permet de justifier l'utilisation de la nature par l'homme et nous donne un blancsain pour exploiter cette nature.

Canguilhem nous dit p.142-143 "La mécanisation de la vie [...] pour un moyen.\
$==>$ Mécanisation de la vie, et utilisation de la nature vont de pair.

Dans le chapitre I, Canguilhem revient sur le vitalisme

#definition([Le vitalisme répond à la question "qu'est-ce qui distingue un corps vivant d'un cadavre ou d'une machine ?"\ Le vitalisme répond par l'idée que la nature vivante est régie par un principe irréductible que les seules lois de la matières ne peuvent pas expliquer.\ Il parle de force vitale, Van Helmont parle d'"archée", il y a une âme au sens étymologique du terme, _anima_, il y a une principe de vie qui est insaisissable matériellement parlant.])
Avec le vitalisme, le vivant trouve son originalité dans s a nature même, parceque contraîrement à l'aspect mécanique, il a sa propre finalité, et pour se faire il établi ses propres normes.\
#pagebreak()
#underline("Exemple d'auteurs") : (ils sont inconnus de nos jours)
- Bichat
- Bartez
- Van Helmont

Canguilhem se plaît à réhabiliter le vitalisme.\
Ce qui plaît à Canguilhem dans le vitalisme c'est qu'il prend le vivant dans son ensemble, n'aîme pas le décomposer mais préfère le voir comme quelque chose d'originale et de plus spontanée. Ce n'est plus qu'une simple agrégation de la matière.\
\
Canguilhem, dans son chapitre I, revient sur les points positifs du vitalisme :
- Il fait preuve de "vitalité", p.109-110\ Là où le vitalisme est flou, le mécaniste est ennuyé, p.110
#citation("Le vitalisme est l'expression de la confiance du vivant dans la vie")
#citation("Si le vitalisme est vague et informulé comme une exigence, le mécanisme est triste et impérieux comme une méthode")
- Le courant de pensée est plus fécond qu'on ne le croît, ce n'est pas une impasse qui empêche le progrèes, p.118
- Le vitalisme serait perçu comme obscurantiste, limite ésotérisme. p.124 "L'utilisation par les nazis [...]", au contraire Canguilhem souligne l'honnêteté du vitalisme, ce n'est pas un piège.\
\
\
Canguilhem montre également les lacunes du mécanisme cartésien.\
La question que Canguilhem se pose est : "Comment expliquer qu'on ait cherché dans le mécanisme un modèle d'organisation du vivant ?". Il réfléchit à la pensée de Descartes et nous dit que pour trouver le vrai père du mécanisme, il faut remonter jusqu'à Aristote (p.134-135).\ Il revient longtemps sur la différence entre les deux et la question de la finalité de la nature. Il commence par parler d'Aristote :\
La question de la finalité de la nature est l'objet d'étude de la _téléologie_, venant du grec _telos_ ("la fin"), _logos_ ("le discours, l'étude"). Pour Aristote, la téléologie est le principe fondamental pour expliquer le vivant : il explique tout phénomène par quatre causes :
#pagebreak()
- La cause matérielle, ce dont la chose est faite. Pour le lit c'est le bois
- La cause formelle, ce qui donne la structure à la chose. Pour le lit c'est l'idée du lit, son plan.
- La cause efficiente, ce qui produit la chose, le rapport de cause à effet. Pour le lit c'est un menuisier
- La cause finale, le but pour lequel existe la chose. Pour le lit c'est dormir.

Pour Aristote, c'est cause finale est interne à l'être vivant, en ce sens qu'il possède lui même son propre but, c'est à dire qu'un être vivant ne s'explique pas par d'autre cause que cette cause finale qui lui donne son sens. Tout ça réside dans l'âme, qui fait parti du corps et fait qu'un corps est un organisme qui a une fin en soit : l'accomplissement/l'évolution de sa vie. (cf. p.135)

Descartes rejette toute cause finale, pour lui le corps animal ou humain ne peut s'expliquer que par des mécanismes, comme un automate. La nature est aveugle et se caractérise par une forme de déterminisme pur qui fait qu'elle n'as pas de fin en elle.\
Mais en cela, Canguilhem nuance le propos de Descartes en ce que chez Descartes, c'est un automate voulu par Dieu. L'idée de Canguilhem est de rappeler que le mécanisme n'est pas étranger à l'idée d'âme mais déplace la téléologie de la physique à la théologie : Chez Aristote, la finalité de l'organisme est dans la physique, dans l'organisme en lui même : l'âme. Tandis que Descartes déplace cette idée de l'intérieur de l'organisme vers l'extérieur en rappelant que la finalité même si elle n'est pas en nous est toujours en Dieu, qui a créé l'automate que nous sommes. Il parle d'_Artifex Maximus_. (cf. p.144)
\
\
\
\
Petit aparté :\
Pour Merleau-Panty, la nature est ce qui échappe fondamentalement à la pensée.  faire l'expérience de la nature c'est faire l'expérience de quelque chose qui échappe à la pensée. "Il y a nature partout où il y a une vie qui a un sens mais où cependant il n'y a pas de pensée". "Est nature ce qui a un sens sans que ce sens ait été posé par la pensé". C'est l'autoproduction d'un sens.\ Autrement dit, Merleau-Panty réond à l'objection du flou du vitalisme : ce qui fait la nature échappe à notre raison.

Ainsi, si la vie échappe également à la pensée, c'est peut-être que la meilleure manière de l'appréhender et d'en faire l'expérience n'est peut-être pas dans l'entreprise rationnelle, et que faire l'expérience de la nature c'est aussi faire l'expérience de l'indiscible, de l'insaisissable, de l'impossible : il y a quelque chose d'énigmatique dans la nature qui ne s'explique pas.

= Présentation des auteurs et de leurs oeuvres

== Jules Verne, romancier scientifique

=== Présentation de l'auteur

Au départ, Jules Verne est un romancier pour la jeunesse. Cela influence la postérité de Jules Verne : il a été longtemps classé comme romancier populaire, et souffre encore aujourd'hui de la réputation de romancier pauvre.

De plus, on peut l'opposer à l'autre romancier scientifique avec lequel il est comparable : Zola. Dans leur temps (1870-1890), la science devient un modèle pour la littérature. Zola prend pour modèle la méthode expérimentale de Clause Bernard. Lui même part du principe et l'applique à la littérature : il observe un phénomène social (ex: l'alcoolisme), emet des hypothèses (ex: lié à l'éducation, le stress, etc...), puis les vérifie de par son histoire et ses personnages. Ainsi, alors que son projet est du même acabit que Jules Verne et qu'il a moins de connaissance, Zola est considéré comme un auteur sérieux car depuis le début il écrit pour adulte.\
Ainsi, n'oublions pas avec Jules Verne que la manière dont nous voyons la nature est liée à son public, l'émerveillement qu'il procure est destiné à la jeunesse.

Le Jules Verne de la postérité ne correspond pas vraiment à la manière dont il a vécu, il est né en 1828 à Nantes, dans une famille de notaires ou de banquiers du côté du père, mais dans une famille d'armateurs du côté de la mère. Il est l'aîné, a un frère trois soeurs et commence par suivre sa scolarité dans une pension, tenue par une femme étant la veuve d'un capitaine au long cou.\
Autres anecdotes : Deux cousins à lui se noient dans la Loire quand il est jeune\
En 1839, il arriverait à partir en tant que mousse pour une expédition et qu'il aurait été rattrapé le même jour par son père.

Le contact avec la mer est présent dès l'enfance de Jules Verne. Il supporte mal l'éducation de son père ; d'autant qu'il veut faire de lui un avocat ; et ne pense qu'à la littérature.\
Il monte à Paris 1847, fréquente les milieux artistiques et tente de se faire un nom. Il devient notamment l'amis d'Alexandre Dumas (fils). Il a des sympathies démocratiques et pour les saint-simoniens et les anarchistes. Les saint-simoniens pronants d'éliminer les inégalités sociales sous la direction des savants. Les anarchistes rejettant toute forme d'autorité, notamment étatique et pronne une société égalitaire et libre. (on peut voir un parallèle avec Nemo)

Jules Verne commence en écrivant des textes oubliés, des petites opérettes, des pièces de theâtre, etc... Il obtient un poste au théatre lyrique et les premiers écrits qu'il publie sont de l'ordre des récits de voyage, etc...

Autour de (1860?1855?), il se marie, tente de ranger sa vie, mais n'abandonne pas ses ambitions littéraires. Il se lance dans un travail acharné, il écrit 5 à 6h par jour, se lance dans une série de voyages. En 1859 il va en angleterre, en 1861, le tour de l'Europe du Nord, etc...
#pagebreak()
À cette époque, Jules Verne tatonne, cherche la formule qui lui permettrait de réussir. Il rencontre notamment "Nadar", le grand photographe des célébrités, et envoie des manuscrits.\
Il envoie notamment un manuscrit pour "15 semaines en ballon", qui est refusé par 15 éditeurs, et le $"16"^"e"$ va tout changer. Le $16^"e"$ en question est Hetzel, qui a publié des oeuvres de Victor Hugo, de Balzac, de Stendhal. Il le rencontre en 1862, au bon moment : depuis longtemps Hetzel s'intéresse à la littérature pour la jeunesse, il renifle l'idée qu'il y a un publie nouveau qui est en train de se constituer : les jeunnes, et constitue une collection pour la jeunesse. Et en rencontrant Jules Verne, il se dit qu'il tient quelque chose.

On a donc la convergence entre Verne qui se cherche, et Hetzel qui cherche le chaînon manquant à sa collection. Hetzel va alors devenir une sorte conseiller pour lui. La grande idée que les deux vont concrétiser, est de remplacer le merveilleux des contes de fée par un autre merveilleux, celui des savants. La science va alors constituer le fil conducteur des "voyages extraordinaires dans les mondes connus et inconnus", son grand cycle qui l'occupera pendant 40 ans.

Hetzel l'accueille dans sa collection "Le Magasin d'éducation et de récréation", une revue qui publie des feuilletons, puis des livres. Ce sont des livres rouges qui aujourd'hui valent une fortune.

*Le premier mérite de Jules Verne* est de faire voyager son lecteur à une époque où on ne voyage pas. Il vendait du rêve et des miracles, surtout pour les enfants.\
*Son deuxième* est que ce sont des oeuvres didactiques, on apprend des choses.\
*Enfin*, c'est aussi un visionnaire, qui imagine ce dont demain sera fait, il fait intervenir des machines, anticipe sur le futur, etc...

Dans les années 1860/70, il va publier une multitude de romans.\
Cependant, dans la deuxième partie de sa vie, les choses d'assombrissent : 1870 guerre franco-allemande d'où la france sort traumatisés, 1871 communes de Paris, 1880 rivalité franco-anglaise.

Jules Verne ne vis pas à Paris mais s'est fixé à Amiens jusqu'à sa mort en 1905, et il voyage beaucoup. À la fin des années 80, il rencontre des ennuis financiés, notamment dû à la vente de son yacht ; il est victime d'une agression par un de ses neuveux ; il se met alors à écrire des romans plus pessimistes, plus ironiques, où il y attaque notamment l'angleterre et l'amérique.

Les derniers romans du Jules Verne développent encore plus le crédo anarchiste avec des critiques de la politique

$==>$ Dans le Capitaine Nemo, il y a déjà du Jules Verne. Son côté mysanthrope, sombre, etc...
#pagebreak()
=== Son oeuvre

Est-ce que Jules Verne est véritablement un auteur pour la jeunesse ? N'est-on pas trompé par l'étiquette qui lui a été acollé ?\ Pour les vernistes, ce n'est absolument pas un auteur pour la jeunesse, il est trop profond, trop novateur, trop dérangeant, trop sombre, pour être uniquement un auteur de la jeunesse. Il y a des moments où il est très chauvin, où on peut se demander s'il n'y a pas des messages cachés. Il y en a des plutôt misogyne, parfois même antisémites.

Il écrit d'abord ce roman parcequ'il aime la mer et les voyages, que c'est quelque chose qui lui trotte dans la tête depuis longtemps.\
De plus, le sujet est à la mode dans les années 1860, on a une foultitude d'auteurs qui évoquent la mer, et ce sont des auteurs qu'on retrouve dans Vingt mille lieues sous les mers. Il y a d'abord Edgar Allan Poe, #underline([les Aventures d'Arthur Gorden Pym]) ou encore #underline([Une Descente dans le maelström]). _(Ou même des auteurs français comme Jules Michelet, qui publie #underline([La mer]))_. Il cite également beaucoup Alfred Fredole, #underline([Le Monde de la mer]). _(À cette époque là l'expérience est assez limitée et il en récupère beaucoup dans les écrits des autres)_.. Il y a également Victor Hugo, #underline[Les Travailleurs de la mer].

De plus, à cette époque, il y a un changement progressif du regard de la mer, les gens commencent à aller au contact avec la mer.
#citation(["Vous allez voyager dans le pays des merveilles. L'étonnement, la strupéfaction seront probablement seront probablement l'état habituel de votre esprit. Vous ne vous blaserez pas facilement sur le spectacle incessament offert à vos yeux." Chapitre X. p.104])

Quatre ans avant, il a le projet d'un roman sous-marin, et il commence à y travailler dès 1865-1866, de façon discontinue. Il n'avance que peu mais le vois comme une bouffée d'oxygène dès qu'il peut s'y consacrer.\
C'est aussi un travail familial vu que son frère, Paul Verne, apporte aussi sa contribution. Il ne s'y plonge pour de bon qu'à l'été 1868

#citation(["Je ne pourrais donner à Rillou le manuscrit de Vingt-Cinq mille lieues sous les mers avant la fin août, j'aurais fini en juillet mais j'ai tout à réécrire, *la difficulté est de rendre très vraissemblable ces choses invraissemblables, et j'espère y être arrivé*" Lettre de Jules Verne, 23 juiller 1868
])

Par ailleurs, le titre évolue, commençant par "Voyage sous les eaux", puis "Voyage sous les océans".
#pagebreak()
La parution en feuilleton commence en mars 1869, avec un sous titre "Tour du monde sous-marin", et s'arrête en juin 1870, avec environ 2 chapitres par feuilleton. Et d'après Verne, le roman serait pensé pour.

Comment appréhender #underline([Vingt mille lieues sous les mers]), il s'agirait d'un voyage initiatique : l'idée serait de proposer au lecteur un voyage à la fois vertical et horizontal. Plus d'une fois, le Nautilus est présenté comme ayant un mouvement vertical, mais on voyage également tout autour de la planète, et de façon quasiment infinie, puisque à la fin du roman, le Nautilus n'as toujours pas fini son périple.

La structure du récit est la même que beaucoup de voyages de Jules Verne : dans les premiers chapitres, on a une aventure qui devient une aventure extraordinaire, _(la chasse au Narval)_, avec une poignée de héros : le savant, son assistant, et l'homme de terrain _(Aronnax, Conseil et Ned Land)_. De plus, le voyage est ponctuée d'étapes significatives : l'expèrience de la nature ici est le catalogue d'épreuves. Il y a un côté acumulatif, répétitif, des épreuves traversées par les personnages : les attaques d'hommes, d'animaux, les naufrages, la lutte contre les éléments, etc... Enfin, exactement comme dans #underline([Voyage au centre de la Terre]), une épreuve finale renvoie les personnages dans le monde réel _(Le maelström le expulse du Nautilus et les envoie sur la côte de Norvège)_.

Pareillement, ce n'est pas tout à fait un récit de sciences-fiction, au sens où il n'y a pas une anticipation totale : il utilise des possibilités techniques déjà existantes qu'il pousse à l'extrême _(Il pousse le sous-marin à l'idée de perfection avec le Nautilus)._

Chez Jules Verne, les personnages sont toujours le symbole de quelque chose, Nemo ne s'appelle pas Nemo pour rien, de même pour Ned Land : en latin, _nemo_ veut dire "personne", c'est le personnage mystérieux, opaque. Ned s'appelle "Land" parcequ'il représente le côté terrien, c'est lui qui veut toujours venir vers la terre, revenir vers la côte : il réprésente l'attachement à la société.

On peut lire #underline([Vingt mille lieues sous les mers]) comme une nouvelle épopée digne de #underline([L'Odyssée]) d'Homère. Comme une réécriture scientifique où la quête reste la même, celle du foyer et de l'identitée, mais en version $"XIX"^"e"$. Pour Nemo c'est une quête sans but, et les autres sont partagés : Ned Land veut rentrer mais ne peut pas et Aronnax est très partagé, et ce n'est que dans la dernière partie du livre qu'il veut rentrer.
#pagebreak()
== Canguilhem, du résistant au savant

Canguilhem naît en 1904 dans l'Aude, et est passé par le lycée Henry IV à Paris et l'ENS Ulm. À Henry IV, il a pour professeur le philosophe Alain. À l'ENS, il a pour condisciple des autres comme Jean-Paul Sartre, Paul Nisant ou Raymond Aron. À cette époque là, l'ENS est un vivier de philosophes et d'intellectuels.

En 1926, il présente "La théorie de l'ordre et du progrès chez Auguste Compte" (C'est un philosophe de formation), et passe l'agrégation de philo.\
C'est quelqu'un d'anti-militariste et de pacifiste.

Il entame ensuite une carrière d'enseignant.\
En 1930, on sent la montée des périls et Canguilhem est moins pacifiste et est vigilent face au péril nazi, et fait parti de ceux qui ne veulent pas négocier avec Hitler.\ La guerre arrive et Canguilhem est embêté en tant qu'enseignant : la France est divisée en deux, Canguilhem qui est à Toulouse à ce moment là considère que le régime de Vichy est incompatible avec son exercice d'enseignant de philosophie. Tout en développant un intérêt pour la médecine, il entre en résistance.

*Première image de Canguilhem : un résistant*\
Pendant la guerre, il mène deux activités, une d'étude en médecine et une de résistant. Son action se situe en Auvergne, il est prof à la fac de Clermont-Ferrand, et est chef d'un réseau en Auvergne tout en soutenant sa thèse. Sa thèse étant "Essai sur quelques problèmes concernant le normal et le pathologique". Il prend les armes et participe aux batailles entre résistant et forces allemandes. 

Après la guerre, il continue sa carrière à l'université de Strasbourg et il exerce également comme inspecteur général de philosophie. À partir de 1955, il enseigne à la Sorbonne et succède à Gaston Bachelard. Il meurt en 1995.

*Son oeuvre*\
L'oeuvre de Canguilhem est une oeuvre de philosophe mais avant tout d'historien de la philosophie. Il prétend retarcer l'histoire des sciences. Et ce n'est pas tant le discours mais l'historicité de ce discours qui l'intéresse.\
Ainsi, l'histoire des sciences n'est pas revenir sur des faits mais sur comment la sicence s'est construite globalement. Cet historien de la connaissance, c'est ce qu'on appelle un épistémologue, branche de la philosophie qui s'intéresse à l'epistémé : la connaissance.

Il faut alors l'historique en s'intéressant aussi bien aux échecs qu'aux réussites. Canguilhem se lance dans trois grandes directions dans son oeuvre :
- La première direction concerne la biologie : ce qui l'intéresse c'est d'étudier toutes les théories au sujet de la vie. La vie qu'on la concoive comme animation, comme mécanisme, comme principe d'organisation, voire comme principe d'information.
- La deuxième direction, c'est l'appartition des différents types de science. Comment la science est apparue d'une époque à l'autre ? Comment on passe d'une science un peu loufoque au $"XVI"^"e"$ à une science expérimentale en $"XIX"^"e"$.
- La troisième concerne l'apparition de la médecine et ses évolutions.

Il s'intéresse autant à la vie en elle-même, qu'aux sciences, qu'à la médecine.
#pagebreak()

À chaque fois, Canguilhem revient de façon neutre sur toutes ces expérimentations et tous ces processus de savoir.

Néanmoins, cette réflexion philosphique sur la connaissance est inséparable d'une réflexion sur les valeurs. C'est-à-dire qu'il y a une éthique chez Canguilhem, et une idée que le vivant est porteur de valeurs qui font sa richesse. Et ces valeurs que Canguilhem accorde au vivant sont celles du normal et du pathologique.

Le normal est ce qui renvoie à la norme, autrement dit, c'est la valeur quand tout fonctionne correctement dans un organisme. Quand l'organisme travaille à sa propre survie, à son bon fonctionnement de lui-même.

Dans pathologique, ce n'est pas l'idée de maladie, mais de _pathos_, "subir", c'est à dire que c'est un organisme qui n'est plus maître de sa propre norme mais subit, il ne décide plus alors de sa propre survie et de son bon fonctionnement.

== Marlen Haushofer

C'est une autrice peu connue en France et dont peu d'informations sont disponibles.

Elle est née en 1920 et meurt en 1970. Elle correspond à cette génération d'écrivains autrichiens partagés entre la grande Autriche-Hongrie et le petit pays qu'elle devient. Elle fait également partie de cette génération où les repères sociaux se sont complêtement effondrés : c'est une génération désillusionné. C'est aussi une génération qui connaît le nazisme et qui est donc tiraillée. Pour finir, c'est une autrice qui connaît le contexte de la guerre froide, dans une autriche qui constitue un pays tampon.

Elle grandit dans la société bourgeoise, fait des études de littérature et nourrit l'envie d'être autrice. Mais dans le même temps elle assume un rôle d'épouse traditionnelle, et sert de secrétaire à son mari dentiste ; elle a deux enfants.

Elle décrit elle même son travail d'écrivaine comme une activité secrête non pas secondaire mais parallèle à son rôle domestique. Il y a la "femme sociale" et le besoin de création. Elle passe sous les radars et n'est redécouverte que vers 1980 par la culture féministe qui voit en elle une précurseure.

Ses romans explorent le thème de la solitude, de l'aliénation féminine et de la critique de la société bourgeoise.

Finalement, son style est plutôt concis et sans lyrisme.

En allemand, #ul[Le Mur invisible] s'appelle simplement "Le mur" (_Die Wand_)