#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*Fiche 10 : Nature*
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

== Aristote -- La nature comme téléologie

#cadre[
  Pour *Aristote*, la nature (_\physis_) est un principe interne de mouvement et de repos. Une chose naturelle n'est pas simplement ce qui n'est pas fabriqué par l'homme ; elle possède en elle-même une fin (un *télos*). Le gland tend naturellement à devenir chêne ; l'enfant tend naturellement à devenir adulte. La nature ne fait rien en vain : tout organe, toute fonction, tout comportement a une finalité. Cette conception téléologique implique une éthique : bien vivre, c'est accomplir sa nature, c'est-à-dire réaliser pleinement ce que l'on est potentiellement. Pour l'homme, cette finalité est la vie selon la raison (l'homme est un "animal rationnel"). Aristote distingue le naturel par essence (ce qui est toujours ainsi, comme le feu qui monte) et le naturel par tendance (ce qui va le plus souvent ainsi, mais peut exceptionnellement dévier). Cette distinction permet de penser la contingence sans renoncer à l'idée de nature.

  "La nature ne fait rien en vain."\
  Aristote — _Les Parties des animaux_

  $=>$ Aristote est la référence pour une conception téléologique de la nature. La nature a un sens, une orientation, une finalité. Bien agir, c'est agir selon sa nature.
]

== Épictète -- Vivre selon la nature

#cadre[
  *Épictète (\~50-\~125)* est un stoïcien. Pour les stoïciens, la nature (comprise comme l'ensemble des lois qui régissent le cosmos) est parfaitement rationnelle. Vivre selon la nature, c'est donc vivre selon la raison. Mais attention : la nature n'est pas seulement le monde extérieur (les arbres, les animaux, les phénomènes météorologiques) ; elle est aussi la nature de l'homme, c'est-à-dire sa capacité à comprendre et à consentir à l'ordre du monde. Ce qui est "contre nature", ce n'est pas la maladie ou la mort (ce sont des événements naturels), c'est le désir déréglé, la révolte vaine, l'attachement à ce qui ne dépend pas de nous. "Veux que les choses arrivent comme elles arrivent", écrit Épictète. Vivre selon la nature, c'est donc cesser de vouloir modifier ce qui est nécessaire ; c'est harmoniser sa volonté avec l'ordre cosmique.

  "Ne demande pas que les choses arrivent comme tu le veux ; veux qu'elles arrivent comme elles arrivent, et tu seras heureux."\
  Épictète — _Manuel_, VIII

  $=>$ Épictète est la référence pour l'idée que vivre selon la nature, c'est accepter la nécessité. La liberté n'est pas une lutte contre la nature, mais un accord avec elle.
]

#pagebreak()

== Descartes -- L'homme se rend "maître et possesseur de la nature"

#cadre[
  *René Descartes (1596-1650)* opère une rupture majeure. Contre la téléologie aristotélicienne (la nature a des fins), il propose une conception mécaniste de la nature : la nature est une immense machine, régie par des lois physiques que la raison peut connaître. Les finalités (le "pourquoi") sont bannies de la physique ; seules comptent les causes (le "comment"). Conséquence : l'homme n'a plus à "imiter" la nature ni à "s'y conformer". Il peut la *dominer*. Dans le _Discours de la méthode_, Descartes écrit que les connaissances utiles nous rendent "comme maîtres et possesseurs de la nature". Cette formule fonde le projet technoscientifique moderne : la nature n'est plus une mère à respecter, mais une matière première à transformer. Le rêve cartésien est celui d'une santé prolongée, d'une vie sans maladie, d'un corps réparé. Il y a cependant une tension : Descartes maintient une "nature humaine" (l'union de l'âme et du corps, les "idées innées"), mais la nature extérieure devient pure objectivité.

  "Nous rendre comme maîtres et possesseurs de la nature."\
  Descartes — _Discours de la méthode_, VI

  $=>$ Descartes est la référence pour l'idée que l'homme doit dominer la nature. Contre Aristote et les stoïciens (vivre selon la nature), Descartes ouvre l'ère de la technique moderne.
]

== Rousseau -- La nature comme bonté originelle

