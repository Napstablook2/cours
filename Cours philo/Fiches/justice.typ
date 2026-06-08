#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*Fiche 7 : Justice*
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
  *Platon (427-347 av. JC)* développe sa conception de la justice dans La République, à travers une double analyse — celle de la cité idéale et celle de l'âme individuelle. Sa thèse centrale est que la justice est une forme d'harmonie : dans la cité, chaque classe sociale (les gouvernants philosophes, les gardiens-guerriers, les producteurs-artisans) remplit la fonction qui lui est propre sans empiéter sur celle des autres. Dans l'âme individuelle, la justice est l'état dans lequel la raison gouverne les passions et les désirs avec l'aide du courage — chaque partie de l'âme remplit son rôle. L'injustice, au contraire, est le désordre, la stasis — quand les parties de l'âme ou les classes de la cité sortent de leur rôle naturel. Platon commence par réfuter deux conceptions réductives de la justice : celle de Céphale (rendre ce qu'on doit) et, surtout, celle de Thrasymaque — le sophiste qui soutient que "la justice est l'avantage du plus fort", que les lois ne sont que des instruments au service de ceux qui dominent. Contre Thrasymaque, Platon argumente que le juste bénéficie à tous, y compris à celui qui l'accomplit — l'homme juste est plus heureux que l'homme injuste, parce que son âme est en ordre. La justice n'est donc pas une contrainte extérieure que les puissants imposent aux faibles — c'est la santé de l'âme.

  "La justice, c'est que chacun fasse ce qui lui appartient et ne s'occupe pas de ce qui appartient aux autres."\
  Platon -- _La République, IV, 433a_

  $=>$ Platon est la référence fondatrice de la justice comme harmonie et vertu intérieure. Sa réfutation de Thrasymaque ("la justice est l'avantage du plus fort") est un classique incontournable — et reste d'une actualité brûlante face au cynisme politique contemporain.
]

== Aristote

#cadre[
  *Aristote (384-322 av. JC)* consacre le livre V de l'_Éthique à Nicomaque_ à une analyse de la justice qui reste la plus rigoureuse et la plus complète de toute la tradition philosophique. Il part d'une distinction fondamentale : la justice au sens général (la vertu complète, qui consiste à respecter la loi et à ne pas nuire à autrui) et la justice au sens particulier (qui concerne spécifiquement la répartition des biens et la correction des torts). Au sein de cette justice particulière, Aristote distingue deux formes. La justice distributive concerne la répartition des biens, des honneurs et des charges dans la communauté politique — elle ne consiste pas à donner la même chose à tous, mais à donner à chacun ce qui lui revient proportionnellement à sa contribution ou à son mérite (le principe géométrique de la proportionnalité). La justice corrective (ou commutative) concerne les échanges et les torts entre individus — elle vise à rétablir l'égalité rompue par une transaction injuste ou un délit, selon un principe arithmétique d'égalité stricte. Aristote insiste sur le fait que la justice distributive n'est pas l'égalité arithmétique (donner la même chose à tous) — c'est l'égalité géométrique (donner à chacun proportionnellement). Traiter de manière identique des personnes inégalement situées n'est pas juste — c'est même une forme d'injustice.

  "La justice est la vertu par excellence, parce qu'elle est la pratique de la vertu complète envers autrui"\
  Aristote -- _Éthique à Nicomaque, V, 3_

  $=>$ La distinction aristolélicienne justice distributive/corrective est un outil d'analyse très efficace. Elle permet de montrer que l'égalité n'est pas toujours synonyme de justice — ce qui est la base de toute réflexion sur l'équité et la discrimination positive.
]

== Cicéron

