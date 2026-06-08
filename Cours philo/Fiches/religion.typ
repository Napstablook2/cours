#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*Fiche 12 : Religion*
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

== Pascal -- Le pari de Dieu : la foi comme décision rationnelle

#cadre[
  *Blaise Pascal (1623-1662* est un penseur chrétien, mais sa philosophie de la religion est originale. Il ne cherche pas à prouver Dieu par la raison (contre Descartes). Les preuves de l'existence de Dieu sont insuffisantes. Mais il ne renonce pas pour autant à la rationalité. Le célèbre "pari de Pascal" (dans les _Pensées_) est un raisonnement probabiliste. Dieu existe peut-être, peut-être pas. La raison ne peut pas trancider. Mais il faut décider. Si je parie que Dieu existe et que je gagne, je gagne la vie éternelle ; si je perds, je perds une vie finie. Si je parie qu'il n'existe pas et que je gagne, je gagne une vie finie ; si je perds, je perds tout. Le calcul des probabilités penche en faveur du pari. Pascal ne dit pas que Dieu existe ; il dit que croire est rationnel. Par ailleurs, Pascal distingue la foi comme sentiment ("Le cœur a ses raisons que la raison ne connaît point") et la foi comme décision. La religion n'est pas une affaire de preuves, mais de choix existentiel.

  $=>$ Pascal est la référence pour une approche de la religion qui ne passe ni par la preuve (Descartes) ni par le rejet (les athées). La foi est un pari rationnel dans l'incertitude.
]


== Kant -- La religion dans les limites de la simple raison

#cadre[
  *Emmanuel Kant (1724-1804)* a écrit un livre important sur la religion : _La Religion dans les limites de la simple raison_ (1793). Sa thèse est que la religion ne doit pas s'opposer à la raison. Les dogmes, les rites, les institutions religieuses ne sont légitimes que s'ils se soumettent à l'examen critique de la raison. Kant propose de distinguer la "religion naturelle" (celle de la raison) et la "religion révélée" (celle des Écritures). La première est universelle : elle consiste à reconnaître nos devoirs moraux comme des commandements divins (Dieu est le garant de l'harmonie entre bonheur et vertu). La seconde est historique, particulière, contingente. Kant est favorable à la religion naturelle. Il rejette les superstitions, les prières mercenaires, la grâce (qui dispense de l'effort moral). Dieu n'est pas une hypothèse scientifique ; c'est un postulat de la raison pratique (morale). On ne peut pas prouver Dieu, mais on ne peut pas non plus être moral sans le postuler (pour que la vertu soit récompensée, même si ce n'est pas dans ce monde).

  $=>$ Kant est la référence pour une religion rationalisée, moralisée, épurée de ses éléments superstitieux. La religion est bonne si elle sert la morale ; elle est mauvaise si elle la concurrence.
]

== Nietzsche -- Dieu est mort : la religion comme illusion

#cadre[
  *Friedrich Nietzsche (1844-1900)* est le penseur le plus radical de la critique de la religion. Il ne se contente pas de dire que Dieu n'existe pas (c'est l'athéisme banal). Il dit que l'idée même de Dieu est nocive. La religion chrétienne, en particulier, est une "religion des faibles". Elle enseigne l'humilité, la compassion, l'égalité ; elle rabaisse les forts au niveau des faibles. Elle est un "ressentiment" : les impuissants inventent un monde où ils seront les premiers (le royaume des cieux) pour se venger des puissants. Par ailleurs, la religion est une illusion. L'homme a besoin de sens, mais le monde n'en a pas. La religion invente un sens transcendant (Dieu, le salut, la Providence) pour combler ce vide. Mais cette illusion a un coût : elle empêche l'homme d'affronter la réalité, de créer ses propres valeurs, d'assumer sa liberté. "Dieu est mort" (Nietzsche, _Le Gai Savoir_) ne signifie pas seulement que Dieu n'existe plus ; cela signifie que l'idée de Dieu a perdu sa force de conviction. Les hommes ne croient plus vraiment. Mais ils n'ont pas encore appris à vivre sans lui. D'où le nihilisme.

  $=>$ Nietzsche est la référence pour la critique généalogique de la religion. La religion n'est pas une erreur théorique (elle le serait si on la corrigeait par une meilleure théorie) ; elle est une pathologie. La guérison est l'athéisme joyeux, l'acceptation de la vie sans consolation.
]

== Marx -- La religion comme opium du peuple