#cadre[
  *Jean-Jacques Rousseau (1712-1778)* a une position complexe et souvent mal comprise. Il n'est pas un "retourniste" : on ne peut pas revenir à l'état de nature. Mais il utilise l'état de nature comme un *régulateur critique* : il permet de juger ce qui, dans l'état social, est légitime ou illégitime. Sa thèse célèbre : "L'homme est né libre, et partout il est dans les fers." La nature (l'origine) n'est pas à imiter ; elle nous montre ce que nous avons perdu. Mais elle nous montre aussi ce que nous pourrions être si la société était bien ordonnée. Dans le _Discours sur l'origine et les fondements de l'inégalité parmi les hommes_, Rousseau décrit l'homme naturel comme solitaire, bon (non méchant), vivant dans un présent perpétuel. L'homme social, lui, est corrompu par la propriété, l'amour-propre, le luxe. Dans _Émile_, Rousseau écrit : "Tout est bien sortant des mains de l'Auteur des choses ; tout dégénère entre les mains de l'homme." La nature n'est donc pas un modèle à copier littéralement (on ne peut pas vivre comme un sauvage), mais un principe de critique : toute institution qui éloigne l'homme de sa bonté naturelle est suspecte.

  "Tout est bien sortant des mains de l'Auteur des choses ; tout dégénère entre les mains de l'homme."\
  Rousseau — _Émile ou De l'éducation_

  $=>$ Rousseau est la référence pour la thèse de la bonté naturelle de l'homme. Contre Hobbes (l'homme est un loup pour l'homme), il soutient que le mal vient de la société, non de la nature.

  $=>$ Rousseau est la référence pour la thèse de la bonté naturelle de l'homme. Contre Hobbes (l'homme est un loup pour l'homme), il soutient que le mal vient de la société, non de la nature.
]

== Kant -- La nature comme base transcendantale et comme finalité esthétique

#cadre[
  *Emmanuel Kant (1724-1804)* a deux discours sur la nature, qui correspondent aux deux grandes parties de son système : la _Critique de la raison pure_ et la _Critique de la faculté de juger_.

  Dans la première, la nature est l'ensemble des phénomènes régis par les lois de la physique (causalité mécanique). L'homme, comme être sensible, fait partie de cette nature ; ses actions sont déterminées. Mais comme être rationnel, il échappe à la nature ; il est libre. Il y a donc une dualité : l'homme est *dans* la nature par son corps, mais *au-dessus* de la nature par sa raison.

  Dans la troisième _Critique_, Kant introduit l'idée de *finalité sans but* à propos des êtres vivants et des paysages. Lorsque nous contemplons un organisme ou un paysage magnifique, nous le jugeons "comme s'il" avait été fait pour nous, mais sans postuler réellement une intention. C'est ce que Kant appelle le jugement réfléchissant : il ne détermine pas la nature (il ne dit pas ce qu'elle est), il la réfléchit selon notre besoin de sens.

  $=>$ Kant est la référence pour la dualité nature/liberté. L'homme est dans la nature (déterminé) mais aussi hors de la nature (libre). La contemplation esthétique de la nature (le sublime, le beau) nous réconcilie avec cette dualité.
]

== Hobbes -- L'homme est un loup pour l'homme

#cadre[
  Hobbes a une vision pessimiste de la nature humaine. Dans l'état de nature (c'est-à-dire avant l'institution de la société par contrat), les hommes sont en guerre perpétuelle les uns contre les autres. Pourquoi ? Parce qu'ils sont égaux en capacité de se nuire ; parce qu'ils désirent les mêmes biens (rares) ; parce qu'ils se méfient les uns des autres. La formule fameuse, reprise de Plaute, résume cette vision : "L'homme est un loup pour l'homme." L'état de nature n'est pas un état historique (Hobbes ne croit pas qu'on ait jamais vécu ainsi), mais un concept : ce qui se passe quand il n'y a pas d'autorité commune pour faire respecter les lois. Dans cet état, il n'y a ni justice ni injustice (ce sont des notions sociales), ni propriété, ni contrat. La vie y est "solitaire, pauvre, sale, bestiale et courte". La solution : sortir de l'état de nature par le contrat social, où chacun renonce à sa liberté naturelle (le droit de tout faire) en échange de la sécurité assurée par le Léviathan, l'État absolu.

  "L'homme est un loup pour l'homme."\
  Hobbes (reprenant Plaute) — _Léviathan_, ch. XIII

  "La guerre de chacun contre chacun."\
  Hobbes — _Léviathan_, ch. XIII

  $=>$ Hobbes est la référence pour la thèse opposée à Rousseau. La nature humaine n'est pas bonne ; elle est conflictuelle, égoïste, dangereuse. La société ne corrompt pas ; elle sauve.
]

== Sartre -- L'homme n'a pas de nature

#cadre[
  *Jean-Paul Sartre (1905-1980)* renverse la tradition. Dans _L'Existentialisme est un humanisme_, il affirme : "L'existence précède l'essence." Cela signifie que l'homme n'a pas de nature préétablie (à la manière d'un arbre dont l'essence serait contenue dans la graine). L'homme est d'abord jeté dans le monde, sans définition ; il se définit ensuite par ses actes, ses choix, son projet. "L'homme n'est rien d'autre que ce qu'il se fait." Conséquence : il n'y a pas de "nature humaine" universelle. Il n'y a que des hommes singuliers qui, en se choisissant, choisissent tous les hommes (car tout choix engage une image de l'homme). Cette position est radicale et souvent critiquée. Elle semble ignorer les contraintes biologiques, sociales, économiques. Sartre répond que ces contraintes existent, mais que l'homme leur donne un sens par son projet. Même l'esclave est libre, puisqu'il peut choisir son attitude face à sa servitude.

  "L'existence précède l'essence."\
  Sartre — _L'Existentialisme est un humanisme_

  "L'homme n'est rien d'autre que ce qu'il se fait."\
  Sartre — _L'Existentialisme est un humanisme_

  $=>$ Sartre est la référence pour la thèse radicale selon laquelle l'homme n'a pas de nature. Contre toute la tradition (Aristote, Hobbes, Rousseau), il défend une liberté absolue et un constructivisme existentiel.
]

