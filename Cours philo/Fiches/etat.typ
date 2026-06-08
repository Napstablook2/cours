#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*Fiche 5 : État*
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
  *Aristote (384-322 av. JC)* est le premier grand théoricien de l'État en Occident, et sa position est radicalement différente de celle des contractualistes modernes : pour lui, l'État — ou plutôt la cité (polis) — n'est pas un artefact artificiel né d'un contrat, mais une réalité naturelle. Dans la _Politique_, il affirme que "l'homme est par nature un animal politique" (zôon politikon) : l'homme n'est pas d'abord un individu isolé qui déciderait ensuite de s'associer à d'autres : il est constitutionnellement fait pour vivre en communauté politique. Celui qui vit en dehors de la cité est soit une bête, soit un dieu : dans les deux cas, il n'est pas un homme accompli. La cité n'est donc pas une limitation de la liberté naturelle : elle est la condition de l'épanouissement humain. C'est dans la cité, et seulement dans la cité, que l'homme peut exercer les vertus proprement humaines : la justice, l'amitié, la délibération politique. Aristote distingue aussi les formes de gouvernement selon qu'elles visent le bien commun (royauté, aristocratie, politie — les formes "droites") ou l'intérêt des gouvernants (tyrannie, oligarchie, démocratie — les formes "déviées"). Cette classification est restée influente pendant des siècles.

  "Il est manifeste que la cité est une réalité naturelle, et que l'homme est par nature un être politique."\
  Aristote -- _Politique, I, 2_

  $=>$ Aristote est la référence pour l'État comme réalité naturelle et condition de l'épanouissement humain. Sa thèse s'oppose directement à Hobbes (état de nature belliqueux) et Rousseau (état de nature heureux) — pour Aristote, la question de l'état de nature ne se pose pas : l'homme est politique par essence.
]

== Hobbes

#cadre[
  *Hobbes (1588-1679)* est le fondateur de la philosophie politique moderne et le théoricien le plus radical de la nécessité de l'État. Dans _Le Léviathan_ , il part d'une hypothèse sur l'état de nature — la condition des hommes sans gouvernement — qui est radicalement pessimiste : sans autorité commune, les hommes sont en guerre "de tous contre tous" (bellum omnium contra omnes). Non pas nécessairement une guerre permanente et active, mais un état d'insécurité permanente où chacun a droit à tout, y compris à la vie d'autrui, et où "la vie de l'homme est solitaire, misérable, dangereuse, animale et brève". Face à cette menace, la raison dicte aux hommes de s'entendre pour transférer leur droit naturel à un souverain — l'État, le Léviathan — qui dispose du monopole de la force et garantit la paix civile. Ce transfert est irrévocable et total : le souverain, qu'il soit un roi ou une assemblée, ne peut pas être contesté, car toute résistance risque de replonger dans l'état de nature. Hobbes justifie ainsi un pouvoir souverain absolu non par le droit divin, mais par la raison et le calcul des individus : l'obéissance à l'État est dans l'intérêt de chacun. La seule limite du souverain est qu'il doit garantir la vie de ses sujets : s'il ne le peut plus, les sujets récupèrent leur droit naturel.

  "La vie de l'homme est solitaire, misérable, dangereuse, animale et brève."\
  Hobbes -- _Le Léviathan, ch. XIII_

  $=>$ Hobbes est la référence pour la nécessité absolue de l'État fondée sur la menace de l'état de nature. Sa vision pessimiste de l'homme est le point de départ de tout le contractualisme. À confronter à Rousseau (qui inverse le diagnostic : c'est la société qui corrompt l'homme, non la nature) et à Locke (qui refuse la souveraineté absolue).
]

== Locke

#cadre[
  *Locke (1632-1704)* est le fondateur du libéralisme politique et le grand adversaire de Hobbes sur la question de l'État. Dans le _Second Traité du gouvernement civil_, il propose une vision radicalement différente : l'état de nature n'est pas une guerre de tous contre tous, mais un état de liberté et d'égalité régi par une loi naturelle que la raison permet de découvrir : ne pas nuire à la vie, à la liberté et aux biens d'autrui. Les hommes se dotent d'un gouvernement civil non pour échapper à la barbarie, mais pour mieux protéger des droits naturels qu'ils possèdent déjà : la vie, la liberté et la propriété. L'État est donc un mandataire limité, constitué par le consentement des gouvernés dans un but précis. Si le gouvernement viole les droits naturels qu'il est censé protéger — s'il devient tyrannique — les citoyens ont le droit de le renverser. C'est la première grande théorisation du droit de résistance et du gouvernement représentatif. Locke distingue aussi le pouvoir législatif (le plus important, doit être entre les mains du peuple ou de ses représentants), le pouvoir exécutif et le pouvoir fédératif : une ébauche de la séparation des pouvoirs que Montesquieu développera.

  "Là où il n'y a pas de loi, il n'y a pas de liberté"\
  Locke -- _Second traité du gouvernement civil, ch. VI_

  $=>$ Locke est la référence fondatrice du libéralisme politique et de l'État limité. Ses idées ont directement inspiré la Déclaration d'indépendance américaine (1776) et la Déclaration des droits de l'homme et du citoyen (1789). À confronter à Hobbes (État absolu) et à Rousseau (volonté générale).
]

== Rousseau

