#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*À la conquête de la mer !\ Expériences de la nature dans\ #ul[Vingt mille lieues sous les mers]*
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
#pagebreak()
== Introduction

#quotation([Oui ! je l'aime ! La mer est tout ! Elle couvre les sept dixièmes du globe terrestre. Son souffle est pur et sain. C'est l'immense désert où l'homme n'est jamais seul, car il sent frémir la vie à ses côtés. La mer n'est que le véhicule d'une surnaturelle et prodigieuse existence ; elle n'est que mouvement et amour ; c'est l'infini vivant.\ *Première partie, Chapitre X*, tiré de Michelet])

Montre l'attachement de Jules Verne à la mer mais aussi sa curiosité sans borne qui s'ouvre à l'exploration, l'interrogation. La mer est un appel à venir en faire l'expérience.

Cette expérience de la Nature est celle d'une nature dominée d'où une triple problématique :\

*Que signifie chez Jules Verne faire l'expérience de la nature ?\
Comment associe-t-il la découverte de mystères naturels à la volonté de les rationnaliser ?\
Comment la découverte de la nature, de l'ailleurs, constitue-t-elle aussi un chemin détourné pour revenir à soi et à ce qui fait es mystères de notre humanité ?*

= Une découverte de l'élément marin

== Une description exhaustive

=== Un idéal encyclopédique

Une description exhaustive c'est une déscription complète, d'où un "idéal encyclopédique" : le roman de Jules Verne se caractérise par un idéal de complétude comparable à l'entreprise d'un Pierre Larousse, (qui publie son grand dictionnaire qui est une encyclopédie), Jules Verne à utilisé lui même les premiers volumes du grand dictionnaire de Larousse ou de multiples journaux.\ Son époque nourrit des ambitions scientifique reposant sur : 
- Une érudition très poussé : on n'oublie rien, on va dans les détails.
- Une vulgarisation du savoir : que ce soit accessible à tous

De plus, le projet du roman a été retardé parceque Jules Verne travaillait une autre oeuvre : #ul[La Géographie illustrée de la France et de ses colonies] : ce n'est pas un simple romancier mais aussi un vulgarisateur scientifique

#quotation([
	Je travaille comme un forcené, imagine toi que je fais un dictionnaire, oui un dictionnaire des plus sérieux ! [...]\ *Lettre à son père*
])

Il est donc très content de son activité.

On a parlé de vulgarisation scientifique, voilà une utilité des gravures qui font la beauté de l'oeuvre de Jules Verne, elles servent à vulgariser le savoir en représentant les réalités qu'elle nous dépeint : l'image vient au secours du texte. Elle le relaie aussi bien pour illustrer un moment de l'intrigue mais aussi pour laisser voir un costume, un paysage, un aspect de la mer, pour mieux le comprendre et l'accepter. Faire l'expérience de la nature ici c'est donner à voir la nature. On peut citer *I/XIV*, les poissons ; *I/XVIII*, les calmars ; *I/XXII* les indigènes de papouasie ; *II/I*, les oiseaux de mer, etc...

Très souvent, la légende de l'image reprend textuellement le passage, il y a une citation du texte : tout est fait pour permettre l'association entre l'image et le texte pour que le lecteur comprenne, voie.

Pour chaque description, une explication est toujours donnée : Jules Verne fait preuve d'une volonté de pédagogie. Certes ça tourne à la "leçon de chose", mais c'est très caractéristique de l'époque.\
Le texte tourne aussi à la confrontation des points de vue, points de vue qui se valent tous. En *I/XIX* il y a confrontation entre Ned Land et Conseil sur la classification des poissons par exemple. L'idée est d'énoncer des connaissance de manière quantitative (le plus possible) et qualitative (le plus varié et poussé possible). On peut ainsi relever l'utilité des tandems de personnages.\
Il y a deux tandems :
- Conseil - Aronnax, où Conseil a vraiment une propension à nomenclaturer que n'as pas son maître
- Aronnax - Nemo, représentant les deux héros du second $"XIX"^"e"$ siècle. Aronnax représente le savoir académique, ce qu'on croît en savoir en restant à la surface. Nemo incarne le savoir qui reste à découvrir d'une seule manière : en plongeant.

L'idée est donc d'avoir une vision globale de la mer après avoir fini la lecture.

=== Une écriture hyperbolique

Dès le titre du roman, on comprend la dimension hyperbolique du texte. On peut faire le lien avec #ul[Cinq semaines en ballon] et #ul[Le Tour du monde en quatre-vingt jours] car à chaque fois la découverte de la nature se fait sous l'angle de l'exploit.

La lieue désigne ici la lieue métrique, qui équivaut à environ 4km. Le voyage total fait donc aux alentours de 80,000km. Ces 80,000km ne sont évidemment pas statique mais au contraire s'étendent sur l'ensemble des océans de la planète.

#quotation([
	Mais où va Nemo ?\
	*II/XIII*
])

Comme l'ensemble des océans sont concernés, Jules Verne propose deux cartes (par volonté de pédagogie). Tout d'abord celle du pacifique en *I/XIV* et une carte de l'atlantique en *II/VIII*. Autrement dit, pas une route maritime n'est laissée dans l'ombre et les cinq continents sont tours à tours explorés.

Il insère des cartes dans plusieurs oeuvre, et ici le tour du monde n'est pas fait directement, on fait de nombreux détours. L'idée est de concilier l'exploit de l'exploration et la présentation de toutes les mers. Cet aspect exagéré est amplifié par le fait que le narrateur n'est pas le dernier à s'étonner des merveilles de la mer et du Nautilus.

=== Un effet "catalogue"

Le voyage du Nautilus est tout sauf statique, on met souvent l'accent sur la vitesse du Nautilus. On visite les océans de points d'intérêt en point d'intérêt : le texte est fait pour ne pas avoir de fin. Le livre n'a d'ailleurs pas de fin en soi, Nemo continue sa route malgré l'absence des protagonistes comme témoins. Le roman n'est finalement qu'une accumulation d'éléments, et reprend ainsi "le modèle de l'Odyssée" : dans l'Odyssée, quand Ulysse va d'île en île on va de merveilles en merveilles. L'île offre un monde clos qui nous offre une aventure, et une fois terminé on va sur une autre île qui en donne une autre, etc...

C'est pour cela qu'on parle d'effet catalogue par accumulations interminables. La fin peut alors paraître baclée parceque le texte s'allonge indéfiniement, ce qui nous prive de fin grandiose.

