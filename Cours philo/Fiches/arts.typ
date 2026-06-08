#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*Fiche 1 : Art*
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

== Platon

#cadre[
	Pour *Platon (427-347 av. JC)*, *l'art est suspect car il est une imitation d'imitation*. En effet, dans sa thérie de Idées, *le monde sensible* tel que nous le voyons est déjà une *copie dégradée et imparfaite* du monde intelligible des Formes pures : les concepts et idées abstraires sont tangibles et forment le modèle par lequel est crée le monde sensible (il se cache derrière). Ainsi *l'artiste, qui ne représente que ce monde sensible, se trouve à deux degrés de la vérité*. Un peintre ne produit ni un lit réel, ni l'Idée du lit, mais une simple image de lit.

	Dans _La République_, Platon bannit les *poètes* de la Cité idéale, car ils *nourrisent la partie irrationnelle de l'âme* -- les émotions et les passions -- au détriment de la raison. La tragédie fait pleurer le spectateur sur des malheurs fictifs, ce qui affaiblit sa capacité à maîtriser ses propres émotions dans la vie réelle. *L'art est un danger moral comme épistémologique*

	"Les poètes ne font qu'imiter des fantômes de la vertu et de tout ce qu'ils traitent, sans jamais atteindre la vérité"\
	-- Platon, _La République Livre X_
]

== Aristote

#cadre[
	*Aristote (384-322 av. JC)* lui *réhabilite l'art*, et la tragédie particulièrement. Si l'imitation est bien au cœur de l'art, elle n'est cependant pas un défaut : *l'imitation est naturelle pour l'homme*, car c'est par son aide qu'il apprend depuis l'enfance, et car elle lui procure un plaisir spécifique -- *celui de reconnaître et de comprendre.* 
	
	Cependant, la contribution la plus originale d'Aristote est la *notion de _catharsis_* : en assistant à une tragédie, le spectateur éprouve crainte et pitié, et ces émotions, en étant vécues dans un cadre fictif et contrôlé, se trouvent prugées ou purifiées.

	Contrairement à Platon, *l'art n'affaibllit par les passion, il les régule.* _La Poétique_ souligne aussi que la poésie est plus philosophique que l'histoire : là où l'historien raconte ce qui s'est passé, *le poète dit ce qui pourrait se passer, touchant ainsi au général et à l'universel.*

	"La poésie est plus philosophie et d'un caractère plus élevé que l'histoire : elle exprime plutôt le général, l'histoire le particulier."\
	-- Aristote, _Poétique, ch. IX_
]

#pagebreak()
== Kant

#cadre[
	*Emmanuel Kant (1724-1804)* aborde l'art à travers la *question du beau* dans la _Critique de la faculté de juger_. Il définit le jugement esthétique (le jugement de goût), par quatre caractères :
	- Il est *désintéressé* : on ne juge par le beau selon son utilité ou son agrément personnel
	- Il est *universel* : quand je dis que "c'est beau", je parle au nom de tous. Si mon voisin n'aime pas le foie gras que j'ai trouvé délicieux, ça m'indiffère, voire même me réjouit car il va m'orffrir sa part. Cependant, si à la sortie d'un concert où la musique interprétée par l'orchesste m'a ému, ou d'un film que j'ai trouvé magnifique, celui qui m'accompagne m'avoue avoir passé son temps à faire la sieste, je le prendrai bien plus personnellement.
	- Il repose sur *un sens commun d'esthétique*, une disposition partagée par tous les êtres raisonnables. Kant distingue d'ailleurs le beau du _sublime_ (une tempête, un abîme, l'infini) : un beau pour lequel notre imagination est débordée, mais notre raison est d'autant plus exaltée, ce sont des choses qui titillent notre curiosité mais qu'il nous est inexpliquable, ce qui plaît par "sa résistance aux intérêts des sens".
	- Il y a des *génies* : le grand artiste est celui à qui la nature dicte ses règles, il produit des œuvres originales qui ne peuvent être ni apprises ni imitées. Même si de nombreuses personnes sont capables d'imiter le style d'un Van Gogh, personne d'autre que lui n'as son génie, car c'est lui qui a créé sa manière de faire

	"Le génie est ele talent qui donne ses règles à l'art -- c'est la disposition innée de l'esprit par laquelle la nature donne ses règles à l'art."\ -- Kant, _Critique de la faculté de juger, §46_
]

== Hegel

#cadre[
	Pour *Hegel (1770-1831*, l'art n'est *pas une simple imitation* ni un jeu de la sensibilité : c'est une des formes par lesquelles *l'Esprit absolu prend conscience de lui-même*. L'art est la "manifestation sensible de l'Idée", il donne à voir dans la matière (la pierre, le son, les mots) quelque chose d'universel et de spirituel Hegel développe dans ses _Leçons sur l'esthétique_ *une histoire de l'art en trois grandes formes : *
	- L'art symbolique : antiquité orientale, où la matière étouffre encore l'idée
	- L'art classique : Grèce antique, parfait équilibre entre forme et contenu, donc la sculpture grecque est le sommet
	- L'art romantique : christianisme et modernité, om l'idée dépasse la forme sensible

	Cette progression mène Hegel à sa thèse la plus célèbre et la plus controversée : *la mort de l'art*. L'art dépassé par la religion puis par la philosophie, *n'est plus la forme suprême par laquelle l'Esprit se connaît*. Il garde la même valeur, mais son âge d'or est révolu.

	"Pour nous, l'art est chose du passé. Il a perdu pour nous sa vérité et sa vitalité authentiques"\
	-- Hegel, _Leçons sur l'esthétique, Introduction_
]

== Nietzsche

#cadre[
	*Nietzsche (1844-1900)* renverse radicalement la tradition philosophique sur l'art. *Loin d'être une menace ou une illusion, l'art est pour lui la grande affirmation de la vie*, l'antidote au nihilisme et à la souffrance de l'existence. Dans _La Naissance de la tragédie_, il distingue *deux pulsions artistiques fondamentales :* 
	- L'impulse apollinienne, principe d'ordre, de forme, de beauté plastique, du rêve et de l'individuation (la sculpture grecque)
	- L'impule dionysiaque, principe d'ivresse, de dissolution du moi, d'excè vital (la musique, la danse).

	La grande tragédie gracque naissait de la *tension féconde entre ces deux forces* : *Apollon donnait la forme, Dionysos donnait la vie.* Nietzsche reproche à Socrate et à Platon d'avoir *brisé cet équilible en soumettant l'art à la raison*. Dans ses œuvres ultérieures, il va plus loin : l'art n'est pas là pour nous consoler ou nous faire croire à un monde meilleur, il est là pour nous donner *la force de vouloir vivre ce monde-ci, tel qu'il est*, y compris dans sa cruaté. l'artiste est celui qui dit "oui" à l'existence.

	"Sans la musique, la vie serait une erreur."\
	-- Nietzsche, "Le Crépuscule des idoles"
]

== Heidegger