#cadre[
  *Rousseau (1712-1778)* occupe une position charnière dans l'histoire de la pensée politique : il partage avec Hobbes et Locke l'idée d'un contrat social, mais en tire des conclusions très différentes. Dans le _Du contrat social_, il part d'un diagnostic sombre : "L'homme est né libre, et partout il est dans les fers." Comment expliquer que la liberté naturelle de l'homme ait été perdue ? Par un contrat social illégitime, imposé par les riches aux pauvres pour protéger leur propriété. Rousseau cherche alors les conditions d'un contrat légitime : un contrat par lequel chacun s'unit à tous sans s'aliéner à personne. La solution est la notion de volonté générale : quand les citoyens délibèrent ensemble en visant le bien commun (et non leurs intérêts particuliers), ils expriment la volonté générale, qui est souveraine et inaliénable. Obéir à la volonté générale, c'est obéir à soi-même en tant que membre de la communauté : c'est la liberté civile, supérieure à la liberté naturelle. Cette thèse est puissante mais risquée : Rousseau admet qu'on peut "forcer quelqu'un à être libre" au nom de la volonté générale, formule qui a été utilisée pour justifier des dérives autoritaires. Rousseau est aussi hostile à la représentation : la souveraineté ne peut être déléguée, le peuple doit gouverner lui-même.

  "L'homme est né libre, et partout il est dans les fers."\
  Rousseau -- _Du contrat social, I, 1_

  $=>$ Rousseau est la référence pour la souveraineté populaire et la démocratie directe. Sa notion de volonté générale a fondé le républicanisme français et inspire encore aujourd'hui les débats sur la démocratie participative. Sa tension interne (liberté vs. contrainte au nom du bien commun) est philosophiquement très féconde.
]

== Hegel

#cadre[
  *Hegel (1770-1831)* rompt avec toute la tradition contractualiste en refusant de voir dans l'État un simple moyen au service des individus. Dans les _Principes de la philosophie du droit_, il soutient que l'État n'est pas un mal nécessaire ni un accord de circonstance : c'est la réalisation la plus haute de la liberté humaine, la forme concrète dans laquelle l'Esprit objectif se réalise dans l'histoire. Hegel distingue la société civile (domaine des intérêts particuliers, de l'économie, des besoins) et l'État (domaine de l'universel, de la vie éthique accomplie). L'individu ne trouve sa véritable liberté qu'en s'intégrant dans l'État ; non pas en se soumettant à lui, mais en reconnaissant que ses propres aspirations profondes coïncident avec la vie éthique universelle que l'État incarne. Cette thèse est provocante : elle semble dissoudre l'individu dans le collectif. Mais Hegel affirme que l'État moderne (l'État constitutionnel) intègre les droits individuels tout en les dépassant vers une liberté concrète et substantielle, supérieure à la liberté abstraite de l'individu isolé. Sa célèbre formule "ce qui est rationnel est réel, ce qui est réel est rationnel" signifie que l'État existant n'est pas arbitraire : il est la manifestation de la raison dans l'histoire.

  "L'État est la réalité effective de la liberté concrète"\
  Hegel -- _Principes de la philosophie du droit, §260_

  $=>$ Hegel est la référence pour l'État comme accomplissement de la liberté, contre les visions libérales qui voient l'État comme une contrainte. Sa distinction société civile/État est fondamentale pour penser les rapports entre économie et politique. À confronter à Marx, qui reprend cette distinction pour la retourner.
]

== Marx

#cadre[
  *Marx (1818-1883)* propose la critique la plus radicale de l'État dans la tradition philosophique. Héritier de Hegel mais en le "remettant sur ses pieds", il renverse la thèse hégélienne : l'État n'est pas la réalisation de la raison universelle et de la liberté : c'est un instrument de domination de classe, un mécanisme par lequel la classe économiquement dominante maintient son pouvoir sur les classes dominées. Dans le _Manifeste du parti communiste_ et dans la _Critique de la philosophie du droit de Hegel_, Marx soutient que l'État n'a pas d'autonomie propre : il est "le comité directeur des affaires communes de la bourgeoisie". Les lois, la police, l'armée, la justice — toutes ces institutions apparemment neutres et universelles sont en réalité au service des intérêts de la classe possédante. Cela ne signifie pas que Marx soit indifférent à la politique : il analyse les révolutions, les luttes politiques et les formes d'État avec une grande précision historique. Mais son horizon est la suppression de l'État lui-même : dans la société communiste, une fois les classes abolies, l'État n'aurait plus de raison d'être et "dépérirait" de lui-même — laissant place à une association libre des producteurs. Cet horizon reste la grande utopie de la pensée marxiste, jamais réalisée historiquement.

  "Le gouvernement de l'État moderne n'est qu'un comité qui gère les affaires communes de la classe bourgeoise tout entière."\
  Marx & Engels -- _Manifeste du parti communiste, I_

  $=>$ Marx est la référence pour la critique de l'État comme instrument de domination. Il permet de disctuer sur la neutralité supposée de l'État, sur les rapports entre économie et politique, ou sur la justice sociale. À confronter à Hegel (qu'il renverse) et à Locke (dont il rejette le libéralisme).
]

== Weber

#cadre[
  *Max Weber (1864-1920)* n'est pas un philosophe politique au sens traditionnel : c'est un sociologue, mais sa définition de l'État est devenue la référence incontournable de toutes les sciences sociales et politiques. Dans _Le Savant et le Politique_, il propose une définition formelle et non normative de l'État : l'État est "la communauté humaine qui revendique avec succès le monopole de la violence physique légitime sur un territoire donné." Trois éléments sont essentiels dans cette définition. D'abord, le monopole : l'État est la seule instance autorisée à exercer la violence — tout autre usage de la force (criminalité, milices privées) est illégitime. Ensuite, la légitimité : ce n'est pas la violence nue qui fait l'État, c'est la violence reconnue comme légitime par ceux qui la subissent. Enfin, le territoire : l'État s'exerce sur un espace délimité. Weber distingue par ailleurs trois types de légitimité de la domination politique : la domination traditionnelle (fondée sur la coutume et l'héritage), la domination charismatique (fondée sur les qualités exceptionnelles d'un chef) et la domination légale-rationnelle (fondée sur des règles impersonnelles et rationnelles — c'est le type dominant dans les États modernes).

  "L'État est la communauté humaine qui revendique avec succès le monopole de la violence physique légitime sur un territoire donné."\
  Weber -- _Le Savant et le Politique_

  $=>$  Weber donne la définition sociologique de l'État la plus utilisée. Sa distinction entre les trois types de légitimité est aussi très utile pour analyser différentes formes de pouvoir politique.
]

== Rawls

#cadre[
  *John Rawls (1921-2002)* est le philosophe politique le plus influent du XXe siècle. Dans _Théorie de la justice_, il reprend la tradition contractualiste pour la renouveler profondément : il s'agit de déterminer les principes de justice qui devraient fonder les institutions d'une société juste. Sa méthode est originale : le voile d'ignorance : imaginons que des individus rationnels doivent choisir les principes de justice qui régiront leur société, mais sans savoir quelle place ils y occuperont (riches ou pauvres, bien portants ou malades, hommes ou femmes, etc.). Derrière ce voile d'ignorance, quels principes choisiraient-ils ? Rawls soutient qu'ils choisiraient deux principes. Le premier : les libertés fondamentales de chacun doivent être égales et maximales (liberté d'expression, de conscience, de réunion, etc.). Le second — le principe de différence : les inégalités sociales et économiques ne sont justifiées que si elles bénéficient aux membres les plus défavorisés de la société. Un État juste n'est pas un État égalitaire au sens strict — il peut tolérer des inégalités, à condition qu'elles améliorent le sort des plus pauvres. Cette conception, libérale mais soucieuse de justice sociale, a relancé toute la philosophie politique contemporaine et alimenté les débats sur l'État-providence, la redistribution et la démocratie.

  "Les inégalités sociales et économiques doivent être organisées de façon à ce qu'elles soient au plus grand bénéfice des membres les plus désavantagés de la société."\
  Rawls -- _Théorie de la justice, §13_

  $=>$ Rawls est la référence contemporaine pour la justice sociale et les principes d'un État équitable. Le voile d'ignorance est un outil de pensée très efficace — il permet de tester intuitivement nos conceptions de la justice. À confronter à Marx (qui juge insuffisante toute réforme sans abolition des classes).
]

