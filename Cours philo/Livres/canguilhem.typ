#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*Canguilhem ou la pensée du vivant\ Expériences de la nature dans\ #ul[La Connaissance de la vie]*
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
== Introduction : _La pensée et le vivant_

=== Quel sens donner à l'entreprise de connaissance ?

Canguilhem va ici s'interroger sur le sens de connaître.

Canguilhem est un philosophe épistémologue, c'est à dire un philosophe de la connaissance : ce qui l'intéresse n'est pas tant la vie et le vivant mais surtout la façon dont nous, être humains, appréhendons et nous positionnons intellectuellement face à cette nature. Il se demande si on peut appréhender la nature et si oui avec quelle "philosphie".

Canguilhem commence à dire que quand on s'intéresse aux processus de connaissance, on s'intéresse d'avantage à la façon de connnaître qu'au sens même de la connaissance. Savoir pour savoir n'est pas plus censé que tuer pour tuer, quel sens donner à cette connaissance ? On se pose souvent la question de "Comment peut-on savoir ?", mais infiniment moins la question "Pourquoi savoir ?".

Canguilhem est ainsi ici quelqu'un de pragramtique : ce n'est pas le scientifique déconnecté de la nature qui l'étudie pour la beauté d'elle même ; il étudie la médecine pour le comprendre et pour qu'il nous permette de mieux vivre.

Il importe d'autant plus à Canguilhem de trouver dans la vie le sens de celle-ci, ses raisons d'être et d'agir comme elle agit. La connaissance n'est pas une chose qui nous éloigne de la vie mais au contraire qui nous en rapproche, qui au contraire qui aide l'homme à mieux vivre.

#quotation([
	"Elle [la connaissance] est donc une méthode générale pour la résolution directe ou indrecte des tensions entre l'homme et le milieu"\

	"[...] sa [la connaissance] fin qui est de permettre à l'homme un nouvel équilibre avec le monde, une nouvelle forme et une nouvelle organisation de sa vie"\
	*Page 12*
])

Pour nous, le savoir est quelque chose de vital, parcequ'il est le prolongement, spécifiquement humain, d'une activité d'adaptation et de résolution des problèmes. *La connaissance est pour l'homme un des moyens, peut-être les plus efficaces, pour s'adapter à son milieu.* La connaissance est une arme existencielle.

=== Notre jugement du vivant

Canguilhem revient sur l'image qu'on a du vivant. Il nous dit qu'il y a une incompréhension de la part de l'homme sur la nature. L'idée que la nature serait aveugle, mécanique et stupide est une idée anthropocentrique particulièrement vide de sens.

#quotation([
	"Sans doute l'animal ne sait-il pas résoudre tous les problèmes que nous lui posons, mais c'est parce que ce sont les nôtes et non les siens. L'homme ferait-il mieux que l'oiseau son nid, mieux que l'araignée sa toile ?"\
	*Page 13*
])

Ils sont aussi savant que l'homme, mais simplement dans leurs domaines respectifs : ils réagissent aux problèmes de leur milieu, et dans ce milieu qui est le leur, ils le font brillament et l'homme serait parfaitement incapable de reproduire ce que la vie est capable de faire. Il est alors impensable de juger les organismes selon des critères d'hommes mais plutôt selon des critères qui leur sont propre.

La science se veut extérieur à la nature en faisant une analyse de la nature. Cela amène alors à une position ambigue car tantôt on s'émerveille de la nature, tantôt on tente de la dominer en se croyant séparé du reste de celle-ci. Ainsi, _"la connaisssance est fille de la peur humaine"_ : le savoir scientifique est une réaction à l'angoisse, aux menaces que la vie et la nature font peser sur nous. *La connaissance scientifique est donc avant tout une tentative de se mettre en sécurité face au monde.*

Quand Canguilhem parle de domination _"Si la connaissance est fille de la peur, c'est pour la domination et l'organisation de l'expérience humaine, pour la liberté de la vie."_, c'est que la vie est pour lui un combat et une adaptation permanente. Un organisme est vivant tant qu'il parvient à s'adapater à son environnement. Il s'agit dont de dominer les forces du milieu qui menacent notre vie, que ce soit la maladie, la famine, les catastrophes, etc...

Il nous parle ainsi ici de liberté de la vie car c'est la finalité qui donne son sens à cette idée de domination : la domination n'as pas de but en soi, sa finalité est de nous permettre d'atteindre une plusu grande liberté. Pour Canguilhem, la liberté est la capacité d'un organisme à réagir librement face au monde qui lui entour, ne pas être enfermé dans son milieu mais capable de réagir.

=== Pour une approche générale du vivant

À la fin de son introduction, Canguilhem nous met en garde : la science a tort de vouloir diviser la vie en plusieurs composante, elle a tort de vouloir fragmenter le vivant, car diviser c'est faire le vide ; diviser la vie en fragments c'est une méthode réductionniste qui est efficace mais qui devient dangereux, car celui qui analyse oublie que le vivant n'est pas simplement réduit à la somme de ses parties. Un organisme ce n'est pas juste un amas de ce cellules, c'est bien plus que ça. Ainsi, Canguilhem refuse de réduire le vivant à de simples mécanismes physico-chimiques : la science ne doit jamais perdre de vue la totalité du vivant. *Canguilhem a une approche holistique de la vie*, c'est pourquoi que plutôt de parler de division, il met en avant l'idée de vision.

#quotation[
	"Les formes vivantes étant des totalités dont le sens réside dans leur tendance à se réaliser comme telles au cours de leur confrontation avec leur milieu, elles peuvent être saisies dans une vision, jamais dans une division. Car diviser c'est, à la limite, et selon l'étymologiue, faire le vide, et une forme, n'étant que comme un tout, ne saurait être vidée de rien.""


	"[...] seule la représentation de la totalité permet de valoriser les faits établis en distinguant ceux qui ont vraiment le rapport à l'organisme et ceux qui sont, par rapport à lui, insignifiants !"\
	*Page 14*
]

