#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*Une ontologie de la survie :\ Nature et condition humaine dans\
  #ul[Le Mur invisible]*
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
#set heading(numbering: "I.A.1")

#set par(justify: true)



L'ontologie est une branche de la philosophie qui a pour objet des propriétés de l'être et de l'existence

Ici l'étude nous pousse de l'expérience de la nature à une *réflexion sur l'existence humaine* dans une situation extrême comme celle que connaît la narratrice. Le roman interroge ce qu'est l'existence quand on ne se contente plus que de survivre. Le roman invoque donc une ontologie fondée sur le rapport direct à la nature qui permet de *redéfinir l'être*.

== Introduction

Le mur invisible date de 1963, l'oeuvre la plus connue de Marlen Haushofer. Le roman propose une expérience radicale de la nature qui rompt complètement avec la tradition, une tradition qualifiable de "pastorale" : depuis l'Antiquité grecque, romaine, la littérature présente régulièrement la nature et en particulier la nature "travaillée par l'homme" (les prés, campagnes, etc...) comme un espace d'harmonie, de simplicité, un espace paisible. Il y a traditionnnellement une frontière entre la nature douces et les natures sauvages ; la nature y est traditionnellement perçue comme accueillante, un monde d'innoncence. Ce schéma s'est prolongé jusqu'au XIX#super("e") siècle où Zola publie #ul[La Terre], le roman sur les campagnes, où on voit des campagnes attroces, cupides, perverses, etc... Et quelque part Haushofer fait ça à sa manière en proposant une nouvelle vision de cette campagne par ce décor apocalyptique ; où cette campagne loins d'être un refuge ou un retour aux origines, un lieu paisible, est au contraire un lieu d'épreuve, de survie : un lieu ontologique

Le roman se présente comme des #ul[Géorgiques], qui est l'inverse des bucoliques. Les bucoliques sont tous les écrits où on représente les campagnes comme agréable, simple, etc... Les Géorgiques sont des poèmes sur les traveaux des champs. Ces noms viennent de Virgile et géorgiques de "laboureur"

Dans le roman, l'expérience de la nature n'est ni choisie ni désirée, mais qui s'impoose pour survivre, et l'oblige à désapprendre tout ce qui la rattachais à la société : les reflexes, les valeurs, etc... Elle déconstruit le mythe Rousseauïste de la nature : chez Rousseau, il y a l'idée que l'homme est naturellement bon et que la société l'as corrompu, il idéalise un état de nature perdu dans lequel l'homme vivrait de manière simple, libre, pacifique, en accord avec des besoins essentiels. Cet état de nature est perdu mais c'est une manière de critiquer la société. Chez Haushofer, on n'est plus dans ce modèle là, la nature n'est pas bienveillante comme chez Rousseau ni totalement hostile, c'est plutôt que la nature est indifférente à l'être humain et soumet ainsi l'humain à ses cycles et à la nécessité de travailler pour ne pas mourir. *Ainsi, chez Haushofer, l'expérience de la nature est une expérience de limite, limite pour savoir jusqu'où on peut aller mais également de ce que la société nous a inculqué, l'individu se défaît progressivement de son identité sociale pour se redéfinir complètement*

Deux problématiques :\
_Comment l'expérience de la nature opère-t-elle une déconstruction de l'humain civilisé/de l'individu social, en imposant une éthique minimale du vivant où la frontière entre l'humain et l'animal tend à s'effacer ?_

_Comment la nature permet-elle de redéfinir l'homme ?_


= La nature comme altérité absolue dans #ul[Le Mur invisible]

== La rupture avec le monde civilisationnel

=== La catastrophe et la dystopie

Dans #ul[Le Mur invisible], l'entrée dans la nature se fait sur le mode de la rupture brutale avec le monde bourgeois, monde de la civilisation mais bourgeois également car elle cherche une forme de confort. Ce monde bourgeois apparaît au tout début du roman puisque la narratrice est d'abord invitée chez sa cousine Louise, son mari Hugo Rüttlinger, dans leur chalet. Il apparaît d'emblée comme un espace de confort, de sociabilité, de loisir, qui est le symbole même d'une domination, d'une maîtrise de l'homme sur la montagne. Le tout début du livre permet donc de travailler le contraste entre le monde de l'avant, du confort et celui de l'après, de la survie. Une mise en contexte de 5 pages permet de mettre en contexte celà, et c'est d'autant plus surprenant par la mise en emphase sur Hugo, montré comme un personnage typiquement médiocre. Le récit s'ouvre par lui car c'est ses manies qui lui ont permis de survivre _p.10_.\ Tout d'abord, Hugo est riche, on apprend qu'il a fait fortune dans une usine de chaudières ; il a de quoi s'offrir un chalet, une chasse (un terrain où on peut chasser), ainsi qu'une Mercedes, il est également présenté comme un grand collectionneur d'objet, il achète beaucoup de choses car il aime vivre dans le confort et sans manquer de rien. Il y a ici l'idée d'une abondance, d'oppulence, voir de superflus, son chalet est présenté comme une véritable villa des bois. Il est très douillet et peureux comme une petit enfant ; il a la crainte de manquer de tout et possède plusieurs exemplaires de chaque objet d'usage courant. Hugo n'est pas proche de la nature, il représente la contradiction du monde moderne où on s'achète une chasse non pas pour chasser mais pour le standing, pour les relations d'affaire.Hugo c'est également quelqu'un qui a perdu le sens de l'effort et la rudesse de vivre ; il est très grand mais très gros ; il s'endort partout et est toujours fatigué. Au début du roman la narratrice prend soin d'Hugo comme elle prendra soin des animaux, il est infantilisé, et il a tendance à l'hypocondrie