= Exemple : _Du contrat social_

== Le projet de l'œuvre

#cadre[
  *Trouver un contrat social légitime*\
  Livre I, chapitre 1 -- La question fondatrice

  _Du contrat social_ s'ouvre sur l'une des formules les plus célèbres de toute la philosophie politique : "L'homme est né libre, et partout il est dans les fers." Ce paradoxe est le point de départ de tout le livre. Rousseau ne cherche pas à expliquer historiquement comment l'homme a perdu sa liberté — il cherche à savoir si cette perte peut être légitime, et dans quelles conditions. Sa question centrale est formulée dès le début : "Comment trouver une forme d'association qui défende et protège de toute la force commune la personne et les biens de chaque associé, et par laquelle chacun, s'unissant à tous, n'obéisse pourtant qu'à lui-même et reste aussi libre qu'auparavant ?" C'est le problème fondateur de toute philosophie politique : comment concilier l'autorité collective et la liberté individuelle ? La réponse de Rousseau est le contrat social — mais un contrat d'un type radicalement nouveau, très différent de celui de Hobbes ou de Locke.

  $=>$  La formule d'ouverture ("L'homme est né libre…") pose immédiatement la tension centrale du thème de l'État : liberté naturelle vs. contrainte sociale.
]

== Le contrat social : mécanisme et originalité

#cadre[
  *Le pacte fondateur : s'unir sans s'aliéner*\
  Livre I, chapitre 6 -- Du pacte social

  Le contrat social de Rousseau repose sur une clause fondamentale et paradoxale : "l'aliénation totale de chaque associé avec tous ses droits à toute la communauté." Chacun se donne entièrement — et cela libère. Comment ? Parce que chacun se donne à tous, et non à un individu particulier. En se donnant à la communauté tout entière, chacun ne se donne à personne en particulier, et comme la communauté est composée de tous les membres égaux, chacun récupère en droit de citoyen l'équivalent de ce qu'il cède en droit naturel. L'acte fondateur crée un corps politique : une personne morale collective appelée indifféremment République, corps politique, État (dans ses rapports passifs), souverain (dans ses rapports actifs) ou puissance (dans sa comparaison avec les États étrangers). Ce corps est animé par la volonté générale, qui est souveraine et inaliénable. La différence avec Hobbes est ici décisive : chez Hobbes, les individus transfèrent leur puissance à un souverain extérieur à eux (le roi ou l'assemblée) qui reste distinct de la société. Chez Rousseau, les individus deviennent eux-mêmes le souverain — il n'y a pas de tiers au-dessus d'eux.

  "Chacun de nous met en commun sa personne et toute sa puissance sous la suprême direction de la volonté générale ; et nous recevons en corps chaque membre comme partie indivisible du tout."

  $=>$ Ce mécanisme permet de montrer que l'État peut être conçu comme une forme d'auto-gouvernement : non pas une contrainte imposée de l'extérieur, mais une auto-obligation librement consentie. À confronter à Hobbes (qui maintient un souverain séparé du peuple) et à l'anarchisme (qui refuse toute aliénation, même totale et symétrique).
]