= Méthode : _L'expérimentation en biologie animale_

== Quel sens donner à l'expérimentation biologique ?

Petit rappel lexical : expérimentation $eq.not$ expérience. L'expérimentation désigne la méthode scientifique  qui exige un recours systématique à l'expérience pour vérifier des hypothèses et acquérir des hypothèses. L'expérimentation c'est quand l'expérience se fait systématique et devient une méthode.

Canguilhem commence avant tout par une citation de _*Bergson*_, qui a réfléchi avant Canguilhem à _*Claude Bernard*_, qui est le scientifique philosphie dont l'apport va être analysé par Canguilhem.

_Explication de la note de bas de page 1, à la page 19_\
#ul[La Philosophie de Claude Bernard] est avant tout un discours donné au collège France en 1913 pour le centenaire de sa naissance par Bergson. Il en a alors intégré le texte à son oeuvre #ul[La Pensée et le Mouvant]. *L'objectif de Bergson est donc d'accorder la philosophe de Claude Bernard à sa propre philosophie. Bergson est un philosophe qui considère que la vie a ses mystères et n'est pas réductible qu'au mécanique*, et il va voir dnas l'oeuvre de Claude Bernard une confirmation de sa propre conception de la vie et une critique de tout rapport mécanique en biologie. Il voit en Claude Bernard un grand scientifique mais aussi quelqu'un qui a su s'interroger sur la manière de comprendre le vivant. Il considère que notre vue de Claude Bernard est erroné, on le voit uniquement comme le créateur de la méthode expérimentale, mais c'est beaucoup plus que ça, car c'est lui as donné un rôle central à l'intuition : évidemment on expérimente selon un protocole, mais on oublie trop souvent qu'au début il y a une idée, une intuition, qui guide l'expérience et lui donnne du sens. L'expérience répond à un appel spontané. Et c'est donc un juste milieu car on ne tombe pas dans une vitalisme mystique, on arrive dans une véritable science de la vie. Pour Bergson, la vie n'est pas une simple superposition d'expériences, mais quelque chose de véritablement spontané.

Canguilhem se place alors dans la suite de Bergson, et il va revenir sur la méthode à adopter pour connaître le vivant. Exactement à la suite de Bergson, il déplore les lectures scolaires un peu banales de #ul[L'introduction à l'étude de la médecine expérimentale]

#quotation[
	"[...] à altérer involontairement mais profondément le sens et la valeur de cette ntreprise, pleine de risques et de périls qu'est l'expérimentation en biologie"

	*Page 20*
]

Canguilhem prend alors l'exemple de la contraction musculaire, et nous dit qu'historiquement la théorie de la contraction des muscles a été vu d'un point de vu mécaniste. Le problème de cette approche est qu'elle isole le muscle du reste de l'organisme et le réduit à un symple dispositif physico-chimique, elle explique le comment mais ne dit absolument rien sur le pourquoi, alors que, Claude Bernard c'était aussi répondre au pourquoi. _"Or, c'est un fait épistémologique qu'un fait expérimental ainsi enseigné n'a aucun sens biologique."_

Il cite d'autres auteurs et principalement deux, page 21, il cite _*Galien*_ et _*Swammerdam*_. Galien est un médecin grec du $"III"^"e"$ siècle qui a beaucoup compté dans la médecine, et Swammerdam est un scientifique du $"XVII"^"e"$ siècle célèbre pour ses traveaux sur les insectes et les muscles.

Tout d'abord sur Swammerdam, il cite son expérience pour attaquer le mécanisme. Au $"XVII"^"e"$ siècle, on considérait que la contraction des muscles était causée par un gonflement de ceux-ci par l'introduction de corps étrangers. Swammerdam tente alors l'expérience de placer un muscle de grenouille dans un tube dans de l'eau. Il provoque la contraction du muscle et Swammerdam constate que l'eau n'as pas débordé, ce qui montre bien que le muscle ne se gonfle pas, ou pas significativement Canguilhem fait allusion à cela pour nous rappeler que bien avant Claude Bernard, les grandes découvertes visaient déjà à déconstruire le mécanisme, trop simpliste, et que la biologie était plus complexe que ça.

Il se réfère également à Galien, pour rappeler que la médecine antique voyait elle aussi l'action des muscles comme une fonction intégré, c'est àdire quelque chose qui a du sens par rapport à un organisme entier.

Il s'agit toujours de partir du vivant, de l'observation du vivant, pour remonter aux divers aspects de son fonctionnement et mieux le comprendre. Canguilhem souligne que la biologie a sa particularité, c'est pas de la physique, c'est pas de la chimie, elle a quelque chose en plus car son véritable enjeux est de former des concepts pour capturer la spécificité du vivant. Pour Canguilhem, il faut renverser la méthode téléologique, il faut suivre le vivant, comprendre le vivant, pour découvrir le rôle complexe de tel ou tel organisme. _Page 24_

*Canguilhem réhabilite Claude Bernard, il dit qu'évidemment Claude Bernard est du mécanisme, mais que ce n'est pas que ça, il faut tirer les significations de ce que l'on observe. Par ailleurs de tout temps les scientifiques ont tenté de donner un sens global à leurs expérimentation. La biologie a une responsabilité particulière car ce n'est pas une discipline comme une autre, mais une qui étudie le vivant et ne doit pas se contenter de piquer ses concepts à d'autres domaines scientifiques.*

== Milieu extérieur contre milieu intérieur

On a, dans la citation de Claude Bernard, _page 25-26_, un passage fondamental. Le milieu extérieur désigne l'ensemble de ce qui est extérieur à l'organisme, et pour une matière inerte, le milieu extérieur est le seul qui puisse exister. Pour un caillou, tout est extérieur, il subit passivement le monde extérieur. À l'inverse, Claude Bernard met en lumière le milieu intérieur. Il met en avant que le milieu intérieur se caractérise par une indépendance et un rôle protecteur vis à vis du milieu extérieur. Canguilhem s'appuie sur ce concept pour aller toujours dans le même sens : puisqu'il y a un milieu intérieur stable, c'est la preuve d'une liberté -- en tant que souplesse -- biologique de l'organisme ; il est capable d'être actif et indépendant, libre de décider de ses manières de réagir face à l'extérieur : plus il a de moyens de se défendre, puis il est libre. Ainsi, ce milieu intérieur est la démonstration expérimentale que la vie est capable de s'affranchir partiellement des lois extérieures et de créer ses propres conditions de survie. C'est ainsi son concept de normativité du vivant.