== Merleau-Ponty -- La nature comme chair du monde

#cadre[
  *Maurice Merleau-Ponty (1908-1961)*, dans ses cours tardifs au Collège de France, a développé une philosophie de la nature qui dépasse l'opposition entre naturalisme (l'homme est une chose parmi les choses) et anti-naturalisme (l'homme est hors nature). Pour lui, la nature n'est ni un pur objet de science (Descartes), ni un modèle moral (stoïciens), ni une origine perdue (Rousseau). La nature est *le milieu originaire* où nous vivons, respirons, sentons, percevons. La perception elle-même est un échange entre notre corps et le monde ; ce n'est pas une projection subjective (Kant), ni une copie passive. Merleau-Ponty parle de la "chair" du monde : le monde est fait de la même étoffe que notre corps. Il y a une *réversibilité* entre le sentant et le senti. Cette conception a des conséquences politiques et éthiques : nous ne pouvons pas dominer la nature sans nous dominer nous-mêmes ; la nature n'est pas une "ressource", mais notre propre être.

  "La nature, c'est ce par quoi on recommence toujours."\
  Merleau-Ponty --- _La Nature_, cours du Collège de France

  $=>$ Merleau-Ponty est la référence pour une conception phénoménologique de la nature, qui surmonte l'opposition sujet/objet. La nature n'est ni une machine ni une mère ; elle est "chair", notre propre être.
]

= Exemple : _Les Rêveries du promeneur solitaire_ -- La nature comme refuge

== Contexte

#cadre[
  _Les Rêveries du promeneur solitaire_ est le dernier texte de Rousseau, écrit entre 1776 et 1778 (il meurt avant de l'achever). Rousseau a alors soixante-quatre ans. Il se sent persécuté par une "conspiration universelle" : ses livres sont condamnés, ses amis l'ont abandonné, les autorités le menacent. Il vit dans une solitude quasi complète, alternant entre Paris et les villages de la région parisienne. Les dix "promenades" (seulement dix sur les douze prévues sont achevées) sont les récits de ses promenades solitaires, mêlés à des réflexions sur le bonheur, la nature, la société, la vérité, la mort.

  L'ouvrage est souvent lu comme une autobiographie sentimentale, ou comme les confessions d'un paranoïaque. C'est aussi une œuvre philosophique majeure sur la nature. Contre ses propres textes antérieurs (le _Discours sur l'inégalité_, le _Contrat social_), Rousseau n'y théorise plus la nature comme un état hypothétique ; il la *vit*. La nature n'est plus un concept, mais un paysage, un arbre, un lac, une plante. La cinquième promenade, en particulier, décrit son séjour sur l'île Saint-Pierre au milieu du lac de Bienne (en Suisse). C'est là qu'il éprouve ce qu'il appelle un bonheur "parfait, stable, durable" – un état où l'on ne pense ni au passé ni au futur, mais où l'on se sent pleinement exister dans l'instant.

  $=>$ _Les Rêveries_ apporte au thème de la nature un angle que n'ont ni _Frankenstein_ (la nature comme limite technique), ni _Sisyphe_ (la nature indifférente), ni _Thoreau_ (la nature comme expérience volontaire). Rousseau propose la nature comme *milieu thérapeutique* : lieu de réconciliation avec soi-même, de guérison des blessures sociales, de dissolution de l'angoisse.

  *Trois apports majeurs se dégagent.*

  D'abord, une critique de la société par la nature. La société est le lieu du jugement d'autrui, du regard, de la comparaison, de l'amour-propre. La nature est le lieu de la solitude, de l'absence de regard, du retour à soi. "Je ne rêve jamais plus agréablement que quand je m'oublie moi-même", écrit Rousseau. La nature permet d'oublier le "moi social" (celui qui se soucie de ce qu'autrui pense) pour retrouver le "moi naturel" (celui qui sent, respire, existe).

  Ensuite, une théorie du bonheur comme "existence sans effort". La cinquième promenade décrit un état où l'on ne désire rien, où l'on ne craint rien, où l'on ne fait rien (sinon flotter, regarder, sentir). Ce bonheur n'a pas d'objet ; il est pur sentiment d'exister. "Il n'y a rien d'étranger à moi dans ce bonheur, il est en moi-même." La nature n'est pas la cause de ce bonheur, mais son occasion : elle met l'âme dans l'état de quiétude où elle n'a besoin de rien.

  Enfin, une exploration de la perception comme relation, non comme représentation. Rousseau ne décrit pas la nature comme un objet devant lui (comme le ferait un scientifique ou un peintre académique). Il décrit une immersion, une *participation*. Le promeneur ne contemple pas la nature depuis un observatoire ; il marche dedans, il respire l'air, il touche les plantes (l'herborisation est une pratique centrale des promenades). Cette conception préfigure la _phénoménologie_ de Merleau-Ponty : le sujet n'est pas séparé du monde ; il est "chair du monde".

  Le dialogue avec Épictète et les stoïciens est naturel. Rousseau a lu les stoïciens, et la cinquième promenade a des accents stoïciens (l'acceptation du destin, la réduction des désirs). Mais contre Épictète, Rousseau ne croit pas à un ordre rationnel du monde ; son bonheur n'est pas intellectuel (la compréhension du destin), mais sensible (la présence au monde). Le dialogue avec Descartes est implicite : contre le projet de "maîtrise et possession de la nature", Rousseau propose une nature qu'on ne possède pas, qu'on ne maîtrise pas, mais qu'on habite.
]