#cadre[
  *Cicéron (106-43 av. JC)* est le grand transmetteur de la pensée stoïcienne sur la justice dans la tradition romaine et occidentale. Dans De la République et Des lois, il développe la doctrine du droit naturel : il existe une loi supérieure à toutes les lois humaines, universelle et éternelle, fondée sur la raison et accessible à tous les êtres raisonnables. Cette loi naturelle est le fondement de toute justice véritable — une loi humaine qui la contredit n'est pas une loi, mais une forme de violence légalisée. La célèbre formule est attribuée à Cicéron : summum ius, summa iniuria — "le droit poussé à l'extrême devient l'injustice suprême." C'est la reconnaissance que l'application stricte et aveugle de la loi peut produire des résultats profondément injustes, et que la justice exige parfois de dépasser la lettre de la règle pour en respecter l'esprit. Cicéron développe aussi l'idée d'une communauté humaine universelle — tous les hommes partagent la raison et sont donc liés par des devoirs mutuels de justice qui transcendent les frontières des cités et des nations. C'est le fondement philosophique du droit des gens et, plus tard, du droit international.

  "La loi véritable est la droite raison, conforme à la nature, répandue en tous, constante, éternelle."\
  Cicéron -- _De la République, III_

  $=>$ Cicéron est la référence pour le droit naturel et la justice universelle. Sa formule summum ius, summa iniuria est très utile pour critiquer le formalisme juridique — la lettre de la loi peut tuer l'esprit de la justice.
]

== Kant

#cadre[
  *Kant (1724-1804)* aborde la justice à travers sa philosophie du droit, exposée dans la Métaphysique des mœurs. Pour lui, le droit est l'ensemble des conditions sous lesquelles la liberté de chacun peut coexister avec la liberté de tous selon une loi universelle. La justice est donc la garantie de cette coexistence des libertés — elle n'a pas pour objet de rendre les hommes heureux, mais de protéger leur liberté et leur dignité. C'est une conception purement formelle et déontologique : un acte est juste non parce qu'il produit de bonnes conséquences, mais parce qu'il respecte le droit de chacun. La formule de l'impératif catégorique — "ne traite jamais autrui simplement comme un moyen, toujours aussi comme une fin" — est le principe fondateur de la justice kantienne : toute personne a une dignité absolue qui interdit qu'on la réduise à un instrument. Sur la question pénale, Kant défend une position rétributiviste stricte : la punition doit être proportionnelle au crime, non calculée sur ses effets utiles. Même si une société décidait de se dissoudre, elle devrait au préalable exécuter le dernier meurtrier en prison — non pour un effet social, mais parce que la justice l'exige en elle-même. Cette rigueur absolue est à la fois la force et la limite de la conception kantienne.

  "Agis de telle sorte que tu traites l'humanité, aussi bien dans ta personne que dans la personne de tout autre, toujours en même temps comme une fin, et jamais simplement comme un moyen."\
  Kant -- _Fondements de la métaphysique des mœurs, II_

  $=>$ Kant fonde la justice sur la dignité humaine et la liberté, non sur le bonheur ou l'utilité. Sa conception rétributiviste de la peine (punir parce que c'est juste, non pour dissuader) est à confronter à l'utilitarisme (punir pour l'effet préventif).
]

== Rawls

#cadre[
  *John Rawls (1921-2002)* est le philosophe politique le plus influent du XXe siècle sur la question de la justice. Dans Théorie de la justice (1971), il propose une reformulation contractualiste : quels principes de justice des individus rationnels choisiraient-ils s'ils devaient organiser la société sans savoir quelle place ils y occuperaient ? C'est le voile d'ignorance — un dispositif qui neutralise tous les biais liés à la situation particulière de chacun (naissance, richesse, talents, classe sociale) pour faire émerger des principes vraiment impartiaux. Derrière ce voile, Rawls soutient que des individus rationnels choisiraient deux principes. Le premier principe : chaque personne doit avoir un système égal de libertés fondamentales aussi étendu que possible (liberté d'expression, de conscience, de participation politique…). Le second principe — le plus original et le plus discuté — dit que les inégalités sociales et économiques ne sont justifiables que si elles satisfont deux conditions : elles doivent être attachées à des positions ouvertes à tous dans des conditions d'égalité équitable des chances ; et elles doivent bénéficier aux membres les plus défavorisés de la société (c'est le "principe de différence"). Une inégalité qui profite aux riches sans améliorer la situation des pauvres est injuste. Une inégalité qui améliore la situation de tous, y compris des plus pauvres, est justifiable. Rawls ne prône pas l'égalitarisme strict — il pense que certaines inégalités peuvent être justes si elles servent les intérêts des moins bien lotis.

  "La justice est la première vertu des institutions sociales, comme la vérité est celle des systèmes de pensée"\
  Rawls -- _Théorie de la justice, §1_

  $=>$ Rawls est la référence contemporaine absolue sur la justice sociale et l'équité. Le voile d'ignorance est un outil de pensée immédiatement compréhensible. À confronter à Nozick (droits individuels contre redistribution) et à Marx (qui juge insuffisante toute réforme sans abolition des classes).
]