#cadre[
  *Karl Marx (1818-1883)* n'est pas le premier critique de la religion (Feuerbach, Bauer, Stirner l'ont précédé). Mais sa critique a une originalité. Il ne s'attaque pas seulement aux croyances religieuses (leur vérité, leur cohérence). Il s'attaque à leur fonction sociale. Pour Marx, la religion est un produit de l'aliénation sociale. L'homme est exploité, opprimé, dépossédé de son travail, de sa vie, de sa dignité. Il invente un monde compensatoire (le ciel, la vie éternelle, la justice divine) pour supporter l'injustice terrestre. "La religion est le soupir de la créature opprimée, l'âme d'un monde sans cœur, l'esprit d'un monde sans esprit. Elle est l'opium du peuple." L'opium n'est pas seulement un poison ; c'est un analgésique. Il calme la douleur, mais n'en supprime pas la cause. La critique de la religion ne suffit donc pas. Il faut abolir la misère sociale qui la produit. La religion disparaîtra d'elle-même quand la société sera juste.

  "La religion est l'opium du peuple."\
  Marx — _Critique de la philosophie du droit de Hegel_

  $=>$ Marx est la référence pour l'approche socio-économique de la religion. La religion n'est pas une illusion arbitraire ; elle est l'expression d'une souffrance réelle. Abolir la religion passe par l'abolition de l'exploitation.
]

== Durkheim -- La religion comme lien social

#cadre[
  *Émile Durkheim (1858-1917)* est un sociologue, non un philosophe. Mais sa théorie de la religion est devenue classique. Dans _Les Formes élémentaires de la vie religieuse_ (1912), il étudie les religions dites "primitives" (aborigènes d'Australie) pour comprendre ce qu'est la religion en général. Sa thèse : la religion n'est pas d'abord un système de croyances (Dieu, les esprits, l'au-delà) ; c'est un système de pratiques (rites, interdits, célébrations) qui a pour fonction de créer et de maintenir le lien social. La religion, c'est la société qui se célèbre elle-même. Les dieux sont des symboles de la collectivité. La force que le croyant sent en lui n'est pas surnaturelle ; c'est la force de la société qui le dépasse et le soutient. La religion est donc vraie, pour Durkheim, non pas parce que ses croyances correspondent à une réalité transcendante, mais parce qu'elle exprime une réalité immanente : la société. Cette approche a l'avantage d'expliquer pourquoi la religion perdure même quand les croyances s'affaiblissent : elle remplit une fonction sociale (intégration, cohésion, identité collective).

  $=>$ Durkheim est la référence pour l'approche fonctionnaliste de la religion. La religion n'est pas une illusion (contre Nietzsche) ; elle est une expression symbolique de la société. Même si les croyances sont fausses, la religion est vraie en tant que fait social.
]

== Freud -- La religion comme névrose obsessionnelle collective

#cadre[
  Freud a écrit plusieurs textes sur la religion, dont _L'Avenir d'une illusion_ (1927) et _Moïse et le monothéisme_ (1939). Sa thèse est que la religion est une illusion, au sens psychanalytique du terme. Une illusion n'est pas une erreur (la copernicisme a cru que le soleil tournait autour de la terre ; ce n'était pas une illusion, c'était une erreur). Une illusion est une croyance motivée par un désir. L'homme désire la protection d'un père tout-puissant. La religion projette ce désir à l'échelle cosmique : Dieu est le père protecteur, tout-puissant, tout-bon. La religion est donc une "névrose obsessionnelle collective". Elle permet aux hommes de supporter l'angoisse de la mort, la dureté de la vie, l'incertitude du lendemain. Mais elle les infantilise. Le progrès de la raison (la science) doit remplacer la religion. L'humanité doit grandir, quitter la tutelle paternelle de Dieu, assumer sa solitude et sa responsabilité.

  $=>$ Freud est la référence pour l'approche psychologique de la religion. La religion est une projection de désirs enfantins. Elle n'est pas vraie, mais elle a une fonction (réconfort, angoisse). L'athéisme est la marque de la maturité.
]

== Feuerbach -- La religion comme projection de l'essence humaine