#table(
  columns: (auto, auto),
  inset : 10pt,
  table.header(
    [Hugo], [La narratrice]),
    [Riche :\ - Mercedes\ - Chalet (villa)\ - Chasse\ - Beaucoup d'objets$(star)$\ Douillet et peureux\ Pas proche de la nature\ Hypocondriaque],
    [Démunie et désintéressée :\ - Voiture abandonnée\ - Déconstruit le chalet + cabane d'alpage\ - Très peu d'objets qu'elle compte sans arrêt $(star)$\ \ 
    Tenace et courageuse\ Proche de la nature\ Résignée]
)

$(star)$ Hugo compte pour dédoubler mais la narratrice compte pour épargner et économiser.

D'autres personnages ramènent aussi au confort : Louise a un côté un peu sauvage, un peu "virago" (= garçon manqué, jeu de mot entre _vir_ = mâle et _virgo_ = vierge), mais qui peut s'opposer à la narratrice puisque pour elle la chasse est un plaisir et elle a également un plaisir à séduire les hommes, elle fleurte avec tous les hommes qu'elle croise et elle est un peu bébête. Cette Louise incarne un monde du plaisir lié à _Eros_ et _Thanatos_, elle tire un plaisir de l'érotisme mais également de la mort par son plaisir à chasser, et elle s'oppose donc à la narratrice pour qui le plaisir n'existe plus, la sexualité a entière disparu du monde clos dans lequel vit la narratrice et le plaisir de tuer n'existe pas : elle n'aime pas tuer, ne le fait pas par plaisir et ça lui fend le coeur d'être contrainte à le faire. Un élément du roman ramène un peu à la même chose : quand elle regarde _page 20_ et appreçoit la petite maison qui représente par contraste le confort qu'elle n'aura plus, tandis que la maison est figée et reste telle quelle, une petite maison agréable avec un potager et habité par un viel homme très propre. *Ainsi, le monde de la civilisation est un mon de l'oppulence avec Hugo, du plaisir avec Louise et de la propreté avec cette maison*.

=== La fin de l'abondance

Et dans ce contexte va survenir la catastrophe invisible qui va anéantir ses repères, provoquer un dénument matériel : la narratrice va être arrachée brutalement au monde de la civilisation, au monde des "petites bagatelles précieuses" (_p.10_). Et ce qui est étonnant est qu'il n'y a pas de rupture apparante car tout s'oppère dans une relative continuité. _Page 16_, c'est dans son sommeil que la catastrophe apparaît et symboliquement elle ferme une porte la veille et la rouvre sur un monde qui s'est métamorphosé, comme si elle avait cloturé l'ancien monde et ouvert la nouvelle porte sur le nouveau monde, avec le paradoxe que ce nouveau monde qu'elle vient d'ouvrir est un monde où elle est enfermée. Le froid est symptomatique du nouveau monde, quand elle se couche l'édredon est déjà froid, et quand elle se réveille on a des indices d'un refroidissement général : la gorge se caractérise par l'humidité froide et le mur _page 18_ est qualifié d'invisible, lisse et froid. Ce changement progressif l'est aussi par rapport aux personnages : pour elle la situation est plausible (au début elle pense qu'Hugo et Louise ont simplement passé la nuit au village), et ce n'est que dans la gorge qu'elle va commencer à s'appercevoir de sa solitude et être bien contente que le chien soit auprès d'elle. Il y a donc une rupture invisible, silencieuse et innexpliquée, à l'image du mur.

Haushofer travaille en deux temps, il faut attendre un peu pour avoir la concrétisaton de la violence de la situation. Cette concrétisation arrive _page 17-18_ avec l'expérience du mur faite par Lynx qui se cogne et qui va être relayée par la narratrice qui se cogne à son tour. L'idée est que dans un deuxième temps c'est le corps qui par ses stigmates va permettre de prouver la réalité : _page 18_, "n'importe quoi de plus aberrant m'aurait paru plus aberrant que cette chose aberrante, pourtant la gueule de Lynx continuait à saigner et la bosse commençait à me faire mal".

=== La disparition des repères