#cadre[
		*Contextualisation* :  Selon Heidegger, la terre (sa traduction du grec _physis_, la nature) et le monde sont opposés. Tandis que la terre est la réalité physique dans laquelle l'homme s'épanouis, le monde est ce qu'il crée dessus. Le monde et la terre ont besoin l'un de l'autre : la terre est révélée comme ce qu'elle est par le monde, tandis que le monde est physiquement rattaché à la terre. Cependant les deux bien que symbiotiques luttent l'un contre l'autre : le monde par la destruction de la terre qu'il entreprend, la terre par les catastrophe qu'il déchaîne sur le monde en retour.

	*Heidegger (1889-1976)* consacre à l'art l'un de ses textes les plus important, _L'Origine de l'œuvre d'art_, avec une thèse centrale : *l'art est une "mise en œuvre de la vérité"*. Il prend pour exemple les souliers de paysanne de Van Gogh : le tableau ne représente pas simplement des chaussures usées, *il révèle tout un monde,* la presanteur de la terre la fatigue du labeur, la silencieuse fidélité d'un outil.* L'œuvre d'art "ouvre un monde"* tout en laissant apparaître la terre, ce fond obscur, résistant, qui ne se laisse pas entièrement maîtriser. Heidegger nomme cela le confit entre monde et terre : l'art ne résout pas ce conflit, il le maintient ouvert, *et c'est dans cet éclat que la vérité se produit*. La vérité pour Heidegger est _alètheia_ : dévoilement, arrachement à l'oubli ; et l'art en est un des lieux privilégiés, aux côtés du questionnement philosophique et de la fondation politique. *L'art n'est donc ni décoration ni copie : c'est un évènement de l'être.*

	"L'art est la mise en œuvre de la vérité."\
	-- Heidegger, _L'Origine de l'œuvre d'art_
]

== Merleau-Ponty

#cadre[
	*Merleau-Ponty (1908-1961)* développe une philosophie de l'art *fondée sur le corps et la perception* dans _L'Œil et l'Esprit_. Pour lui, *le peintre* n'est pas un esprit qui contemple le monde depuis l'extérieur et tente d'ne produire une image fidèle : il *est un "corps" engagé dand le monde*, et la peinture exprime cette relation charnelle, préréflexive, entre le voyant et le visible. Cézanne, qu'il analyse longuement, ne cherche pas à représenter la montagne Sainte-Victoire telle qu'elle est vue par un œil objectif, *il cherche à rendre la structure de la perception elle-même*, le moment où le monde se donne au regard avant toute conceptualisation. L'art rend ainsi visible ce qui est ordinairement invisible : non pas les choses elles-mêmes, mais *notre façon d'être au monde*, de les habiter. Là où la science décompose et abstrait, la peinture restitue l'épaisseur du réel. Merleau-Ponty va jusqu'à dire que le peintre prête son corps au monde, et c'est le monde qui peint à traers lui.

	"C'est en prêtant son corps au monde que le peintre change le monde en peinture."\
	-- Merleau-Ponty, _L'Œil et l'Esprit_
]

== Adorno

#cadre[
	*Adorno (1903-1969)* aborde l'art depuis une perspective critique et politique. Dans a _Dialectique de la raison_ et dans sa _Théorie esthétique_, il forge le concept d'industrie culturelle pour désigner la manière dont *le capitalisme transforme l'art en marchandise standardisée*. La musique de variété, le cinéma hollywoodien, les romans à succès formatés : *ces productions ne libèrent pas le spectateur*, elles l'anesthésient, lui donnent l'illusion de se divertir tout en renforçant sa passivité et sa soumission à l'ordre existant. Face à celà, *Adorno défend l'art "authentique"*, l'art difficile, hermétique, qui résiste à la consommation facile : la musique de Schoenberg, la prose de Kafka, la poésie de Celan. *Ces œuvres n'offrent pas de consolation*, elles maintiennent vivante la "nagativité", c'est-à-dire la conscience que le monde tel qu'il est pourraît être autrement. L'art véritable est ainsi une forme de résistance : il préserve, dans sa forme même, la trace d'un possible non réalisé.

	Adorno, dans _Théorie esthétique_, *défend l'art moderne* (Schönberg, Beckett, Kafka) contre ceux qui le jugent incompréhensible. *L'art classique* (harmonieux, beau) *était l'expression d'un monde qui allait bien* (ou qui croyait aller bien). *L'art moderne* (dissonant, fragmenté, douloureux) *est l'expression d'un monde qui ne va pas bien *: Auschwitz a eu lieu. L'art qui serait encore beau après Auschwitz serait un scandale. *L'art doit dire la souffrance, le non-sens, la catastrophe*. Mais il ne doit pas le dire directement (ce serait de la propagande). *Il doit le montrer par sa forme *: la dissonance, l'éclatement, le silence. L'art moderne est donc une critique sociale. L'art est négatif, mais ce négatif est sa vérité.

	L'art est la promesse du bonheur -- une promesse toujours trahie.\
	-- Adorno, _Théorie esthétique_ (paraphrase) 
]

== Sartre

#cadre[
	*Contre l'idée d'un art pur et désintéressé* (Kant), *Jean-Paul Sartre (1905-1980)* soutient que l'écriture (et par extension tout art) est *un acte qui engage la liberté*. Représenter le monde, c'est déjà le choisir, l'organiser, le transformer. L'œuvre d'art n'est donc *pas un objet à contempler passivement* ; elle est un appel à *la liberté du spectateur,* qui doit *l'achever en lui donnant son sens.* La littérature engagée ne se contente *pas de décrire l'injustice* ; *elle la dénonce et appelle à la changer*. Mais même un roman non politique propose une certaine image du monde, de l'homme, de la liberté. L'artiste n'est pas un rêveur hors du monde ; il agit sur le réel par les moyens qui sont les siens.

  "Toute œuvre d'art est un appel à la liberté du spectateur."\
    Sartre — _Qu'est-ce que la littérature ?_

	$=>$ Sartre est la référence pour *l'art comme engagement et responsabilité.* Contre l'esthétique du pur plaisir, il défend une esthétique de l'appel à la liberté. L'artiste ne peut pas se dire "hors de la mêlée" ; son œuvre est toujours une prise de position.
]

== En bref 

#cadre[
	- *Platon* : L'art est imitation d'imitation et est un danger.
	- *Aristote* : L'art est une imitation naturelle qui permet d'apprendre. Crée la notion de _catharsis_ et prone un art touchant à l'universel.
	- *Kant* : Présente un art désintéressé, universel, venant d'un sens commun d'esthétique et peuplé de génies. Il distingue le beau du sublime
	- *Hegel* : L'art est la manifestation sensible des Idées. Il a été présent dans l'histoire sous trois grandes formes et est en train de mourir.
	- *Nietzsche* : L'art est une grande affirmation de la vie, qu'il ne faut pas soumettre à la raison. Il présente deux pulsions artistiques fondamentales et prône un art réel, qui ne console pas.
	- *Heidegger* : Voit l'art comme une mise en œuvre de la vérité, qui ouvre un monde. C'est un dévoilement.
	- *Merleau-Ponty* : Céveloppe un art fondé sur le corps est la perception : l'artiste dépeint ce qu'il perçoit du monde plus que le monde lui même.
	- *Adorno* : Critique l'art contemporain édulcoré et l'art classique qui présente un monde parfait. Il lui préfère l'art moderne "authentique", qui dit la souffrance et le non-sens du monde par sa forme
	- *Sartre* : L'art est un engagement de la liberté. Il doit critiquer de dénoncer, et le spectateur l'achève en lui donnant son sens.
]