== La cinquième promenade : le bonheur de l'île Saint-Pierre

#cadre[
  *L'île Saint-Pierre : un bonheur "parfait, stable, durable"*

  La cinquième promenade est le cœur philosophique de l'ouvrage. Rousseau raconte son séjour sur l'île Saint-Pierre, au milieu du lac de Bienne. Il y est resté un peu plus d'un mois, contraint de fuir ensuite. Mais ce mois fut le plus heureux de sa vie. Pourquoi ? Non pas parce qu'il s'y passait des événements extraordinaires (il ne s'y passait rien), mais parce que rien ne s'y passait. Rousseau décrit un état où il ne faisait rien, ou presque rien : il flânait, herborisait, s'allongeait dans une barque, regardait l'eau, écoutait le vent. "Je ne faisais rien, je laissais faire la nature."

  Cet état est celui de *l'existence pure*, non mêlée de désir ou de crainte. Le bonheur ordinaire est fait de plaisirs qu'on poursuit, de biens qu'on obtient, de peurs qu'on surmonte. Celui-ci est différent : il n'a pas d'objet. "Il consiste dans un sentiment d'existence, dans une attention flottante, dans une rêverie diffuse."

  "Jamais je ne rêvai si agréablement que quand je m'oubliais moi-même."\
  Rousseau — _Les Rêveries du promeneur solitaire_, Cinquième promenade

  $=>$ La cinquième promenade est la référence pour l'idée que la nature peut offrir un bonheur sans objet, fait de pure présence. Contre la tradition qui lie bonheur et activité (Aristote), Rousseau propose un bonheur passif et réceptif.
]

#pagebreak()

== L'herborisation : une science sentimentale

#cadre[
  *Les plantes comme médiateurs entre le moi et le monde*

  Rousseau était un passionné de botanique. Il herborisait (collectionnait et identifiait les plantes) lors de ses promenades. Loin d'être une occupation accessoire, l'herborisation a une signification philosophique. Elle est une *science sans calcul*, une connaissance qui ne sépare pas l'observateur de son objet. Le botaniste doit s'approcher, toucher, sentir, goûter parfois. La plante n'est pas un objet purement théorique (décrit par des lois générales) ; elle est une singularité concrète, rencontrée ici et maintenant.

  L'herborisation permet aussi de "fixer" l'attention sans effort. Le promeneur qui herborise n'a pas à lutter contre la distraction ; la plante l'absorbe naturellement. C'est une forme de *méditation sans discipline*, qui ne passe ni par l'ascèse ni par la contrainte.

  "La botanique est une étude de pure curiosité, qui n'offre que des plaisirs simples."\
  Rousseau — _Les Rêveries du promeneur solitaire_, Septième promenade

  $=>$ L'herborisation illustre une relation à la nature qui n'est ni utilitaire (exploiter) ni théorique (connaître par concepts), mais sensible (rencontrer). Préfiguration de l'éthique environnementale : on ne respecte que ce qu'on a rencontré, non ce qu'on a seulement appris.
]

== La critique de la société par la nature

#cadre[
  *La société rend malheureux ; la nature guérit*

  Rousseau dresse dans les _Rêveries_ un diagnostic sévère de la société. La société est le lieu du *regard d'autrui*. On y est jugé, comparé, évalué. L'homme social ne vit jamais pour lui-même ; il vit pour ce qu'on dit de lui. L'amour-propre (se soucier de sa réputation, de son rang) est la source de la plupart des souffrances : jalousie, ambition, humiliation, vanité.

  La nature, au contraire, est le lieu de l'absence de regard. Dans la solitude de la forêt ou de l'île, personne ne me regarde, personne ne me juge, personne ne se soucie de moi. Je peux donc être moi-même, non pas au sens d'un "moi authentique" (Rousseau n'est pas un mystique), mais au sens d'un moi qui cesse de jouer un rôle. "Me voilà seul sur la terre, je n'ai plus de frère, de prochain, d'ami."

  "Me voilà donc seul sur la terre, n'ayant plus que moi-même pour compagnon."\
  Rousseau — _Les Rêveries du promeneur solitaire_, Première promenade

  $=>$ Rousseau propose la nature comme antidote à la souffrance sociale. Non pas un retour à l'état de nature (impossible), mais une *parenthèse naturelle* dans une vie sociale. La promenade solitaire est un rituel laïque de purification.
]