Cette rupture est aussi celle des repères sociaux et culturels de la narratrice, le roman peut être vu comme une deconstruction de l'identité en lien avec le retour à la nature et la solitude : notre identité n'as de sens que si elle est reconnue par autrui et sans autrui notre identité s'effondre. Pour _Hegel_, on n'est véritablement soi que parceque les autres nous reconnaissent comme sujet ; en instaurant une solitude absolu il n'y a plus personne pour juger, pour comparer, etc... et la narratrice va cesser progressivement d'être un personnage social pour devenir un simple organisme vivant. La désocialisation amène à une déconstruction : par exemple par le langage, la narratrice n'as plus d'interlocuteur, il y a une raréfaction de la parole orale et finalement cette parole trouve à s'exprimer seulement dans des monologues et dans l'écriture du journal (_Page 52_). Il y a une rupture également par rapport à la morale : il n'y a plus la morale normée et codifiée de la société, et les crimes n'ont plus de sens, la propriété et voler n'as plus de sens ; abattre un individu n'est plus blamâble, la seule loi qui prévaut est celle de la nécessité. Il y a la disparition du féminin comme construction sociales. Enfin, il n'y a plus de culture, la culture disparaît progressivement, il n'y a plus d'accès aux livres ou aux journaux et il n'y as plus de musique _page 28-29_. Progressivement, tous les repères vont disparaître et elle se cramponne aux rares vestiges (remonter les montres _page 51_), elle n'as jamais perdu certaines de ses habitudes, faire sa toilette, se brosser les dents, ... Elle a peur qu'un homme aussi proche soit-il des animaux ne peut jamais devenir un animal, qu'il lui manque une forme de noblesse et que s'il cesse d'être un homme il ne deviendra pas un animal, il sombrera dans l'abîme

Une dernière hypothèse est que le mur est symbolique d'une rupture et d'une violence, mais dans le cas d'un écrivain Autrichien, comment ne pas penser au mur de Berlin, dont la construction commence en 1961, deux ans avant le roman. De plus, la partie tenue par les soviétique était moins oppulant que celui tenu par les occidentaux, le mur est donc aussi dans l'imaginaire germanique ce qui nous prive de l'oppulant et du confort (cf. Goodbye Lenin !)

*Ainsi, en basculant du monde de la civilisation au monde de la nature, ce basculement impose une loi nouvelle, celle de la nécessité, un monde où il s'agit par nécessité de cultiver et de survivre. La nature cesse d'être un décor rassurant, un lieu de vilégiature pour devenir une force étrangère qui va imposer ses lois à la narratrice. Les lois humaines ont disparu et sont remplacés par une discipline féroce.*

== Un nouveau monde à explorer

=== L'isolement de la vallée

La vallée dans laquelle est habite est isolé et très restreint, et ce monde va la tenir prisonnière. Cette vallée l'as protégé de la catastrophe mais la garde prisonnière. _Page 54_ la vallée est comparée à un cuveau, qui rappelle le modèle de l'insularité coupé du reste du monde avec ses propres lois. Cet isolement est aussi le modèle de l'arche biblique, la vallée où elle habite est une arche de noé revisitée. Enfin le dernier modèle est celui du jardin d'Eden qui permet de revenir aux origines, à cela près que la vallée ici n'as rien d'idyllique.
Cet isolement est d'abord vu comme temporaire. _Page 48_ elle pense que les vainqueurs vont bientôt arriver mais elle complète en disant qu'ils ont l'air de se faire attendre. Cet isolement va la conduire à explorer cette vallée, la délimiter.

=== Une réécriture des romans d'exploration

La narratrice sort très peu de chez elle, c'est une urbaine qui n'as pas l'habitude d'aller dans la nature et elle ne connaît donc rien du monde qui va s'offrir à lui. C'est ainsi une réécriture de tous les récits d'exploration du monde mais c'est aussi une invitation écologique à repenser le monde qui nous entoure. Le récit post-apocalyptique est une manière originale de renouveler le récit d'exploration, et on voit la narratrice explorer progressivement la vallée dnas laquelle elle est enfermée, elle revient à la base de l'humanité où la vallée d'une montagne était un monde et où pour explorer on faisait quelques kilomètres à pied.  Cette invitation se dédouble d'un sentiment écologique avec cette idée très nette qu'on ne connaît pas le monde qui nous entoure. L'expérience de la nature est aussi le retour à une proximité qui nous échappe. Chez Haushofer, contrairement à Verne, l'expérience de la nature est un anti-voyage, elle marche beaucoup mais sur peu de distance. Le roman est un roman de la marche, des aller-retours mais d'une marche toujours laborieuse. Elle a un attirail très modeste, à la Robinson Crusoe, un sac, un couteau,... C'est une exploration dans la quantité : elle cherche à aller le plus loin possible, mais elle ira pas au bout de la vallée ; mais ill y a aussi une exploration dans la qualité : _Page 53_, sa recherche d'une bonne terre pour planter des pomme de terre.

On peut aussi imaginer que cette exploration se justifie par l'envie de savoir, et le sentiment de responsabilité et de devoir de protection envers Bella et Lynx.

=== Un microcosme a priori hostile