= Exemple : _La République_, livre X -- le procès des poètes

== Contexte et situation

#cadre[
	_La République_ est *l'œuvre majeure de Platon sur la justice et la cité idéale*. Dans les livres II et III, Platon évoque déjà les poètes (Homère, Hésiode, les tragiques) pour critiquer les récits immoraux (dieux qui se battent, héros colériques). Mais c'est *au livre X* qu'il porte le coup décisif. *Il y condamne la poésie mimétique* (celle qui imite les apparences) et propose de la bannir de la cité idéale, sauf quelques rares exceptions.

	Ce texte est fondamental car c'est la *première grande critique philosophique de l'art*. Platon y pose des questions qui traversent toute l'histoire de l'esthétique : *l'art a-t-il une valeur cognitive ?* *Nous apprend-il quelque chose ? Ou bien nous éloigne-t-il de la vérité ?* Et sur le plan moral : *l'art éduque-t-il ou corrompt-il ?*

	Le livre X est aussi un *texte polémique*. Platon sait qu'il combat la poésie d'Homère, qui est pour les Grecs ce que la Bible est pour les chrétiens. *Il sait qu'il va à contre-courant*. Il le fait délibérément, au nom de la vérité et de la cité juste.

	$=>$ L'argument de Platon se déploie en *trois mouvements liés*, non séparables.

	Il commence par une *critique épistémologique* : *l'art est imitation d'apparences, non de la réalité.* Le peintre ou le poète ne connaît pas ce qu'il imite ; il ne fait que reproduire des simulacres. L'artiste est comme un enfant qui agite un miroir devant les choses : *il produit des images, non des connaissances.* L'art est donc deux fois éloigné de la vérité (théorie du lit : l'Idée du lit, le lit fabriqué par le menuisier, le lit peint).

	Cette infériorité cognitive a des *conséquences morales*. *La tragédie,* en particulier, *excite les passions* (la pitié, la peur, le rire) au lieu de les dominer. L*'homme rationnel doit contrôler ses émotions* ; l'art les déchaîne. Il érotise les affects, les rend familiers, affaiblit la raison. Il est donc nuisible à l'individu et à la cité.

	Platon tire alors une conclusion politique : *la cité idéale doit bannir les poètes* (sauf ceux qui chantent les louanges des dieux et des héros vertueux). Il sait que cette proposition est dure ; *il dit lui-même qu'il aime Homère, mais que la vérité est plus forte que l'amitié.*

	Platon est la thèse contre laquelle toute philosophie de l'art doit se positionner. Ou bien l'on défend l'art contre Platon (Aristote, les romantiques, Nietzsche), ou bien l'on radicalise sa critique (Adorno, qui accuse l'art contemporain de divertir les masses). Mais on ne peut pas l'ignorer.
]

#pagebreak()

== L'art comme imitation d'imitation

#cadre[
	*Le lit du menuisier, le lit du peintre, l'Idée du lit*

	Platon prend un exemple simple : un lit. Il existe trois sortes de lits.

	La première est l'Idée du lit. C'est la forme intelligible, unique, éternelle, créée par Dieu. Le menuisier ne la fabrique pas ; il la contemple (inconsciemment) lorsqu'il fabrique un lit particulier.

	La seconde est le lit fabriqué par le menuisier. C'est un lit concret, en bois, avec des pieds, un matelas. Il imite l'Idée, mais imparfaitement.

	La troisième est le lit peint par l'artiste (le tableau représentant un lit). Ce lit n'est pas un lit réel ; c'est l'apparence d'un lit. Il imite le lit du menuisier. Il est donc deux fois éloigné de l'Idée.

	*Le peintre n'a pas besoin de savoir comment on fabrique un lit. Il lui suffit de reproduire son apparence.* Il ne connaît pas l'essence (l'Idée) ; il ne connaît même pas la fabrication technique. *Il ne fait que manipuler des simulacres.*

	"L'imitateur ne sait rien de ce qu'il imite."\
	Platon — _La République_, livre X

	$=>$ *L'artiste, pour Platon, n'a pas de savoir.* Il est comme un enfant qui agite un miroir devant les choses : il produit des images, non des connaissances. L'art est une activité de surface.
]

== L'artiste ne connaît pas ce qu'il imite

#cadre[
	*Le peintre de bride et de mors*

	Platon illustre sa thèse par un autre exemple.* Qui connaît le mieux la bride et le mors ?* L'usager (le cavalier) sait si la bride est bonne, si elle tient le cheval. Le fabricant (le sellier) suit les indications de l'usager. Mais le peintre ne connaît ni l'usage ni la fabrication. *Il copie l'apparence de la bride sans savoir ce qu'elle fait.*

	Ainsi, l'artiste travaille sur des apparences. Il peut produire une belle image, mais cette image ne lui donne aucun savoir sur la réalité. Elle peut même tromper : *une bride peinte peut sembler réelle sans l'être.*

	Platon *ne dit pas que tout art est mauvais*. Il dit que *l'art mimétique* (celui qui imite les apparences) *est épistémologiquement inférieur.* Il produit des simulacres qui ressemblent au réel sans l'être.

  "L'imitateur fabrique des simulacres, non des êtres réels."\
  Platon — _La République_, livre X

	$=>$ Platon ne nie pas le talent technique de l'artiste. *Il nie sa compétence cognitive.* L'artiste ne sait pas ce qu'il fait. Il fait de l'apparence sans savoir ce que cache l'apparence.
]

== L'art excite les passions

#cadre[
	*Contre la tragédie : la pitié et la peur comme obstacles à la raison*

	Platon *critique l'art* non seulement pour son manque de vérité, mais aussi *pour ses effets moraux*. La tragédie en particulier (Euripide, Sophocle, Eschyle) représente des héros souffrants, en pleurs, emportés par la colère ou le désespoir. *Le spectateur est ému* : il pleure sur le sort d'Hécube, il tremble pour Œdipe.

	*Mais ces émotions, dit Platon, sont contraires à la raison.* L'homme rationnel doit dominer ses passions, non les cultiver. Or la tragédie lui donne une occasion de les éprouver avec plaisir, sans honte. Pire : en s'habituant à pleurer sur le sort d'un héros, le spectateur s'habitue à pleurer sur ses propres malheurs. *L'art érotise les passions, il les rend familières, il affaiblit la raison.*

	"La poésie nourrit les passions au lieu de les assécher."\
	Platon — _La République_, livre X

	$=>$ Platon est le premier à formuler ce qu'on appellera *la critique de l'art comme émotion facile.* L'art peut être un opiacé, un divertissement qui nous rend passifs, incapables de faire face à la réalité.
]

== Le rire et la comédie : une passion honteuse

#cadre[
	*Se laisser aller au rire, c'est perdre le contrôle de soi*

	*Platon s'en prend aussi à la comédie.* Le rire est une passion. Se laisser aller au rire, c'est perdre le contrôle de soi. L'homme sérieux ne rit pas aux éclats.* L'homme rationnel contrôle son corps et ses affects*. La comédie nous habitue à une attitude indigne de l'homme libre.

	Cette critique peut sembler excessive. *Elle est cohérente dans le système de Platon.* L'homme juste est celui dont la raison commande. Tout ce qui affaiblit ce commandement est suspect. Or le rire, comme les larmes, est un relâchement de la maîtrise de soi.

  "Il ne faut jamais se laisser aller à un rire excessif."\
  Platon — _La République_, livre X (paraphrase)

	$=>$ *Platon n'a pas d'humour. C'est le prix de sa rigueur.* Pour lui, l'art ne doit pas être un exutoire ; il doit être une discipline.
]