#cadre[
  *Ludwig Feuerbach (1804-1872)* est le philosophe allemand qui fait le pont entre Hegel et Marx. Son livre majeur, _L'Essence du christianisme_ (1841), a une thèse simple et radicale : ce que l'homme appelle "Dieu" n'est rien d'autre que l'essence de l'humanité projetée à l'extérieur. L'homme a des qualités (l'amour, la raison, la puissance, la bonté, la justice). Il les imagine dans un être parfait, infini, transcendant : Dieu. En réalité, c'est l'homme qui est amour, raison, puissance, bonté, justice. La théologie n'est qu'une anthropologie déguisée. Feuerbach ne dit pas que Dieu n'existe pas (il n'est pas athée au sens militant). Il dit que le secret de la théologie est l'anthropologie. Quand le croyant adore Dieu, il adore en réalité l'essence de l'humanité, mais il ne le sait pas. La religion est une aliénation : l'homme se dépouille de ses propres qualités pour les attribuer à un être extérieur. Il devient pauvre parce que Dieu est riche ; il devient pécheur parce que Dieu est saint. La critique de la religion doit donc être une critique de l'aliénation. Feuerbach propose de "reprendre" ce que l'homme a projeté : reconnaître que les attributs divins sont en réalité humains. L'athéisme n'est pas une perte ; c'est une réappropriation.

  "L'homme fait Dieu à son image, puis Dieu fait l'homme à la sienne."\
  Feuerbach — _L'Essence du christianisme_ (paraphrase)

  $=>$ Feuerbach est la référence pour la théorie de la religion comme projection. Contre Pascal (la foi comme pari), contre Kant (la religion dans les limites de la raison), Feuerbach montre que Dieu est un miroir. Marx reprendra cette idée, mais en l'ancrant dans les conditions sociales.
]

= Exemple : _L'Essence du christianisme_ : Dieu, miroir de l'homme

== Contexte et situation

#cadre[
  _L'Essence du christianisme_ paraît en 1841. Feuerbach a trente-sept ans. Il est l'élève d'Hegel, mais il s'en est éloigné. Hegel voyait dans la religion une figure (une manifestation) de l'Esprit absolu ; la religion était vraie, mais inférieure à la philosophie. Feuerbach va plus loin : la religion n'est pas une manifestation de l'Esprit ; elle est une projection de l'essence humaine.

  Le livre fait scandale. Pour les chrétiens, il est blasphématoire. Pour les jeunes hégéliens (Marx, Engels, Stirner), il est une libération. Marx en tirera une critique sociale de la religion ; Stirner une critique individualiste. Le projet de Feuerbach est théologique et anthropologique à la fois. Il ne s'agit pas simplement de dire "Dieu n'existe pas". Il s'agit de comprendre pourquoi les hommes croient en Dieu, et ce que cette croyance révèle sur eux.

  $=>$ Feuerbach n'est ni le premier critique de la religion (les Lumières l'ont précédé), ni le dernier (Nietzsche, Marx, Freud viendront après). Mais il est le premier à formuler systématiquement la thèse de la projection. Dieu n'est rien d'autre que l'essence de l'humanité projetée à l'extérieur. L'homme a des qualités (l'amour, la raison, la puissance, la bonté, la justice). Il les imagine dans un être parfait, infini, transcendant : Dieu. En réalité, c'est l'homme qui est amour, raison, puissance, bonté, justice. La théologie n'est qu'une anthropologie déguisée.

  Feuerbach ne dit pas que Dieu n'existe pas (il n'est pas athée au sens militant). Il dit que le secret de la théologie est l'anthropologie. Quand le croyant adore Dieu, il adore en réalité l'essence de l'humanité, mais il ne le sait pas. La religion est une aliénation : l'homme se dépouille de ses propres qualités pour les attribuer à un être extérieur. La critique de la religion doit donc être une critique de l'aliénation. Feuerbach propose de "reprendre" ce que l'homme a projeté : reconnaître que les attributs divins sont en réalité humains. L'athéisme n'est pas une perte ; c'est une réappropriation.

  Le dialogue avec Marx est explicite : Marx reprend la théorie de l'aliénation religieuse, mais il la radicalise en montrant que l'aliénation économique est première. Le dialogue avec Freud est prémonitoire : la projection religieuse est proche de la projection psychanalytique (le père, le désir, la névrose). Le dialogue avec Durkheim est implicite : Feuerbach psychologise la religion (l'individu projette), là où Durkheim la sociologisera (la société se projette).
]

#pagebreak()

== Dieu comme projection : l'homme fait Dieu à son image

#cadre[
  *L'essence divine n'est que l'essence humaine objectivée*

  La thèse de Feuerbach se formule ainsi : ce que l'homme appelle "Dieu" est en réalité l'ensemble des qualités de l'essence humaine (l'amour, la raison, la puissance, la bonté, la justice) projetées à l'extérieur, hypostasiées (rendues substantielles), et adorées comme un être distinct.

  L'homme a conscience de lui-même, de ses limites et de ses potentialités. Il ne peut pas réaliser toutes ses qualités dans sa vie finie. Il les projette dans l'infini, dans un être parfait. Dieu n'est rien d'autre que l'homme infini, l'homme sans limites, l'homme éternel.

  Feuerbach ne dit pas que Dieu n'existe pas. Ce n'est pas sa question. Il dit que le "contenu" de Dieu (ses attributs) est humain. La question de l'existence de Dieu est seconde. Ce qui importe, c'est de reconnaître que l'adoration de Dieu est une adoration voilée de l'humanité.

  "L'homme fait Dieu à son image."\
  Feuerbach — _L'Essence du christianisme_ (paraphrase)

  $=>$ Feuerbach renverse la formule biblique. Ce n'est pas Dieu qui fait l'homme à son image ; c'est l'homme qui fait Dieu à la sienne. Contre la tradition théologique (Dieu est l'original, l'homme est la copie), Feuerbach soutient que l'homme est l'original.
]

== L'aliénation religieuse : se dépouiller pour enrichir Dieu