== La volonté générale : concept clé

#cadre[
  *Volonté générale vs. volonté de tous*\
  Livre II, chapitre 3 -- Distinction fondamentale

  La notion la plus originale et la plus discutée du _Contrat social_ est celle de volonté générale. Rousseau la distingue soigneusement de la volonté de tous : la volonté de tous est simplement la somme des volontés particulières de chaque individu — elle peut être égoïste, partielle, orientée vers des intérêts privés. La volonté générale, elle, est orientée vers le bien commun — elle est ce que les citoyens veulent en tant que membres du corps politique, non en tant qu'individus privés. Elle est toujours droite, dit Rousseau, même si les citoyens individuels peuvent se tromper sur ce qu'elle est. Comment la découvrir ? Par la délibération publique — quand les citoyens débattent en visant le bien commun et non leurs intérêts particuliers. Les factions et les partis sont dangereux parce qu'ils substituent des volontés particulières collectives à la volonté générale. Idéalement, chaque citoyen délibère seul avec lui-même, et la somme de ces délibérations individuelles fait émerger la volonté générale. Ce moment de la pensée de Rousseau est à la fois son point le plus fort (il définit la démocratie comme auto-gouvernement au service du bien commun) et son point le plus fragile (qui garantit que la volonté générale est bien celle du bien commun, et non une majorité tyrannique ?).

  "La volonté générale est toujours droite et tend toujours à l'utilité publique : mais il ne s'ensuit pas que les délibérations du peuple aient toujours la même rectitude."

  $=>$ La distinction volonté générale/volonté de tous est l'un des outils les plus puissants pour penser la démocratie. Elle permet de critiquer la démocratie directe brute (le vote majoritaire peut être tyrannique) tout en défendant l'idéal de l'auto-gouvernement. À relier à Tocqueville (la "tyrannie de la majorité") et à Kant (l'universalité de la loi morale comme équivalent de la volonté générale).
]

#cadre[
  *"Forcer à être libre" : la formule la plus controversée*\
  Livre I, chapitre 7 -- Du souverain

  Rousseau écrit une phrase qui a fait couler beaucoup d'encre : quiconque refuse d'obéir à la volonté générale "y sera contraint par tout le corps ; ce qui ne signifie autre chose sinon qu'on le forcera à être libre." Comment peut-on forcer quelqu'un à être libre ? Rousseau s'explique ainsi : la volonté générale exprime la liberté authentique du citoyen — sa liberté en tant que membre du corps politique, soucieux du bien commun. Si un citoyen résiste à la volonté générale, il obéit à sa volonté particulière, égoïste, qui le rend esclave de ses passions. En le contraignant à obéir à la volonté générale, la communauté le ramène à sa propre liberté profonde. C'est une thèse distinctement rousseauiste : la liberté véritable n'est pas l'absence de contrainte (liberté négative), mais l'autonomie : se gouverner selon sa raison et son intérêt véritable (liberté positive). Mais cette formule a été utilisée pour justifier des régimes autoritaires qui prétendaient incarner la volonté générale contre les individus récalcitrants : c'est la principale objection libérale à Rousseau.

  "Afin que le pacte social ne soit pas un vain formulaire, il renferme tacitement cet engagement qui seul peut donner de la force aux autres : que quiconque refusera d'obéir à la volonté générale y sera contraint par tout le corps ; ce qui ne signifie autre chose sinon qu'on le forcera à être libre."

  $=>$ Cette formule est la plus dangereuse et la plus féconde du Contrat social. Elle illustre la tension entre liberté positive (s'appartenir vraiment) et liberté négative (ne pas être contraint). Benjamin Constant y verra le germe du totalitarisme.
]

== Souveraineté, gouvernement et forme de régimes

#cadre[
  *Souveraineté populaire vs. gouvernement : une distinction cruciale*\
  Livre III -- Du gouvernement

  Rousseau opère une distinction fondamentale que ses prédécesseurs n'avaient pas faite avec cette netteté : la souveraineté appartient toujours et inaliénablement au peuple — elle ne peut pas être déléguée. Le gouvernement, en revanche, est simplement le mandataire du souverain, chargé d'exécuter les lois que la volonté générale a édictées. C'est une différence radicale avec les monarchies de droit divin et avec Hobbes : le peuple ne se dépossède jamais de sa souveraineté, il ne fait que confier l'exécution à des magistrats révocables. Rousseau distingue ensuite les formes de gouvernement selon le nombre de gouvernants : la démocratie (tous gouvernent — idéale pour une petite cité), l'aristocratie (quelques-uns gouvernent — la meilleure en pratique si elle est élective) et la monarchie (un seul gouverne — efficace mais dangereuse). Rousseau est célèbre pour avoir dit que la démocratie au sens strict (où le peuple exerce lui-même le gouvernement) "n'a jamais existé et n'existera jamais" — parce qu'il est contre nature que le grand nombre gouverne et que le petit nombre soit gouverné. Ce qui peut exister, c'est une République où le peuple est souverain mais délègue le gouvernement. Enfin, Rousseau est hostile à la représentation : les députés ne représentent pas la volonté générale — ils ne peuvent être que des commissaires. "La loi anglaise pense que le peuple est libre ; il se trompe fort. Il ne l'est que durant l'élection des membres du Parlement ; sitôt qu'ils sont élus, il est esclave, il n'est rien."

  $=>$ La distinction souveraineté/gouvernement est essentielle pour analyser les régimes politiques modernes. La critique de la représentation par Rousseau est un outil puissant pour interroger la démocratie représentative — et anticipe les débats contemporains sur la démocratie participative et directe.
]