== Le temps retrouvé : l'instant contre l'histoire

#cadre[
  *Le bonheur est dans l'instant, non dans le projet*

  Rousseau oppose deux expériences du temps.

  La *première* est celle de l'homme social, qui vit dans le *projet* (l'avenir) ou dans le *regret* (le passé). Il travaille pour demain ; il redoute ce qui va arriver ; il se souvient de ce qu'il a perdu. Jamais il n'est pleinement présent.

  La *seconde* est celle du promeneur solitaire, qui vit dans *l'instant pur*. Il ne pense ni au passé (le souvenir des persécutions) ni au futur (la mort, la maladie). Il est tout entier dans le maintenant. Ce n'est pas un temps vide (il ne s'ennuie pas) ; c'est un temps plein, saturé par la sensation immédiate.

  Cette conception du temps rejoint certaines spiritualités orientales (le bouddhisme) et certains poètes (Rimbaud : "Je est un autre"). Mais Rousseau ne la théorise pas ; il la décrit comme une expérience vécue.

  "Je me souviens à peine d'être au monde."
  Rousseau — _Les Rêveries du promeneur solitaire_, Cinquième promenade


  $=>$ Rousseau propose une liberté dans le temps, non par le projet (Sartre) mais par l'instant. Contre l'idée que la liberté serait anticipation et engagement, il montre une liberté qui se vit dans la pleine présence à l'immédiat.
]

== La nature comme mère et comme amante

#cadre[
  *La nature n'est pas un objet ; elle est un être avec qui l'on communie*

  Rousseau utilise des métaphores affectives pour parler de la nature : il l'appelle "mère", "amante", "unique consolatrice". Ces métaphores ne sont pas poétiques seulement ; elles ont une signification philosophique. La nature n'est pas une chose (un *objet*) qu'on étudie ou qu'on exploite ; elle est un *être* avec qui l'on entre en relation. Cette relation n'est ni celle de la connaissance théorique (sujet/objet) ni celle de l'exploitation technique (maître/outil). Elle est celle de l'échange, de la sympathie, de l'écoute.

  Rousseau ne va pas jusqu'à attribuer une conscience à la nature (il n'est pas panthéiste). Mais il lui attribue une *capacité à répondre*, à consoler, à offrir. C'est ce que Merleau-Ponty appellera plus tard la "chair" du monde.

  "La nature m'a consolé de tout, et je ne suis pas consolé d'elle."
  Rousseau — _Les Rêveries du promeneur solitaire_, Cinquième promenade

  $=>$ Rousseau propose une relation affective à la nature, non utilitaire ni théorique. Préfiguration de l'écologie profonde : la nature n'est pas une ressource ; elle est un sujet avec qui nous sommes en dialogue.
]

= Exemple : _Frankenstein ou le Prométhée moderne_ : la nature vengeresse

== Contexte

#cadre[
  _Frankenstein_ est publié en 1818, alors que Mary Shelley a vingt et un ans. Le roman naît d'un défi lancé par Lord Byron à ses hôtes (Shelley, Polidori, Mary elle-même) : écrire une histoire de fantômes. Mary fait un cauchemar : celui d'un savant qui crée un être vivant et en est horrifié. Ce cauchemar devient le roman.

  Victor Frankenstein, jeune savant suisse, découvre le secret de l'« animation » de la matière inerte. Il passe deux ans à assembler des morceaux de cadavres pour créer un être vivant. Mais quand la créature ouvre les yeux, Frankenstein est saisi d'horreur et l'abandonne. Le monstre, rejeté par son créateur et par tous les humains qu'il rencontre, se venge en tuant les proches de Frankenstein. Le roman se termine par une poursuite dans l'Arctique, où Frankenstein meurt d'épuisement et la créature disparaît dans les glaces en se promettant de mourir.

  $=>$ _Frankenstein_ apporte au thème de la nature un angle que n'ont ni _Les Rêveries_ (la nature comme refuge), ni _Sisyphe_ (la nature indifférente). L'œuvre est une *parabole des limites de la domination technique*.

  *Trois apports majeurs se dégagent.*

  D'abord, une critique du projet cartésien de « maîtrise et possession de la nature ». Frankenstein veut percer le secret de la vie. Il veut créer, comme Dieu, mais sans Dieu. Il veut dominer la nature en la reproduisant. Mais cette domination se retourne contre lui : la créature qu'il a faite devient son bourreau.
  La nature ne se laisse pas dominer sans reste.

  Ensuite, une réflexion sur la *nature comme limite éthique*. Ce n'est pas parce qu'on peut faire quelque chose (techniquement) qu'on doit le faire. Frankenstein peut créer la vie, mais il n'assume pas sa créature. Il manque à ce que nous appellerions aujourd'hui un *devoir de responsabilité*. La nature n'est pas seulement ce qu'on connaît ou ce qu'on transforme ; elle est aussi ce qui nous pose des limites.

  Enfin, une question sur la *nature de la créature*. Le monstre naît-il méchant ? Non, dit Shelley : il naît bon (lecture rousseauiste) et devient méchant par le rejet qu'il subit. « J'étais bon, le malheur m'a rendu méchant. » La nature de la créature n'est pas fixée ; elle se construit dans la relation aux autres. C'est une thèse anti-essentialiste, proche de Sartre avant la lettre.

  Le roman dialogue avec _Rousseau_ (la bonté naturelle corrompue par la société) et avec _Descartes_ (la technique comme domination). Il préfigure _Huxley_ (_Le Meilleur des mondes_, la reproduction artificielle) et toute la science-fiction contemporaine sur les dangers du progrès technique.
]