#cadre[
  *Plus Dieu est grand, plus l'homme est petit*

  La conséquence de la projection est une aliénation. Feuerbach emprunte ce terme à Hegel (l'Esprit s'aliène dans la nature, puis se réapproprie dans l'histoire), mais il lui donne un sens précisément religieux. L'aliénation, c'est le processus par lequel l'homme se dépouille de ses qualités pour les attribuer à Dieu. Plus Dieu est riche, plus l'homme est pauvre. Plus Dieu est bon, plus l'homme est mauvais. Plus Dieu est tout-puissant, plus l'homme est impuissant.

  Le croyant s'humilie devant Dieu. Il reconnaît sa petitesse, sa faiblesse, son péché. Mais cette humilité est paradoxale : ce qu'il humilie, c'est sa propre essence. En méprisant l'homme, il méprise ce qu'il y a de plus grand en lui.

  L'aliénation religieuse a donc un coût. Elle empêche l'homme de prendre conscience de sa propre valeur, de sa propre puissance, de sa propre responsabilité. Elle le maintient dans une dépendance infantile.

  "Plus Dieu est élevé, plus l'homme est abaissé."\
  Feuerbach — _L'Essence du christianisme_, ch. 5

  $=>$ L'aliénation religieuse n'est pas seulement une erreur théorique (croire en un être qui n'existe pas). C'est une perte pratique : l'homme renonce à ses propres forces. La critique de la religion n'est donc pas une simple affaire de vérité ; c'est une affaire d'émancipation.
]

== Amour, foi et raison : les attributs divins comme attributs humains

#cadre[
  *La théologie n'est qu'une anthropologie déguisée*

  Feuerbach examine les principaux attributs de Dieu : l'amour, la raison, la justice, la toute-puissance, l'éternité. Pour chacun, il montre qu'il s'agit d'un attribut humain projeté.

  L'amour divin est l'amour humain infini. L'homme aime, mais de façon limitée (il n'aime pas ses ennemis, il n'aime pas sans retour). Il projette un amour absolu, inconditionnel, universel. Mais cet amour n'est rien d'autre que l'essence de l'amour humain dégagée de ses limites.

  La raison divine est la raison humaine infinie. L'homme connaît, mais de façon limitée (il ne sait pas tout, il se trompe). Il projette une raison omnisciente, infaillible. Mais cette raison n'est rien d'autre que la raison humaine libérée de l'erreur et de l'ignorance.

  La justice divine est la justice humaine infinie. L'homme veut la justice, mais il ne peut pas toujours l'obtenir (les méchants prospèrent, les justes souffrent). Il projette une justice immanente, qui rétribue chacun selon ses œuvres, sinon dans ce monde, du moins dans l'au-delà.

  "La théologie est une anthropologie retournée."
  Feuerbach — _L'Essence du christianisme_, ch. 1

  $=>$ Feuerbach ne rejette pas les valeurs religieuses (l'amour, la justice, la raison). Il les libère de leurs oripeaux théologiques. L'athéisme n'est pas une perte ; c'est une réappropriation.

]

== Le mystère de la Trinité : le moi et le toi

#cadre[
  *Dieu comme relation : le besoin d'autrui*

  Feuerbach propose une interprétation originale du dogme chrétien de la Trinité (Père, Fils, Saint-Esprit). Pour lui, la Trinité exprime le besoin humain de relation. L'homme ne peut pas être seul. Le moi a besoin du toi. L'amour de soi est insuffisant ; il faut l'amour de l'autre.

  Dieu Père est l'homme solitaire (la subjectivité pure). Dieu Fils est l'autre (l'homme extériorisé, l'homme que l'on contemple). Le Saint-Esprit est l'amour qui unit le Père et le Fils, c'est-à-dire la relation elle-même.

  La Trinité n'est donc pas un mystère incompréhensible ; elle est l'expression religieuse de la vérité anthropologique selon laquelle l'homme ne se réalise que dans la relation à l'autre. L'amour est la vérité de la Trinité. Et l'amour est humain, non divin.

  "Le mystère de la Trinité est le mystère de la vie sociale, de la vie communautaire."
  Feuerbach — _L'Essence du christianisme_, ch. 14

  $=>$ Feuerbach propose une lecture humaniste des dogmes chrétiens. La Trinité n'est pas un paradoxe théologique ; c'est une expression mythique de la nécessité de la relation humaine. Contre l'individualisme, Feuerbach montre que l'homme est un être social.
]

== Le passage de la religion à la philosophie

#cadre[
  Remplacer l'amour de Dieu par l'amour de l'homme

  Feuerbach n'est pas un pur négateur. Il ne dit pas : "La religion est une illusion, il faut l'abolir purement et simplement." Il dit : "La religion est une vérité, mais une vérité inversée. Il faut la retourner."

  Le passage de la religion à la philosophie n'est pas une destruction ; c'est une translation. Il ne s'agit pas de rejeter l'amour, la justice, la raison, la communauté ; il s'agit de les reconnaître comme humaines. Il faut remplacer l'amour de Dieu par l'amour de l'homme. L'homme doit s'aimer lui-même, aimer les autres, sans médiation divine. La philosophie (l'anthropologie) doit prendre la place de la théologie.

  Feuerbach termine _L'Essence du christianisme_ par une formule célèbre : "Homo homini Deus est" – "L'homme est Dieu pour l'homme." C'est-à-dire : ce n'est pas Dieu qui sauve l'homme, c'est l'homme. La solidarité, l'amour, la justice : voilà ce qui élève l'homme. La religion a été une forme détournée de cet humanisme ; la philosophie doit être sa forme explicite.

  "L'homme est Dieu pour l'homme."\
  Feuerbach — _L'Essence du christianisme_, épilogue

  $=>$ Feuerbach n'est pas un destructeur ; il est un libérateur. L'athéisme n'est pas une fin en soi ; c'est le moyen de redonner à l'homme ce qui lui appartient. Contre Nietzsche (la mort de Dieu comme vertige), Feuerbach voit dans l'athéisme une promesse d'accomplissement humain.
]

= Exemple : _L'Avenir d'une illusion_ -- La religion comme névrose

== Contexte et situation

#cadre[
  _L'Avenir d'une illusion_ paraît en 1927. Freud a soixante et onze ans. Il a déjà élaboré les grands concepts de la psychanalyse (l'inconscient, le refoulement, le complexe d'OEdipe, le moi, le ça, le surmoi). Il a déjà appliqué la psychanalyse à la culture dans _Totem et Tabou_ (1913) et à la religion dans _Moïse et le monothéisme_ (1939, posthume). _L'Avenir d'une illusion_ est un texte court, polémique, volontairement accessible. Freud n'y développe pas de nouvelles théories ; il applique la psychanalyse à la religion et tire les conséquences pour la civilisation.

  Le titre est ironique. Une "illusion" (au sens freudien) n'est pas une erreur (au sens scientifique). C'est une croyance motivée par un désir. La religion est une illusion parce qu'elle répond à des besoins infantiles (protection, réconfort, maîtrise de l'angoisse). Freud ne dit pas que Dieu n'existe pas (il ne peut pas le prouver). Il dit que la croyance en Dieu n'a pas d'autre fondement que le désir. L' "avenir" de cette illusion, c'est qu'elle doit disparaître. L'humanité doit grandir, quitter la tutelle de Dieu, et assumer sa propre responsabilité.

  $=>$ Freud apporte un angle décisif. Contre Feuerbach (la religion comme projection de l'essence humaine), contre Marx (la religion comme opium du peuple), Freud propose une explication psychogénétique : la religion naît du désir infantile de protection. L'enfant impuissant a besoin de son père. L'adulte, confronté à l'impuissance devant la nature et la mort, réactive ce besoin et le projette sur un père tout-puissant : Dieu.

  Freud distingue soigneusement erreur et illusion. L'erreur peut être corrigée par l'observation ou le raisonnement. L'illusion, elle, résiste à la critique parce qu'elle est soutenue par le désir. Les croyants ne renoncent pas à Dieu parce qu'on leur montre que les preuves sont insuffisantes ; ils y tiennent parce qu'ils en ont besoin.

  Freud compare en outre les pratiques religieuses (prières, messes, interdits, pénitences) aux comportements des névrosés obsessionnels. La religion et la névrose partagent une même structure : un conflit entre le désir et la réalité. La différence est que la névrose est individuelle, tandis que la religion est collective. La religion serait une "névrose obsessionnelle universelle".

  Le dialogue avec Feuerbach est explicite : Freud accepte la thèse de la projection, mais il l'approfondit – pourquoi l'homme projette-t-il ? Parce qu'il a peur. Le dialogue avec Marx est implicite : Freud n'accepte pas que la religion disparaisse d'elle-même avec l'abolition de la misère. Même dans une société juste, l'homme resterait confronté à la mort et à l'imprévisible. La religion répond à un besoin anthropologique, non seulement social. Le dialogue avec Durkheim est critique : Freud psychologise la religion (elle naît des besoins infantiles) ; Durkheim la sociologise (elle naît de l'effervescence collective). Les deux ne sont pas incompatibles, mais ils ne disent pas la même chose.
]

== Illusion et désir : la religion comme croyance motivée

#cadre[
  *Une illusion n'est pas une erreur ; c'est une croyance soutenue par le désir*

  Freud commence par une distinction cruciale, souvent mal comprise. Une erreur est une croyance qui ne correspond pas à la réalité, mais qui peut être corrigée par l'observation ou le raisonnement. Copernic a cru que les planètes tournaient en cercle parfait ; c'était une erreur, corrigée par Kepler. Une illusion, en revanche, est une croyance motivée par un désir. Peu importe qu'elle soit vraie ou fausse ; ce qui la caractérise, c'est son origine psychique. Les peuples croient que leur roi est choisi par Dieu ; c'est une illusion, quelle que soit l'existence réelle ou non de Dieu.

  La religion est une illusion. Les dogmes religieux (Dieu existe, l'âme est immortelle, la Providence veille sur nous) sont des croyances que l'homme soutient parce qu'il a besoin qu'elles soient vraies. Il a besoin d'un père protecteur (Dieu) pour ne pas avoir peur. Il a besoin d'une vie après la mort pour accepter la finitude. Il a besoin d'une justice immanente pour supporter les injustices de ce monde.

  "Ce qui caractérise l'illusion, c'est qu'elle dérive des désirs humains."\
  Freud — _L'Avenir d'une illusion_, chapitre 2

  $=>$ La distinction erreur/illusion est capitale. On ne peut pas "démontrer" à un croyant que Dieu n'existe pas, car sa croyance ne repose pas sur des preuves, mais sur un désir. La critique de la religion ne peut donc pas être purement théorique ; elle doit être pratique et psychologique.
]

== Le besoin de protection : Dieu comme père

#cadre[
  *La religion naît de l'angoisse humaine devant la vie*

  Freud propose une généalogie de la religion. L'enfant est impuissant ; il dépend de ses parents, en particulier de son père, qui le protège et le nourrit. Cette impuissance originelle laisse une trace dans l'inconscient. L'adulte reste impuissant devant la nature (les cataclysmes, les maladies, la mort) et devant la société (les injustices, les violences). Il réactive alors le besoin infantile de protection. Il projette cette protection sur un père tout-puissant : Dieu.

  Dieu n'est donc pas une idée abstraite ; il est la transfiguration du père réel. La religion est la prolongation de l'impuissance de l'enfant dans la vie adulte. Le croyant reste un enfant qui a besoin d'être rassuré. La prière est un appel au père ; la Providence est la certitude que le père veille ; le salut est la promesse que le père ne laisse pas tomber ses enfants.

  "Dieu n'est rien d'autre qu'un père transfiguré."\
  Freud — _L'Avenir d'une illusion_, chapitre 6

  $=>$ La religion répond à un besoin anthropologique fondamental : la peur. L'homme a peur de la nature, peur de la mort, peur de l'inconnu. La religion le rassure. Contre Feuerbach (la religion comme projection cognitive), Freud insiste sur la dimension affective : le besoin de protection précède le besoin de sens.
]