Il met dos à dos les mécanistes et les finalistes. Les mécanistes expliquent la vie selon des lois de la matière, des lois extérieurs à l'ogranisme ; les finalistes eux expliquent la vie selon dessein divin qui serait tout autant extérieur. Pour Canguilhem aucun des deux ne saisi la spécificité interne du vivant. Pour les mécanistes, le vivant est passif et ne subit qu'un jeu de causes à effets et le vivant ne s'explique que comme une série d'automatismes ; pour le finaliste ce n'est pas beaucoup mieux, il est tout aussi passif en ce qu'il ne fait qu'exécuter un programme que quelqu'un d'autre -- Dieu ou la nature -- aurait destiné pour lui, et n'est que le pantin d'une force supérieure. Ils font alors preuve d'anthropocentrisme car ils plaquent la manière dont l'homme voit ses propres outils et voient la vie comme un simple prolongement de ceux-ci.\ Pour Canguilhem, au contraire, la vie est une aventure, une improvisation perpétuelle, une rencontre entre les milieux intérieurs et extérieurs. La vie est capable de savoir par elle-même ce qui est bon ou mauvais, elle est capable de s'auto-guider pour sa propre conservation, et ça, les finalistes et les mécanistes ne le voient pas.

== L'expérimentation comme première fonction biologique

_Page 27_ : Canguilhem disait en introduction que la connaissance est une manière comme une autre pour l'homme de s'adapter à son milieu. Canguilhem enchérit qu'il en va de même pour l'expérience : ce n'est pas seulement ce que le savant fait en laboratoire, c'est plus généralement ce que tout être vivant fait pour rester en vie. *L'expérimentation est une fonction biologique avant d'être un processus scientifique.*\
_Page 28_ : L'organisme apprend au fil de l'évolution et les fonctions biologiques sont le fruit d'expérimentations qui ont abouti. La vie est en elle même avant tout une forme de connaissance. Le savant ne fait que formaliser ce que les organismes vivant font déjà instinctivement. _Page 29_ : Le savant ne fait que mimer ce que la vie réalise.

Or, _Page 31 à Page 38_, Canguilhem nous présente des précautions à avoir :
+ Il faut avoir en tête la spécificité du vivant _31 - 33_\
	Plus que dans n'importe quelle autre discipline, en biologie il est difficile de généraliser ses observations et expériences. Souvent l'expérience résulte d'un choix et il faut avoir de la réserve en généralisant. Les généralisation de variétés à variétés, d'espèces à espèces et de l'animal à l'homme n'est pas évidente.
+ Il faut faire attention à l'individualiation _34 - 35_\
	Chaque individu au sein d'une espèce est unique, l'individu à l'origine c'est ce qu'on ne peut pas diviser, qui représente un être unique. Quand la science travaille sur des individus "purs" (ex. élevage de rat qui se prêtent à l'expérience), on "triche" et l'expérience devient artificielle
+ Canguilhem s'oppose au réductionnisme _35 - 36_\
	Pour lui, un organisme est un tout et n'est pas que le somme de ses parties. Quand on étudie un organe seul on a une image tronquée et donc un peu fausse
+ Il faut faire attention à l'irréversébilité des phénomènes vitaux _36 - 38_\
	Les espèces évoluent dans le temps et donc un animal n'est même pas parfaitement comparable à lui même selon à quel moment de sa vie on l'observe

Cependant, c'est selon lui ça qui fait la beauté de la biologie, il ne s'agit pas d'obstacles absolu, ce sont des "stimulants de l'invention" _page 38-39_

_Page 43_ : Canguilhem revient sur une quetion "qu'un essai sur l'expérimentation biologique ne peut pas ici ignorer, celui des possibilités et de la permission d'expérimentation directe sur l'homme.". D'après lui, expérimenter sur l'homme permettrait de lever une partie des 4 obstacles levés plus tôt, mais il y a cependant des écueils. Cela se heurte d'abord à des préjugés et des problèmes de morale. Un deuxième écueil est de confondre l'expérimentation sur l'homme avec des interventions théraputiques ou des "préventions hygiénique ou pénales". À quel moment donné sort-on de l'expérimentation ?\
Il revient _page 44_ sur Claude Bernard, et dit que lui ne voyait pas le problème et voyait l'intervention chirurgicale comme un moyen d'expérimenter : si j'opère et que j'expérimente sans cause aucun tort au patient, où est le problème ? Canguilhem s'y oppose et prétend qu'une intervention chirurgicale ne peut pas être une expérimentation acceptable, parce que l'acte médico-chirurgical n'est pas un simple acte scientifique : l'acte médico-chirurgical résout un problème physique mais permet de secourir une détresse, _page 45_. Le chirurgien n'est pas un scientifique comme les autres. Pour être sûr qu'il s'agit bien d'une unique expérience, il faudrait être persuadé que le chirurgien pouvait agir autrement, qu'il avait le chirurgien.\
Pareillement, Canguilhem revient sur l'idée du consentement du patient, _page 46_ : peut-on vraiment être consentant à une expérimentation, faute de connaissance complète sur le domaine en question ? Canguilhem conclut sur le fait que le problème de l'expérimentation sur l'homme n'est pas tant un problème de technique qu'un problème de valeur, _page 47_

_Page 48 - 49_ : Canguilhem fait le bilan à l'aide d'une image, l'image des hérissons pour voir le paradoxe de l'expérimentation biologique.\ Canguilhem part d'un passage de Jean Giraudoux qui dans #ul[l'Électre] présente une image philosophique de ses hérissons : Canguilhem reprend cette image du hérisson pour l'appliquer à la biologie et nous dit qu'elle n'as pas de sens biologiquement _page 49_, les hérissons ne traversent pas les routes, et pour les hérissons la route ça n'existe pas. Il vit sa vie selon ses propres normes sans se soucier de cette route qui traverse son milieu. Par contre, les routes elles traversent bien le milieu du hérisson. Ainsi, la méthode expérimentale est une sorte de route que l'homme trace dans le monde êtres vivants. La méthode étymologiquement signifie d'ailleurs la recherche d'une route/voie. Cette route est inévitable autant qu'artificielle.