#pagebreak()

== Le projet de Frankenstein : dominer la nature

#cadre[
  *Perdre le secret de la vie : la technique sans sagesse*

  Frankenstein est animé par une ambition démesurée : percer le secret de l'origine de la vie. Il étudie l'alchimie (Paracelse, Albert le Grand), puis la chimie moderne, puis l'anatomie. Il finit par découvrir le « principe de vie », mais Shelley ne nous dit pas lequel. Ce qui compte, ce n'est pas la découverte elle-même, c'est l'attitude qui la précède et la suit.

  Frankenstein ne se demande jamais s'il a le droit de faire ce qu'il fait. Il est animé par la *curiosité*, le *désir de gloire*, la *volonté de puissance*. Il veut surpasser ses prédécesseurs, égaler Dieu, créer une nouvelle espèce. C'est le *prométhéisme* : l'homme qui vole le feu des dieux et en paie le prix.

  "Je découvris la cause de la génération et de la vie ; je devins capable d'animer la matière inerte."\
  Shelley — _Frankenstein_, ch. 4

  $=>$ Le projet de Frankenstein illustre la démesure technique. Contre Descartes (la technique rend heureux), Shelley montre que la technique sans éthique est destructrice. Le savant n'est pas « maître et possesseur de la nature » ; il est jouet de sa créature.
]

== La créature : une nature corrompue par le rejet

#cadre[
  *« Je fus bon, le malheur m'a rendu méchant »*

  L'un des passages les plus importants du roman est la rencontre entre Frankenstein et sa créature dans les Alpes (ch. 10). Le monstre, qui a tué le jeune frère de Frankenstein, lui demande de l'écouter. Il raconte son histoire : après avoir été abandonné, il a erré, appris la langue, observé une famille d'émigrés turcs (les De Lacey). Il a tenté de se faire accepter, mais a été chassé. Il a sauvé une jeune fille de la noyade, et a été blessé par ses proches. Progressivement, l'amour qu'il portait aux hommes s'est transformé en haine.

  Ce récit est une illustration de la thèse rousseauiste : l'homme (ou la créature) est naturellement bon ; c'est la société (le rejet, la violence, l'injustice) qui le rend méchant. Le monstre dit lui-même : « Je fus bon, le malheur m'a rendu méchant. »

  "Je fus bon, le malheur m'a rendu méchant."\
  Shelley — _Frankenstein_, ch. 10

  $=>$ La créature de Shelley pose la question de la nature humaine. Si elle naît bonne (Rousseau), alors le mal vient de la société. Mais si la société est mauvaise, comment les hommes bons pourraient-ils la changer ? Le roman ne répond pas ; il montre l'engrenage fatal.
]

#pagebreak()

== Le monstre comme miroir de Frankenstein

#cadre[
  *La créature est ce que Frankenstein a refusé de voir*

  Un des aspects les plus profonds du roman est la *ressemblance* entre le créateur et sa créature. Les deux sont solitaires, assoiffés de reconnaissance, violents, coupables. Les deux détruisent ce qu'ils aiment. Frankenstein fuit sa créature, mais il ne peut s'en débarrasser ; elle est son double, son ombre, son inconscient.

  Shelley suggère que la domination technique n'est pas seulement une affaire d'outils et de savoirs ; elle est aussi une affaire de psychologie. Celui qui veut tout dominer finit par être dominé par ses propres pulsions. Le monstre extérieur (la créature) n'est que le reflet du monstre intérieur (l'ambition, la culpabilité, la haine de soi de Frankenstein).

  "Je me vis dans le même état d'abjection que lui."\
  Shelley —  _Frankenstein_, ch. 17

  $=>$ Le roman propose une lecture psychanalytique avant la lettre. Le monstre est le « refoulé » du savant. Dompter la nature, c'est d'abord dompter sa propre nature intérieure. Ceux qui refusent ce travail intérieur sont punis par l'extériorisation de leurs démons.
]

== Le refus de la procréation naturelle