== Marx

#cadre[
  *Karl Marx (1818-1883)* occupe une position singulière sur la justice : il se méfie du concept même, qu'il considère comme une notion idéologique utilisée pour masquer les rapports de domination. Dans la Critique du programme de Gotha (1875), il s'attaque aux socialistes qui réclament une "distribution équitable" des richesses dans le cadre du capitalisme : cette revendication est naïve parce qu'elle ne touche pas aux conditions de production qui génèrent les inégalités. La justice formelle — l'égalité devant la loi, les droits individuels — est pour Marx une justice bourgeoise : elle traite comme égaux des individus qui ne le sont pas réellement sur le plan économique. Un contrat de travail "librement consenti" entre un propriétaire et un prolétaire sans alternative est formellement juste mais substantiellement oppressif. Marx propose une formule différente pour penser la distribution juste : "De chacun selon ses capacités, à chacun selon ses besoins" — ce qui ne peut se réaliser que dans la société communiste, après l'abolition des classes et de la propriété privée des moyens de production. La justice n'est donc pas un principe à appliquer à la société existante — c'est l'horizon d'une transformation radicale des rapports sociaux.

  "De chacun selon ses capacités, à chacun selon ses besoins."\
  Marx -- _Critique du programme de Gotha, I_

  $=>$ Marx permet de critiquer la justice formelle comme masque des inégalités réelles. Sa distinction justice formelle/justice substantielle est très pratique. À confronter à Rawls (qui cherche à réformer le capitalisme) et à Nozick (qui défend les droits formels contre toute redistribution).
]

== Nozick

#cadre[
  *Robert Nozick (1938-2002)* est la grande réponse libérale-libertarienne à Rawls, développée dans Anarchie, État et Utopie (1974). Là où Rawls pense la justice en termes de distribution — comment répartir équitablement les biens dans une société — Nozick pense la justice en termes de droits et d'acquisition légitime. Sa thèse centrale est que les individus ont des droits fondamentaux inviolables — notamment sur leur propre personne et sur les biens qu'ils ont acquis légitimement (par leur travail ou par un échange volontaire). Toute redistribution forcée de ces biens — y compris par la fiscalité — est une violation de ces droits, quelle que soit la finalité poursuivie. Nozick illustre son argument par le cas de Wilt Chamberlain : si chacun décide librement de donner un centime au champion de basket pour le voir jouer, il accumule une fortune considérable — cette inégalité est juste parce qu'elle résulte de transactions volontaires. Contraindre Chamberlain à redistribuer une partie de ses gains serait injuste — même si cela profite aux plus pauvres. Pour Nozick, la justice n'est pas une question de résultat (quelle distribution est équitable ?) mais de processus (les acquisitions et transferts ont-ils été volontaires et légitimes ?). La seule forme d'État compatible avec la justice est l'État minimal — qui se borne à protéger les droits contre la violence et le vol.

  "Les individus ont des droits, et il y a des choses qu'aucune personne ou aucun groupe ne peut leur faire sans violer ces droits."\
  Nozick -- _Anarchie, État et Utopie ; Préface_

  $=>$ Nozick est le contre-argument libéral à Rawls — indispensable pour une dialectique sur la justice sociale. Sa distinction justice de résultat/justice de processus est l'un des outils les plus efficaces de la philosophie politique contemporaine.
]

== Pascal

