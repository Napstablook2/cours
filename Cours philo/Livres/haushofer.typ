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
#set heading(numbering: "I.A.a")

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

== La rupture avec le monde social

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

Et dans ce contexte va survenir la catastrophe invisible qui va anéantir ses repères, provoquer un dénument matériel : la narratrice va être arrachée brutalement au monde de la civilisation, au monde des "petites bagatelles précieuses" (_p.10_). Et ce qui est étonnant est qu'il n'y a pas de rupture apparante car tout s'oppère dans une relative continuité. _Page 16_, c'est dans son sommeil que la catastrophe apparaît et symboliquement elle ferme une porte la veille et la rouvre sur un monde qui s'est métamorphosé, comme si elle avait cloturé l'ancien monde et ouvert la nouvelle porte sur le nouveau monde, avec le paradoxe que ce nouveau monde qu'elle vient d'ouvrir est un monde où elle est enfermée. Le froid est symptomatique du nouveau monde, quand elle se couche l'édredon est déjà froid, et quand elle se réveille on a des indices d'un refroidissement général : la gorge se caractérise par l'humidité froide et le mur _page 18_ est qualifié d'invisible, lisse et froid. Ce changement progressif l'est aussi par rapport aux personnages : pour elle la situation est plausible (au début elle pense qu'Hugo et Louise ont simplement passé la nuit au village), et ce n'est que dans la gorge qu'elle va commencer à s'appercevoir de sa solitude et être bien contente que le chien soit auprès d'elle. Il y a donc une rupture invisible, silencieuse et innexpliquée, à l'image du mur.

Haushofer travaille en deux temps, il faut attendre un peu pour avoir la concrétisaton de la violence de la situation. Cette concrétisation arrive _page 17-18_ avec l'expérience du mur faite par Lynx qui se cogne et qui va être relayée par la narratrice qui se cogne à son tour. L'idée est que dans un deuxième temps c'est le corps qui par ses stigmates va permettre de prouver la réalité : _page 18_, "n'importe quoi de plus aberrant m'aurait paru plus aberrant que cette chose aberrante, pourtant la gueule de Lynx continuait à saigner et la bosse commençait à me faire mal".

Une dernière hypothèse est que le mur est symbolique d'une rupture et d'une violence, mais dans le cas d'un écrivain Autrichien, comment ne pas penser au mur de Berlin, dont la construction commence en 1961, deux ans avant le roman. De plus, la partie tenue par les soviétique était moins oppulant que celui tenu par les occidentaux, le mur est donc aussi dans l'imaginaire germanique ce qui nous prive de l'oppulant et du confort (cf. Goodbye Lenin !)

*Ainsi, en basculant du monde de la civilisation au monde de la nature, ce basculement impose une loi nouvelle, celle de la nécessité, un monde où il s'agit par nécessité de cultiver et de survivre. La nature cesse d'être un décor rassurant, un lieu de vilégiature pour devenir une force étrangère qui va imposer ses lois à la narratrice. Les lois humaines ont disparu et sont remplacés par une discipline féroce.*

== Un nouveau monde à explorer

La narratrice sort très peu de chez elle, c'est une urbaine qui n'as pas l'habitude d'aller dans la nature et elle ne connaît donc rien du monde qui va s'offrir à lui. C'est ainsi une réécriture de tous les récits d'exploration du monde mais c'est aussi une invitation écologique à repenser le monde qui nous entoure. Le récit post-apocalyptique est une manière originale de renouveler le récit d'exploration, et on voit la narratrice explorer progressivement la vallée dnas laquelle elle est enfermée, elle revient à la base de l'humanité où la vallée d'une montagne était un monde et où pour explorer on faisait quelques kilomètres à pied.  Cette invitation se dédouble d'un sentiment écologique avec cette idée très nette qu'on ne connaît pas le monde qui nous entoure. L'expérience de la nature est aussi le retour à une proximité qui nous échappe. Chez Haushofer, contrairement à Verne, l'expérience de la nature est un anti-voyage, elle marche beaucoup mais sur peu de distance