== Les rites religieux comme névrose obsessionnelle

#cadre[
  *La religion est une pathologie collective*

  Freud compare les pratiques religieuses (prières, messes, interdits, pénitences) aux comportements des névrosés obsessionnels. Le névrosé répète des gestes (se laver les mains, vérifier que la porte est fermée) pour conjurer une angoisse. Il ne comprend pas pourquoi il fait ces gestes ; il les fait parce qu'il ne peut pas s'en empêcher. Le croyant répète des rites (prières, génuflexions, signes de croix) pour conjurer l'angoisse de la colère divine ou du péché. Lui non plus ne peut pas s'en empêcher ; la foi n'est pas un choix libre, mais une contrainte intérieure.

  La différence entre la névrose et la religion est que la névrose est individuelle et la religion collective. Une névrose individuelle est une pathologie. Une névrose collective est une institution. La société valide ce que l'individu isolé vivrait comme une souffrance.

  "La religion serait une névrose obsessionnelle universelle."\
  Freud — _L'Avenir d'une illusion_, chapitre 8

  $=>$ La comparaison avec la névrose est provocatrice. Freud ne dit pas que la religion est une maladie (les névrosés ne sont pas "malades" au sens organique). Il dit que la structure est la même. La religion n'est pas une voie de guérison ; elle est un symptôme.
]