#pagebreak()

== Bannir les poètes de la cité

#cadre[
	*La poésie peut-elle être sauvée ?*

	Platon conclut le livre X par une proposition radicale : *bannir de la cité idéale toute poésie mimétique*, c'est-à-dire toute poésie qui imite des actions humaines (Homère, la tragédie, la comédie). *Seule serait admise* une poésie qui chante les louanges des dieux et des héros vertueux – *une poésie moralement éducative, non mimétique.*

	Platon sait que cette proposition est dure. Il dit lui-même : "Nous aimons Homère ; mais la vérité est plus forte que l'amitié." *Il faut choisir entre la poésie et la philosophie*, entre le plaisir et la vérité, entre l'émotion et la raison.

	Cependant, *Platon laisse une porte ouverte.* Si la poésie peut "montrer qu'elle est utile à la cité", elle pourra être reçue. *Platon n'est pas dogmatique ; il est pragmatique.* Ce qu'il refuse, c'est une poésie qui prétend être la première éducatrice alors qu'elle ne fait que divertir.

  "Nous bannissons le poète de la cité, non parce qu'il n'est pas aimable, mais parce qu'il n'est pas vrai."\
  Platon — _La République_, livre X (paraphrase)

	$=>$ *Platon pose le principe que l'art doit être jugé non par son agrément, mais par son utilité sociale et morale.* C'est une position utilitariste avant la lettre.
]

== Pourquoi Platon lui-même est un artiste

#cadre[
	*Le procés de la poésie est une œuvre d'art*

	Il y a une ironie profonde chez Platon. *Celui qui bannit les poètes est lui-même un écrivain exceptionnel.* _La République_ est pleine de mythes (l'allégorie de la caverne, le mythe d'Er, le mythe de Gyges). Platon écrit des dialogues vivants, pleins d'humour, de suspense, de personnages hauts en couleur (Thrasymaque, Glaucon, Adimante). Il est, par son style, l'un des plus grands prosateurs de l'Antiquité.

	*Platon ne peut donc pas rejeter toute poésie*. Ce qu'il rejette, c'est *la poésie qui prétend tout savoir et qui corrompt les âmes.* Ce qu'il pratique, c'est une poésie philosophique, subordonnée à la vérité, au service de la raison. La frontière est subtile.

	Cette tension traverse toute la philosophie platonicienne : *Platon est un artiste qui méprise l'art*, un écrivain qui critique l'écriture, un mythologue qui bannit les mythes. C'est cette tension qui rend son œuvre si vivante.

  "Il y a un vieux conflit entre la philosophie et la poésie."\
  Platon — _La République_, livre X

	$=>$ *Platon ne résout pas la tension. Il la montre.* C'est sa force : nous savons que la philosophie et l'art sont rivaux, mais aussi inséparables. Platon nous oblige à penser leur relation.
]

= Exemple : _L'Origine de l'œuvre d'art_ -- L'art comme événement de vérité

== Contexte et situation

#cadre[
	*_L'Origine de l'œuvre d'art_ est une conférence prononcée par Heidegger en 1935 et 1936*, à un moment charnière de sa pensée. Il a publié _Être et Temps_ en 1927, puis opère un tournant (la Kehre) vers une pensée plus directement poétique et artistique. La conférence sera reprise et augmentée pour une publication en 1950.

	Le point de départ est une question simple en apparence : *d'où vient l'œuvre d'art ?* Mais Heidegger la retourne : *ce n'est pas l'artiste qui fait l'œuvre* (la conception courante), *c'est l'œuvre qui fait l'artiste.* L'artiste n'est artiste que parce qu'il produit une œuvre. *Il faut donc s'interroger sur l'œuvre elle-même.*

	*Heidegger s'oppose à plusieurs traditions.* *Contre l'esthétique classique (Kant)*, il ne cherche pas à définir le jugement de goût. *Contre Platon,* il ne réduit pas l'art à l'imitation. *Contre Hegel*, il ne déclare pas l'art "mort" ou dépassé par la philosophie. Heidegger veut *penser l'art comme un mode de dévoilement de la vérité, au même titre que la pensée ou l'action politique.*

	$=>$ Le texte de Heidegger est l'une des références majeures de l'esthétique contemporaine. Il propose une rupture radicale.

	L'argument se déploie autour de *trois notions clés* : le monde, la terre, et le combat (ou la tension) entre eux. Une œuvre d'art n'est pas un objet qu'on contemple de loin. *Elle ouvre un monde* (l'ensemble des significations, des pratiques, des références qui donnent sens à une époque). Mais *elle le fait en faisant apparaître la terre* (ce qui résiste, se retire, ne se laisse pas dominer). *Le temple grec n'est pas une belle construction* ; il est le lieu où le dieu se rend présent, où le monde des Grecs s'articule à la matière qui résiste.

	Heidegger prend *deux exemples célèbres*. D'abord, le temple grec de Paestum. Ensuite, un tableau de Van Gogh représentant des souliers de paysan. Ce n'est pas la valeur marchande des souliers qui importe, ni leur utilité. *C'est ce qu'ils montrent* : l'usure, la fatigue, la terre, le labeur, la paysanne qui marche dans les champs.

	Heidegger retourne la question traditionnelle. *L'art n'imite pas la nature ; il rend visible ce qui était invisible. Il ne représente pas le réel ; il le fait advenir.*
]

#pagebreak()

== Le temple grec : ouverture d'un monde

#cadre[
	*Le temple n'est pas un objet ; il est un lieu*

	*Heidegger choisit un temple grec* (celui de Paestum, en Italie du Sud). Ce temple n'est pas d'abord un bâtiment, une structure architecturale. *Il est ce qui ouvre un monde. Le monde des Grecs*, avec ses dieux, ses héros, ses sacrifices, ses fêtes, ses décisions, ses combats. Le temple n'est pas une illustration de ce monde ; il est le lieu où ce monde se rassemble, se manifeste, devient visible.

	"Le temple, en se dressant, ouvre un monde."\
	Heidegger — _L'Origine de l'œuvre d'art_

	Mais *le temple ne fait pas qu'ouvrir un monde.* Il fait aussi apparaître la terre. *Qu'est-ce que la terre ?* C'est ce qui se retire, ce qui ne se laisse pas dominer : le rocher sur lequel le temple est bâti, le sol qui le porte, *la matière qui résiste à la forme.* Le temple met la terre en lumière : *sans le temple, le rocher est juste un rocher ; avec le temple, le rocher devient ce qui porte, ce qui supporte, ce qui résiste.*

	*Le temple n'est donc pas une représentation. Il est un événement* : quelque chose advient dans l'histoire qui n'était pas là avant. Ce qui advient, c'est la vérité de ce monde grec.

	$=>$ *L'œuvre d'art n'est pas un objet parmi d'autres.* C'est un lieu où se joue le rapport de l'homme à son monde et à ce qui le dépasse.
]