Cependant, ce n'est pas une impasse, *il faut plutôt en conclure que la connaissance de la vie nous échappera toujours un peu, elle garde son lot d'imprévisibilité.*

= Philosophie

== "Aspects du vitalisme" vs "Machine et organisme"

_Page 108_ : À chaque fois qu'on s'intéresse à un phénomène de la nature, on a des théories opposées. Qaudn on s'intéresse au problème des structures et fonctions, le mécanisme et le vitalisme s'affrontent. Il dit lui même qu'on peut se demander si à faire des aller-retour perpétuels on ne finirait pas par un peu tourner en rond. Il répond que non, cette opposition est une opposition dialectique qui permet de mieux comprendre le sens à donner à la vie : on ne peut pas comprend l'un sans l'autre.

Il commence par s'interroger sur sa légitimité de concilier philosophie et biologie : _page 105_. Si le biologiste réfléchi au vivant, le philosophe réfléchit au concept de vie, ce n'est donc pas stupide d'avoir quelqu'un qui fait les deux.

Il revient ensuite sur l'importance d'une biologie autonome, l'idée que la biologie doit acquérir son autonomie par rapport à la physique classique. La biologie qui se fait pour elle même est dévalorisé et qualifiée de vitalisme.\
Le terme de vitalisme est péjoratif car il a servi beaucoup d'extravagances _page 106_. Si Canguilhem réemploie ce terme c'est pour le réhabiliter. Pour comprendre la spécificité de la biologie, la science du vivant, il faut comprendre que dans ces organismes il y a quelque chose en plus absent de la simple matière, et que la théorie qui le met en valeur doit s'appeler "vitalisme". Il propose ainsi de revenir sur les étapes historiques du vitalisme car selon lui quand on s'intéresse à la science, c'est bien d'établir des concepts mais aussi de revenir sur les différentes étapes de la construction des sciences. Il rappelle enfin subtilement que s'il va aborder ce vitalisme c'est moins d'un point de vue scientifique que d'un point de vue philosophique. Il relie alors ce vitalisme à Bergson _page 107_.\
Le vitalisme a la peau dure et il se maintient comme une sorte d'évidence : c'est peut-être une illusion de la pensée mais c'est beaucoup plus subtil que ça, ça n'as rien à voir avec le géocentrisme ou le "phlogistique", et cette vitalité du vitalisme est vu par le fait que de nombreux scientifique ont défendu le vitalisme.\
Barthez défini le vitalisme _page 109_ : le vitalisme est la théorie qui considère qu'il y a un principe vital qui est à l'origine de la vie et qui distingue un corps vivant d'un cadavre. Le vitalisme répond à la question "qu'est-ce qui distingue le vivant du cadavre ?" tandis que le mécanisme se demande comment il fonctionne.\ Il dit _page 109_ que le vitalisme hérite d'un auteur grec:  Hippocrate. Il le considère comme le précurseur du vitalisme:
+ Hippocrate utilise $tau omicron " " epsilon nu omicron rho mu omega nu$, pour lui, le vivant est une intelligence interne capable de s'auto-guérir, de même que Canguilhem dit que la vie est une intelligence capable de s'adapter. Il utilise le principe de la _natura medicatrix_, la nature qui guérit.
+ Pour Hippocrate, la vie est entretenu par un principe moteur qu'il associe au souffle, à l'air. Il lui donne deux nom en grec : _pneuma_ et _énormon_, une substance subtile et volatile qui circule dans le corps et donne à nos organes un souffle vital.
+ Hippocrate est holistique, il considère le vivant comme un tout plutôt que comme une somme de ses parties : la santé est un équilibre global.

Hippocrate est donc le précurseur du vitalisme avant Aristote, mais pourquoi ?\
Aristote est un auteur qui a énormément compté dans l'histoire de la philosophie comme dans l'histoire de la science, et il n'est pas vraiment vitalisme malgré en avoir jeté les base : il est celui qui pose l'idée que l'âme est le principe d'organisation du vivant, un corps sans âme ce n'est que de la matière, l'âme venant d'_anima_, signifiant ce qui anime ; de plus, pour lui, la nature ne fait rien vainement, elle n'est pas absurde, elle a toujours un but, qui peut être aussi bien la survie que la reproduction ou l'évolution : pour Aristote on a un vitalisme plus théorique et moins pragramatique que chez Hippocrate.

_Pages 110 - 111_, Canguilhem prend ses distances avec le mécanisme\
Le mécanisme n'est pas une description si fidèle que ça de la réalité biologique, mais plus une création de l'esprit, il y a un côté aritificiel : "ruse"
. L'homme qui fabrique des machines pour simplifier son rapport au monde, qui l'utilise comme concept pour comprendre le viviant, mais c'est une projection qui va à l'encontre du vivant, car le vivant est l'organisme qui pose ses propres normes, or, une machine repose sur des normes extérieures