On peut également relier cet effet à la formidable bibliothèque du capitaine Nemo, où une bonne proportion des livres porte sur la mer, et représente un savoir inépuisable et démesuré.

Finalement, l'accumulation des épisodes est aussi l'occasion d'une accumulation de savoirs, une série de rétrospections sur les grandes expéditions maritimes qui ont eu lieu avant : Nemo en allant de régions en régions nous permet aussi d'aller de récits en récits. Nemo n'est alors que le dernier représentants d'une inombrabilités d'explorateurs

#quotation([
	_En parlant d'un groupe d'îles en Océanie_ \
	"Ce fut Tasman qui découvrit ce groupe en 1643, l'année même où Toricelli inventait le baromètre, et où Louis XIV montait sur le trône. Je laisse à penser lequel de ces faits fut le plus utile à l'humanité. Vinrent ensuite Cook en 1714, d'Entrecasteaux en 1793, et enfin Dumont-d'Urville, en 1827, débrouilla tout le chaos géographique de cet archipel. Le Nautilus s'approcha de la baie de Wailea, théâtre des terribles aventures de ce capitaine Dillon, qui, le premier, éclaira le mystère du naufrage de La Pérouse."\
	*I/XIX*
])

#quotation([
	_Arrivés au pôle Sud_\
	"Monsieur, en 1600, le Hollandais Ghéritk, entraîné par les courants et les tempêtes, atteignit 64° de latitude sud et découvrit les New-Shetland. En 1773, le 17 janvier, l'illustre Cook, suivant le trente-huitième méridien, arriva par 67° 30' de latitude, et en 1774, le 30 janvier, sur le cent-neuvième méridien, il atteignit 71° 15' de latitude. \[Même chose pour ouze autre explorateurs\]. Eh bien, moi, capitaine Nemo, ce 21 mars 1868, j'ai atteint le pôle sud sur le quatre-vingt-dixième degré, et je prends possession de cette partie du globe égale au sixième des continents reconnus. "\
	*II/XIV*
])

Explorer c'est revivre ce que les explorateurs précédents ont déjà vécu.

#info(title : [Petite parenthèse])[
	Il en va de même du Nautilus : On peut penser que le Nautilus est une invention géniale, il hérite simplement de toutes les tentatives de sous-marin ayant eu lieu depuis le début du XIX, même le nom du Nautilus est la reprise d'un nom générique que les plupart des inventeurs avaient employés, Nautilus ou Nautilée. Il y a alors une sorte de commémorations des tentatives faites avant lui
]

== Quels voyages _sous les mers_ ?

=== Un voyage de surface

Malgré le titre, force est de constaté que les côtes et la surface de la mer ne sont jamais très éloignées du roman. On y revient souvent ne serait-ce que par nécessité de récupérer de l'oxygène. C'est notamment le problème qui se pose en *II/XVI* quand ils manquent de mourir sous la banquise.

Ce n'est pas exagéré de dire que la moitié du roman ne se passe pas sous les mers. Et en surface se déroule l'intrigue comme l'observation de la nature : ce ne sont pas des passages secondaires. Par exemple, quand les "sauvages" d'Océanie veulent attaquer le Nautilus, quand les calmars attaquent le Nautilus, quand on observe les oiseaux dans le ciel, etc... À ce titre, on suit plusieurs personnages sur la coque du Nautilus, et cette coque a une importance parfois fondamentale qui en fait un des lieux les plus importants du sous marins.

D'abord, le contact avec cette machine extraordinaire se fait par là. Quand les protagonistes tombent de leur bateau, ils se retrouvent dessus et le découvrent ainsi : cette coque sert de sas. De plus les personnages observent parfois la surface de l'eau : *I/XX* ; *II/XIII* ; *II/XIV* ; *II/XXI*. Parfois on va même sur la terre, que ce soit l'intérieur d'un volcan ou l'intérieur d'une île (île Gueboroar, *I/XXI*), sans compter le début et la fin du roman.

Il y a ainsi un jeu d'attirance et de répulsion entre la terre et la mer : les deux éléments se complètent et s'opposent et elle concerne également les personnages : Ned Land en a très vite marre d'être sur le Nautilus et dans le deuxième partie ses projets d'évasions se précisent. On ne cesse de se demander si on est assez proche des côtes mais on repart. Ce jeu rappelle la manière dont le Nautilus nargue ces bateaux.

La mer est presque d'une utilité philosphique : Nemo a besoin de revenir près des côtes pas seulement pour reprendre de l'oxygène mais pour mieux replonger dans le monde qu'il s'est créé dans les fonds sous marins.

=== Une plongée dans les abysses

#ul[Vingt mille lieues sous les mer] n'est pas seulement un roman marin mais surtout sous marin. Il y a un double exploit : en plus de parcourir une grande distance, il le fait sous l'eau. C'est ce qui fait l'originalté de l'oeuvre et le démarque des autres grands classiques qui restent en surface de l'eau.

Les personnages admirent les fonds marins : Jules Verne nous propose une immersion. Mais de plus on ne s'en contente pas, on glisse parfois carrément sous terre, avec par exemple le passage sous la banquise et le continent du pôle sud, le passage dans le volcan et surtout sous l'isthme de Suez, où l'on passe sous la terre par un passage secret.

Pour Jules Verne, cette plongé dans les abysses constitue un voyage dans un autre monde. Ici c'est l'idée qu'en voyageant profondément sous l'eau on atteint un monde différent du notre : le monde des merveilles. Un monde où Nemo nous sert de guide.

Ce monde des merveilles il a un seuil, en *I/XVI*, quand Nemo propose pour la première fois à Aronnax d'aller se promener sous l'eau.

#quotation([
	Comment pourrais-je retracer les impressions que m'a laissé cette promenade sous les eaux ? Les mots sont impuissants à raconter de telles merveilles !\
	*Première partie, Chapitre XVI*
])

On peut ici faire un parallèle avec Nemo qui sert de guide dans ces profondeurs, il y a même mouvement de lecture des lieux comme des personnages : exactement comme la mer a ses mystères sous la surface des eaux, le capitaine à ses secrets enfouis dans le passé.

Son passé reste mystérieux mais nous avons quelques bribes : au début, Nemo devait être Polonais dont toute la famille aurait été tué par des méchants russes, les amis déportés en sibérie, etc... Nous somme à une époque où les français sont attachés à la cause polonaise. Cependant, Hetzel refuse d'en faire un Polonais car il peur de perdre des parts de marché en Russie. Ainsi, Nemo ne sera plus polnais mais indien.