== Les souliers de Van Gogh : l'apparaître de l'outil

#cadre[
	*Des souliers qui ne sont pas seulement des souliers*

	Heidegger prend un *deuxième exemple*, plus proche de nous : un tableau de Van Gogh représentant des souliers de paysan. Il ne s'agit pas d'une paire de souliers neuve, brillante, propre. *Ce sont des souliers usés, sales, fatigués.*

	Ce que le tableau montre, ce n'est *pas l'utilité des souliers* (on ne peut pas s'en servir). Ce n'est *pas non plus leur simple apparence* (une forme, des couleurs). Le tableau *montre le monde de la paysanne* : la marche dans les champs, le vent, la pluie, la fatigue, la peur de perdre la récolte, l'attente du retour au foyer.

	Heidegger décrit longuement cette apparition.

  "Des souliers de paysan, cela et rien de plus. Et pourtant, de l'obscur passage de l'espace, la lassitude des pas s'annonce."\
  Heidegger — _L'Origine de l'œuvre d'art_

	Le tableau *ne reproduit pas des souliers.* Il rend visible ce qui, dans l'usage ordinaire, reste invisible : la relation de la paysanne à son outil, à sa terre, à son travail, à sa vie.

	$=>$ *L'art n'est pas imitation.* Il est manifestation. Il ne copie pas ce qui est visible ; il fait voir ce qui ne l'est pas.
]

== Le combat du monde et de la terre

#cadre[
	*L'œuvres est tension*

	*Les deux exemples (le temple, les souliers) illustrent la même structure.* L'œuvre d'art est le lieu d'un combat (ou d'une tension) entre deux forces : le monde et la terre.

	*Le monde est l'ouvert*, le signifiant, le rassemblé. C'est l'ensemble des références, des pratiques, des décisions qui donnent sens à une époque. Le monde grec, le monde chrétien, le monde moderne. Le monde s'ouvre, se déploie, se donne à comprendre.

	*La terre est le fermé*, le résistant, le retiré. C'est le rocher qui ne se laisse pas réduire à une idée ; c'est le pigment qui résiste au pinceau ; c'est le bois qui a son propre grain, sa propre dureté. La terre ne se laisse pas dominer. Elle se montre seulement dans la mesure où elle se retire.

	*L'œuvre d'art met en tension ces deux forces.* Elle ouvre un monde (le temple révèle le monde grec), mais elle le fait en faisant apparaître la terre (le rocher, la pierre, le matériau). *Sans monde, l'œuvre serait muette*, simplement matérielle. *Sans terre, l'œuvre serait un concept abstrait*, sans épaisseur. L'œuvre vit de cette tension.

  "Le monde et la terre sont essentiellement différents et pourtant inséparables."
  Heidegger — _L'Origine de l'œuvre d'art_

	$=>$ *L'œuvre n'est pas une chose calme*, harmonieuse. Elle est un champ de forces, *un lieu de lutte*. C'est pourquoi elle peut bouleverser, troubler, déranger.
]

== Contre l'esthétique traditionnelle

#cadre[
	*L'œuvre n'est pas un objet à contempler*

	Heidegger *critique toute l'esthétique traditionnelle* (de Platon à Kant en passant par Hegel) pour une raison simple : *elle a toujours traité l'œuvre d'art comme un objet soumis à une expérience *(le plaisir, le jugement, la contemplation). Or l'œuvre n'est pas un objet. Elle est un événement qui advient dans l'histoire et qui transforme notre rapport au monde.

	Si l'on réduit l'œuvre à un objet, on en manque l'essentiel : le fait qu'elle ouvre un monde et qu'elle fait advenir la terre. On se demande alors : *est-elle belle ? est-elle agréable ? me plaît-elle ? Ces questions sont secondaires.* *La question première est : que se passe-t-il dans cette œuvre ?* quel monde s'ouvre ? quelle terre se montre ?

	*Cette critique s'adresse aussi bien à l'esthétique kantienne* (le jugement de goût désintéressé) *qu'à l'esthétique hégélienne* (l'art comme manifestation de l'Idée). Heidegger veut penser *l'art en dehors de toute subjectivité* (l'artiste, le spectateur) et en dehors de toute métaphysique (l'Idée, l'Esprit). *L'art est un mode de la vérité, au même titre que la pensée.*

	"L'art est la mise en œuvre de la vérité."\
	Heidegger — _L'Origine de l'œuvre d'art_

	$=>$ Heidegger déplace la question. *Ce n'est pas "qu'est-ce que le beau ?" mais "qu'est-ce que l'œuvre fait advenir ?"* L'art n'est pas une affaire de sentiment, mais une affaire de vérité.
]

== La question de l'origine : l'artiste, l'œuvre, l'art

#cadre[
	*Le cercle de l'origine*

	Heidegger *pose une question apparemment simple : d'où vient l'œuvre d'art ?* Réponse commune : *elle vient de l'artiste.* Mais l'artiste n'est artiste que parce qu'il produit une œuvre. *L'œuvre vient de l'artiste, l'artiste vient de l'œuvre : c'est un cercle.*

	Pour sortir du cercle, il faut penser un *troisième terme* : l'art lui-même, non comme activité humaine, mais comme le principe qui fait qu'il y a des œuvres et des artistes. *L'art est l'origine.*

	Mais l'art n'est *pas une essence abstraite.* Il advient dans des œuvres concrètes. L'origine est donc à chercher dans l'œuvre elle-même : dans ce qui fait œuvre (le Werken de l'œuvre). Le verbe est ici plus important que le nom : *l'œuvre est ce qui œuvre, ce qui agit, ce qui fait advenir.*

	Heidegger conclut par une formule célèbre.

  "L'origine de l'œuvre d'art, c'est l'art."\
  Heidegger — _L'Origine de l'œuvre d'art_

	Cette formule est volontairement tautologique. Elle signifie qu'il n'y a *pas d'explication causale de l'œuvre.* L'œuvre n'est pas l'effet d'une cause (le génie de l'artiste, les conditions sociales, l'air du temps). *Elle est un commencement absolu, un événement qui ne se réduit à rien d'autre que lui-même.*

	$=>$ L'œuvre d'art est irréductible. *On ne peut pas l'expliquer.* On ne peut que la penser, c'est-à-dire interroger ce qui, en elle, fait advenir un monde.
]

= Exemple : _La mort de Sardanapale_ -- La peinture comme expression