De plus, l'exploration s'accompagne toujours d'une hostilité de la nature, cette exploration se fait dans un microcosme a priori hostile où règnent le froid, la faim, la maladie et la menace de violence. La narratrice vit avec des épées de Damoclès au-dessus de sa tête. Pour le froid elle a du bois, pour la faim elle se rationne. Son corps subit les stigmates de cette hostilité de la nature.\
À côté de ça, il y a également un sentiment de solitude, et elle se sent d'autant plus seule que son journal commence après la mort de Lynx et de Taureau, vu _page 53_. À cette solitude, elle ajoute également la peur, la fatigue et l'incertitude. _Page 29_, elle dit à propos de la peur, qu'elle et Lynx se rassurent mutuellement. C'est un monde de peur que celui où elle vit. _Page 31_, la première nuit, elle pense à la possibilité que le mur s'avance pendant la nuit et l'engouffre, mais elle est trop fatiguée pour avoir peur. _Page 33_, il y a un retour à la réalité, s'il y a une exploration elle est réaliste (contrairement à l'exploration romanesque de Jules Verne)

== Une nature neutre

La nature n'est pas tout à fait hostile mais plutôt indifférente

=== Une nature cyclique

Le roman est structuré par la progression de la nature, hors ces progrès reposent sur l'alternance des saisons, des journées, des récoltes et de la reproduction. Les saisons c'est l'alternance entre les belles saisons et celles hivernale, symbolisée par la montée à l'alpage. Les journées c'est l'alternance des jours beaux et pluvieux, et des jours et nuit, car à la campagne on ne fait rien la nuit. On assiste à des changements brutaux de météo, par exemple au 10 mai on assiste à d'importantes précipitations de neige ; _Page 54_, les rayons de soleil alternent avec les averses. Ce sont ces changements météorologiques qui dictent son quotidien, dictent l'écriture de son journal et donnent sa forme au journal. Au temps linéaire du monde moderne se substitue un temps cyclique beaucoup plus ancien. Tout le roman repose sur le rythme des travaux agricole, le romon est travaillé en trois temps : les 30 première pages sont sur la catastrophe, les 2 dernières sont sur la mort de Lynx et Taureau et l'irruption d'un autre homme et les 300 autres pages sont le rythme des travaux agricoles. Symboliquement, après l'apparition du mur, soulager Bella en la trayant, _page 36_, est la première chose qu'elle va faire, comme pour symboliser que cela va devenir son quotidien dans la vie après le mur. C'est d'ailleurs la vache qui vient, comme si la réalité s'imposait à la narratrice, il y a une forme de fatalité, elle est maintenant propriétaire d'une vache. Elle travaille d'abord ses acquis puis va apprendre grâce à l'almanach paysan découvert _page 56_.

Le roman du chaos de l'apparition du mur va retomber sur ses pieds et de manière naturelle la narratrice va lentement s'adapter au rythme des saisons, de la vie, pour survivre. On a une écriture de plus en plus lissée, épurée, au fur et à mesure de l'adaptation du personnage, qui va droit à l'essentiel. On a un roman didactique sur les travaux de l'agriculture. On a un quotidien qui va trancher avec la modernité. Le personnage parvient par exemple à apprendre à ralentir, aller au rythme des saisons, prendre son temps, _page 54_ elle passe 4 jours à remuer le sol, puis plante, puis elle ne doit plus qu'attendre et espérer.

=== L'indiférence du vivant

La nature est une entitée radicale car elle est totalement indifférente à l'humain, il n'y as pas de morale à ça. Par exemple _page 31_, dès le lendemain de la première nuit, la narratrice se réveille et en ouvrant les volet, elle voit qu'une journée radieuse commençait ; même qu'elle est perdue la nature n'en as que faire. Il y a un contraste très nette entre le spectacle heureux de la nature et la réalité malheureuse ; cette journée radieuse va être une épreuve à surmonter


= Un focus sur la nature : l'altérité animale

== Seul parmi les bêtes

=== Lynx, Bella et les autres : une communauté domestique

La communauté ici c'est parcequ'ils partagent une vie qu'ils ont en commun, on n'est pas tant dans une société que dans une sphère plus intime, minimaliste ici qui repose sur la nécessité et qui justifie le terme de "communauté". Cette petite communauté peut s'apparenter à une famille. Sa formation est progressive : les animaux n'arrivent pas tous au même moment et pas tous dans les mêmes conditions. Le premier à arriver est Lynx, qui tire son nom _page 45_ du fait qu'à la montagne, tous les chiens s'appellent Lynx. Dans la hierarchie des animaux, il est à la première place, c'est un chien qui l'a accompagné depuis le début et c'est le premier appui que la narratrice a quand elle comprend la catastrophe. Et ce chien c'est un chien heureux, joyeux, qui va se révéler être d'une bonne aide pour elle puisqu'il sait y faire. La mort de Lynx est un traumatisme tout aussi important voire plus important que le mur lui-même, il y a un réel attachement pour l'animal contrairement aux autres oeuvres

Belle est la deuxième à apparaître et c'est l'animal utile avant tout, elle s'impose à la narratrice, vient parcequ'elle a besoin d'aide et très vite il y a un sentiment de protection de la part de la narratrice vis à vis d'elle. Mais on va osciller sans arrêt entre l'utilité de l'animal et une réelle affection pour elle, _page 42_ elle présente son affection pour la vache.

Après ces deux animaux là viennent les autres. Lynx et Bella ne posent aucun problème mais les autres c'est différent. Les autres sont les chats et Taureau.\ Pour les chats, eux aussi s'imposent mais ils s'imposent de façon autonome et indépendante : Bella s'impose car elle a besoin d'aide, mais les chats non. La première arrive _page 56_ un peu comme une fatalité. Le chat veut simplement un abri et de quoi manger, mais elle reste sauvage.\
"La différence entre un chien et un chat : Le chien pense : ils me nourrissent, ils me protègent, ils doivent être des dieux. Le chat pense : ils me nourrissent, ils me protègent, je dois être dieu." -- Ira Lewis

Le dernier animal est le fils de Bella, Taureau, qui est un animal à part, car lui n'est pas venu tout seul mais la narratrice qui l'as fait venir. C'est le jeune, celui qu'il faut préserver et faire grandir mais en même temps c'est celui qui as aussi un côté sauvage, celui qui est capable de violence. 

Il y a donc une forme d'hétérogénéïté dans cette communauté domestique

=== Les animaux sauvages

À côté de cette communauté domestique, il y a aussi l'importance des animaux sauvages. De nombreux animaux sont cités et en outre des animaux habituels de la montagne, il y a des animaux très innatendu qui le sont, comme les salamandres _page 33_, qui est simplement joli et comparés à des fleurs. Ces animaux sauvages ont d'abord ce côté imprévisible, invisible et libres ; ils s'inscrivent dans une nature sauvage, auxquels s'associent la flore et les végétaux sauvages (ex : épinards d'ortie, la laitue sauvage, les bourgeons de pin, le trèfle à lapin, etc...) qui n'ont pas besoin de la culture de l'homme. (((et esthétique qu'on a vu avec Jules Verne ; même dans l'adversité, on continue d'admirer les beautés de la nature)))