De plus, au départ, Nemo est censé être encore plus méchant et le Jules Verne le caractérise d'arcange du crime. Par exemple, quand les amérindiens tentent d'envahir le Nautilus, Nemo devait tuer les intrus avec sa décharge électrique mais il a édulcoré le passage sur demande de l'éditeur. C'est comme le milieu marin dans lequel il évolue qui est autant effroyable que positif. Nous comprenons bien qu'il y a une correspondance entre la nature et Nemo : faire l'expérience de la nature c'est aussi établir une correspondance entre un tempérament humain et un milieu naturel.

=== Une remontée dans le temps

#ul[Vingt mille lieues sous les mers] nous offre égalment un autre type de voyage : un voyage dans le temps. En *II/XIX* on revient sur l'Atlantide, en *II/VIII* on revient sur les batailles maritimes, *II/XX*, on voit aussi les batailles contemporaines. Pour Jules Verne, loin d'être enièrement vierge, la mer se caractérise aussi par une histoire, et ce qu'enseigne Nemo à Aronnax.

#quotation([
	Combien de victimes [...] quelle sinistre histoire serait à faire que celle de ces fonds méditerranéens, de ce vaste ossuaire, où tant de richesses se sont perdues, où tant de victimes ont trouvé la mort\
	*Deuxième partie, Chapitre XVII*
])

Avec le Nautilus se dégage l'impression qu'on échappe au temps, le temps s'allonge et n'a pas de terme.

== Une exploration paradoxale

=== Un vrai dépaysement ?

Il y a un paradoxe dans le Nautilus du capitaine Nemo : c'est l'appareil qui nous offre le dépaysement total puisqu'il nous permet d'explorer des endroits où les hommes ne sont jamais passés et ne passeront peut-être jamais ; mais dans le même temps, il reproduit des lieux bien connus et bien identifiables. Le Nautilus offre une bibliothèque, un salon, une salle à manger, un orgue, etc... Cela va même parfois plus loin que le Nautilus : la mer elle même nous offre une forêt, un cimetière voire un coffre fort (Galions du XVIIe siècle).

Il y a à chaque fois l'idée d'une rupture avec la civilisation mais c'est toujours pour mieux y revenir, on ne fait que chercher des substitus sous l'eau à ce qu'on connaît sur terre : Jules Verne continue d'avoir une imagination très "terrestre".

Le monde marin semble échapper aux lois terrestre dans son otarcie, et il y revient pour se justifier : le monde sous marin à besoin du modèle terrestre pour justifier sa raison d'être, c'est ce que fait Nemo quand il nous explique qu'on peut manger des aliments qui ressemblent à ceux de la terre

Est-ce donc un vrai dépaysement ou une simple illusion de dépaysement qui nous est survie ?

=== Enseigner ce qu'on n'as pas vu

Jules Verne n'est-il pas un imposteur ? Certes il a de nombreuses connaissances mais il n'as jamais fait le tout du monde. Son art est d'ailleurs de parvenir à nous faire croire qu'il l'a fait, et cela n'est d'ailleurs pas un problème pour l'aspect fictionnel de son oeuvre, mais questionne sur l'aspect pédagogue : il demande de de lui faire confiance quand il explique des choses qu'il n'as pas connu. Il est un peu illégitime et on peut se demander si l'auteur ne fait pas simplement illusion

=== Monde du passé ou monde du futur ?

Pour la dernière nuance, on a dit précedemment que c'est un voyage historique qui est proposé par le roman, mais c'est peut-être l'inverse : le Nautilus offre un bon dans le futur, une forme de science-fiction. Ici, faire l'expérience de la Nature c'est anticiper le contact qu'on aura plus tard avec celle-ci.

#quotation([
	Oui, monsieur le professeur, répondit avec une véritable émotion le capitaine Nemo, et je l'aime comme la chair de ma chair !\
	*Première partie, Chapitre XIII*
])

Dans les chapitres XI, XII et XIII nous avons droit à des descriptions des merveilles du Nautilus.\
Le Nautilus est indissociable du milieu marin dans lequel il évolue, il permet d'anticiper ce que sera la nature. Dans le chapitre XIV, Nemo souligne le caractère extraordinaire de ce l'électricité qui alimente le Nautilus : "ce n'est pas celle de tout le monde".

= Faune et flore océanique

L'oeuvre de Jules Verne est un inventaire de la faune et de la flore pour un public qui à l'époque ne la connaît pas encore et n'est pas encore familiarisée avec elle. Elle donne à découvrir une faune et une flore aquatique, cotière, insulaire et aérienne.\ Cet inventaire est aussi l'occasion d'une confrontation de l'homme avec un autre modèle de vie, animal ou végétal, par rapport auquel il va se positionner. On notera également une importance plus grande de la faune que de la flore, qui est présente mais comme un décor.

== Un monde de ressources

=== Un vivier de fournitures : la Nature au service de l'autarcie

L'existence du Nautilus repose sur un postulat : la faune et la flore marine peuvent fournir à elles seules la totalité des besoins alimentaires. On peut donc rapprocher celà au #ul[Mur invisible] : dans #ul[Vingt mille lieues sous les mers], l'océan devient une ferme sous-marine géante que Nemo exploite pour obtenir une autosuffisante. La diversité des espèces se révèle d'une grande richesse qui contraste d'une part avec la privation qu'on pourrait attendre dans la vie en sous-marin et d'autre part avec la monotonie alimentaire voire la privation qu'on voit sur l'Abraham Lincoln et dans la prison

*Livre I, Chapitre V* "Aronnax mange à peine, il ne consacre que quelques minutes à son repas"\
*Livre I, Chapitre VIII* Ils sont mis dans une espèce de prison et ont très faim, Ned Land dit "Ne voyez-vous pas que ces gens là [...] j'ai faim, donnez moi à manger !", et comme par hasard dès qu'il dit qu'il à faim les plats apparaissent par miracle.

Ce premier repas mangé en cellule est déjà étonnant, puisqu'il reconnaît quelques poissons mais il ne peut pas se prononcer sur d'autres plat "Il n'y a d'autre [...] appartenait."

Il faut attendre le *Chapitre X, Livre I* pour avoir le repas, où tout n'est que richesse et merveille. Les plats proviennent uniquement de poissons, molusques, crustacés et algues. Tout de suite, pour palier au côté incroyable, Nemo rassure Aronnax en lui disant que si tous les aliments ont l'air curieux, on peut les consommer sans crainte et sont tout autant nourrissants que ceux trouvés sur terre : les créatures marines se transforment en substitus culinaires de ceux qui se trouvent sur terre.