== Les objections classiques

#cadre[
  *Benjamin Constant — la liberté des Anciens contre celle des Modernes*\
  -- Discours "De la liberté des Anciens comparée à celle des modernes", 1819

  Constant formule l'objection libérale la plus incisive contre Rousseau. Il distingue deux conceptions de la liberté : la liberté des Anciens (participation active à la vie politique collective, démocratie directe comme chez les Grecs) et la liberté des Modernes (indépendance privée, droits individuels à l'abri de l'ingérence de l'État). Rousseau, dit Constant, a confondu les deux : en fondant sa théorie sur la liberté politique des Anciens, il a ouvert la voie à un État qui, au nom de la volonté générale et de la liberté collective, peut écraser la liberté individuelle. La formule "forcer à être libre" est pour Constant le signe de ce glissement dangereux. Les Modernes, vivant dans des sociétés commerciales complexes, ne peuvent pas consacrer leur vie à la délibération politique — ils ont besoin d'une sphère privée protégée de l'État. C'est la critique fondatrice du libéralisme contre le républicanisme rousseauiste.

  $=>$ Constant est l'antidote libéral à Rousseau. La distinction liberté des Anciens/liberté des Modernes est un outil analytique très efficace.
]

= Exemple : _Le Léviathan_

== Le projet de l'œuvre

#cadre[
  *Fonder la paix civile sur la raison, non sur la religion*\
  Contexte historique -- Angleterre de la guerre civile, 1640-1651

  _Le Léviathan_ naît dans un contexte de chaos politique extrême : la guerre civile anglaise, qui a vu le roi Charles Ier décapité (1649) et le pays déchiré entre Parlementaires et Royalistes. Hobbes, qui a fui en exil en France, écrit ce livre pour répondre à une question urgente et pratique : comment garantir la paix civile de façon durable ? Sa méthode est résolument moderne : il veut appliquer à la politique la rigueur des sciences nouvelles (Galilée, la géométrie). Partir des atomes de la société — les individus — et construire la théorie de l'État à partir de leur nature. L'ambition est colossale : fonder la légitimité de l'État non sur Dieu, non sur la tradition, non sur la coutume, mais sur la raison seule. Le titre renvoie au monstre biblique du livre de Job — une créature si puissante que rien ne peut lui résister. C'est l'image que Hobbes choisit pour l'État : un dieu mortel, artificiel, qui tient sa puissance non de Dieu mais des hommes qui le constituent.

  $=>$ Le contexte historique du Léviathan est lui-même un argument philosophique — Hobbes écrit depuis l'expérience concrète de ce que devient la société sans pouvoir central fort. Permet de montrer que la philosophie politique ne part pas d'abstractions mais de l'urgence de la violence réelle.
]

== L'état de nature : le diagnostic pessimiste

#cadre[
  *La guerre contre tous*\
  Partie I, chapitres 11-13 -- "De la condition naturelle du genre humain"

  Avant de construire l'État, Hobbes décrit l'état de nature : la condition des hommes sans gouvernement. Sa description est radicalement pessimiste et repose sur une anthropologie précise. Les hommes sont d'abord naturellement égaux : en force physique et en capacités mentales, aucun n'est si supérieur aux autres qu'il puisse dominer durablement sans risque. De cette égalité naît une égalité d'espoir dans la réalisation de ses fins, et donc un conflit généralisé quand deux hommes désirent la même chose. Trois causes naturelles de conflict s'enchaînent : la compétition (on attaque pour acquérir), la méfiance (on attaque pour se défendre par anticipation), et la gloire (on attaque pour être reconnu). Il en résulte un état de guerre permanente — non pas nécessairement de combats constants, mais d'une insécurité permanente où chacun doit anticiper l'agression d'autrui. Dans cet état, "la vie de l'homme est solitaire, misérable, dangereuse, animale et brève." Et surtout : il n'existe ni propriété, ni justice, ni injustice — ces notions n'ont de sens que sous une loi civile. Dans l'état de nature, "chacun a droit à toutes choses, même au corps des autres."

  "Dans un tel état, il n'y a pas de place pour l'industrie, parce que le fruit n'en est pas assuré ; et par conséquent il n'y a pas de culture de la terre ; pas de navigation ; [...] pas de connaissance de la face de la terre ; pas de compte du temps ; pas d'arts ; pas de lettres ; pas de société ; et ce qui est pire que tout, une crainte et un danger continuels de mort violente : et la vie de l'homme est solitaire, misérable, dangereuse, animale et brève."\
  _Le Léviathan, ch. XIII_

  $=>$ L'état de nature hobbesien est l'argument le plus fort pour la nécessité absolue de l'État. À confronter à Rousseau (état de nature paisible — c'est la société qui corrompt) et à Locke (état de nature gouverné par la loi naturelle). Mais aussi à mobiliser pour toute réflexion contemporaine sur les États faillis, les zones de non-droit ou les situations de guerre civile — Hobbes ne décrit pas le passé, il décrit ce qui revient quand l'État s'effondre.
]