=== L'animal miroir de l'humanité ?

Les animaux sont très personnifiés dans le roman, et en plus d'être un miroir, les animaux ne sont-ils pas une solution quand on est seule dans la nature : elle mange avec lynx, parle à ses animaux, etc... pour ne pas être seule. _Page 77_, elle dit que ce serait peut-être mieux que l'humanité ; qu'elle préfèrerait être seule avec les animaux qu'avec les êtres humains. La seule chose qui lui manque de l'humanité c'est le rire ; la femme agée intéressante et spirituelle dont elle parle pourrait d'ailleurs être la elle d'avant la catastrophe, elle chercherais un miroir d'elle même.\
_Page 83_, chaque animal a sa manière propre de répondre à la peine de la narratrice et d'essayer de la soulager

== Les animaux entre eux

=== Une absence de morale

On peut revenir sur la scène où la chatte met bas ses deux premier chaton _page 84_, et l'un des deux chatons meurt à la naissance. La chatte a l'air indifférente, il n'y a ni culpabilité, ni tristesse ; c'est simplement arrivé.\
La narratrice elle-même va parfois adopter cette absence de morale sur le modèle des animaux, et si elle a du mal à tuer les chevreuils, l'idée d'empoisonner les souris au pétrole ne la dérange pas, et si elle ne le fait pas c'est pas par pitié pour les souris mais pour économiser et car elle craint que ses patates aient le goût de pétrole.

=== Rapport de hiérarchie

Dans la nature, il y a une hiérarchie naturelle, les prédateurs et les proies. Il y a une égalité de sort mais pas d'égalité de chemin.

=== Une vie de violence

Une nature où la violence est omniprésente et il n'y a pas d'autre choix que de composer avec cette violente. L'humain doit composer avec ses nécessités biologiques, la première étant celle de la faim : on tue pour manger et la narratrice doit tuer si elle veut survivre. _Page 62-63_, elle ne veut pas s'étendre sur le sujet, c'est quelque chose qui est arrivé et il n'y a pas à en parler ; elle participe ainsi à cette violence, elle n'y prend pas de plaisir mais se fait une raison et s'y prend sobrement. _Page 50_

_Page 67_, elle n'as jamais eu peur en forêt car elle n'as jamais eu le risque de rencontrer un homme. la vie naturelle est une vie de violence mais de violence raisonnable, modérée, nécessaire ; tandis que l'homme lui est violent pas plaisir. Le seul danger qu'elle va vraiment encourir est l'homme qui fait irruption à la fin du roman et qu'elle tue.

_Page 76_, elle imagine ce qui se serait passé si elle avait rencontré un homme dans la forêt ; même le type le plus sympa pourraît se transformer en bourreau, une fois privé de toute morale. Ça explique d'ailleurs son geste à la fin du roman, où elle tire sur l'inconnu, par peur de la violence humaine envers ses animaux.

_Page 86_, Perle n'as aucune chance dans la forêt d'après la narratrice et ça fait parti de la logique de la nature.

_Page 82_, quand elle commence à présentir que Bella attend un veau, elle repense à des histoire qu'elle avait entendu à la campagne ; on a un condensé des angoisses de la narratrice sur ses animaux, qu'elle veut protéger. C'est un monde dur et impitoyable

== Les relations à avoir face à l'animal

=== Une relation de la protection envers ses animaux domestiques

Est-ce que c'est quelque chose de positif, ou est-ce un maintien d'anciens comportemens où l'homme se croît maître de l'animal ?