Il cite les grands fucus pour le sucres, les mamelles des cétacés pour le lait, les confitures de fruit qui sont d'anémones. Tout est fait pour donner l'impression qu'avec un peu de géni inventif, l'océan n'est plus l'océan qu'on imagine mais au contraire un champ d'abondance qu'on peut exploiter à volonté.

On est ici sur quelque chose de merveilleux qui vient en plus de l'illusion, du trompe-l'oeil créé par ces plats. On voit l'amusement de Nemo quand il dit à Aronnax que la viande qui mange n'est autre que de la Tortue, que du ragout de porc n'est que du foie de Dauphin, etc...

Les plantes et les coquillages fournissent également les parfums, les draps, les vêtements, etc... 

Ainsi, le système d'approvisionnement du Nautilus revet d'une "écologie utilitaire" car tout ce qu'il récolte est utile et qu'il respecte la mer, il ne la pille pas.  La faune est une ressource renouvelable mais il faut l'utiliser avec raison.

=== Un viver de richesses : matériaux et énergie cachés

La mer n'offre pas que de l'alimentation, elle offre plusieurs autres choses de valeur. La faune et la flore offrent d'abord des matériaux d'une richesse incroyable qui valent pour eux même, des "objets d'arts" avant même d'être utilisés.

Aronnax passe devant des tableaux et collections du capitaine
#quotation([
	Auprès des oeuvres de l'art les raretés naturelles [...] qui devaient être les trouvailles personnelles du capitaine Nemo.
	\ Aucun musée n'en a de pareils \
	*Livre I, Chapitre XI*
])

Nous avons au *Chapitre XI* une longue description de cette collection avec un enchérissement progressif, et on en vient à dire qu'elle est d'une valeur impossible. D'autant plus inestimable qu'il ne les a pas achetés mais trouvés.

C'est également une manière d'ouvrir les yeux d'un public pour lesquels tous les coquillages se valent. On retrouve notamment dans cette collection les perles du capitaine, qui est une façon de parler au public, de montrer à quel point la collection du capitaine est incroyable. Les perles deviennent un symbole de la valeur inestimable de ce que la nature peut générer toute seule. La nature crée elle-même le luxe. Même le luxe n'as pas besoin de l'homme, le comble de l'autarcie.

Ces richesses ont quasiment un côté sacré (redistribution aux opprimés, cf. rebelles crétois *partie II*)

Il y a de plus un côté esthétique et symboliquement beau de la mer, son trésor le plus précieux en étant un qui ne lui appartient pas : toutes les merveilles que l'on découvre au travers des hublots du Nautilus

Au delà des matériaux, la mer fournit des ressources énergétiques. La faune et la flore donnent des matières premières organiques comme l'huile désrivée de certains cétacés, le bois dérivés de certaines plantes insulaires, nécessaires au bon fonctionnement du Nautilus

=== La morale de la rareté

L'océan est un lieu d'abondance mais aussi de frugalité, pas au sens de pauvreté mais d'abondance bien comprise, bien exploitée.

Nemo en agissant ainsi prend ses distances par rapport à la civilisation terrestre marquée par une industrialisation à outrance qui épuise ses ressources et détruit sa faune. Il a besoin de chasser mais aussi de protégeer la faune qui le fait vivre. Il accorde qu'on puisse massacrer les cachalots car ils chassent les baleines qui sont nécessaire à sa survie.

Il y a ainsi une forme de hiérarchie entre les différentes espèces. On peut voir une forme de régulation. Ainsi, Nemo exploite les océans en critiquant la démesure de l'exploitation terrestre.  C'est un usage plutôt symbolique voir politique, la ressource à quelque chose de l'ordre de la morale, de l'idéologie anti-terrestre.

== Une matière scientifique

=== Un inventaire à réaliser

À l'époque de Jules Verne, la faune sous-marine est largement inconnue et la première chose à faire et de la répertorier. Voir *Partie I, Chapitre II* avec l'article qu'Aronnax donne à paraître dans le New York Herald. Tout le monde s'interroge sur la nature de la chose et Aronnax est interrogé. Il répond alors que c'est possible qu'il y ait un monstre car les fonds marins sont inconnus encore. "Les grandes profondeurs de l'océan nous sont totalement inconnu, la sonde n'as su les atteindres [...] douze ou quinze milles au dessous de la surface des eaux. Quel est l'organisme de ces animaux, on ne saurait à peine le conjecturer". Il reconnaît après que la mer constitue un élément où le règne animal est particulièrement prodigieux "la mer est précisément le seul milieu où ces géants [...] puissent se produire et se développer [...] d'une incomparable taille [...] des crabes pesant deux-cent tonnes"\ Il se lance dans une rêverie à la Jules Verne, dans laquelle il opte pour la mer comme milieu de l'infiniment grand.

Il ne peut pas non plus s'empêcher de voir la préhistoire, car le $"XIX"^"e"$ est le siècle où on redécouvre la préhistoire, où on découvre le côté sauvage que chaque individu contient. L'idée ici est que dans les fonds marins aurait survécu des espèces préhistoriques, qui seraient donc bien plus grand que ce que l'on connâit à la surface. Le voyage dans les mers est une manière de remonter l'histoire de l'évolution.

On a donc une faune et une flore inconnue des scientifiques et surtout du grand public, d'où le catalogue d'espèces végétales et animales que présente le livre, qui sont là également pour former une sorte de vertige par l'accumulation et l'effet d'étrangeté des noms. Il y a une association du signifiant et du signifié : le mot est aussi étrange que la réalité qu'il désigne. On voit par exemple les catalogues à la fin du chapitre *I/XIV* lorsqu'ils observent les poissins à la baie vitrée du Nautilus ou à la fin du chapitre *I/XVI* où ils discutent des algues marines.

=== Classer les différents espèces

L'inventaire ne suffit pas, appréhender les connaissances de la natures c'est aussi trier ces connaissances. La première mention du professeur Aronnax est lorsqu'il est en train de classer ses différentes richesses. Il est aidé pour cela de Conseil, présenté comme le plus merveilleux et plus bête des valets, qui est un spécialiste de la classification.

Ici, l'approche est typiquement hérité de _Carl von Linné_, le premier à avoir organisé la classification des espèces du vivant au $"XIX"^"e"$. classification qui est devenue un réflexe pour les savants. Ce qui crée donc l'interrogation sur le monstre.