== La morale religieuse : le surmoi projeté

#cadre[
  *Dieu intériorise les interdits parentaux*

  La morale religieuse, pour Freud, n'a rien de surnaturel. Elle est l'intériorisation des interdits parentaux, transposés à l'échelle cosmique. L'enfant obéit à son père parce qu'il a peur d'être puni ; l'adulte obéit à Dieu parce qu'il a peur de l'enfer. Le surmoi (l'instance morale intérieure) est le représentant psychique du père. Dans la religion, ce surmoi est projeté à l'extérieur : Dieu est le père qui voit tout, qui juge tout, qui punit tout.

  Cette projection a deux conséquences. D'abord, elle rend la morale plus contraignante (Dieu voit dans le secret des cœurs ; on ne peut rien lui cacher). Ensuite, elle la rend plus infantile (l'adulte reste sous la tutelle d'une autorité extérieure, il ne devient pas autonome).

  "La religion est la projection du surmoi paternel."
  Freud — _L'Avenir d'une illusion_, chapitre 7

  $=>$ La morale religieuse n'est pas une morale libre ; c'est une morale hétéronome (la loi vient d'ailleurs). Contre Kant (l'autonomie de la raison pratique), Freud montre que la religion maintient l'homme dans une dépendance infantile.
]

== La science comme religion : le passage à l'âge adulte