#cadre[
  *L'égalité naturelle comme source du conflit*\
  Chapitre XIII -- Fondement anthropologique

  Un aspect souvent négligé du Léviathan est que Hobbes fonde le conflit non sur la méchanceté naturelle des hommes, mais sur leur égalité. Si les hommes étaient radicalement inégaux en force — comme les loups face aux moutons — la domination naturelle s'imposerait et le conflit serait résolu. Mais les hommes sont suffisamment égaux pour que chacun puisse espérer vaincre l'autre, et donc que chacun ait des raisons rationnelles de craindre l'autre et d'attaquer par prévention. La guerre de tous contre tous n'est pas irrationnelle : elle est le produit d'une rationalité individuelle qui, en l'absence de puissance commune, conduit à un résultat collectivement désastreux. C'est ce que les théoriciens des jeux appelleront plus tard un "dilemme du prisonnier" : chaque individu, agissant rationnellement pour lui-même, produit un résultat dont tout le monde est perdant. La solution n'est pas de changer la nature humaine mais de changer la structure d'incitation — c'est le rôle du souverain.

  $=>$ Ce point est philosophiquement très riche : Hobbes ne dit pas que l'homme est mauvais par nature, mais que l'égalité naturelle, en l'absence de régulation, produit mécaniquement le conflit. À relier à la théorie des jeux et à l'économie politique pour montrer l'actualité de Hobbes — et à Rousseau qui retourne l'argument : c'est la propriété et l'inégalité sociale, non l'égalité naturelle, qui produisent le conflit.
]

== Le contrat et le souverain

#cadre[
  *Le contrat de soumission : sortir de l'état de nature*\
  Chapitres 14-17 -- "Des lois de la nature" et "De la cause, de la génération et de la définition d'un État"

  Face à l'horreur de l'état de nature, la raison dicte aux hommes des lois de nature — non pas des lois morales divines, mais des maximes de la raison prudentielle qui indiquent comment survivre et prospérer. La première loi de nature : chercher la paix et s'y tenir. La deuxième : consentir à se dessaisir de son droit à toute chose dans la mesure où les autres y consentent aussi — c'est la base du contrat. Les hommes concluent donc un contrat entre eux : chacun accepte de transférer son droit naturel à un souverain — une personne ou une assemblée — qui exercera la puissance commune. Ce transfert est d'une nature très différente de celui de Rousseau : chez Hobbes, les individus ne se donnent pas à la communauté dont ils restent membres, ils se soumettent à un tiers — le souverain — qui n'est pas partie au contrat. Le souverain est institué par le contrat mais n'y est pas lié : il n'a pas d'obligations envers les sujets. Cette asymétrie est la source de la souveraineté absolue : le souverain ne peut pas être mis en cause, jugé, renversé, car si les sujets contestaient le souverain, ils retomberaient dans l'état de nature, ce qui est pire que tout.

  "La seule façon d'ériger un tel pouvoir commun [...] est de conférer toute leur puissance et toute leur force à un seul homme, ou à une seule assemblée d'hommes, qui puisse réduire toutes leurs volontés, par la règle de la majorité, en une seule volonté."\
  _Le Léviathan, ch. XVII_

  $=>$ Le contrat hobbesien est le plus radical de tous les contractualismes : il aboutit à une souveraineté absolue et irrévocable. À confronter à Locke (droit de résistance si le gouvernement viole les droits naturels) et à Rousseau (souveraineté populaire inaliénable). La question centrale : peut-on légitimement aliéner toute sa liberté pour obtenir la sécurité ?
]

#cadre[
  *Le Léviathan : le dieu mortel*\
  Chapitre XVII -- Défintion et métaphore de l'État

  Hobbes introduit la métaphore centrale qui donne son titre au livre : l'État est un "dieu mortel", un Léviathan artificiel construit par les hommes à l'image de leur créateur. L'image de la frontispice du livre est célèbre : un géant dont le corps est composé de multitudes de petits hommes — c'est l'État comme corps artificiel, dont chaque citoyen est une cellule. Ce géant tient dans une main l'épée (le pouvoir temporel) et dans l'autre la crosse (le pouvoir spirituel) — car Hobbes entend soumettre aussi l'Église à l'État, pour éviter que la religion ne devienne une source de sédition et de guerre civile. Le souverain-Léviathan est "mortel" parce qu'il peut périr — contrairement au Dieu immortel dont il est l'image terrestre. Il est "artificiel" parce qu'il est une construction rationnelle des hommes, non une donnée naturelle ou divine. Cette sécularisation de l'État est révolutionnaire pour l'époque : Hobbes coupe le lien entre autorité politique et autorité divine, et fonde la légitimité de l'État sur le seul consentement rationnel des individus.

  $=>$ La métaphore du Léviathan permet d'illustrer la conception artificialiste de l'État — contre Aristote (l'État naturel). Elle montre aussi que Hobbes conçoit l'État comme une personne fictive, une unité construite à partir de la pluralité des individus — ce qui préfigure les théories modernes de la personnalité juridique de l'État.
]