Il y a quelque chose de systématique dans la classification, qui sert de rempart contre le chaos de ce qu'on découvre. Ainsi, même les créatures les plus fantastiques doivent rentrer dans la classification et c'est une manière de les rendre moins dangereuse. Conseil est ainsi fortement utile à Aronnax et au roman en étant celui qui ramène de l'ordre dans ces fonds marins chaotiques.

== Monstres et merveilles : le cas du Nautilus

=== Le royaume des créatures surnaturelles

Il est clair que Jules Venre conjugue le merveilleux et la monstruosité, et chaque espèce a quelque chose de merveilleux.

Le mot monstre vient de _monere_ : avertir, le monstre étant une création de la nature qui avertit d'une catastrophe à venir, c'est un présage.\
On a cependant longtemps cru que cela venait du verbe latin _monstrare_ : montrer, le monstre est donc ce qui nous montre quelque chose mais c'est aussi ce qui est montré, et cest cette option là qui nous intéresse : ce qui est montré c'est ce qui est pointé du doigt, ce qui est divulgé au public pour le présenter dans toute son étrangeté. Et de ce point de vu là, beaucoup d'animaux présentés ont quelque chose de monstrueux, la mer est le royaume des légendes sur montres et merveilles en tout genre.

"La mer est le lieu du terrible Moby Dick, du Kraken démesuré ou du serpent de mer", *I/I* (il parle ici de la légende de Moby Dick et non du livre). Il suffit de l'irruption du Nautilus pour faire ressurgir toutes ces légendes.

Il y a une tératologie à l'oeuvre dans #ul[Vingt mille lieues sous les mers], il y a même une dimension paradoxographique dans l'oeuvre de Jules Verne.
La tératologie est la science des monstres, aujourd'hui c'est la façon dont les monstres sont créés. Mais pendant longtemps, la tératologie se confondait avec les légendes et n'avait pas cet aspect scientifique. Pour différencier les deux on utiles parfois le terme de paradoxographie, désignant tous les textes qui se complaisent pour racontrer tout ce qui est prodigieux, incompréhensible voire inquiétent dans la nature.

En 1539, Olaüs Magnus publie la Carta Marina de la scandinavie, qui comporte notamment des monstres marins.

De plus, nous pouvons voir des réminiscences bibliques, avec la mention du Léviathan *(I, IV)*.

Le plus important dans tout cela et qu'on veut y croire, où Jules Verne comme Aronnax sont partagés par une exigence de raison et un besoin d'émerveillement. Et surtout, le grand public veut croire aux monstres et merveilles qui peuplent le monde marin.\ *(I, I)* "L'esprit avait vaincu la science [...] qui peuplerait le fond marin"

=== Une machine animalisée

Le roman travaille le rapprochement entre le Nautilus et l'animal, qui est une manière de réactualiser le thème de l'animal monstrueux. La machine apparaît l'origine d'une confusion avec la bête. Cela est déjà présent chez Zola avec #ul[La Bête humaine], Zola campe son roman dans le monde ferroviaire et tout le roman présente la locomotive comme le cheval moderne. La locomotive vit et meurt dans le roman, mort à laquelle on assiste.\ Il y a ainsi ici confusion volontaire entre l'animal et la machine.

Dès le début, le Nautilus est pris pour un cétacé, et on lui fait la chasse comme à une grosse bête. Même Aronnax pourtant spécialiste des mers tombe dans le piège et parle d'un narval géant. Tout de suite, le narval est qualifié de licorne de mer, terme repris plusieurs fois. Le Nautilus est donc qualifié de cétacé, souvent de monstre voire de licorne de mer.

Au début il y a un suspens : plusieurs navires ont rencontré quelque chose d'énorme, à la fois au sens commun, car il est grand, mais également étymologique : _ex normis_, qui sont de la norme, extraordinaire. 
On nous parle de son caractère prodigieux, sa vitesse inouie, sa puissance impressionnante, il y a quelque chose d'inédit. "Si c'était un cétacé, il surpassait en volume tous ceux que la science avait classé précedemment".

Il s'agit donc d'un faux cétacé mais qui est absolument incroyable.

On nous dit enfin qu'il a le don d'ubiquitié puisque à trois jours d'intervalles il s'est déplacé d'un endroit du pacifique à son opposé.\ Là encore, le Nautilus sert à raviver des légendes ancéstrales. On nous dit *Chapitre I* que ce monstre est à la mode, on le chante dans les cafés, on le parle dans les journeaux, on le figure dans les théâtres, etc...

#quotation([
	Les imaginations se laissèrent bientôt aller aux plus absurdes rêveries d'une ichtyologie fantastique.\

	L'esprit humain se plaît à ces conceptions grandioses d'êtres surnaturels.\
	*Livre I, Chapitre II*
])

=== Le combat contre le monstre : un nouvel héroïsme

La mer représente un vivier de monstre mais est aussi un espace où l'homme s'accomplit. Celui qui battra le monstre fera oeuvre d'héroïsme et de civilisation. Traditionnellement, le héro est celui qui purge le monde de ses monstres. Par exemple, dans les mythes grecs, les mythes chrétiens, etc... Hercule est celui qui vaint les monstres, Persée est celui qui coupe la tête de Méduse, etc...\ Le Nautilus inflige des dommages impressionnants aux navires à tel point qu'il devient le bouc émissaire de tous les naufrages qui apparaissent en mer et où on pense les communications entre les continents menacés.

Ainsi, celui qui battra le Nautilus sera un héro, le Nautilus est vu comme le montre suprême à abattre. Aronnax lui même se rêve en nouveau héro

#quotation([
	Je comprenais enfin que ma véritable vocation, l'unique but de ma vie, était de chasser ce monstre inquiétant et d'en purger le monde.\
	*Livre I, Chapitre ... (III/IV ?)*
])

Il y a d'ailleurs une forme ici de dévouement, de sacrifice héroïque. Il est pressé de partir, de revoir la France, et malgré cela il se jette sans réfléchir dans l'aventure. Il évoque également le trophée à ramener, et dit au chapitre *III* "Ce digne animal se laissera prendre [...] hallebarde d'ivoire au muséum d'histoire naturelle".

Cependant, Aronnax n'est pas le seul à se voir en héro. Il y a également le commandant Faragut qui croit pleinement au montre, par foi non par raison. "Le monstre existait, il en délivrerait les mers, il l'avait juré. C'était une sorte de chevalier de Rhodes, un Dieudonné de Gozon, marchant à la rencontre du serpent qui désolait son île. Ou le commandant Farragut tuerait le narwal, ou le narwal tuerait le commandant Farragut. Pas de milieu." *(I,IV)*