#cadre[
  *L'humanité doit quitter la tutelle de Dieu*

  Freud ne se contente pas de décrire et de critiquer. Il propose un remède : la science. La science n'est pas une illusion, parce qu'elle accepte la critique, se corrige, progresse. La science ne promet pas le bonheur ; elle donne des moyens pour réduire la souffrance (la médecine, la technique). La science ne rassure pas ; elle dérange.

  L'"avenir d'une illusion", c'est sa disparition. L'humanité doit grandir, quitter la tutelle de Dieu, assumer sa propre responsabilité. La psychanalyse elle-même fait partie de ce mouvement : elle permet de prendre conscience des déterminismes inconscients, et ainsi de les maîtriser (ou du moins de les comprendre).

  Freud n'est pas naïf. Il sait que la science ne peut pas tout. Il sait que l'homme reste confronté à la mort, à la maladie, à l'angoisse. Mais il croit que la lucidité est préférable à l'illusion. Mieux vaut regarder la réalité en face, même dure, que de se bercer de consolations fausses.

  "La science n'est pas une illusion. Mais ce serait une illusion de croire que nous pouvons obtenir d'elle ce qu'elle ne peut pas nous donner."\
  Freud — _L'Avenir d'une illusion_, chapitre 10

  $=>$ Freud n'est pas un scientiste naïf. Il connaît les limites de la science. Mais il croit que la raison (la science, la psychanalyse) est la seule voie pour sortir de l'infantilisme religieux. L'athéisme n'est pas une perte ; c'est une conquête de maturité.
]

= Exemple : _Les Formes élémentaires de la vie religieuse_ -- La société célébrée

== Contexte et situation

#cadre[
  _Les Formes élémentaires de la vie religieuse_ paraît en 1912. Durkheim a cinquante-quatre ans. Il est le fondateur de la sociologie française (avec la _Division du travail social_ en 1893, _Le Suicide_ en 1897). Il occupe une chaire à la Sorbonne. Le livre est le couronnement de son œuvre : il y applique la méthode sociologique à l'étude de la religion, pour en dégager la fonction sociale.

  Durkheim étudie les religions dites "primitives" (les aborigènes d'Australie, leurs clans, leur totémisme). Il ne le fait pas par goût de l'exotisme, mais pour des raisons méthodologiques : les formes simples permettent de mieux voir les éléments fondamentaux. Si l'on veut comprendre ce qu'est la religion en général (et non pas telle ou telle religion particulière), il faut l'étudier là où elle est la moins développée.

  Le projet de Durkheim est double. D'abord, montrer que la religion n'est pas une illusion (contre les Lumières, contre Feuerbach, contre Freud). Ensuite, montrer qu'elle a une fonction sociale irréductible : créer et maintenir la cohésion du groupe. La religion est vraie, non pas parce que ses croyances correspondent à une réalité transcendante (Dieu, les esprits), mais parce qu'elles expriment une réalité immanente : la société.

  $=>$_Les Formes élémentaires_ apporte un angle décisif. Contre les approches purement psychologiques (Freud) ou cognitives (Feuerbach), Durkheim montre que la religion est d'abord un fait social.

  La thèse centrale est que le sacré n'est rien d'autre que la société transfigurée. Les hommes éprouvent, dans les rassemblements collectifs (les fêtes, les cérémonies, les rites), une énergie qui les dépasse, qui les soulève, qui leur donne des forces qu'ils n'ont pas seuls. Ils interprètent cette énergie comme surnaturelle (dieux, esprits, mana). En réalité, cette énergie, c'est la société elle-même. La religion est l'auto-célébration de la société.

  Cette thèse a des conséquences importantes. D'abord, la religion n'est pas une erreur à corriger. Même si les croyances sont fausses (il n'y a pas de dieux), elles expriment une vérité sociale. Ensuite, la religion ne disparaîtra pas avec la modernité (contre Freud). La société a toujours besoin de se célébrer. La religion se transforme, mais ne meurt pas. Enfin, la distinction entre le sacré et le profane est fondamentale pour comprendre toute vie collective.

  Le dialogue avec Feuerbach est ici : Feuerbach disait que Dieu est le miroir de l'essence humaine. Durkheim dit que Dieu est le miroir de la société. Le dialogue avec Freud : Freud voit dans la religion une névrose collective ; Durkheim y voit une fonction nécessaire. Le dialogue avec Marx : Marx voit dans la religion l'opium du peuple ; Durkheim n'accepte pas la réduction de la religion à un instrument de domination (même si la religion peut être aussi cela).
]

== Le sacré et le profane : la distinction fondamentale

#cadre[
  *La religion repose sur la bipartition du monde entre sacré et profane*

  Durkheim commence par une définition de la religion. Il ne la définit pas par la croyance en Dieu (le bouddhisme n'a pas de dieu, pourtant c'est une religion). Il la définit par une distinction : celle du sacré et du profane.

  Le sacré est ce qui est séparé, interdit, protégé, vénéré. Ce sont les objets, les lieux, les temps, les êtres qui ne relèvent pas de l'usage ordinaire. Le profane est le monde quotidien, utilitaire, banal.

  La fonction de la religion n'est pas d'expliquer le monde (elle le fait mal) ni de consoler les individus (elle le fait aussi), mais de maintenir la distinction entre le sacré et le profane. Les rites sont des "règles de conduite qui prescrivent comment l'homme doit se comporter envers le sacré".

  "La religion est un système solidaire de croyances et de pratiques relatives à des choses sacrées, séparées, interdites."\
  Durkheim — _Les Formes élémentaires de la vie religieuse_, livre I, ch. 1

  $=>$ Durkheim définit la religion par sa structure (séparation sacré/profane), non par son contenu (croyance en Dieu). Cela permet d'inclure le bouddhisme, mais aussi des phénomènes sécularisés (le drapeau, la nation, le sport) qui fonctionnent comme des religions.
]