_Pages 111 - 112_, il y a deux manières de se projeter face à la nature :
- Se considérer comme un enfant de la nature, qui nourrirait un sentiment de sympathe à l'égard de la nature, car on aurait conscience de fiare parti d'un grand tout : le vitaliste est celui qui a de la sympathie pour la nature
- Se considérer face à la nature comme devant un objet étranger et étrange, avec une sorte de rupture face à elle.
Clairement, la préférence de Canguilhem va au premier, cf. citation _page 112_ où l'on voit la contemplation face à des choses simples de la nature, il n'y a pas besoin de choses ambtieuses pour s'extasier. Ainsi, Canguilhem parle de la "confiance vitaliste dans la spontanéité de la vie" 
#quotation([
	"Un vitaliste [...] c'est un homme qui est induit à méditer sur les problèmes de la vie davantage par la contemplation d'un oeuf que par le maniement d'un treuil ou d'un soufflet de forge"\
	"Cette confiance vitaliste dans la spontanéité de la vie"\
	"[C]ette réticence [...] à faire sortir la vie d'une nature décomposée en mécanismes"
	
	*Page 112*
])

Dans la défense du vitalisme, Canguilhem prétend en souligner la fécondité à partir de la _page 113_, ce qui ne va pas de soi, car le vitalisme est souvant seulement verbal mais on n'en sait pas plus sur cette force vitale, il l'appuie d'ailleurs _page 115_, soulignant que les gens apportent plus de questions que de réponse en prétendant y répondre.

On peut également reprocher aux vitalistes de toujours revenir à la tradition aristotélicienne ou hypocratique et ne jamais faire d'ajouts. Cependant, tout n'est pas à jeter et le vitalisme est fécond : c'est la seule manière d'avoir une pensée complète du vivant. 

_Page 119 - 120_, le vitalisme est si mal vu car on le taxe de paresse, de stérilité intélectuelle, mais on se trompe.

_Page 123_, l'animisme est la théorie selon laquelle la vie du corps animal dépend de l'existence et de l'activité d'une âme pourvue de tous les attributs de l'intelligence, et agissant sur le corps comme une substance sur une autre dont elle est ontologiquement distincte : ça n'as rien de nouveau.\ De plus, le vitalisme apparaît comme réactionnaire et rétrograde car certains vitalistes ont tourné nazi. Selon lui c'est stupide car les nazi ont récupéré beaucoup de choses qui n'ont pas été remis en cause, comme le darwinisme et la génétique

_Page 126_, le vitalisme peut s'interpréter comme une crise de confiance dans l'économie d'une société dans la société bourgeois et capitaliste, de plus, "Les renaissances du vitalisme traduisent peut-être de façon discontinue la méfiance permanente de la vie devant la mécanisation de la vie."
(Critique de la société bourgeoise et réductionniste un peu comme Nemo)

_Page 127_, c'est facile de critiquer en parole, et beaucoup moins de remettre en question leur idée 

*Le vitalisme est beaucoup critiqué pour ne pas faire quelque chose qu'il ne prétend pas faire, il n'est pas là pour donner une explication biologique mais philosophie au problème*


Chapitre 2 : critique du mécanisme vu comme insuffisant et étroit

_Page 130_, on est parti de la machine pour expliquer le vivant, mais on devrait plutôt parti du vivant pour essayer d'expliquer la machine. Il regrette qu'on ait une vue figée de la machine et propose de la réinterroger : Canguilhem propose de remettre les choses à plat et de repartir de zero pour comprendre le mécanisme et ses limites. Il propose une lecture en 4 temps : d'abord revenir sur le sens, puis sur le rapport entre la mécanisation du vivant et la question de la finalité, ensuite sur le rapport traditionnel entre la machine et l'organisme, puis de voir les conséquences philosophiques

+ Quel sens donner à la comparaison entre un organisme et une machine ?\
	_ Page 131-132_, il donne une longue définition de la machine, et précise que mécanisme n'est pas moteur. Ici, des objections vont apparaître. Tout d'abord, la représentation des organismes en tant que machine n'est pas la règle dans la nature, quand on regarde bien la nature, cette idée que la nature serait comme une machine n'est visible que chez les vertébrés, voir _page 130_. De plus, le modèle mécaniste n'est pas celui qui s'impose le plus naturellement, le plus anciennement, et qui serait donc le plus proche de la nature : la machine est déjà le produit d'un artifice humain très élaboré, voir _page 132_.\
	Qu'est-ce qu'apporte ce modèle ? Il faut ajouter un élément clé, qui est que la machine est toujours mue par un moteur, par une source d'énergie : il y a plusieurs mécanismes dans une machine. La conception mécaniste a du succès car elle a tenté d'expliquer comment on vie, et pourquoi on vie. Comment : tous les mécanismes de transmission et transformation. Pourquoi : dans la machine il y a aussi un moteur qui justifie son fonctionnement. Même le mécanisme pur rappel qu'il y a toujours un principe moteur.

+ Quel rapport y'a-t-il entre le mécanisme et la finalité des organismes ?\
	Canguilhem fait _pages 141-143_ un retour sur la théorie de l'animal machine, et il nous dit que même chez Descartes, la théorie de l'animal machine ne prend de sens que si on considère que Dieu est cause de cet animal, que Dieu est la cause de tout. Même chez Descartes, la lecture mécaniste de la nature n'exclu pas une finalité de cette-ci. On revient ensuite sur les causes telles que rappelées par Aristote : il distingue quatre causes : la cause matérielle ; la cause formelle ; la cause efficiente et la cause finale. La cause matérielle est ce dont il est fait phyisquement, le bois de l'armoire, les vis ; la cause formelle c'est ce qui donne sa structure à la chose, l'idée de l'armoire, le plan ; la cause efficiente c'est ce qui produit la chose, le menuisier par exemple ; la cause finale est le but, la finalité pour laquelle la chose existe. L'animal machine ne se comprend donc que parce que derrière il y a une cause efficiente, une cause finale. La cause efficiente c'est Dieu, qui pour Descartes est l'_Artifex Maximus_, ce qui produit le vivant. La cause formelle et finale est la nature dans sa propre évolution, qui développe ses propres normes. Le mécaniste ne fait qu'expliquer la cause matérielle, la manière dont l'organisme est fabriqué phyisquement, et dès l'instant où on s'intéresse aux trois autres causes, le mécanisme se rejoint au vitalisme. Pour Canguilhem, le corps a beau être une machine parfaite, ça ne répond pas tout à fait à la quesiton, et avec Descartes se pose toujours la question de la finalité des individus : il n'y a pas une si grande opposition entre les deux, et pour Canguilhem le mystère de la nature reste intacte.