Un autre personnage se rêve également en chasseur de monstre, c'est Ned Land, chasseur de baleine, qui lui aussi incarne l'action, le combat, le corp à corp entre le monstre et l'homme.

= Une étude de la nature humaine

Il ne faut pas oublier, quand on parle de la nature et d'expériences de la nature, de parler de la nature humaine.

L'expérience de la nature est parfois une excuse pour explorer la nature humaine.

== Diversité de la nature humaine

Il faut revenir sur le contexte : l'oeuvre de Jules Verne prend place à une époque où l'on est avide de découverte sur les autres peuples. On aurait tort de voir dans le colonialisme uniquement des massacres de de la sauvagerie, il y a aussi eu un élan des peuples vers d'autrs peuples.

On arrive alors dans le thème des "Villages noirs", on faisait venir d'Afrique des gens recrutés pour être installés dans des villages et où ils devaient vivre "à leur manière" pendant 6 mois sous les yeux des habitants. Les témoignages sont alors un mélange déroutant de racisme et d'intérêt. On est tout de même à une époque de découverte de l'autre.

cf. #ul[Cannibales], de Didier Daeninckx

De plus, tous les romans de Jules Verne présentent différents peuples, on sent une appétence pour la diversité humaine.

Dans #ul[Vingt mille lieues sous les mers], on rencontre beauoup de personnes, et le tour du monde que nous propose Jules Verne et pleins de différents personnages : des américains, des anglais, des français, des indiens, des crétois, des autochtones de nouvelle guinée, etc...

#quotation[
	Ces marins appartenaient évidemment à des nations différentes, bien que le type européen fût indiqué chez tous. Je reconnus, à ne pas me tromper, des Irlandais, des Français, quelques Slaves, un Grec ou un Candiote. Du reste, ces hommes étaient sobres de paroles, et n'employaient entre eux que ce bizarre idiome dont je ne pouvais pas même soupçonner l'origine.\
	*Première partie, Chapitre XVIII*
]

Exactement comme on avait un inventaire des espèces marines on a un inventaire des espèces humaines. (Le mot race est employable si le contexte est bien posé. Cependant on peut mettre des guillemets pour relativiser le propos. Il ne faut cependant pas s'abstenir de l'utiliser.)

Par exemple, quand ils s'arrêtent en polynésie, ils s'arrêtent à l'archipel des Pomotou. *I.XIX/XX*. Il met au même plan la présentation des madrépores, des poissons et celle des "sauvages".\
$=>$ Les peuples seraient sur le même plan d'émerveillement que le reste de la nature.

Petite parenthèse sur les madrépores *I/XIX*. Présentés comme une curiosité des récifs de polynésie. C'est pas vraiment des coraux, mais c'est des coraux. Mais ce qui est intéressant, c'est que lorsqu'il réfléchit aux madrépores ; il se demande comment la vie est arrivée sur des petits rochers, et son idée est que des graines ont été transportés, ce qui a créé de la végétation, etc... On a ici un exemple de comment le romancier remonte le temps pour explorer la nature. 

La présentation des "sauvages" est d'ailleurs dans la continuité directe de la présentation des coraux. Cette présentation des peuples est d'ailleurs un des enjeux majeurs de l'aventure de Nemo. "Ce ne sont pas de nouveaux continents qu'il faut à la terre, mais de nouveaux hommes" : il ne faut pas se contenter de la nature mais d'observer les hommes.

=== L'équipage du Nautilus

De plus, pour revenir à l'époque, Jules Verne est pétri de récit pseudo-scientifiques en vogue à l'époque. Et cela est d'ailleurs visible dans la présentation de nemo et son acolyte quand ils sont en cellule. "L'un des deux personnages [...] population provenciale", même un personnage dont on ne saura rien, Verne le place dans une catégorie, dans un type.

Le type humain fait alors écho à la classification des humains.

Grosse différence avec Haushofer qui nous présente un monde de la solitude. #ul[Vingt mille lieues sous les mers] au contraire n'en est pas un : le petit équipage de Nautilus forme un microcosme qui renvoie à lui seul à la diversité des nations. Mais de plus chaque nation obéi à un tempérament, il y a un géni des nations (au sens d'une particularité de chaque nation).\ Aronnax est évidemment français, il incarne la raison, la pensée, le positif, il est à la pointe du progrès. Le flammand Conseil lui représente un petit pays, au nord de la France et dans la Belgique. C'est le petit personnage rigolo et ridicule. Le Canadien Ned Land est l'incarnation du primitif, mais du primitif noble, d'action ; il incarne l'énergie indomptable, le besoin de liberté, la méfiance du trop scientifique. C'est la force et le pragmatisme ; tout ça, c'est le tempérament américain / anglosaxon

Reprenons le *I/VII*, ils sont enfermés dans la geôle et Aronnax commence à raconter son histoire en Francais. Ned Land lui parle en anglais pour tenter de se faire comprendre. Il relie alors clairement l'usage de la langue anglaise à l'appartenance au monde ango-saxon. Quand le français est calme, l'ango-saxon lui parle plus fort. "Le Canadien [...] il fit comprendre par un geste expressif que nous mourions de faim."

Nemo lui incarne tous les paradoxes de l'orient, à la fois profonde et ténébreuse, fascinante comme incompréhensible.
=== La diversité des peuples
Ainsi, on fait le tour des nations mais elles sont souvent prisonnières des stéréotypes de l'époque, servant évidemment de prime abord à dévaloriser les gens non-européens. Mais en dévalorisant on reste très curieux. Même à la toute fin, les pêcheurs norvégiens sont qualifiés de braves gens.

Reprenons l'exemple des habitants de Papouasie. Nous somme en Nouvelle-Guinée, *I/XXI-XXII* où l'on a un retour sur les différentes façon qu'ont les "Malais" de leur façon d'attraper les oieaux. On les attrapes au laçet, à la glue ou au poison.

Il se lance ensuite dans une longue description qui elle sert le récit. Ils bivouacs et tout d'un coup ils reçoivent une pierre. Alors, ils quittent l'île devant "des sauvages hurlant et gesticulant". *Ils sont d'ailleurs ici également appelés "naturels". Ce qui indique un lien fort avec la nature dont ils sont restés très proche, mais également en faisant part intégrante de la nature*.