== Liberté et limites du souverain

#cadre[
  *La seule limite du souverain : la vie des sujets*\
  Chapitre XXI -- "De la liberté des sujets"

  La souveraineté hobbesienne est absolue, mais pas illimitée. Il existe une seule limite que les sujets ne peuvent jamais transgresser : personne n'est tenu d'obéir à un ordre qui le conduit à sa propre mort. Car le contrat a été conclu précisément pour éviter la mort : si le souverain ordonne à un sujet de se tuer, de se blesser, ou ne peut plus le protéger, le sujet récupère son droit naturel de résistance. C'est la seule exception que Hobbes admet à l'obéissance absolue. Par ailleurs, il distingue les actes du souverain (toujours légitimes par définition) et la liberté des sujets dans les "silences de la loi" — tout ce que la loi ne réglemente pas reste libre. Cette liberté résiduelle est considérable dans une société moderne, mais elle est entièrement dépendante du bon vouloir du souverain. On voit ici la limite fondamentale du hobbesisme : la sécurité est garantie, mais les droits individuels ne le sont pas : ils dépendent de la générosité du souverain, non d'une protection juridique.

  $=>$ Cette limite unique (la vie) est ce qui distingue Hobbes du totalitarisme pur — mais aussi ce qui le sépare radicalement de Locke (qui protège la vie, la liberté et la propriété) et des libéraux. À mobiliser pour nuancer la caricature d'un Hobbes simplement "autoritaire" : il fonde l'État sur la raison et la survie, non sur la domination arbitraire.
]

= Exemple : _1984_ 

== Le projet de l'œuvre

#cadre[
  *Une dystopie comme avertissement philosophique total*\
  Contexte historique -- Orwell écrit en 1948, après la Seconde Guerre mondiale et en pleine guerre froide naissante

  Orwell écrit _1984_ depuis l'expérience directe des totalitarismes du XXe siècle — nazisme, stalinisme — et depuis sa propre déception envers le communisme soviétique, dont il avait été proche avant d'en observer les dérives (il avait combattu en Espagne et vu les purges staliniennes de l'intérieur). Le roman se déroule dans un futur proche, à Océania, État totalitaire gouverné par le Parti et son chef symbolique Big Brother. Winston Smith, fonctionnaire du Ministère de la Vérité, chargé de réécrire le passé pour le mettre en conformité avec la ligne du Parti, commence à douter et à résister. Le roman n'est pas seulement un récit politique — c'est une exploration philosophique profonde de ce que deviennent la conscience, la vérité, le langage et la liberté quand le pouvoir politique prétend les contrôler totalement. Chaque concept philosophique --- l'État, la conscience, le devoir, la liberté, même le bonheur — y est mis à l'épreuve dans sa forme la plus extrême.

  $=>$ 1984 est l'œuvre-limite — celle qui montre jusqu'où peut aller la logique du pouvoir politique sans frein. À utiliser non comme description d'un régime existant, mais comme expérience de pensée : que se passe-t-il si on supprime toutes les limites que les philosophes ont posées sur le pouvoir de l'État ?
]

== La surveillance : l'État dans la conscience

#cadre[
  *Big Brother vous regarde : le télécran et la pensée-crime*\
  Partie I -- Le monde d'Océania, le télécran omniprésent

  Le trait le plus frappant d'Océania est le télécran — un écran bidirectionnel présent dans chaque foyer, chaque bureau, chaque espace public, qui transmet en permanence la propagande du Parti et surveille simultanément chaque citoyen. On ne peut jamais savoir si l'on est observé à un instant précis — et c'est précisément cela qui produit l'effet le plus puissant : l'auto-surveillance permanente. Les citoyens intériorisent le regard de Big Brother au point de contrôler eux-mêmes leurs propres expressions, leurs gestes, jusqu'aux micro-expressions de leur visage. Le crimepense — la pensée-crime — est le délit suprême : penser contre le Parti, même sans l'exprimer, est passible des pires châtiments. Pour éviter même de penser des choses interdites, le Parti développe le Novlangue — une langue appauvrie qui supprime progressivement les mots permettant d'exprimer la dissidence, rendant littéralement impensable la résistance. "La guerre c'est la paix, la liberté c'est l'esclavage, l'ignorance c'est la force."\
  (VO : War is Peace, Freedom is Slavery, Ignorence is Strength)

  "Big Brother vous regarde"\
  (VO : Big Brother is watching you)

  $=>$ *Thème de la conscience* : Le télécran et le crimepense sont l'illustration la plus radicale de ce que devient la conscience quand elle est colonisée par le pouvoir. À relier à Freud (le Surmoi comme instance intériorisée de contrôle — Big Brother est un Surmoi étatique) et à Sartre (la mauvaise foi poussée à l'extrême — les citoyens nient leur propre conscience pour survivre). À relier aussi à Foucault et au Panoptique de Bentham : la surveillance invisibilisée produit l'auto-discipline. *Thème de l'État* : Orwell montre l'État qui dépasse toutes les limites que Hobbes lui-même avait maintenues — le souverain hobbesien ne contrôle que les actes, Big Brother contrôle les pensées.
]

== La vérité et le passé : le pouvoir sur la réalité