#cadre[
  *Blaise Pascal (1623-1662)* aborde la justice dans les _Pensées_ avec une lucidité cynique qui tranche avec les idéalismes de Platon ou de Rawls. Sa réflexion part d'un constat empirique : les hommes n'ont pas réussi à fonder la justice sur la raison ou la nature — toutes les tentatives se sont fracassées sur le relativisme des coutumes ("vérité en deçà des Pyrénées, erreur au-delà") et sur les conflits d'intérêts. Face à cet échec, les hommes ont fait de nécessité vertu : "ne pouvant faire que ce qui est juste fût fort, on a fait que ce qui est fort fût juste." La justice réelle, dans le monde humain, n'est pas un idéal rationnel — c'est le résultat d'un rapport de forces habillé en principes. Les lois ne sont respectées non parce qu'elles sont justes, mais parce qu'elles sont les lois — parce que la coutume et l'autorité leur confèrent une force que leur contenu ne justifie pas toujours. Pascal formule l'une des pensées les plus percutantes de toute la philosophie politique : "La justice sans la force est impuissante ; la force sans la justice est tyrannique." Ni la justice seule ni la force seule ne suffisent — la justice politique exige leur alliance, aussi imparfaite soit-elle. Cette pensée n'est pas un relativisme résigné mais un réalisme lucide : Pascal reconnaît que la justice idéale est inaccessible, sans pour autant renoncer à la distinction entre le juste et l'injuste.

  "La justice sans la force est impuissante ; la force sans la justice est tyrannique. Il faut donc mettre ensemble la justice et la force."\
  Pascal -- _Pensées, §103_

  $=>$ Pascal est la référence pour le réalisme politique sur la justice — la tension entre l'idéal de justice et la réalité de la force. Sa citation est marquante. À mobiliser en nuance ou en antithèse des conceptions idéalistes (Platon, Rawls).
]

= Exemple : _Les Misérables_

== Introduction

#cadre[
  *Un roman sur l'écart entre la loi et la justice*\
  Contexte général -- France du XIX#super[e] siècle, de la Révolution à 1832

  Les Misérables ne sont pas seulement un roman social — c'est une méditation philosophique sur la justice. Hugo met en scène un système judiciaire qui applique la loi avec rigueur et qui, ce faisant, produit des résultats profondément injustes. Jean Valjean est condamné à cinq ans de bagne pour avoir volé un pain afin de nourrir les enfants de sa sœur affamée. Il tentera de s'évader — et finira par purger dix-neuf ans. La loi a été appliquée à la lettre. Et pourtant, le lecteur ressent immédiatement que quelque chose d'essentiel a été trahi. Le roman tout entier est construit autour de cette tension : entre la légalité (ce que dit la loi) et la légitimité (ce qu'exige la justice réelle).
]

== Les personnages comme incarnations philosophiques

#cadre[
  *Javert — la justice légale absolue*\
  Tout le roman -- L'inspecteur qui traque Valjean pendant des décennies

  Javert est l'un des personnages les plus philosophiquement denses de la littérature française. Il incarne la justice légale portée à son point de perfection — et donc à son point de rupture. Pour lui, la loi est la justice, sans reste, sans exception. Un homme condamné est un criminel pour toujours — la rédemption n'existe pas dans son univers mental, parce que la rédemption est une catégorie morale, et Javert ne connaît que les catégories juridiques. Il n'est pas cruel par sadisme — il est impitoyable par cohérence. Sa logique est rigoureuse : si la loi admet des exceptions fondées sur la bonté ou le mérite personnel, elle n'est plus une loi — elle devient arbitraire. Ce que Javert défend, c'est précisément ce que Kant valorise dans la loi : son universalité, son impartialité, son indifférence aux cas particuliers. Et c'est précisément ce qui le rend monstrueux chez Hugo.

  "Il ne connaissait pas deux sortes d'hommes : ceux qui étaient en règle et ceux qui étaient hors la loi. Il n'y avait pour lui ni bons ni méchants, il y avait des gens dans la loi et des gens hors de la loi."\
  Hugo -- _Les Misérables, I, 5_

  $=>$ Javert illustre que l'application stricte de la loi peut être une forme d'injustice — ce que Cicéron formulait déjà : summum ius, summa iniuria. Il permet de montrer que la justice légale n'épuise pas la justice morale, et que le formalisme juridique a ses limites. À confronter à Kant (qui valorise l'universalité de la loi) et à Aristote (qui insiste sur l'équité comme correction de la loi générale dans les cas particuliers).
]