On voit alors l'idée du "bon sauvage", qui est resté proche de la nature. On voit ça par exemple chez Diderot, qui réagit au journal de bord de Bougainville, dans lequel il présente les polynésiens comme de bons sauvages, qui étaient proche de la nature et qui, dès que l'occidentalité est venue chez-eux, ont vu leur civilisation dépérir.

Jules Verne montre qu'au XIXe, cette lecture a du ........

Aronnax voit apparaître une centaine d'autochtone, on les affiche comme "des homme de belle race" mais qui sont tout de même affreux en comparaison aux européens. Il ont un grand nez, la chevelure laineuse, etc...

Il y a également une supériorité spontanée de l'européen, supérieur en technique mais aussi en morale. En technique car où les "sauvages" n'ont que les arcs et les flèches, les européens ont des fusils ; et moral car là où les habitants de Nouvelle-Guinée gesticulent, les européens restent magnanimes.

On voit alors le motif de la horde face à quelques européens qui s'en sortent avec leur savoir. On sent alors qu'il se moque. "Mais le premier de ces indigènes qui mit la main sur la rampe de l'escalier, rejeté en arrière par je ne sais quelle force invisible, s'enfuit, poussant des cris affreux et faisant des gambades exorbitantes. Dix de ses compagnons lui succédèrent. Dix eurent le même sort." Et pendant ce temps, ils rient, on ne sait pas si c'est pour les papous ou pour la bêtise de Ned Land, mais ils rient et le chapitre s'arrête là, sur la "victoire de la civilisation sur la barbarie".

=== Le capitaine Nemo

Nemo a rompu avec l'humanité. "Les plus fâcheuses circonstances vous ont mis en présence d'un homme qui a rompu avec l'humanité. Vous êtes venu troubler mon existence…" *I/X*, "Je ne suis pas ce que vous appelez un homme civilisé".

Or, au XIXe siècle, l'humanité c'est aussi une question de nation. C'est à cette époque que le nationalisme se développe, et ça signifie à cette époque se reconnaître comme faisant parti d'une nation et faire en sorte que son état la reflète.

Il faut comprendre Nemo dans ce contexte là, c'est à dire qu'il refuse la question de la Nation, de la patrie. Ce qui nous le montre, en plus de son discours, c'est son usage des langues. Nemo parle toutes les langues, mais non seulement ça mais il choisit d'en faire un usage raisonné et rationné. Par exemple, en *I/X*, Nemo prend finalement la parole, disant qu'il parle toutes ces langues qu'ils lui ont parlé, mais il voulait les connaître avant d'entamer la discussion.

Il parle également des langues inconnues comme si elles étaient inventées. Et Nemo par l'intermédiaire de cette langue, prétend échapper au monde extérieur.