#cadre[
  *Le Ministère de la Vérité : réécrire le passé*\
  Partie I -- Le travail de Winston au Miniver

  Winston travaille au Ministère de la Vérité — nommé Miniver en novlangue — dont la fonction est de réécrire en permanence les archives historiques pour les mettre en conformité avec la ligne actuelle du Parti. Si le Parti dit aujourd'hui qu'il a toujours été allié avec Eastasia, toutes les archives qui prouvent le contraire doivent être modifiées. Le passé n'existe que dans les documents — et les documents sont contrôlés par le Parti. "Celui qui contrôle le passé contrôle l'avenir ; celui qui contrôle le présent contrôle le passé." Cette destruction systématique de la réalité objective va jusqu'au doublepense : la capacité de tenir simultanément deux croyances contradictoires et de les croire toutes deux sincèrement. Le Parti ne se contente pas de mentir — il veut que ses membres croient sincèrement le mensonge, qu'ils aient intégré la contradiction sans même la percevoir comme telle.

  "Celui qui contrôle le passé contrôle l'avenir. Celui qui contrôle le présent contrôle le passé."

  $=>$ *Thème de la conscience* : Le doublepense est la destruction totale de la conscience réfléchie — la capacité de se savoir contradictoire est abolie. C'est l'anti-cogito : là où Descartes fonde la certitude sur l'acte de penser, le Parti détruit la possibilité même de cette certitude. À relier à Nietzsche (la vérité comme construction du pouvoir) et à Heidegger (la vérité comme dévoilement que le Parti cherche à re-voiler indéfiniment). *Thème du devoir* : Winston a le devoir de mentir — et finit par croire ses propres mensonges. Kant serait horrifié : la bonne volonté devient impossible dans un système qui détruit la capacité même de distinguer vrai et faux.
]

#pagebreak()

== Winston et Julia : La résistance et sa destruction

#cadre[
  *Winston : la conscience qui résiste, puis capitule*\
  Les trois parties -- Éveil, résistence, brisement

  Winston Smith est le héros le moins héroïque de la littérature — et c'est précisément ce qui fait sa valeur philosophique. Il commence à résister non par courage, mais par un sentiment diffus que quelque chose est faux, que la réalité qu'on lui impose ne coïncide pas avec ce qu'il perçoit. Son journal intime — acte de rébellion absolue — est la tentative de préserver une conscience individuelle contre le collectif. Sa relation avec Julia lui donne un sentiment de liberté et de réalité concrète, charnelle, que le Parti cherche à détruire (la sexualité est réprimée parce qu'elle crée des loyautés privées qui concurrencent la loyauté envers le Parti). Mais à la fin, après la torture de la chambre 101 — où l'on confronte chaque prisonnier à sa peur la plus intime — Winston trahit Julia, brise sa propre conscience, et finit par aimer sincèrement Big Brother. Ce n'est pas une capitulation par lâcheté : c'est la destruction complète du sujet conscient. Il ne simule plus : il a été reconstruit de l'intérieur.

  $=>$ *Thème de la conscience* : La trajectoire de Winston illustre que la conscience individuelle n'est pas indestructible — contrairement à ce que Descartes supposait implicitement. Le cogito peut être brisé. À relier à Freud (le moi n'est pas maître chez lui) et à Sartre (la mauvaise foi finale de Winston n'est plus une fuite — c'est une reconstruction forcée). *Thème du bonheur* : Winston "heureux" à la fin — aimant Big Brother — est-il vraiment heureux ? On retrouve ici la question du Meilleur des mondes : un bonheur produit par la destruction de la liberté et de la conscience est-il un vrai bonheur ?
]

#cadre[
  *O'Brien et la chambre 101 -- la philosophie du pouvoir pur*\
  Partie III -- Les interrogatoires d'O'Brien

  La scène la plus philosophiquement dense du roman est le long dialogue entre Winston et O'Brien, l'agent du Parti qui l'a traqué et le torture. O'Brien expose la philosophie du Parti avec une clarté glaciale : le pouvoir n'est pas un moyen, il est une fin en soi. Le Parti ne cherche pas à rendre les gens heureux, à garantir la sécurité ou à réaliser une idéologie : il cherche le pouvoir pour le pouvoir, la domination pour la domination. "Le pouvoir, c'est déchirer les esprits humains en morceaux et les recoller selon des formes nouvelles de votre choix." Contrairement aux tyrannies classiques qui avaient des fins extérieures (la gloire, la richesse, la religion), le Parti d'Océania est une tyrannie pure — qui sait ce qu'elle est et l'assume. O'Brien va même jusqu'à démontrer à Winston que la réalité est une construction du Parti : "deux plus deux font cinq si le Parti le dit" — et il parvient à le lui faire croire sous la torture.

  "Si vous voulez une image de l'avenir, imaginez une botte écrasant un visage humain — éternellement."\
  -- O'Brien à Winston, Orwell, 1984, III, 3

  $=>$ *Thème de l'État* : O'Brien incarne l'État qui a supprimé toutes les limites — y compris la seule que Hobbes maintenait (la vie des sujets). C'est le Léviathan devenu fou. À relier à Weber (le monopole de la violence légitime — mais ici la violence est illégitime et assumée comme telle) et à Rousseau (la volonté générale dévoyée en volonté du Parti). *Thème du devoir* : Le devoir kantien est impossible dans un monde où la raison elle-même est soumise au pouvoir — "2+2=5" détruit le fondement même de l'impératif catégorique.
]