#cadre[
	*_La Mort de Sardanapale_ est présentée au Salon de Paris en 1827-1828.* *Le choc est immense.* Le tableau représente le roi légendaire Sardanapale, dernier souverain de l'Assyrie, assis sur un lit de parade. Assiégé dans son palais, il a décidé de mourir. Mais avant de se suicider, il ordonne le massacre de ses esclaves, de ses femmes, de ses chevaux, la destruction de ses trésors. Rien ne doit survivre à sa mort.

	*Le tableau est monumental* : 3,92 mètres sur 4,96 mètres. Delacroix y travaille pendant plusieurs mois. *La composition est tourbillonnante,* les couleurs sont chaudes et violentes (rouges, ocres, bruns), les corps s'entremêlent dans un chaos organisé. Sardanapale, immobile au centre, regarde impassible la tuerie. Il est allongé sur un lit, vêtu de blanc, le bras pendant négligemment. Son visage n'exprime aucune émotion.

	*Pourquoi un tel scandale ?* Parce que *Delacroix viole toutes les règles de la peinture classique*. Pas de ligne claire, pas de perspective maîtrisée, pas de hiérarchie des personnages (le roi est aussi petit que les esclaves). *L'action est illisible* : on ne comprend pas ce qui se passe sans le titre. La violence est montrée crûment, sans justification morale. *Les critiques accusent Delacroix de "romantisme"*, c'est-à-dire d'excès, *de démesure, de désordre*.

	$=>$ _La Mort de Sardanapale_ est l'illustration parfaite de la *rupture romantique*. L'art n'y est *plus imitation de la nature* (classicisme) *ni narration claire* (néoclassicisme). Il est *expression d'une subjectivité* : celle de l'artiste, celle de son temps, celle de l'énergie qui traverse le monde.

	L'argument se déploie autour de *plusieurs ruptures.*

	D'abord, une rupture *avec la peinture d'histoire traditionnelle.* Le néoclassicisme (David, Ingres) voulait que *la peinture raconte une action vertueuse, lisible, exemplaire.* _Sardanapale_ ne raconte *rien de vertueux.* Il ne raconte même pas clairement : il faut le titre pour comprendre.

	Ensuite, une rupture *avec la composition classique.* La règle était clarté, symétrie, hiérarchie. Delacroix fait exploser ces règles : le tableau est une spirale, un tourbillon, un chaos. *Le regard ne sait où se poser.*

	Enfin, une rupture *avec la couleur et le dessin.* Les classiques privilégiaient le dessin (la ligne, la forme) sur la couleur (l'émotion, la matière). *Delacroix renverse* : la couleur est première. Le rouge domine, la couleur du sang, du feu, de la passion.

	Delacroix illustre la thèse de Hegel sur l'art romantique : *le sujet moderne s'exprime contre l'objectivité classique.* L'art n'est plus au service de la communauté (le temple grec, la cathédrale médiévale) ; il est l'expression du génie individuel.
]


== La rupture avec la peinture d'histoire

#cadre[
	*Contre David : une action illisible et immorale*

	*La peinture d'histoire néoclassique* (Jacques-Louis David, _Le Serment des Horaces_, 1784) *avait des règles précises*. L'action devait être *lisible d'un coup d'œil* : on voit immédiatement qui sont les personnages, ce qu'ils font, quelle est la morale de l'histoire. Les personnages doivent être *vertueux* (héros antiques, martyrs républicains) ; *l'histoire doit instruire le spectateur.*

	_La Mort de Sardanapale_ *viole toutes ces règles*. L'action est illisible. On voit des corps nus, des chevaux, une femme qui s'éventre avec son poignard, une autre qui se pend, des trésors qui s'écroulent. Mais on ne sait pas qui tue qui, ni pourquoi, ni dans quel ordre. Il faut le titre (Sardanapale, ordre du massacre) pour comprendre.

	*L'action est immorale*. Sardanapale n'est pas un héros vertueux. C'est un tyran décadent, peut-être un personnage historique, peut-être une légende. La tradition antique le présente comme un roi efféminé, esclave de ses plaisirs, incapable de gouverner. *Delacroix ne le moralise pas : il le montre impassible au milieu du carnage.*

	$=>$ Delacroix *rompt avec l'idée que l'art doit instruire et moraliser* (Horace : "plaire et instruire"). *L'art peut montrer le mal*, la violence, l'indifférence, *sans les condamner explicitement*. C'est ce qu'*Adorno appellera la négativité de l'art moderne* : l'art ne dit pas "ceci est bien" ; il montre ce qui est, sans fard.
]

== La rupture avec la composition classique

#cadre[
	*Le tourbillon contre la ligne droite*

	La composition classique privilégie les lignes droites, les parallèles, les symétries, les hiérarchies. David, dans _Les Sabines_, dispose les personnages comme sur une frise. Chaque figure a sa place, sa fonction, son rôle. Le regard parcourt le tableau selon un ordre prévisible.

	*Delacroix compose en spirale.* Le regard entre en bas à gauche (la femme qui se pend), remonte vers le lit de Sardanapale, plonge vers la droite (le cheval et les esclaves), descend à nouveau, remonte. Rien n'est symétrique.* Les corps s'entremêlent* : les bras, les jambes, les torses ne forment pas une partition claire.

	Cette *composition exprime une énergie* : le mouvement ne s'arrête pas. Le tableau n'est *pas une scène figée* (comme David) ; il est une action en cours, un chaos en train de se faire. Le spectateur ne contemple pas ; il est aspiré, un peu déstabilisé, un peu nauséeux.

  "Delacroix a donné à la peinture sa vraie puissance : le mouvement."\
  Baudelaire — _L'Œuvre et la vie d'Eugène Delacroix_

	$=>$ Delacroix *illustre la thèse de Kant sur le sublime* : l'œuvre ne plaît pas immédiatement (beau). Elle trouble, elle déstabilise, elle écrase un peu le spectateur. *Ce trouble est pourtant un plaisir, un plaisir mêlé d'effroi.*
]

== La couleur contre le dessin

#cadre[
	*La ligne est froide, la couleur est chaude*

	La *querelle du dessin et de la couleur* traverse tout le XIXe siècle. *Les partisans du dessin* (Ingres) défendent la ligne, la forme, la clarté, la raison. *Les partisans de la couleur* (Delacroix) défendent la touche, la matière, l'émotion, la sensation.

	_La Mort de Sardanapale_ est *un manifeste pour la couleur*. Les rouges dominent : le rouge du lit, le rouge des vêtements, le rouge du sang, le rouge des ombres. Les bruns, les ocres, les noirs complètent. Les bleus et les blancs (le turban de Sardanapale, sa robe blanche) sont rares et contrastent violemment.

	La *couleur n'est pas seulement décorative*. Elle exprime : la violence, le désir, la mort, l'indifférence. *Sans le rouge,* le tableau serait un massacre froid, documenté. *Avec le rouge,* il devient une passion (au sens étymologique : ce qu'on subit, ce qui nous traverse).

	"Le dessin est la raison, la couleur est le sentiment."\
	Delacroix — _Journal_

	$=>$ *Delacroix défend l'autonomie de la couleur.* Contre Platon (l'apparence colorée est une imitation d'imitation, deux fois éloignée de l'Idée), il *montre que la couleur a une force propre*, irréductible à la forme. Merleau-Ponty prolongera cette intuition : la couleur est la "chair" du tableau, ce par quoi il touche notre chair.
]

== Le visage impassible de Sardanapale