Cela nous montre donc que le personnage semple n'avoir ni nom ni partie, il n'est personne _nemo_, et ce personne passe par le refus d'être apparenté à quelconque nation par la langue qu'il emploi. C'est ainsi l'idée (ou l'illusion) d'un homme nouveau qui serait complètement affranchi des contingences territoriales. La mer serait alors un mpnde universel et unifié. 

Quand Aronnax découvre Nemo, il le décrit longuement mais n'apperçoit aucun type particulier, il est apatride même par son physique.

Ce mystère de la nationalité de Nemo peut d'ailleurs être lié au Babelisme du Nautilus

== La nature humaine face à l'inconnu naturel

Il ne s'agit plus de voir la diversité vis à vis de son ethnie mais vis à vis de ses réactions.

=== Les trois désirs fondamentaux

Jules verne montre la nature humaine dans trois "désirs fondamentaux" : dans ce monde inconnu qu'est la mer, nos personnages montrent trois orientations différentes : Le dévir de conaissancee, le désir de liberté et le désir de justice. Les personnages nourissent chacun leur propre vision de ces aspects, et ces désirs entrent en conflit les uns avec les autres.

*Le désir de connaissance* est incarné par Aronnax dont la passion scientifique est la force motrice, et pour qui le monde sous-marin est un musée permanent dont on arpente les galeries, et ils justifient chez lui l'oubli de sa liberté : pendant les 3/4 du roman, Aronnax n'est pas vraiment assailli par la prison qu'est le Nautilus. L'homme a besoin de connaître, de découvrir, d'apprendre, de s'épanouir par la science.

La science vient du latin _scire_, savoir. La science veut alors ici simplement dire la connaissance.

*Le désir de liberté* est lui incarné par Ned Land, qui rejette la cage dorée qu'est le Nautilus, qui rejette les illusions du luxe que propose le capitaine Nemo et qui n'as pas ce souci de connaissance car c'est un homme d'action, pas un intellectuel. Pour lui, la connaissance s'arrête là où s'arrête son lancer de harpon. Ainsi, c'est lui qui très tôt à des envies d'évasion. Il est aussi le plus solitaire, seul dans sa quête de liberté ; mais progressivement, il va détourner Conseil d'Aronnax pour échaffauder à deux de mêmes projets d'évasion.

*Le désir de justice* est incarné par Nemo. L'homme a soif de justice, avec un besoin de vengeance de la part du capitaine, et la quête d'une justice supérieure, quasiment divine. Nemo se rêve à la fois législateur, juge est bourreau. Il est celui qui décrète la loi, juge ceux qui l'enfreignent et bourreau quand il le faut (en coulant des navires par exemple)..

#pagebreak()

=== Les reflèxes de l'homme face à l'hostilité de la nature

On a dit dans le *II* qu'il y a un côté épique à #ul[Vingt mille lieues sous les mers], c'est le modèle de l'épopée, au début réservé à la poésie puis démocratisé et récupéré par le roman ; qui est finalement l'héritier des grands poèmes de l'antiquité.

L'idée est que l'homme, exactement comme dans l'épopée, va se révéler dans l'affrontement. Il va se révéler dans la difficulté, même se sublimer. Il va devenir *héroïque*. L'homme est capable de choses extraordinaires.

L'épisode le plus parlant est celui de la banquise en Antarctique. Il s'agit d'une variation sur le thème de la captivité : les personnages sont doublements captifs, déjà du Nautilus mais également de sous les glaces. Ils doivent percer la glace avant que les stocks d'oxygènes ne s'épuisent.

On voit ici que l'homme se dépasse dans les efforts qu'il accomplit : il accomplit l'impossible, plutôt que de baisser les bras il arrive à faire quelque chose qu'aucun animal ne pourrait faire.\ De plus, cet exploit est le fruit d'une collaboration entre gens qui ne s'apprécient pas forcément : Ned Land et Nemo s'opposent sur le bâteau, mais quand il le faut ils savent mettre leurs dissentions de côté pour surmonter les dangers. On peut même parler de solidarité humaine.

Il y a également le passage des calmars géants, symboles de la fatalité et de la sauvagerie de la nature. Il y a alors une solidarité de survie qqui s'instaure entre les personnages.

Ainsi, dans la nature humaine, tout n'est pas à jeter, et l'homme est capable de belles choses face à l'hostilité des choses qui s'abbatent contre lui.

=== Une refléxion sur les contradictions de l'homme

Il n'y a pas plus contradictoire que l'être humain, il est pétri de contradictions et le personnage le plus contradictoire est paradoxale reste le capitaine Nemo, capable du meilleur comme du pire.

On peut le qualifier aujourd'hui de criminel de guerre car il torpille les navires, sans sommation et sans pitié. On y voit une sorte de folie destructrice.\ Nemo relève du nihilisme, venant de _nihil_ (rien), qui est la tentation de la destruction absolue.

Mais en même temps, Nemo est philantrope, se voyant comme un justicier, un chevalier du temps moderne : il sauve le pécheur de perle, distribue de l'or aux insurgés crétois, etc...

Aronnax est lui aussi un paradoxe, il incarne la servitude volontaire ; il reste en prison de son plein gré.

Pareillement, Conseil est paradoxal dans sa science et sa bêtise réunies, dans son indépendance et sa servitude en son maître. Il est tombé à l'eau car son maître est tombé à l'eau Il y a quelque chose de l'ordre de la bêtise éclairée chez le personnage.

== Les interrogations du romancier sur l'avenir de l'humanité

C'est une génération pour laquelle la technique est forcément de l'ordre du progères, mais il se demande où ça va nous mener.

=== L'évolution de la science

Tout d'abord, il est question de l'évolution de la science. Finalement, la science n'est-elle pas quelque chose qui nous isole les uns les autres.

Le Nautilus est une manière de souligner à quel point l'homme est génial dans son invention mais aussi une manière d'exprimer ses dangers. Le Nautilus est une utopie, un idéal qui tourne à la prison dorée, à l'isolement et à une forme de stérilité du savoir. À quoi bon que Nemo ait autant de savoir si c'est pour rester isolé, pour ne pas les partager et se battre contre l'humanité ?

Jules Verne place ses espoirs dans la technologie, il est ici qualifiable de visionnaire, et montre que l'homme est capable de grandes choses. Il a perçu que l'avenir de l'humanité passerait par trois choses :
+ la question de la locomotion.
+ la question de l'énergie
+ la question du "miniature", de l'échelle de la technologie

On s'apperçois que le Nautilus est génial car il réinvente l'électricité qui est vu comme ayant un énorme potentiel à l'époque. Comme cette électricité vient du sodium de la mer, on peut même parler d'énergie rebouvelable. Il s'affranchit du charbon et de la vapeur cent ans avant le reste du monde. Il est également capable de prouesses, sa vitesse, sa résistance, etc...

De plus, le Nautilus est géant mais toujours beaucoup plus petit et maniable que les énormes navires contre lesquels il lutte.

=== Un roman de la fraternité

De plus, on voit une sorte d'empathie et de fraternité universelle, qui va au delà des nationalités. Cette empathie est d'abord passive, impuissante, pour celui qui périt en mer. Que ce soit pour les cadavres des naufragés ou pour les matelots qui perdent la vie.

On peut faire un petit détour par _Lucrèce_, un poète et philosophe latin qui a dans le #ul[De Rerum nature] (De la nature des choses), et du passage célèbre du _Suave mari magno_. _Lucrèce_ y dit qu'il est doux quand la mer gronde, quand c'est la tempête dehors, d'être tranquillement installé chez soi près du feu. Le roman développe ici l'inverse du _Suave mari magno_ : on est dans la même position, mais on a beaucoup de sympathie pour les gens qui meurent et que l'on ne peut pas sauver "Cet appel déchirant, je l'entendrai toute ma vie !" On voit aussi une sorte de solidarité des marins au début du roman dans la quête de tuer le narwal géant ; ou encore dans l'affrontement entre les crétois et les ottomans. De même dans le combat contre les poulpes. En *II/XVIII*, Nemo prévoit sa revanche et spontanément Ned Land propose son aide et le capitaine sauve Ned Land _in extremis_, et justefie son geste par une sorte de revanche, de surenchère de l'empathie. Et parfois l'acte devient même absurde, on voit quand Conseil saute à l'eau non pas pour sauver Aronnax mais suivre son maître partout où il va.

=== L'homme a une responsabilité de transmission de ses connaissances sur la nature.

Pour Aronnax, l'idée est de ne pas laisser les hommems dans l'ignorance mais de transmettre, c'est le rôle du musée et du savant mais aussi le rôle du livre : Aronnax est l'auteur d'un livre sur la mer, qu'il se plaît lui-même a lire, que Nemo a dans sa bibliothèque. On a ainsi l'idée que l'homme est redevable des connaissances qui ont lieux avant lui et se doit de les transmettre. On peut ainsi ici faire un parallèle avec Jules Verne directement et son devoir de transmission des beautés de la nature. Cette transmission n'est pas dénué de morale puisque c'est aussi l'idée que l'exploitatiion et le règne de Nemo sont des impasses. On peut voir ce roman comme une mis een garde contre l'hybris scientifique. Il faut avoir foi dans la création technologique mais il faut aussi se méfier de toute démesure scientifique.

= Conclusion

Chez Jules Verne, faire l'expérience de la Nature c'est partir à la découverte d'un milieu inconnu, faire oeuvre d'explorateur. Un explorateur pris entre l'émerveillement, l'assimilation de ces découvertes mais également la moralisation de notre rapport au monde : l'émerveillement car sans émerveillement il n'y a pas d'expérience de la nature. L'assimilation car la nature offre une sorte de magma informe et c'est à l'homme qu'appartient de la répertorier et la classer, la contrôler par l'esprit. La moralisation car en bon républicain de l'époque, Jules Verne n'écrit pas ça gratuitement, il écrit pour des enfants et il y a un message derrière, sur notre rapport au monde que nous devons traîter avec respect et moralisation dans le rapport des hommes les uns aux autres dans lesquels la nature nous invite.

Jules Verne étudie autant la nature extérieure que la nature intérieure et on peut terminer en disant qu'il s'agit d'une invitation à poursuivre par nous-même cette expérience. Le roman n'est que le débur d'une aventure et le voyage n'est pas fini.