#cadre[
  *Jean Valjean — la rédemption que la justice institutionnelle ne peut pas produire*\
  L'arc narratif complet -- du bagne à la sainteté laïque

  Jean Valjean est la réfutation vivante de la théorie de Javert. Sorti du bagne après dix-neuf ans, il est transformé non pas par la justice pénale — qui l'a brisé et durci — mais par un acte de miséricorde gratuit : l'évêque Myriel lui pardonne d'avoir volé ses chandeliers et lui en fait cadeau. Cet acte de grâce fait ce que dix-neuf ans de prison n'ont pas réussi à faire. La justice rétributive (punir le crime) a échoué là où la justice réparatrice (restaurer la dignité du sujet) a réussi. Valjean devient maire, philanthrope, sauveur — il incarne une justice qui va au-delà de la loi, fondée sur la charité et la reconnaissance de la dignité humaine. Hugo pose ainsi une question que la philosophie du droit ne peut pas esquiver : à quoi sert la peine si elle ne réhabilite pas ? La justice pénale n'est-elle pas en partie une vengeance sociale habillée en principe ?

  $=>$ Valjean illustre la limite de la conception kantienne-rétributiviste de la peine (punir parce que c'est juste, indépendamment des effets) face à une conception réparatrice ou réhabilitatrice. À relier à l'utilitarisme (Mill : la peine doit être utile, non seulement juste) et à Rawls (la société juste doit donner à chacun les conditions de se relever).
]

#cadre[
  *La mort de Javert — quand la justice légale se brise sur la justice morale*\
  Fin du roman -- Javert, épargné par Valjean, se suicide

  Le moment philosophiquement le plus dense du roman est la mort de Javert. Valjean, qui aurait pu le tuer, lui accorde la vie. Javert se retrouve alors dans une situation psychiquement intenable : la loi lui ordonne d'arrêter Valjean — mais Valjean vient de lui sauver la vie par un acte de bonté que Javert ne peut pas nier. Pour la première fois, sa vision du monde bipartite (la loi d'un côté, le crime de l'autre) ne tient plus. Il existe un homme hors-la-loi qui est juste. Il existe une bonté qui dépasse la légalité. Javert ne peut pas intégrer cette contradiction — elle détruit son univers mental. Il se jette dans la Seine. Sa mort est la preuve que la justice purement légale, sans dimension morale, ne peut pas tenir face à la réalité humaine concrète.

  $=>$ Usage en dissertation : Le suicide de Javert est l'un des dénouements les plus philosophiquement significatifs de la littérature. Il illustre que toute conception de la justice qui ignore la complexité morale des individus finit par se briser. À mobiliser pour la synthèse d'une dissertation sur justice légale et justice morale.
]

= Exemple : _Antigone_

#cadre[
  *La pièce fondatrice du conflit légalité/légitimité*\
  Contexte -- Après la guerre des septs chefs contre Thèbes, Créon devient roi

  Créon, nouveau roi de Thèbes, décrète que le corps de Polynice — frère d'Antigone, mort en attaquant la ville — restera sans sépulture, livré aux chiens et aux vautours, comme punition de sa trahison. Antigone transgresse cet édit et répand de la terre sur le corps de son frère — accomplissant le rite funèbre que les lois divines et la piété fraternelle exigent. Elle est arrêtée, jugée par Créon, et condamnée à mort. La pièce est le procès philosophique de cette confrontation : deux conceptions de la justice s'affrontent, chacune avec ses arguments, aucune entièrement tort, aucune entièrement raison. C'est la grandeur de Sophocle — et ce qui fait d'Antigone une œuvre philosophique plutôt qu'un simple récit moral.
]