#cadre[
	*Au centre du tableau, Sardanapale est allongé sur son lit.* Il est vêtu de blanc, coiffé d'un turban, le bras pendant négligemment. Il regarde le massacre. Son visage n'exprime rien. Pas de joie, pas de peur, pas de tristesse, pas de remords. Juste une indifférence totale.

	*Ce visage est terrifiant.* Il ne transmet aucune émotion identifiable. Il ne demande pas notre pitié (comme un héros tragique d'Euripide). Il ne suscite pas notre admiration (comme les héros de David). *Il est simplement là, témoin impassible de sa propre destruction.*

	*Delacroix montre ainsi une limite de l'art* : l'art peut représenter la violence, mais il ne peut pas (ou ne veut pas) la juger. *Sardanapale n'est ni condamné ni absous. Il est.* C'est au spectateur de décider. Cette neutralité de la représentation sera reprise par Flaubert (Madame Bovary), puis par Camus (L'Étranger).

	$=>$ *Delacroix rompt avec l'art comme jugement moral.* *Contre Platon* (l'art doit chanter les vertus) et *contre Aristote* (l'art doit purifier les passions), Delacroix *montre un art qui expose*, qui ne juge pas. C'est ce que les modernes appelleront la "neutralité du regard".
]

== La réception scandaleuse

#cadre[
	*Les critiques : "un art maladif, exagéré, illisible"*

	*Le Salon de 1827-1828 est un scandale.* Les critiques sont unanimes (sauf quelques romantiques, comme Hugo ou Baudelaire). On accuse Delacroix de *"mauvais goût", de "désordre", de "violence gratuite"*. On se moque de la femme qui s'éventre avec son poignard ("elle ne le fait pas bien, on voit que c'est une peinture"). *On critique l'absence de dessin* ("on ne reconnaît pas les muscles, les os, les proportions").

	Le tableau est acheté par l'État (sans doute par erreur) en 1828, puis relégué dans une réserve. Il n'est exposé régulièrement qu'à partir de 1860. Il faut attendre le XXe siècle pour que _La Mort de Sardanapale_ soit reconnue comme un chef-d'œuvre.

	*Ce scandale est philosophiquement intéressant.* Il montre que l'art moderne dérange. Il *ne plaît pas immédiatement* (beau, au sens kantien). *Il trouble.* Il interroge les conventions. Il oblige le spectateur à se demander : "qu'est-ce que l'art ?" *C'est la fonction critique de l'art moderne* : non pas donner des réponses, mais briser les évidences.

	$=>$ *Delacroix illustre la thèse d'Adorno* : l'art moderne est dissonant, déplaisant, négatif. C'est sa vérité. L'art qui plaît trop (le kitsch, le divertissement) est suspect.
]

== Delacroix et le romantisme

#cadre[
	*Le romantisme : l'art comme expression du sujet*

	La philosophie de l'art romantique a été théorisée par Hegel (cours d'esthétique, 1820-1829). *Pour Hegel, l'art romantique* (chrétien, moderne) *est caractérisé par la subjectivité.* Le monde extérieur n'est plus l'essentiel (comme dans l'art grec). Ce qui importe, c'est l'intériorité de l'artiste, son sentiment, son génie. La forme extérieure (la composition, la couleur, la ligne) n'est que le moyen d'exprimer ce sujet.

	*_La Mort de Sardanapale_ est romantique en ce sens.* Ce n'est pas l'histoire de Sardanapale qui compte (Delacroix a inventé beaucoup de détails). *Ce qui compte, c'est ce que le tableau exprime* : la mélancolie, la destruction, le désir, la mort. Sardanapale est un prétexte pour peindre un sentiment.

	Delacroix lui-même n'est pas totalement romantique. Il admire les classiques (Raphaël, Rubens) et se méfie de l'excès de subjectivité. Mais ses œuvres (en particulier _Sardanapale_) sont devenues l'icône du romantisme pictural.

	"Le romantisme, ce n'est pas le choix des sujets, c'est la manière de les traiter."\
	Baudelaire — _Salon de 1846_

	$=>$ *Delacroix illustre la thèse de Hegel sur l'art romantique :* l'esprit moderne s'exprime dans une forme qui ne lui est pas adéquate (toujours insuffisante, toujours déchirée). L'art romantique est l'art du conflit, non de l'harmonie.
]


= Exemple : _Le Portrait de Dorian Gray_

== L'art révèle ce que la vie dissimule

#cadre[
	*Le portrait comme miroir de l'âme*\
	Chapitre 2 -- Basil achève le portait ; Dorian formule son vœu.

	$->$ Le portrait de Basil Hallward ne représente pas seulement le corps de Dorian : *il en capte l'âme à un instant de pureté absolue.* Lorsque Dorian souhaite que le tableau vieillisse à sa place, il pressent obscurément que l'œuvre dit une vérité que le visage ne pourra plus dire. Le tableau devient alors un révélateur, au sens photographique : *il fixe et développe ce que l'existence efface*

	$=>$ *Illustre la thèse heideggérienne, l'art "met en œuvre la vérité". *Le tableau ne représente par Dorian, il révèle son être moral. À opposer à la thèse de Platon : loin d'être une copie dégradée, l'œuvre accède à une réalité plus profonde que l'apparence.
]

#cadre[
	*La laideur progressive du portrait*\
	Chapitres 7 - 20 -- Le tableau se déforme à chaque crime

	$->$ À mesure que Dorian se corrompt (la trahision de Sibyl Vane, le meutre de Basil, l'opium, le chantage), *le tableau enregistre chaque faute.* La cruauté laisse une ride, le mensonge déforme le sourire. Le portrait devient une chronique fidèle de l'âme, là où le beau visage de Dorian ment. L'art dit vrai quand la vie ment.

	"Le portrait portait le fardeau de sa honte -- c'était tout."\
	-- _Chapitre 8_

	$=>$ *L'art ici n'embellit pas, il témoigne.* C'est une réfutation directe de la définition de l'art comme idéalisation ou comme illusion consolatrice (contre Nietzsche, pour qui l'art embellit la vie). Le tableau est une conscience.
]

== Les paradoxes : quand l'art révèle sans libérer

#cadre[
	*Dorian refuse de regarder la vérité*\
	Chapitre 10 -- Dorian cache le portrait sous une tenture, puis sous clé

	$->$ Plutôt que de lire dans le portrait une invitation à se racheter, Dorian le dissimule. L'œuvre révèle la vérité, mais le sujet peut choisir de ne pas la regarder. L'art ne garantit pas la lucidité morale : il peut être refoulé, nié, enfermé. *La vérité offerte par l'art reste lettre morte si le spectateur se soustrait à son regard.*

	$=>$ *Nuance la thèse de l'art-révélation*. L'art dit vrai, mais la réception est une condition nécessaire. *Dialogue avec Sartre* : l'œuvre n'a de sens que dans la relation auteur-leteur ; l'art n'est pas une vérité autonome, il existe un sujet qui l'accueille. *Présente les limites de l'art.*
]

#cadre[
	*Lord Henry et l'esthétisme comme mensonge*\
	La philosophie de Lord Henry

	$->$ *Lord Henry prône que seule la beauté compte*, que l'art est au-dessus de la morale. Cette esthétique est séduisante, et c'est précisément ce qui la rend dangereuse.* Wilde la met en scène pour mieux la déconstruire* : c'est la philosophie de Lord Henry qui corrompt Dorian. L'idée que l'art libère la morale devient le vecteur de la déchéance

	$=>$ *Wilde lui-même se dissocie de la thèse "l'art pour l'art" qu'on lui attribue.* Le roman est une réfutation interne de l'esthétisme radical. L'art n'est *pas moralement neutre *: contre Kant qui sépare beau et bien et vers Adorno qui y voit une dimension critique irréductible
]