Il y a une certaine docilité des animaux et protection contre les dangers ; elle réarrange leur foyer (l'étable de bella, le panier de Lynx) ; s'occupe d'eux, etc... C'est autant une chance qu'un fardeau mais elle ressent un sentiment de responsabilité envers ses animaux. _Page 47_, elle ne peut pas se suicider car il y a Bella et Lynx. _Page XX_ elle pense à creuser une porte pour aménager une étable dans la maison. _Page 64_, si elle surivt c'est parceque'elle avait un devoir de protection envers ses animaux. Il y a un véritable sentiment maternel.

Du côté de la maternité, en haut de la _page 83_, l'amour maternel est un fardeau qui ne vous quitte pas. Une mère, dès l'instant qu'elle l'est, elle porte ce fardeau de savoir si son enfant va bien, réussit, est heureux, ... Et pour elle la maternité lui pèse et elle aurait préféré mourir que porter ce fardeau.\
Son sentiment de maternité va en s'accroissant au fur et à mesure que ses animaux arrivent _page 86_.

_Page 46_, il y a une mention de la maternité propre de ma narratrice ; elle n'arrive pas à réaliser que ses filles sont mortes dans la catastrophe. On a l'impression qu'elle retrouve aves ses animaux la maternité qu'elle a perdu ; maternité qu'elle a perdu dès l'âge de 5 ans, quand les enfants commençent à devenir des étrangers.

_Page 90_, elle s'interroge sur l'éducation qu'auraient eu ses filles en forêt ; elle pense que ses filles ne se seraient pas plu, et on a l'impression d'une maternité humaine qui s'est éloigné et qui ne correspond plus à ce qu'elle est et où elle est maintenant

Cette maternité est partagé par les animaux, puisque Bella et la vielle chatte ont des sentiments maternelles pour leur progéniture, et même la chatte est qualifiée _page XX_ de mère passionnée.

=== L'égalité de sort

La nature est un monde hiérarchisé, mais il y a cette idée que tout le monde est quand même vulnérable, que ce soit à l'intérieur du mur comme à l'extérieur. La mort est donc la condition d'être vivant met tout le monde sur le pied d'égalité. À l'extérieur du mur, _page 65_, il y a une comparaison entre le viel homme mort qu'elle observe et deux petits oiseaux mort également. On a une égalité de sort, qu'on soit homme ou oiseau on est peu de chose face à la nature et face à la mort. À l'intérieur du mur, on partage la même dépendance les uns par rapport aux autres : les animaux ont besoin de la narratrice autant que la narratrice à besoin d'eux. 

_Page 87_, sur la liberté dans la nature, elle dit que voir l'homme comme un animal n'est pas un déshoneur, on vient au monde pour mourir et c'est normal. Il y a une égalité de sort. Il n'y a pas de morale à tirer de tout ça, c'est juste la vie, la vie c'est naissance et mort et ça ne signifie rien de plus

=== Faire preuve d'humilité face à l'animal

Humilité par rapport aux dangers que représentent l'animal, par rapport au fossé qu'il y aura toujours entre l'homme et l'animal. On y retrouve ici ce que disais Canguilhem, le fait que l'homme veut toujours connaître l'animal mais que dès le départ il y a un fossé entre les animaux. Dans le mythe de Prométhée chez Platon, l'homme né tout nu et a besoin de la technique pour survivre, tandis que l'animal lui n'as besoin de rien car il est doté de tout ce qui lui est nécessaire naturellement

= Vers une fusion entre l'homme et la nature

== La conscience de la mort

La mort met tous les êtres vivants sur un pied d'égalité, et comem cette mort est omniprésente, elle va poser la question de la survie, et montrer que l'homme dans sa survie n'est pas supérieur aux animaux

=== Une douleur ambigüe

Pour l'homme, il y a un traitement particulier du corps par la narratrice, qui est accablé de labeur et de tâches, et qui connaît la problématique de la fatigue, du vieillisement, de la maladie, etc...  De façon récurrente, on a les symptômes qui reviennnent et ça peut être pour le corps en général comme des parties particulières. Le leitmotiv de son coucher accablé de fatigue, car elle est brisé, n'en peut plus, etc... On a un autre leitmotiv, celui des blessures telles les échardes, les cloques, etc...

On a ensuite des maux particuliers, comme _page 181_ où elle a des rhumatismes, _page 175-176_, elle a un problème de vision et _page 78_, elle a une douleur attroce à la dent. "Le jour suivant [...]". Il y a une douleur omniprésente, une douleur avec laquelle il faut accepter de vivre, même une douleur qui enlaïdi (le visage de l'homme qu'elle tue était hideux) $->$ La douleur des corps s'accompagne aussi d'une déformation

Ainsi, cet épuissement progressif, cette déterioration progressive des corps n'est pas forcément négative, c'est plutôt le signe d'une vie en accord avec la nature : la nature est brute, la nature prend des coups, la nature s'abîme pour mieux survivre et il est tout à fait normal que le corps humain s'abime à son contact. _Page 159_ elle dit que ses os et muscles sont douloureux, mais que ses maux de tête ont complètement disparu et qu'elle est capable de passer un hiver sans tomber malade : elle n'as plus les maux ou la fragilité de la ville, la vie de la nature lui amène d'autres douleurs mais parfois plus saines

=== L'omniprésence de la mort

Cette douleur des corps est en lien avec l'omniprésence de la mort : la mort est une composante de la nature qui met à égalité les hommes et les bêtes. Par certains aspects on a une euphémisation de la mort, il ne faut pas avoir peur de celle-ci. La façon dont les individus sont figés dans la mort donne l'impression qu'ils sont calmes, qu'ils ne sont pas vraiment mort : _page 35_ "devant la maisonnette [...] tendre", "ce cher Hugo [...] peut de la mort". La mort est présentée comme une sorte d'arrêt dans les derniers gestes qu'on avait ; mais cette euphémisation vaut à l'extérieur du mur. À l'intérieur du mur, la mort est brute, n'est pas aspetisée, au contraire la mort est montrée, regardé de près comme la narratrice de voie. Par exemple la mort de Perle _page 143_, on nous donne sa mort à voir sans filtre. Vivre dans la nature, c'est avoir une confiance aigüe de la fragilité des choses, de la fragilité de la mort.

Cela ne signifie pas que la narratrice n'as pas de scrupules ou de difficultés face à cette situation, _page 72_ "ce n'est que [...] tellement irréelle". Sa plongée dans la nature c'est l'apprentissage de sa confition de mortelle. Cela ne signifie pas que la mort est une fin absolue, elle est triste mais n'est pas l'arrêt de toute chose _page 136_ "souvent quand [...] je suis d'invisibles traces, ni toi ni moi ne mettrons jamais notre gibier à l'arrêt". À propose de Perle également, on a le détail du sang qui imbibe le parquet _page 143_, elle dit que la tâche a pali mais ne s'est jamais effacé, comme si le chat était toujours là par le sang qu'il a versé.

=== Le sens à donner à la survie

Survivre oui, mais pourquoi survivre ? La survie à a priori quelque chose d'absurde parcequ'on s'entête à vouloir y voir du sens. _Page 65_, elle avoue qu'elle est si fatigué qu'elle ne sait même plus pourquoi elle s'entête à survivre, elle se contente de vivre au jour le jour. C'est en cela que les travaux du quotidien aident à survivre, car ils libèrent de l'idée de chercher du sens. Elle n'en finit pas parcequ'elle a ses animaux, parcequ'elle a du travail à faire, et parcequ'elle refuse de chercher du sens à tout ça. _Page 244_, quand elle regarde les étoiles, "je ne cherchais plus un sens capable de me rendre la vie plus supportable. Une telle exigence me parraissait démeusurée", _page 276-277_ elle a une longue reflexion sur le sens et sur le temps, elle finit par dire que les choses n'ont pas forcément de sens, et qu'il y a un orgueil humain à vouloir voir du sens partout, alors que la nature les choses arrivent et se font sans plus de prétexte ou de raison ; l'homme s'agite, s'angoisse, en cherchant du sens à tout mais il s'agit plutôt de vivre au jour le jour, dans l'absurdité et l'absence de sens qu'est la nature. Pour la mort, elle va arriver tôt ou tard, et il faut la prendre pour ce qu'elle est : rien. _Page 121_, elle repense à sa jeunesse où elle prenaît la mort pour une offense personnelle.

== L'effacement du "moi"

=== La perte de féminité

Tout le livre peut se lire comme une fusion de la narratrice dans ce grand tout qu'est la nature, cet effacement progressif du moi passe d'abord par une perte de féminité. La vie dans la nature présuppose qu'il n'y a plus de coquetterie, plus de rôle social associé à la féminité. _Page 79_, elle évoque le temps où par coquetterie, elle se faisait couronner les dents qui méritaient d'être arraché : on a un contraste entre l'ancien temps où elle faisait preuve de coquetterie et le temps présent om elle en est réduit à se taillader les gencives pour soulager la douleur. La féminité s'efface et on le voit _page 95-96_, où on a un portrait physique fait d'elle. Ici, on a quelque chose d'assez extraordinaire, le fait que la féminité à disparu, qu'elle a pris un rôle assexué ; ce qui fait son identité de femme s'atténue dans une grande fusion avec la nature, elle se compare d'ailleurs à une souche d'arbre. Toujours _page 96_, la féminité ne reviendra pas, elle était concommitante de la civilisation, civilisation qui a diparu, et la féminité n'as donc plus de sens ; de plus, cette féminité était une chose superficielle, qui ne sera pas regrettée ; enfin, le féminité a empếcher la femme de se préparer convenablement à la survie à laquelle elle fait face maintenantt. _Page 98_, elle revient sur la première partie de sa vie, sur le fait qu'elle n'as rien appris dans la vie car elle était cantonnée à son rôle social. _Page 115_, elle parle de l'inutilité de s'épiller les sourcils, mais que la pince à épiler sert à s'enlever les échardes. _Page 176_, elle s'en fiche de ses rides ou de mal vieillir car plus personne n'est la pour la critiquer dessus.

=== Un effacement de l'identité

Cet effacement de la féminité s'accompagne d'une transformation plus globale du "je", le roman peut se lire comme l'histoire d'une transformation progressive de la narratrice, qui va peu à peur abandonner son ancien "moi", pour devenir un "moi" nouveau qui lui même va se fondre dans le grand tout qu'est la nature. _Page 215_, _page 244-245_ elle a ue reflexion en contemplant les étoiles et reviens sur l'humanité. Il ne faut pas ruminer le passe (_page 115-116_), il faut aboutir à un "je" qui serait moins conflictuel et plus à l'image de la nature. La seule chose qui reste, c'est le fait d'écrire, elel continue à écrire sur sa vie, sur ce qui l'entoure, pour maintenir une forme humaine et résister à l'effacement totale. L'écriture apparaît comme un dernier geste culturel assez dérisoire, elle même ne sait pas pourquoi elle continue à écrire. À  la ifn du roman, elle n'as plus de papier, et c'est comme si la nature avait réussi à la rattraper, la faisait s'effacer pour de bon. Cette idée de la communion à la nature ammène à l'idée d'un pladoyer écologiste

== Le pladoyer écologiste du Mur invisible

=== Une contemplation du monde et de la nature

Cette observation est incarnée par le symbole des jumelles, _page 207_ elle observe pendant des heures aux jumelles la région qui l'entoure. La recherche d'autres personnes qu'elle fait laisse souvent la place à une contemplation, qui laisse elle même parfois la place à une communion avec ce qui l'entoure : elle contemple le ciel, la forêt, les animaux, etc... et cette contemplation se fait communion au sens où elle est totale, avec le temps elle apprend à repérer les corneilles, à différencier les cerfs, elle devient sensible aux odeurs, aux bruits, etc... On a une plongée contemplative dans la nature. _Page 90_, elle dit même préférer la nature au paradis ; le paradis pour elle n'as jamais existé car tout ce qui compte c'est la nature, la nature est tout et elle suffit. _Page 175_, elle remarque qu'il n'y a aucun avion dans le ciel, et en déduit que tous les hommes ont disparus, et elle se dit qu'elle n'est plus désespérée car elle a appris à vivre dans la nature et que c'est un monde harmonieux

=== Une critique de la modernité industrielle de l'avant catastrophe

Il ne s'agit pas d'un discours militant mais le roman suggère une fragilité de la civilisation, une artificialité du confort et une dépendance technologique. La catastrophe du mur révèle la précarité du monde, la nouvelle vie dans la nature est beaucoup plus fiable et permet une plus grande liberté des individus. _Page 75_ elle revient sur le temps, symbole de notre esclavage moderne. S'affranchir du temps revient à se libérer, et cet affranchissement se fait en vivant pleinement dans la nature. Cette libération est aussi matérielle, _page 194_, elle fait la liste des objets à apporter et elle en élimine les uns après les autres. Cette également une libération mentale, l'idée est que par le travail on s'oublie, qu'on a des tâches simples, régulières mais qu'on n'as pas de surcharge mental. On a l'idée que le monde moderne est un monde de l'emprisonnement, où l'on s'asservit soi-même. _Page 278_, les hommes sont respondables de leur propre emprisonnement, de leur propre mal-être dans la société industrielle qui est la nôtre. On est à l'opposition de Canguilhem, la raison ne permet pas à l'homme de s'adapter et mieux vivre mais au contraire le fait vivre dans une auto-servitude et le fait vivre beaucoup moins bien

=== Repenser la place de l'homme dans la nature

S'il y a un enseignement à retenir, c'est bien que l'homme n'est pas le centre de la nature. Ici, l'idée est que l'homme ne possède pas la nature, qu'il y est même néfaste. _Page 188-189_, elle parle des hommes fous qui tuent et détruisent ; l'homme n'est que tuerie, que massacre, et elle veillera à l'éliminer si elle continue. L'homme n'as pas sa place spontanément dans la nature, et c'est pour cela qui doit repenser sa présence._Page 73_, "Cette créature [...] occupation de chasser", il doit se repenser en tant qu'égal absolu des autres vivants. L'homme est synonyme de tuerie car il se croit supérieur, _page 48_, il ne se soucie que de lui. S'il doit vivre dans la nature, il doit développer une sympathie pour les animaux, qui émanerait de la prise de conscience qu'il est leur égal, qu'il ne vaut pas mieux qu'eux, et donc qu'il doit supporter le même sort qu'eux. _Page 319_, elle précipite le cadavre loin d'elle, elle veut pas le voir et fait comme s'il n'avait pas sa place dans la nature. À l'inverse il laisse Taureau pourir dans l'herbe, et il reviendra dans la nature en s'enterrant progressivement. Elle enterre Lynx qui repartira églament dans la nature. L'homme dans sa violence lui ne mérite pas de revenir dans la nature, s'il trouble la nature comme cet inconnu la fait, il mérite d'être rejeté. À l'inverse, s'il est capable de se fondre dans la nature, de vivre dans la nature comme n'importe quel animal, il y est le bienvenu. _Page 321_, on a un message assez optimiste du roman qui se conclut sur une adapatation perpétuelle de l'homme, "À présent [...] j'ai autre chose à faire", la vie continue sans arrêt et l'homme doit s'adapter pour prendre sa place dans la nature et se fondre au moment de la mort définitivement dans celle ci

= Conclusion

Le mur invisible n'est pas un simple récit de survie, une simple dystopie. Derrière la dystopie c'est une méditation sur l'identité humaine, une réflexion sur l'appartenance de l'homme au vivant et c'est une refléxion qui s'accompagne d'une mise à l'épreuve : le roman expérimente, propose une situation extrême, pour mieux comprendre la place de l'homme dans la nature. La nature elle n'apparaît ni comme un refuge parfait, ni comme un ennemi total, elle est plutôt un autre monde, ou un monde que l'homme a oublié et doit redécouvrir, doit apprendre à cotoyer. On apprend à cotoyer ce nouveau monde en se fondant en son sein, même si on peut douter du caractère parfait de cette fusion. Finalement, on n'est pas dans une dystopie, non plus dans une utopie ; on est dans une expérience des limites de l'homme, une expérience du décentrement anthropologique de l'homme, comment décentrer son regard, son expérience de la vie, pour l'accorder beaucoup plus à la nature qu'on redécouvre.