+ Le renversement du rapport traditionnel entre machine et organisme\
	Pour Canguilhem, il faut renverser ce rapport traditionnel ; l'analogie de la machine est de l'organisme est insuffisant et doit être repensé, car il y a une différence très nette : l'organisme tire sa norme de sa force intérieure alors que la machine tire tout cela de l'extérieur. La machine elle a besoin de l'ingénieur pour fonctionner tandis que l'organisme est son propre ingénieur, et pour lui cette image de l'animal machine ne peut pas fonctionner.\
	Pour Canguilhem, _page 152_ la différence fondamentale réside dans la souplesse du vivant face à la rigidité technologique : la machine est enfermée dans un but et une finalité précises, dicté par des calculs stricts qui ne tolèrent aucune erreur, tandis que l'organisme lui ne parle pas de finalité mais de potentialité : un organisme vivant possède une réserve de potentialité lui permettant de s'adapter à l'imprévu. La vie n'est pas un programme figé mais est au contraire une improvisation constante. "La vie est expérience, c'est-à-dire improvisation, utilisation des occurences ; elle est tentative dans tous les sens". On a vu cependant que Canguilhem réhabilitait la finalité en disant que même chez Descartes cette question de la finalité est présente, mais non seulement il la réhabilite mais il la déplace, car il ne s'agit plus d'une finalité externe mais d'une finalité interne : pour Canguilhem on est pas dans un grand plan pensé par un être supérieur mais où au contraire la vie est son propre ingénieur interne. Dans la vision cartésienne, la finalité est figée : une horloge a une finalité figée, un plan unique ; Canguilhem lui pense que le vivant est au contraire une finalité beaucoup plus souple, beaucoup plus polyvalente. *La machine est téléologique, elle obéit a son but ; tandis que le vivant est normatif, il a une capacité à s'adapter et inventer de nouvelles solutions.* Il ne nie pas la présence d'une cause extérieur efficiente, du force supérieur, mais il la voit comme secondaire face à la créativité du vivant. Si le vivant avait un plan strict, le moindre monstre serait un échec définitif ; cependant, chez le vivant, c'est tout l'inverse : l'anomalie peut devenir une nouvelle manière de vivre, une nouvelle norme.\
+ Canguilhem se propose ensuite _page 155_ de se détourner de Descartes et de  son mécanisme mais sans toutefois tomnber dans un vitalisme mystique et va trouver la solution chez Kant, qui dissocie la machine et l'organisme. _Page 156_, une citation de Kant s'accord avec la pensée de Canguilhem : dans une machine les pièces s'ajustent les unes par rapport aux autres grâce au travail de l'ingénieur ; par exemple dans une montre, le ressort fait fonctionner la montre mais ce n'est pas le ressort qui crée la montre, et c'est en cela que la machine s'oppose à l'organisme vivant ; et l'opposition à l'organisme se fait là car dans l'organisme les parties s'organisent pour elles mêmes et par elles mêmes, il y a une inter-dépendance dans l'ogranisme des parties qui le composent : le tout produit les parties et les parties produisent le tout. Une montre ne fait pas de montre, aucune machine ne possède un pouvoir de reproduction ou de réparation, tandis qu'un organisme se répare et se reproduit. Kant distingue ainsi la technique intentionnelle de l'homme de la technique inintentionnelle de la vie. Autrement dit, *le vivant est une technique sans technicien.*

	_Page 157 - 163_, Canguilhem, pour retourner le rapport machine-organisme, propose de postuler que les machines ont été conçues sur le modèle de l'organisme vivant. Pour Canguilhem, la technique est d'abord un phénomène biologique ; il dit _page 163_ qu'il faut considérer la technique comme un phénomène biologique universel et non plus seulement comme une opération intellectuelle de l'homme. La machine apparaît comme un organe exogène, un complément de l'organisme, une stratégie de la vie pour mieux s'adapter. Pour Canguilhem, la technique vient d'un élan vital, ce n'est pas quelque chose de purement intellectuel.

== Le vivant et son milieu

_Page 165_, tout le monde parle de milieu mais personne ne s'accorde sur ce qu'est vraiment un milieu, et c'est pour cela que la philosophie doit reprendre l'initiative. En quoi est-ce pertinent de se pencher sur le concept de milieu pour comprendre la nature.\
Le terme et la notion de milieu apparaissent au $"XVIII"^e$ siècle et se popularisent au $"XIX"^e$. Le but de Canguilhem est de montrer comment passer d'un concept physique à un concept biologique Il part de Newton pour rappeler que le terme de milieu est d'abord lié à la mécanique. À l'origine le milieu désigne l'espace intermédiaire qui permet l'action à distance entre deux corps. Canguilhem critique cette importation de la physique a la biologie car elle a la conséquence de réduire le viant a un simple objet passif soumis à son environnement : en migrant de la physique à la biologie, l'idée de milieu a conservé tout son déterminisme, l'organisme est présenté comme un objet passif soumis aux influences de son milieu.