#cadre[
	*Sibyl Vane : l'art détruit par le réel*\
	Chapitres 5 - 7 -- Sibyl cesse de bien jouer après être tombée amoureuse

	$->$ Sibyl Vane était une actrice sublime parce qu'elle n'avait jamais connu l'amour, elle jouait des héroïnes qu'elle ne comprenait que par l'imagination. Dès qu'elle aime DOrian, elle perd son génie :le réel supplante l'art. Dorian, qui aimait l'actrice, rejette la femme réelle. *C'est l'art qui lui semblait vrai, non la vie.*

	"Avant, tu me donnais quelque chose... tu éveillais en moi mon imagination. Maintenant tu ne m'éveilles plus rien."\
	-- _Dorian à Sibyl, Chapitre 7_
]

== La limite : quand la vérité détruit celui qui la regarder

#cadre[
	*La scène finale : Dorian poignarde le portrait*\
	Chapitre 20 -- Dénouement

	$->$ *Incapable de supporter la vérité que le portrait lui renvoie* : une vieillesse hideuse, une âme damnée. Dorian poignarde la toile. Il meurt à la place, méconnaissable, et le portrait retrouve sa beauté originelle. L'acte de détruire l'œuvre, c'est tenter de détruire la vérité. Mais la vérité se venge : c'est Dorian qui est détruit. *L'art, en tant que révélateur, est indestructible*, ou du moins sa destruction entraîne celle de celui qui ment.

	$=>$ *L'art révèle une vérité que le sujet ne peut fuir indéfiniment*, il peut la dissimuler mais non l'annuler. Le dénouement dit que vivre dans le mensonge de sa propre image est impossible à tenir. On peut le lier à Heidegger : la vérité (alétheia) comme dévoilement irrépressible
]


/*
= Exemple : _Du côté de chez Swann_

== La petite phrase de Vinteuil : l'art révèle l'invisible

#cadre[
	*La sonate comme monde en soi*\
	Un amour de Swann -- Swann entend la sonate de Vinteuil pour la première fois chez les Verdurin

	$->$ La petite phrase musicale de Vinteuil produit sur Swann un effet inexplicable : elle lui révèle l'existence d'un monde qu'il ne soupçonnait pas, une réalité intérieure plus vraie que le monde social qui l'entoure. Proust décrit l'effet de la musique comme une "impression" qui dépasse toute analyse : l'art ne représente pas, il touche quelque chose d'antéerieur au langage. La phrase est une "patrie inconnue" dont l'auditeur se souvient sans l'avoir jamais visité

	"Cette phrase avait ouvert en lui un monde inconnu, mais qui lui paraissait vaguement familier, comme s'il l'eût déjà habité dans une vie antérieure."\
	-- _Un amour de Swan_

	$=>$ Illustration directe de Heidegger : l'art dévoile. La musique ne représente rien de visible et pourtant elle dit une vérité sur l'être. On peut le combiner avec Schopenhauer que Proust avait lu : la musique est la seule forme d'art qui accède directement à la Volonté, au fond de toute chose, sans passer par la représentation
]

#cadre[
	*La petite phrase comme"vérité" de l'amour pour Odette*\
	Un amour de Swann -- La phrase devient l'hymne national de l'amour de Swann

	$->$ Swann associe la petite phrase à Odette : elle devient "leur air", le symbole de leur amour. Mais progressivement, c'est la phrase qui révèle à Swann la nature réelle de ses sentiments, y compris leur souffrance, leur jalousie, leur inanité. La musique dit ce que Swann refuse de formuler à lui-même. Elle est plus lucide que lui sur son propre état intérieur.

	$=>$ L'art révèle une vérité psychologique que la consicence directe ne peut atteindre. C'est une version proustienne de la psychanalyse : l'œuvre d'art est ce chemin détourné par lequel la vérité se dit malgré le sujet. On peut alors le relier à Freud (l'art comme voie d'accès à l'inconscient) ou à Merleau-Ponty (la vérité dans la perception sensible, non dans le concept)
]

#pagebreak()

== La madeleine : l'art et la mémoire comme révélation du temps

#cadre[
	*La mémoire involontaire comme forme d'art*\
	Combray -- La madeleine trempée dans le tilleul

	$->$ La madeleine n'est pas à proprement parler une œuvre d'art, mais Proust en fait une expérience esthétique : la mémoire involontaire ressemble à la révélation artistique. Un goût, un parfum, une sensation ressuscitenet un monde entier disparu. Ce que ni la mémoire volontaire (effort intellectuel) ni l'intelligence ne peuvent retrouver, la sensation artistique le restitue d'un coup. La vérité du passé est dans le sensible, non dans le concept.

	"Cet inconnu était Combray. Et comme dans ce jeu où les Japonais s'amusent à tremper dans un bol de porcelaire [...] de petits morceaux de papier [...], toutes les fleurs de notre jardin et celles du part de M. Swann [...] surgirent de ma tasse de thé."\
	-- _Combray_

	$=>$ La mémoire involontaire est une forme de connaissance que seule l'art peut produire, non par la démonstration, mais par la révélation sensible. Illuste Merleau-Ponty : la vérité est dans le corps et la perception, non dans l'intellect. Opposition forte à Platon : loin de nous éloigner des Idées, l'expérience sensible nous y ramène
]

== Swann face à l'art : quand la révélation reste inaccesible

#cadre[
	*Swann voit sans comprendre : l'art rate sa cible*\
	Tout le peronnage de Swan, esthète mondain

	Swann est un connaisseur d'art raffiné, mais il use de l'art de manière superficielle : il compare Odette à une Zéphora de Botticelli pour se convaincre qu'elle est belle et digne d'être aimée. L'art devient ici un alibi esthétique, un voile, non un révélateur. La référence picturale ne lui permet pas de voir Odette telle qu'elle est. C'est l'exact inverse de la révélation : l'art masque la réalité au lieu de le dévoiler.

	$=>$ L'art peut être convoqué de façon mondaine ou défensive, auquel cas il devient un écran. Proust distingue la vraie expérien esthétique (involontaire, fultugrante) de l'usage cultivé de l'art comme signe social. Dialogue avec Adorno : l'art récupéré par le monde bourgeois perd sa puissance critique et révélatrice
]

#cadre[
	*La phrase de Vinteuil après la mort de l'amour*\
	Fin d'Un amour de Swann -- Swan n'aime plus Odette

	Lorsque Swann n'aime plus Odette, il réentend la petite phrase et réalise qu'elle ne lui dit plus rien. Ce qui semblait une révélation éternelle était lié à un état affectif passager. Swann conclut avec amertume : "Dire que j'ai gâché des années de ma vie, que j'ai voulu mourir, que j'ai eu mon plus grand amour, pour une femme qui ne me plaisit pas, qui n'était pas mon genre !" La vérité révélée par l'art est-elle vraiment universelle ou n'est-elle que l'écho de notre propre subjectivité ?

	"Il comprit que c'était à lu iseul que la petite phrase avait semblé vouloir parler de quelque chose."\
	-- Un amour de Swann

	$=>$ Objection kantienne à la thèse de l'art-révélation : le jugement esthétique prétend à l'universalité, mais reste ancré dans la subjectivité. La vérité révélée par l'art est peut-être toujours une vérité pour soi, non une vérité objective. Transition vers une troisième partie sur le beau comme jugement subhectif à prétention universelle.
]*/