#cadre[
  *Créer sans mère : la technique contre le corps*

  Frankenstein crée la vie sans femme. Il fabrique un être sans utérus, sans accouchement, sans allaitement. C'est une *violation de la procréation naturelle*. Shelley (qui a perdu plusieurs enfants, qui a vécu un accouchement difficile) est sensible à cette dimension. La nature a ses rythmes, ses douleurs, ses limites. Les ignorer a des conséquences.

  Le roman est souvent lu comme une critique du *patriarcat technique* : l'homme (le savant) qui vole le pouvoir des femmes (mettre au monde). Mais Shelley ne propose pas un retour à la nature (elle n'est pas réactionnaire). Elle montre simplement que toute technique qui ignore le corps et la relation (entre mère et enfant, entre créateur et créature) est vouée à l'échec.

  "J'avais travaillé deux ans pour donner la vie à un être ; mais il n'y avait aucune main pour le recevoir."\
  Shelley — _Frankenstein_, ch. 5 

  $=>$ Shelley anticipe les débats contemporains sur la procréation médicalement assistée (PMA, GPA). La technique peut-elle remplacer la nature ? Oui, mais à quel prix ? Le roman ne condamne pas la technique, mais il met en garde contre l'illusion que la technique résout tout.
]

== La nature sauvage : refuge ou danger

#cadre[
  *Les Alpes, l'Arctique : une nature sublime et indifférente*

  Le roman se déroule dans des décors naturels grandioses : les Alpes (le Mont Blanc, les glaciers), la mer, l'Arctique. Ces paysages sont « sublimes » au sens kantien : ils sont immenses, terrifiants, magnifiques. Ils écrasent l'homme par leur démesure. Le voyageur s'y sent petit, impuissant, menacé.

  Mais cette nature est *indifférente* aux souffrances humaines. Les Alpes ne consolent pas Frankenstein (contre Rousseau) ; elles sont le témoin muet de sa chasse au monstre. L'Arctique n'offre pas de refuge ; elle est le tombeau du savant. La nature shelleyenne n'est ni bonne (Rousseau) ni mauvaise (Hobbes) ; elle est *sublime*, c'est-à-dire à la fois fascinante et menaçante.

  "J'errais au milieu des glaciers, seul avec mon chagrin."
  Shelley — _Frankenstein_, ch. 9

  $=>$ La nature shelleyenne est une nature romantique : expression des émotions du héros (quand il est triste, la nature est sombre), mais aussi force indifférente qui le dépasse. Cette double dimension (miroir des sentiments / réalité extérieure) est typique du romantisme européen.
]

= Exemple : _Le Mythe de Sisyphe_ : la nature indifférente

== Contexte

#cadre[
  _Le Mythe de Sisyphe_ paraît en 1942, en pleine Occupation allemande. Camus a trente ans. L'essai s'ouvre par une phrase célèbre : "Il n'y a qu'un problème philosophique vraiment sérieux : c'est le suicide." Camus — _Le Mythe de Sisyphe_

  La question est de savoir si la vie vaut la peine d'être vécue dans un monde dépourvu de sens. Le constat est radical : le monde n'a pas de signification transcendante. Ni Dieu, ni la raison universelle, ni l'histoire ne nous offrent un sens préétabli. L'homme, lui, cherche désespérément un sens, une unité, une clarté. De cette confrontation entre l'appel humain et le silence du monde naît l'absurde.

  "L'absurde naît de la confrontation de l'appel humain avec le silence déraisonnable du monde."\
  Camus — _Le Mythe de Sisyphe_

  $=>$ _Le Mythe de Sisyphe_ apporte au thème de la nature un angle que n'ont ni _Les Rêveries_ (la nature consolatrice), ni _Frankenstein_ (la nature vengeresse), ni _Walden_ (la nature refuge). Camus propose la nature comme indifférence radicale.

  *Trois apports majeurs se dégagent.*

  D'abord, une critique de la nature consolatrice. Contre Rousseau (la nature guérit les blessures de la société), Camus montre que la nature ne répond pas à nos appels. Elle est là, belle ou terrible, mais elle ne nous aime pas, ne nous hait pas, ne nous protège pas. "Le silence éternel de ces espaces infinis m'effraie", écrivait Pascal. Camus prolonge cette effroi.

  Ensuite, une description de l'expérience absurde de la nature. Lorsque nous contemplons un paysage magnifique, nous pouvons éprouver deux choses : l'émerveillement (la beauté) et l'étrangeté (le monde ne nous répond pas). Cette dualité est le cœur de l'absurde.

  Enfin, une libération par l'absence de sens. Si la nature ne nous aime pas, alors nous n'avons rien à attendre d'elle. Plus d'espoir, plus de prière, plus de recours. Cette absence d'espoir est la condition de la liberté. Contre Rousseau (la nature comme mère), Camus propose la nature comme miroir de notre solitude.
]

== Le silence de la nature