_Page 168_ il parle de l'opposition entre Lamarck et Darwin. La téhorie de Lamarck réfléchit sur la transmission des propriétés d'individus en individus et l'influence du milieu sur les êtres vivants. Pour lui, les êtres vivants se transforment en fonction de leurs besoin, c'est l'environnement qui crée de nouveaux besoins et l'organisme change pour répondre à ces besoins. Lamarck s'oppose ainsi à Darwin, pour qui les individus présentent au contraire des évolutions naturelles plus aléatoires, car l'environnement ne provoque pas des changements mais sélectionne les individus les mieux adaptés. Certaines girafe naissent avec un cou plus long, et c'est elles qui vont survivre car elles peuvent se nourir et vont donc davantage se reproduire. On pourrait se dire qu'il ne s'agit que d'une querelle entre naturalistes, mais il s'agit de deux manières philosophiques distinctes de voir la vie. Lamark est un vitaliste dont la vision repose sur deux idée : le milieu est une puissance étrangère, hostile, qui oblige un être vivant à réagir ; le vivant répond donc à cette puissance hostile en faisant un effort interne. Canguilhem est donc d'accord avec Lamarck, l'adaptation de l'organisme est une victoire interne, et le qualifie de vitalisme nu.\
_Page 175_, il revient à Darwin en disant qu'un milieu n'est pas seulement physique, mais est avant tout une réalité biologique ; le milieu ne provoque pas de changement mais tri les organismes. La thèse de Canguilhem est de reprocher aux deux théories de rester trop souvent dans un cadre extérieur : pour eux, le vivant ne fait que subir, que réagir face à son milieu, tandis que pour Canguilhem le vivant est là pour transformer son milieu.

_Page 181_ Canguilhem revient sur l'adaptation de l'animal et surtout de l'homme à son milieu en accord avec une idée reexprimée _page 184_ : "le propre du vivant, c'est de se faire son milieu, de se composer son milieu". _Page 182_, il parle de "créateur de configuration géographique". Pour Canguilhem, chez l'animal le milieu est déjà le résultat d'une sélection : un animal ne perçoit pas tout son environnement mais seulement ce qui fait sens pour lui et pour sa survie. C'est ce que _Uexküll_ appelle _die Umwelt_ (_die Welt_ = le monde, ici c'est le milieu qui entoure un animal et fait sens pour lui). Mais par rapport à l'animal, l'homme ne se contente pas de subir et sélectionner son milieu, l'homme le réorganise. Là où l'animal répond à un problème par un instinct, l'homme utilise toute sa technique pour ne proposer pas une solution mais une multitude de solutions. Ainsi, l'homme est un "créateur de configuration géographique" car cette configuration n'est plus un obstacle ou une fatalité pour l'homme : l'homme peut y trouver une multitude de solution.

De plus, _page 182_, Canguilhem soulève un paradoxe avec le terme "aliéné" : l'homme crée une multiplicité d'outils pour se libérer des contraintes de la nature : des créations artificielles ; cependant, ces créations deviennent à la longue notre propre milieu, on a modifié notre milieu en en faisant un milieu artificiel. On est plus tant soumis au déterminisme du climat, etc... mais à celui des machines, etc... L'homme a oublié qu'il a crée le milieu duquel il est asservi. Le milieu humain est un milieu de culture, artificiel, mais qui finit par exercer une pression aussi forte que la nature sauvage.

_Page 185-186_, Canguilhem s'appuie sur les traveaux de Uexküll, biologiste, qui distingue le _Welt_ de l'_Umwelt_ : le _Welt_ c'est l'univers global, le monde objectif ; l'_Umwelt_ c'est le milieu tel que perçu et vécu par une espèce spécifique. Ainsi un animal n'évolue jamais dans un monde complet, mais dans une sorte de bulle constitué uniquement des signaux utiles à sa survie. Uexküll prend l'exemple de la tique, _page 186_ : pour elle le monde se résume à deux signaux, l'odeur qui déclenche sa chute et la température du corps de sa cible. Pour le reste, rien ne compte pour elle, ça ne fait pas partie de son milieu. Ainsi, chaque animal développe son propre _Umwelt_, et il voit la nature comme une symphonie où chaque espèce joue sa propre symphonie.\
Cependant, il prend de la distance, car pour Uexküll, l'animal est enfermé dans une bulle rigide, tandis que pour Canguilhem, l'animal (et surtout l'homme) a la capacité de changer sa bulle, voire de la briser complètement.

_Page 187_, Canguilhem cite un autre Allemand : _Goldstein_, dont il s'inspire mais dont il prend ses distances. Pour Goldstein, le vivant cherche une forme de stabilité, tandis que pour Canguilhem le vivant cherche au contraire une forme d'expansion, d'évolution permanente : si un organisme est blessé ou malade, le but d'après Goldstein est de retrouver un état d'équilibre en accord avec son milieu, s'adapter pour survivre, tandis que le but d'après Canguilhem n'est pas seulement de s'adapter mais également de créer de nouvelles de normes, voire de changer de milieu : l'évolution pour Canguilhem est beaucoup plus importante que chez ses inspirations.\
Pour Goldstein, la norme est un simple état de fait, tandis que pour Canguilhem la norme est une question de normativité, c'est à dire que poser ses propres exigences et lois face au milieu.

_Page 195_, Canguilhem pousse sa conclusion plus loin, en disant que ce n'est pas le milieu qui conditionne l'organisme d'un individu, mais qu'au contraire c'est l'être vivant qui conditionne son milieu. On se trompe en pensant que le milieu dans lequel évolue l'homme le détermine et qu'il aurait plus le réalité que le milieu des animaux : _page 196_, l'homme a aussi son _Umwelt_.

== Le normal et le pathologique

_Page 199_, il y a une grande confusion entre tous ces termes de normal, de pathologique, de monstres, etc...

Souvent chez Canguilhem, la méconnaissance de la vie passe par une question de sémantique, c'est en utilisant les mauvais termes qu'on arrive sur une confusion de ce qu'est la vie.

_Page 201_, "Il ne [...] ordre de la vie" : la question du normal et du pathologique revient encore à faire un choix entre le mécanisme et le vitalisme.\
On parle d'abord de lois, on adopte une approche mécaniste. Alors le singulier, la variation apparaît comme un échec : s'il y a des lois, alors un écart de ces lois est considérer comme un échec à cette loi. Canguilhem pousse l'argument par l'absurde : _page 202_, la nature a un idéal en toute chose mais jamais ce type est réalisé, s'il était réalisé il n'y aurait pas d'individualité, il y a des lois mais elles sont là pour ne pas être respectées. Pour Canguilhem, si on considère qu'il y a des lois, tout être vivant ne serait qu'une application imparfaite de ces lois, et ça ne convient pas à Canguilhem.