#cadre[
  *Antigone contre Créon : deux justices légitimes en conflit*\
  Acte II -- Le dialogue entre Antigone et Créon

  Antigone défend une justice fondée sur la loi divine et la fraternité — des obligations qui précèdent et surpassent toute loi humaine. "Je n'ai pas cru que tes édits avaient assez de force pour permettre à un mortel de passer outre aux lois non écrites et immuables des dieux." Pour elle, certains devoirs sont inconditionnels — indépendamment de ce que dit le roi, un frère mérite une sépulture. C'est la position du droit naturel : il existe une justice antérieure à toute législation positive. Créon, lui, défend une justice fondée sur l'ordre politique et la raison d'État : si l'on commence à faire des exceptions à la loi pour des raisons personnelles ou religieuses, plus aucune loi ne tient. L'État ne peut pas fonctionner si chaque citoyen décide seul quelle loi il respecte. Sa position n'est pas absurde — c'est celle de Hobbes et de toute théorie de la souveraineté. Les deux ont raison sur un point, et tort sur un autre. Sophocle ne tranche pas — c'est la tragédie qui tranche, en détruisant tout le monde.

  "Je n'ai pas cru que tes défenses eussent assez de force pour permettre à un mortel de passer outre aux lois non écrites et immuables des dieux."\
  Sophocle, _Antigone, v. 453-455_

  $=>$ Le dialogue Antigone/Créon est le modèle parfait de la dissertation dialectique sur la justice : thèse (la loi de l'État est juste — Créon), antithèse (la loi morale prime — Antigone), et une synthèse tragique qui refuse de trancher. À relier à Cicéron (droit naturel), à Thoreau (désobéissance civile) et à Locke (droit de résistance à la loi injuste).
]

#cadre[
  *Antigone 1944 : la résistance comme absolu moral*\
  Cotexte de l'Occupation -- Anouilh écrit en 1944


La version d'Anouilh, écrite sous l'Occupation nazie, déplace le sens de la pièce. Son Antigone est moins portée par la piété religieuse que par un refus pur et simple de composer — elle dit non à Créon non parce qu'elle a raison sur tout, mais parce qu'elle ne peut pas dire oui. Créon, chez Anouilh, est présenté comme un homme lucide, fatigué, qui a accepté les compromis du pouvoir pour que la machine tourne. Il offre même à Antigone une sortie honorable. Elle refuse — parce que le "oui" impliquerait d'accepter un monde où de tels compromis sont nécessaires. Anouilh radicalise la position d'Antigone : elle incarne non plus la justice divine contre la justice humaine, mais la pureté morale absolue contre le réalisme politique. En 1944, le message était transparent pour le public parisien : certains occupaient la scène comme Créon, d'autres résistaient comme Antigone.

$=>$ La version d'Anouilh permet d'introduire la dimension historique et politique de la justice — la résistance à l'injustice comme acte moral absolu. À relier à Sartre (la liberté comme engagement total, sans compromis possible) et à Camus (la révolte comme affirmation d'une valeur absolue contre l'absurde).
]

= Exemple : _Le Procès_

#cadre[
  *Un roman sur la justice sans fondement*\
  Contexte général -- Josef K, employé de banque, arrêté un matin sans raison apparente

  Josef K. est arrêté un matin par des agents d'une autorité mystérieuse, sans être informé de l'accusation portée contre lui. Il n'est pas emprisonné — il continue sa vie ordinaire — mais il est soumis à un processus judiciaire opaque dont il ne comprend ni les règles ni les enjeux. Il cherche à se défendre, consulte des avocats, tente d'approcher les juges, explore les couloirs labyrinthiques du tribunal — et finit par être exécuté "comme un chien" sans avoir jamais su de quoi il était accusé. Le roman est la mise en scène d'une justice devenue pure procédure — formellement organisée, institutionnellement imposante, mais entièrement coupée de tout fondement moral ou rationnel. C'est la critique la plus radicale qui soit du formalisme juridique.
]