== Le totémisme : le clan qui s'adore lui-même

#cadre[
  *Le totem n'est pas un animal ; c'est le symbole du clan*

  Durkheim étudie en détail le totémisme des aborigènes d'Australie. Chaque clan a un totem (généralement un animal ou une plante). Les membres du clan ne doivent pas tuer ni manger leur totem. Ils le vénèrent, lui adressent des prières, en portent des représentations.

  Durkheim montre que le totem n'est pas vénéré pour lui-même (l'animal ou la plante). Il est vénéré parce qu'il est le symbole du clan. En vénérant le totem, c'est le clan que les individus vénèrent. Mais ils ne le savent pas. Ils croient adorer un être surnaturel (l'esprit du totem). En réalité, ils adorent leur propre société.

  Cette thèse est radicale : la religion est une aliénation (au sens où Feuerbach et Marx l'entendent), mais une aliénation nécessaire. Les individus ne peuvent pas éprouver directement la société ; elle est trop abstraite, trop diffuse. Ils ont besoin d'un symbole concret, d'un représentant visible. Le totem (ou Dieu) joue ce rôle.

  "Le totem, c'est le clan lui-même."\
  Durkheim — _Les Formes élémentaires de la vie religieuse_, livre II, ch. 7

  $=>$ La théorie durkheimienne du totem est une application de la thèse générale : le sacré, c'est la société transfigurée. L'homme n'adore pas un être surnaturel ; il adore sa propre collectivité, sous une forme symbolique.
]

== L'effervescence collective : l'énergie sociale

#cadre[
  *Les fêtes religieuses produisent une énergie qui dépasse les individus*

  Durkheim décrit un phénomène qu'il appelle l' effervescence collective. Lorsque les membres d'un clan se rassemblent pour une cérémonie (danses, chants, sacrifices), ils entrent dans un état d'excitation qui les transcende. Chacun sent une énergie qui le dépasse, qui le soulève, qui le transporte. Cette énergie, ils l'interprètent comme surnaturelle (dieux, esprits, mana). En réalité, c'est la société elle-même.

  L'effervescence collective est la source du religieux. Ce n'est pas une croyance théorique qui crée le rite ; c'est le rite (la pratique collective) qui crée la croyance. On ne croit pas d'abord, puis on célèbre. On célèbre, et dans la célébration, la croyance naît.

  Cette thèse inverse le rapport classique entre croyance et pratique. Pour Durkheim, le primat est à la pratique collective. La religion est d'abord un faire, un être-ensemble, avant d'être un croire.

  "Les croyances religieuses sont nées de l'effervescence collective."\
  Durkheim — _Les Formes élémentaires de la vie religieuse_, livre III, ch. 3

  $=>$ L'effervescence collective est le concept clé pour comprendre la puissance du religieux. Elle explique pourquoi la religion peut mobiliser, enthousiasmer, donner des forces. Contre les approches intellectualistes (la religion comme erreur), Durkheim insiste sur la dimension affective et corporelle.
]

== La société comme dieu : les religions sécularisés

#cadre[
  *La religion ne disparaît pas ; elle se transforme*

  Durkheim ne croit pas à la disparition de la religion. Il est trop bon sociologue pour cela. Les sociétés ont toujours besoin de se célébrer, de se rassembler, de se représenter à elles-mêmes. Même dans les sociétés modernes, sécularisées, on trouve des phénomènes religieux sous des formes nouvelles : les cultes de la nation (le drapeau, le 14 juillet, le soldat inconnu), les cultes de l'humanité (les droits de l'homme, l'ONU), les cultes du sport (les stades, les hymnes, les héros), les cultes de la science (la raison, le progrès, les grands savants).

  Ces cultes sécularisés ne s'appellent pas "religion", mais ils en ont la structure : la distinction entre sacré (le drapeau, la nation, la science) et profane (le quotidien, l'utilitaire) ; les rites (les commémorations, les cérémonies) ; l'effervescence collective (les foules, les stades, les manifestations).

  Durkheim ne se réjouit pas de cette transformation ; il la constate. La religion ne meurt pas ; elle mute. L'essentiel (la fonction sociale) demeure.

    "Il n'y a rien d'éternel dans la religion, si ce n'est la société."\
    Durkheim — _Les Formes élémentaires de la vie religieuse_, conclusion

  $=>$ Durkheim n'est ni un croyant (il ne défend pas la religion surnaturelle), ni un athée militant (il ne prône pas sa disparition). Il est un sociologue : il décrit ce que la religion fait pour la société. Même sans Dieu, l'homme a besoin de sacré.
]