_Page 204_, il propose de s'appuyer sur le vitalisme, de s'appuyer non plus sur des lois mais sur un ordre de propriétés. Il définit cela _page 204_ comme le pouvoir d'adaptation, de normativité de l'organisme vivant : la force du vitalisme. Dans cette perspective, selon lui, tout change, et l'irrégularité n'est plus conçu comme un accident mais comme son existence. Ce n'est plus un échec mais c'est le principe même de l'existence d'être anomal. C'est en fait quelque chose de positif, qui montre une soupless du vivant. _Page 205_, les espèces sont vouées à disparaître quand elles font preuves de rigidité et sont incapable de s'adapter.

Notre manière d'aborder le normal et de pathologique dépend donc  de notre manière de considérer le vivant. Il y a dans un cas un jugement de valeur négatifs mais dans le deuxième il n'y en a aucun, car on ne se réfère plus à un modèle mais c'est au contraire une aventure car ce qui importe c'est si la vie continue à se maintenir. Canguilhem propose donc de voir dans l'anomalie une simpel différence.

Il développe _page 206_, l'idée qu'il n'y a pas de forme réussie et de forme manquée de vie, que tant que l'on réussi à vivre alors c'est une réussite. Ainsi, l'anomal n'est pas de l'anormal. Le normal c'est ce qui institue la norme de l'organisme et lui permet de vivre et de se multiplier.\
_Page 208_, le normal est plus prototypique qu'archétypique ; le normal est une force créatrice, ce qui s'est de point de départ pour l'adaptation à son milieu. Le normal archétypique quant à lui est le normal dans lequel Canguilhem ne se reconnaît pas, le normal comme oyenne statistique, ce qui est conforme à la règle : le vivant standard 

Il y a une pluralité des normals, mais _page 213_, on ne doit pas supprimer la distinction entre normal et pathologique.\
Quand un homme comment à être malade ou se comporter en malade, il devient un autre homme, un autre organisme, car il s'adapte à la maladie et ça le fait évoluer car il s'invente de nouvelles normes pour résister. Ainsi, _page 214_, le pathologique n'est pas le contraire du normal mais du sain, car la vie à l'état pathologique n'est pas absence de normes mais présence d'autres normes. Le mot "anormal" en français est trompeur, car le préfixe désigne moins la privation que la distorsion de la normalité. _Page 215_, le pathologique est le contraire du sain, l'homme n'est vraiment sain que lorsqu'il est capable de plusieurs normes, qu'il est "plus que normal".

== La monstruosité et le monstreux

Dans ce chapitre, Canguilhem propose une analyse qui déplace la question du monstre du domaine de la légende à celui de la biologie. On peut voir un parallèle avec le narwal de Verne qui terrifie la population.

Pour Canguilhem, il faut distinguer la monstruosité du monstreux.\
Avant de se lancer dans l'histoire de la notion, il commence _page 220_ à rappeler que le terme de monstre ne peux s'utiliser que sur le vivant ; mais donc le narwal de Verne, peut-il être un monstre en tant que machine ? Pour Canguilhem, non.

Canguilhem laisse aux romanciers et à la fiction le soin d'utiliser le monstre comme inanimé. Ainsi, du point de vue biologique, le Nautilus n'est pas un monstre, mais du point de vue fictionnel il est monstrueux.

Il voie la monstruosité comme quelque chose qui sort de la norme, c'est un cas particulier de l'énorme mais qui ne s'applique qu'au vivant, l'énorme en tant qu'_ex normis_. Il appuie aussi le fait que l'énorme est toujours vu comme gigantesque mais qu'il peut aussi être minuscule, on peut avoir quelque chose d'énorme par sa petitesse.

_Page 220_ : "le monstre est le vivant de valeur négative", développé _page 221_, le monstre est un repoussoir. Le monstre révèle la contingence des valeurs ; celà reste du vivant mais dans l'échelle du vivant on est dans les négatifs (cf. #ul[Les repoussoirs], Zola).\
C'est la monstruosité et non la mort qui est la contre-valeur vitale. La mort n'est qu'une limitation par l'intérieur, la négation du vivant par le non vivant ; tandis que le monstrueux est la limité intérieure, la négation du vivant par le non-viable. (_page 220_)

À partir de la _page 221_ il sépare le monstre de la monstruosité : la monstruosité est un concept biologique, c'est une anomalie morphologique par laquelle un être vivant s'écarte d'un type spécifique ; le monstrueux lui n'est plus un fait brut mais une valeur qu'on accorde ou non à un être vivant, une valeur de peur, de dégoût, mais également de merveille voire de fascination qu'on va projeter sur la monstruosité.

_Page 223-225_, dans l'antiquité et le moyen-âge, on a appliqué le monstreux à la monstruosité, on a fait d'un tatonnement de la nature un monstre en lui appliquant un jugement moral.

Canguilhem affirme qu'il faut aborder positivement, c'est à dire rationnellement la monstruosité

#quotation([
	"Le complément nécessaire d'un monstre c'est un cerveau d'enfant"\
	*Paul Valéry*

	"Le sommeil de la raison enfante les monstres"\
	*Goya*
])

Le monstre est fantasme et défaillance de la raison

La tératologie devient une science naturelle et même une tératogénie où on crée des monstres. Le paradoxe du monde moderne est que le monstreux est maintenant raccroché au normal : le monstre biologique n'est plus un objet de peur, mais de pitié. Ce qui fait peur maintenant c'est le vice caché dans le normal.

_Page 234_, la vie crée toute seule ses monstres, le savant ne fait que perturber ou personnaliser un procédé que la nature fait sans lui. La vie est pauvre en monstre car les organismes ne sont capable d'excentricité qu'à un cours moment de leur développement, le stade embryonnaire, tandis que le fantastique est un monde car il est capable de peupler un monde, il est infatigable.

Chez Canguilhem, il n'y a pas de monstreux chez les monstruosités biologiques, et la vie n'est que pauvre en monstre