#cadre[
  *La nature ne répond pas à notre appel*
  
  L'une des expériences fondamentales de l'absurde est celle du silence de la nature. Camus écrit : "Dans l'univers soudain rendu à son silence, les mille merveilles de la nature s'offrent comme un décor hostile."

  Cette formule est décisive. La nature n'est pas hostile au sens où elle voudrait nous nuire (elle n'a pas de volonté). Elle est hostile au sens où elle est étrangère. Un paysage magnifique peut être indifférent à notre souffrance. Une nuit étoilée peut nous faire sentir seuls, infiniment seuls.

  "Le monde m'échappe parce qu'il redevient lui-même."\
  Camus — _Le Mythe de Sisyphe_

  $=>$ La nature absurde n'est ni bonne ni mauvaise ; elle est autre. Cette altérité est ce qui la rend à la fois fascinante et terrifiante. Contre la tradition romantique (qui voit dans la nature une âme sœur), Camus pose une nature sans âme.
]

== Le paysage comme expérience de l'étrangeté

#cadre[
  *La beauté peut être une source d'angoisse*

  Camus décrit plusieurs expériences où la beauté du monde devient intolérable. Un visage aimé qui s'éloigne. Un paysage méditerranéen trop lumineux. Une pierre qui brille sous le soleil. À ces moments, le monde perd son sens familier. Il n'est plus « notre » monde ; il est simplement là, massif, muet.

  Cette expérience est proche de ce que les romantiques appelaient le sublime. Mais chez Kant, le sublime est finalement rassurant : il montre que l'homme est supérieur à la nature par sa raison. Chez Camus, le sublime ne rassure pas. Il montre que l'homme est petit, seul, sans recours.

  Au milieu de l'hiver, j'ai découvert en moi un été invincible."\
  Camus — _Le Mythe de Sisyphe_

  $=>$ Le paysage absurde n'est pas un refuge (Rousseau) ni un défi (Descartes). Il est un révélateur de notre condition : nous sommes seuls dans un monde qui ne nous parle pas.
]

== La nature comme décor de l'absurde

#cadre[
  *Sisyphe et la montagne*

  Le mythe de Sisyphe se déroule dans un décor naturel : une montagne, un rocher, un sommet, une descente. Ce décor n'est pas anecdotique. La montagne est le lieu de l'effort, de la solitude, de la répétition. Elle est aussi le lieu de la beauté et de l'écrasement.

  Sisyphe ne se plaint pas de la nature. Il ne lui demande rien. Il ne cherche pas à la dominer. Il ne cherche pas à s'y fondre. Il fait son travail. La montagne n'est ni son ennemie ni son amie ; elle est simplement là. C'est pourquoi il peut être heureux. Il n'attend rien de la nature ; il n'est pas déçu par son silence.

  "La lutte elle-même vers les sommets suffit à remplir un cœur d'homme. Il faut imaginer Sisyphe heureux."\
  Camus — _Le Mythe de Sisyphe_

  $=>$ La nature sisyphesque est un théâtre, non un refuge. Le héros n'y cherche pas la consolation ; il y agit. C'est une nature sans surnaturel, sans au-delà, sans consolation.
]

== Réponse à Rousseau : la nature n'est pas une mère

#cadre[
  *Contre la nature consolatrice*

  Camus n'ignore pas Rousseau. Il connaît les _Rêveries_ ; il sait que Rousseau trouvait dans la nature un apaisement, une consolation, une présence amie. Il refuse cette voie. Pourquoi ? Parce que la consolation est un espoir déguisé. Espérer que la nature nous comprenne, nous réponde, nous aime, c'est encore espérer. Or l'homme absurde a renoncé à l'espoir.

  Camus ne dit pas que Rousseau a tort sur le plan vécu. Si quelqu'un éprouve la nature comme consolatrice, très bien. Mais ce sentiment n'est pas une vérité philosophique. Il est un sentiment. La nature en elle-même n'est ni consolatrice ni angoissante ; elle est indifférente.


  "Le paysage n'est pas triste ou gai ; il est triste ou gai selon notre état d'âme."\
  Camus — _Le Mythe de Sisyphe_

  $=>$ Contre Rousseau (la nature comme mère), Camus propose la nature comme miroir de nos états d'âme. La nature ne nous console pas ; nous nous consolons nous-mêmes en elle.
]

== La liberté sans nature : se passer de l'espoir

#cadre[
  *L'absence de sens libère*

  Si la nature était bonne (Rousseau), nous devrions l'imiter. Si elle était mauvaise (Hobbes), nous devrions la fuir ou la dominer. Si elle était porteuse de sens (Aristote, les stoïciens), nous devrions nous y conformer. Mais elle n'est rien de tout cela. Elle est indifférente. Donc nous n'avons rien à en attendre. Et rien à en craindre.

  Cette absence d'attente est la condition de la liberté absurde. On n'est pas libre parce qu'on domine la nature (Descartes) ni parce qu'on s'y harmonise (stoïcisme). On est libre parce qu'on n'a plus d'illusions sur elle. Le monde ne nous aime pas. Très bien. Nous n'avons pas besoin de son amour pour vivre.

  "La liberté, c'est de n'attendre plus rien."\
  Camus — _Le Mythe de Sisyphe_

  $=>$ La nature absurde est une nature sans promesse. C'est pourquoi elle est libératrice. Plus besoin d'espérer un salut, une harmonie, un sens. On peut vivre, simplement, sans attente.
  ]