#cadre[
  *L'arrestation sans chef d'accusation : la justice sans contenu*\
  Chapitre 1 -- l'arrestation de Josef K.

  La première scène du roman pose immédiatement le problème philosophique central : des agents arrivent chez K., lui annoncent qu'il est en état d'arrestation, mais refusent de lui dire de quoi il est accusé. "Nous ne sommes pas autorisés à vous le dire." La justice kafkaïenne a toutes les formes de la justice — des agents, des procédures, des tribunaux, des avocats, des juges — mais elle est vidée de son contenu rationnel fondamental : le droit de connaître l'accusation portée contre soi. C'est le principe même du procès équitable (l'habeas corpus, la présomption d'innocence) qui est supprimé. Et pourtant, K. ne conteste pas frontalement la légitimité de ce système — il essaie d'y naviguer, de s'y adapter, comme si la procédure avait en elle-même une autorité qu'il ne peut pas remettre en question.

  $=>$ Quelqu'un avait dû calomnier Josef K. car, sans avoir rien fait de mal, il fut arrêté un matin.\
  Kafka -- _Le Procès, chapitre 1_

  $=>$ L'incipit du Procès est l'un des plus célèbres de la littérature mondiale — et l'un des plus philosophiquement denses. "Sans avoir rien fait de mal" : la culpabilité est posée sans faute, la procédure s'enclenche sans cause. C'est la critique la plus radicale du formalisme juridique — une justice qui fonctionne indépendamment de toute vérité. À relier à la formule de Pascal : "la force sans la justice est tyrannique" — ici la force a pris toutes les formes de la justice sans en avoir le fondement.
]

#cadre[
  *La culpabilité sans faute : la justice comme violence symbolique*\
  Tout le roman -- la progressive intériorisation de la culpabilité par K.

  L'une des dimensions les plus troublantes du roman est la suivante : progressivement, Josef K. commence à se comporter comme s'il était coupable — il s'agite, se justifie, s'humilie devant des instances qu'il ne comprend pas, consacre toute son énergie à un procès dont il ignore le fondement. Le système judiciaire kafkaïen produit la culpabilité par sa seule existence — indépendamment de toute faute réelle. C'est ce que Foucault appellera plus tard "la normalisation" : un pouvoir qui ne punit pas tant qu'il ne produit pas des sujets qui s'auto-surveillent et s'auto-accusent. La justice kafkaïenne ne dit pas "tu es coupable parce que tu as fait X" — elle dit "le fait même que tu sois jugé prouve que tu es coupable." C'est l'inversion complète de la présomption d'innocence.

  $=>$ Ce mécanisme de culpabilisation par la procédure est à relier à Freud (la culpabilité inconsciente qui précède la faute — K. se sent coupable sans savoir pourquoi, comme Raskolnikov) et à Foucault (les institutions disciplinaires qui produisent la culpabilité comme mode de contrôle social). Kafka préfigure la critique des institutions totales que Goffman développera au XXe siècle.
]

#cadre[
  *"Comme un chien" : la mort sans justice*\
  Dernier chapitre : l'exécution de Josef K.

  K. est exécuté par deux hommes en frac, dans une carrière, avec un couteau dans le cœur. Sa dernière pensée est : "Comme un chien ! dit-il, c'était comme si la honte dût lui survivre." Il meurt sans avoir compris de quoi il était accusé, sans avoir été jugé publiquement, sans avoir pu se défendre. La justice a fonctionné — il y a eu arrêt, procès, sentence, exécution — mais rien de ce que la justice est censée garantir n'a eu lieu : ni vérité, ni équité, ni dignité. Le dernier mot — la "honte" — est décisif : Kafka suggère que le système judiciaire, même absurde, a réussi à faire de K. un être qui mourra honteux. La violence symbolique a accompli son œuvre même quand la procédure était entièrement arbitraire.

  "Comme un chien ! dit-il, c'était comme si la honte dût lui survivre."\
  Kafka : _Le procès, dernier chapitre_

  $=>$ Le dénouement du Procès est la réfutation la plus radicale de toute conception purement formelle de la justice. Une justice qui respecte toutes les formes (arrestation, procès, sentence, exécution) mais ignore tout fondement rationnel et moral n'est pas la justice — c'est une violence habillée en procédure. À mobiliser en synthèse pour toute dissertation sur les limites de la justice institutionnelle.
]