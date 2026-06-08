#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*Fiche 4 : Devoir*
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

== Kant

#cadre[
  *Kant (1724-1804)* est la référence absolue et incontournable sur le devoir. Sa thèse centrale, développée dans les _Fondements de la métaphysique des mœurs_ et la _Critique de la raison pratique_, est que le devoir moral ne peut pas être fondé sur le bonheur, sur l'intérêt, sur les sentiments ni sur les conséquences de nos actes : il doit être fondé sur la raison pure pratique seule. Une action n'a de valeur morale que si elle est accomplie par devoir ; c'est-à-dire par respect de la loi morale, indépendamment de toute inclination personnelle. Aider quelqu'un par pitié, par intérêt ou par tempérament généreux n'a aucune valeur morale au sens kantien ; seul compte le motif du devoir pur. Kant formule l'exigence morale sous la forme de l'impératif catégorique, dont la formulation la plus célèbre est : "Agis uniquement d'après la maxime qui fait que tu peux vouloir en même temps qu'elle devienne une loi universelle." C'est un test de cohérence rationnelle : si je ne peux pas universaliser ma maxime sans contradiction, elle est immorale. Mentir, par exemple, ne peut devenir une loi universelle : si tout le monde mentait, la notion même de promesse disparaîtrait. Une deuxième formulation, tout aussi importante, dit : "Agis de telle sorte que tu traites l'humanité, aussi bien dans ta personne que dans celle de tout autre, toujours en même temps comme une fin, et jamais simplement comme un moyen." Le devoir kantien est ainsi profondément lié à la liberté : s'imposer à soi-même la loi morale rationnelle, c'est être autonome ; c'est se gouverner soi-même plutôt que d'obéir à ses passions ou à des autorités extérieures.

  "Deux choses remplissent le cœur d'une admiration et d'une vénération toujours nouvelles : le ciel étoilé au-dessus de moi et la loi morale en moi."\
  -- _Critique de la raison pratique ; Conclusion_
]

== Les stoïciens

#cadre[
  *Les stoïciens* ont développé une conception du devoir fondée non sur la raison abstraite kantienne, mais sur la nature et sur notre appartenance à un cosmos rationnel. Pour eux, le monde est gouverné par un principe rationnel universel — le logos — dont notre raison humaine est une parcelle. Vivre selon la nature, c'est donc vivre selon la raison, et c'est de là que découlent nos devoirs. Cicéron, dans _Des devoirs (De Officiis)_, développe cette idée : nos devoirs naissent de notre appartenance à plusieurs cercles concentriques : envers nous-mêmes, envers notre famille, envers notre cité, envers l'humanité entière. La notion latine d'officium (devoir, fonction) désigne ce qui est dû par chacun en fonction de sa place dans la société et dans le cosmos. Marc Aurèle, dans ses _Pensées pour moi-même_, applique ce programme à sa vie d'empereur : chaque jour, il se rappelle ses devoirs envers ses sujets, envers la justice, envers la raison universelle, non pas comme une contrainte, mais comme l'expression de sa nature propre. La grande différence avec Kant est que le devoir stoïcien est enraciné dans une vision cosmologique du monde, dans une appartenance à une communauté universelle des êtres raisonnables — ce que les stoïciens appellent la cosmopolis.

  "Agis envers les autres comme tu voudrais qu'ils agissent envers toi, et ne fais pas à autrui ce que tu ne voudrais pas qu'on te fasse."\
  -- Principe stoïcien formulé notamment par Épictète
]

== Rouseau

#cadre[
  *Rousseau (1712-1778)* aborde le devoir sous un angle politique et social : le devoir civique naît du contrat social, par lequel les individus aliènent leur liberté naturelle pour acquérir la liberté civile. Dans _Du contrat social_, il développe l'idée que la loi légitime est celle qui exprime la volonté générale : non pas la somme des volontés particulières (volonté de tous), mais la volonté orientée vers le bien commun. Obéir à une telle loi, ce n'est pas se soumettre à une contrainte extérieure, c'est obéir à soi-même, en tant que membre de la communauté politique. Rousseau peut ainsi affirmer qu'on peut "forcer quelqu'un à être libre" : si la volonté générale incarne la raison collective, celui qui lui résiste résiste à sa propre liberté profonde. Cette thèse est à la fois puissante (elle fonde le devoir civique sur la liberté elle-même) et dangereuse : elle a été utilisée pour justifier des totalitarismes au nom de la volonté générale. Rousseau est aussi celui qui, dans _Émile ou De l'éducation_, réfléchit aux devoirs de l'éducateur : former un être libre et moral suppose de ne pas lui imposer des devoirs extérieurs, mais de l'amener à les découvrir par lui-même, naturellement.

  "Trouver une forme d'association qui défende et protège de toute la force commune la personne et les biens de chaque associé, et par laquelle chacun, s'unissant à tous, n'obéisse pourtant qu'à lui-même et reste aussi libre qu'auparavant."\
  Rousseau -- _Du  contrat social, I, 6_
]

== Sartre

#cadre[
  *Sartre (1905-1980)* occupe une position singulière sur le devoir : il le refuse en tant que règle préétablie, tout en l'affirmant comme exigence de la liberté. Dans _L'Existentialisme est un humanisme_, il développe l'exemple célèbre d'un étudiant venu le consulter pendant la Seconde Guerre mondiale : doit-il rester pour soigner sa mère malade ou partir rejoindre la France libre ? Aucune morale préexistante — ni kantienne, ni chrétienne, ni utilitariste — ne peut trancher à sa place. Les règles générales sont toujours trop abstraites pour la singularité de la situation concrète. La réponse de Sartre est radicale : "L'homme est condamné à être libre", et cela signifie qu'il doit inventer son devoir dans chaque situation, sans pouvoir se réfugier derrière une loi préétablie. Il n'y a pas de nature humaine qui dicterait ce qu'on doit faire — "l'existence précède l'essence". Cette position n'est pas un relativisme : Sartre maintient que chaque choix engage une conception de l'homme valable pour tous. Choisir, c'est choisir pour l'humanité entière, ce qui rend la liberté vertigineuse et la responsabilité absolue. La mauvaise foi consiste précisément à nier cette responsabilité en se réfugiant derrière le devoir reçu : "je n'avais pas le choix, c'était mon devoir."

  "L'homme est condamné à être libre : condamné parce qu'il ne s'est pas créé lui-même, et par ailleurs libre parce que, une fois jeté dans le monde, il est responsable de tout ce qu'il fait."\
  Sartre -- _L'Existentialisme est un humanisme_
]

== Levinas

#cadre[
  *Levinas (1906-1995)* propose une conception du devoir radicalement différente de Kant : le devoir ne naît pas de la raison universelle, mais de la rencontre avec le visage d'autrui. Dans _Totalité et Infini_ et _Autrement qu'être_, il développe l'idée que le visage de l'autre — sa fragilité, sa nudité, son appel — constitue une injonction morale absolue et antérieure à toute règle. Avant même de raisonner, avant même de décider, le visage de l'autre me dit : "Tu ne tueras point." Ce n'est pas un impératif que je me donne à moi-même (comme chez Kant) : c'est un appel qui vient de l'extérieur, de l'autre dans sa radicale altérité. La responsabilité envers l'autre est pour Levinas infinie et asymétrique : je suis responsable d'autrui même pour ce qu'il fait, même sans réciprocité. "Je suis responsable d'autrui sans attendre la réciproque." Cette conception bouleverse l'éthique traditionnelle : le moi n'est pas le point de départ, c'est l'autre qui m'institue comme sujet moral en me faisant face. Le devoir n'est pas une loi que je me donne, c'est une convocation à laquelle je dois répondre.

  "Le visage ouvre le discours originel dont le premier mot est obligation."\
  _Totalité et Infini_
]

== Nietzsche

#cadre[
  *Nietzsche (1844-1900)* est le grand contestataire de toute morale fondée sur le devoir, et en particulier de la morale kantienne, qu'il juge être l'expression la plus sophistiquée de la "morale des esclaves". Dans _La Généalogie de la morale_ et _Par-delà bien et mal_, il entreprend une critique généalogique : d'où vient notre sentiment du devoir moral ? Non pas de la raison universelle, comme le croit Kant, mais d'une histoire de domination, de ressentiment et de culpabilité. La morale du devoir, selon Nietzsche, est née de la revanche des faibles contre les forts : incapables de s'imposer par la force, les faibles ont inventé un système de valeurs qui retourne la force en vice et la faiblesse en vertu. L'humilité, l'obéissance, la pitié : autant de "devoirs" qui sont en réalité des instruments de domestication des instincts vitaux. La notion de "mauvaise conscience" n'est pas une voix divine ou rationnelle : c'est le produit historique de la répression des instincts agressifs que la vie sociale a imposée à l'homme. Nietzsche n'abolit pas toute éthique, il appelle à une "transvaluation de toutes les valeurs" qui substituerait au devoir subi la création libre de nouvelles valeurs, propres à chaque individu souverain et créateur.

  "La morale est la continuation de la haine par d'autres moyens."\
  Nietzsche -- _La Généalogie de la morale_
]

== Aristote

#cadre[
  *Aristote (384-322 av. JC)* n'utilise pas le terme "devoir" au sens kantien : il parle de vertu et de ce qui est juste. Mais sa réflexion éthique dans l'_Éthique à Nicomaque_ éclaire le devoir d'une façon radicalement différente de Kant. Pour Aristote, l'action morale juste n'est pas celle qui obéit à une règle universelle abstraite, c'est celle qui est accomplie par un homme vertueux, dans les bonnes circonstances, au bon moment, envers la bonne personne, dans la bonne mesure. La vertu n'est pas une règle, c'est une disposition stable de caractère, acquise par l'habitude et l'éducation, qui permet à l'homme de trouver le juste milieu entre deux excès. Le courageux est celui qui n'est ni lâche ni téméraire : il sait, par habitude et par jugement pratique (la phronèsis), quand et comment agir. Ce jugement pratique est irréductible à toute règle générale : il faut une sagesse acquise par l'expérience pour savoir ce que la situation exige. Aristote est ainsi le représentant de l'éthique des vertus, qui insiste sur le caractère moral du sujet plutôt que sur la forme de l'acte (Kant) ou ses conséquences (Mill).

  "La vertu est une dispoistion à agir d'une façon délibérée, consistant en un juste milieu relatif à nous, défini par la raison et tel que le définirait l'homme prudent."\
  Aristote -- _Éthique à Nicomaque, II, 6_
]

== Mill

#cadre[
  *John Stuart Mill (1806-1873)* représente la grande alternative au déontologisme kantien : le conséquentialisme utilitariste. Dans _L'Utilitarisme_, il soutient que le devoir moral n'est pas défini par la forme de l'acte (son universalisabilité) mais par ses effets : est moral ce qui produit le plus grand bonheur pour le plus grand nombre. Cela renverse entièrement la logique kantienne : mentir peut être un devoir si le mensonge sauve des vies (cacher des résistants à la Gestapo) ; dire la vérité peut être immoral si elle cause un préjudice grave. Mill est plus souple que Bentham sur un point crucial : tous les plaisirs ne se valent pas, et le devoir doit viser non la quantité brute de bonheur mais sa qualité. Il introduit aussi une distinction importante entre justice (devoir strict, dont la violation justifie une sanction) et bienfaisance (devoir plus souple, dont l'omission peut être critiquée mais pas punie). La force de l'utilitarisme est son pragmatisme et sa sensibilité aux conséquences réelles des actes ; sa faiblesse, souvent soulignée, est qu'il semble autoriser des injustices flagrantes si elles maximisent le bonheur collectif — sacrifier un innocent pour sauver dix personnes, par exemple.

  "Les actions sont justes dans la proportion où elles tendent à promouvoir le bonheur, injustes dans la proportion où elles tendent à produire le contraire du bonheur."\
  Mill -- _L'Utilitarisme, ch. 2_
]

= Exemple : _Fondements de la métaphysique des mœurs_

== Le projet de l'œuvre

#cadre[
  *Fonder une morale purement rationnelle*

  Les _Fondements de la métaphysique des mœurs_ sont un texte court (environ 120 pages) mais d'une densité philosophique extrême — c'est l'un des textes les plus importants de toute l'histoire de l'éthique. Kant se fixe un objectif précis : trouver le principe suprême de la moralité, celui qui fonde le devoir de manière absolue, sans faire appel à aucune donnée empirique — ni l'expérience, ni la psychologie, ni les coutumes, ni le bonheur. Il veut une morale a priori, valable pour tous les êtres raisonnables en tout temps et en tout lieu. Son point de départ est une question en apparence simple : qu'est-ce qui est bon sans restriction ? Sa réponse est radicale — la seule chose qui soit bonne sans restriction, c'est la bonne volonté. Non pas l'intelligence (elle peut servir le mal), non pas le courage (idem), non pas le bonheur (il peut corrompre) — seule la volonté qui agit par pur respect du devoir est moralement bonne en elle-même, quelles que soient ses conséquences.

  $=>$ Le projet des Fondements permet d'introduire d'emblée la question de ce qui fonde le devoir. Kant opère une rupture nette avec toutes les morales fondées sur le bonheur (Aristote, Épicure, Mill) : ce n'est pas parce qu'une action rend heureux qu'elle est morale, c'est parce qu'elle est conforme au devoir rationnel.
]

== La bonne volonté : concept fondateur

#cadre[
  *La bonne volonté : seule chose bonne sans restriction*\
  Section I --  Passage de la connaissance rationnelle commune de la moralité à la connaissance philosophique.

  Kant commence par observer ce que la raison commune sait déjà confusément : nous admirons sans réserve un homme qui fait son devoir sans chercher sa propre gloire ni son confort. À l'inverse, nous n'admirons pas inconditionnellement un homme heureux qui doit son bonheur à la chance, ni un homme courageux qui met son courage au service du crime. La bonne volonté est la seule valeur morale absolue parce qu'elle ne dépend d'aucune circonstance extérieure : même si elle échoue à atteindre ses fins, même si elle ne produit aucun effet heureux, elle garde toute sa valeur. "Elle brillerait encore par son propre éclat, comme une pierre précieuse." Cette thèse est décisive : elle sépare radicalement la valeur morale d'un acte de ses conséquences. Ce qui compte, c'est l'intention : agir par devoir, non pour le résultat.

  "Il n'est rien qui puisse sans restriction être tenu pour bon, si ce n'est seulement une bonne volonté."\
  Kant -- _Fondements de la métaphysique des mœurs, Section I_

  $=>$ La bonne volonté est le concept à opposer à Mill (qui juge l'acte par ses conséquences) et à Aristote (qui juge l'acte par la vertu du sujet). C'est aussi un outil pour critiquer les morales du résultat : un mensonge bien intentionné qui sauve des vies n'a-t-il vraiment aucune valeur morale ? La rigidité kantienne sur ce point est à la fois sa force et sa limite.
]

== Agir par devoir vs. Agir conformément au devoir

#cadre[
  *Par devoir / Conforme au devoir*\
  Section I -- Les trois exemples du commerçant, du philanthrope et de l'homme qui se conserve.

  Kant illustre sa thèse par une série d'exemples. Un commerçant qui pratique des prix honnêtes parce que c'est bon pour ses affaires agit conformément au devoir (il fait la bonne chose), mais non par devoir : il est motivé par l'intérêt. Un philanthrope qui aide les autres parce qu'il est naturellement sensible à leur souffrance agit conformément au devoir, mais non par devoir : il est motivé par l'inclination, le tempérament. La vraie valeur morale apparaît seulement dans le cas le plus difficile : l'homme qui, profondément déprimé, ne ressent plus aucune sympathie pour autrui, mais continue néanmoins à aider par pur respect de son devoir : celui-là agit moralement. Non pas parce que c'est agréable, non pas parce que ça lui rapporte, mais simplement parce que c'est son devoir. Cette distinction est provocante : elle semble dire que la bonté naturelle n'a aucune valeur morale. Kant n'affirme pas que les inclinations généreuses sont mauvaises, il dit seulement qu'elles ne peuvent pas fonder le devoir moral.

  $=>$ Cette distinction permet de critiquer les morales sentimentales (Rousseau : la pitié naturelle comme fondement du devoir), les morales utilitaristes (Mill : agir pour le bonheur) et les morales de la vertu (Aristote : agir par caractère vertueux). Elle soulève aussi une objection redoutable : une morale qui dévalorise la générosité naturelle est-elle vraiment satisfaisante ?
]

== Les trois formulations de l'impératif catégorique

#cadre[
  *La loi universelle*

  "Agit uniquement d'après la maxique qui fait que tu peux vouloir en même temps qu'elle devienne une loi universelle"

  Test de cohérence rationnelle : avant d'agir, demande-toi si tu pourrais vouloir que tout le monde agisse comme toi. Si mentir devenait universel, la notion même de promesse disparaîtrait — la maxime "je mens si c'est dans mon intérêt" se détruit elle-même quand on tente de l'universaliser. C'est le critère formel du devoir.
]

#pagebreak()

#cadre[
  *L'humanité comme fin*

  "Agis de telle sorte que tu traites l'humanité, aussi bien dans ta personne que dans celle de tout autre, toujours en même temps comme une fin, et jamais simplement comme un moyen."

  Tout être raisonnable a une dignité absolue qui interdit de le réduire à un instrument. Manipuler quelqu'un, mentir pour le faire agir selon nos fins, exploiter une personne : autant de violations de ce principe. C'est le fondement philosophique des droits de l'homme : chaque personne est une fin en soi, inviolable.
]

#cadre[
  *La législation universelle*

  "Agis selon des maximes d'un membre législateur universel dans un règne des fins simplement possible"

  L'être moral se comporte comme s'il était à la fois auteur et destinataire de la loi morale universelle. Cette formule introduit l'idée d'un "règne des fins" : une communauté idéale où chacun traite l'autre comme une fin. C'est l'idéal d'une société fondée sur le respect mutuel de la dignité de chacun.
]

#cadre[
  *Les trois formules disent-elles la même chose ?*\
  Section II -- La transition vers la métaphysique des mœurs

  Kant affirme que les trois formules sont équivalentes : elles expriment le même impératif catégorique sous des angles différents. La première formule (universalisabilité) donne le critère formel du devoir : est moral ce qu'on peut universaliser sans contradiction. La deuxième (humanité comme fin) donne le critère matériel : est moral ce qui respecte la dignité de tout être raisonnable. La troisième (autonomie) donne le point de vue du sujet moral : le sujet moral se comprend comme co-législateur d'une communauté universelle. En pratique, la deuxième formule est la plus opérationnelle et la plus citée : "ne jamais traiter autrui simplement comme un moyen" est l'une des formules les plus influentes de toute la philosophie morale, au fondement des droits de l'homme modernes.

  $=>$ Les trois formules permettent d'analyser n'importe quelle situation morale selon trois angles. Un mensonge : peut-on l'universaliser ? (Non.) Traite-t-il autrui comme une fin ? (Non, on le manipule.) Un acte héroïque qui sacrifie une vie pour en sauver dix : peut-on l'universaliser ? Traite-t-il cette vie comme une fin ou comme un moyen ? C'est ici que Kant devient difficile à appliquer mécaniquement.
]

== Autonomie et hétéronomie : le cœur de la liberté kantienne

#cadre[
  *L'autonomie : se donner sa propre loi*\
  Section III -- Le passage à la métaphysique des mœurs

  La thèse la plus profonde des Fondements est peut-être celle-ci : le devoir moral et la liberté ne s'opposent pas : ils coïncident. L'autonomie (du grec autos : soi-même, et nomos : loi) désigne le fait de se donner à soi-même sa propre loi. Quand j'agis par devoir moral — par respect de la loi rationnelle que ma propre raison m'impose — je ne suis pas contraint par une force extérieure : je m'obéis à moi-même, en tant qu'être raisonnable. C'est la forme la plus haute de liberté. À l'inverse, l'hétéronomie désigne le fait de recevoir sa loi de l'extérieur : de ses désirs, de ses passions, de la pression sociale, de la religion, du bonheur. Toutes les morales antérieures à Kant, dit-il, sont hétéronomes : elles fondent le devoir sur quelque chose d'extérieur à la raison pure (le bonheur pour Aristote et Épicure, Dieu pour la morale chrétienne, la nature pour les stoïciens). Kant opère donc une révolution copernicienne en éthique : le sujet moral ne reçoit pas la loi, il la produit.

  "La volonté est donc non seulement soumise à la loi, mais soumise de telle façon qu'elle doit être considérée comme se donnant aussi la loi à elle-même."

  $=>$  L'autonomie kantienne est la réponse à la question "le devoir est-il une contrainte ou une liberté ?" — il est les deux à la fois, mais au sens où s'imposer sa propre loi rationnelle, c'est être libre. À confronter à Nietzsche (qui refuse cette loi comme invention des faibles) et à Sartre (qui refuse toute loi préétablie, même rationnelle).
]

= Exemple : _La Désobéissance civile_

== Remise en contexte

#cadre[
  Publié en 1849 sous le titre original Resistance to Civil Government, cet essai de Henry David Thoreau naît d'une expérience personnelle. Thoreau refuse de payer un impôt destiné à financer un État qui soutient l'esclavage et mène la guerre contre le Mexique. Pour ce refus, il passe une nuit en prison.
  L'essai pose une question centrale pour le thème du devoir : doit-on toujours obéir à la loi ? Thoreau répond négativement. Selon lui, l'individu possède un devoir moral supérieur à son devoir d'obéissance envers l'État. Lorsqu'une loi est injuste, il devient même parfois un devoir de lui désobéir. Cette œuvre permet d'aborder : le conflit entre devoir moral et devoir légal ; le rôle de la conscience dans l'action morale ; les limites de l'obéissance ; la responsabilité individuelle face à l'injustice ; la notion de résistance politique.
]

== Passages clés

#cadre[
  *"Le meilleur gouvernement est celui qui gouverne le moins"*\
  -- Ouverture de l'essai

  Thoreau critique la tendance des citoyens à accorder une confiance excessive aux institutions politiques. Il ne rejette pas toute forme d'État, mais refuse de considérer que l'autorité politique possède une légitimité absolue. 
  Thoreau critique la tendance des citoyens à accorder une confiance excessive aux institutions politiques. Il ne rejette pas toute forme d'État, mais refuse de considérer que l'autorité politique possède une légitimité absolue. Ce passage introduit l'idée fondamentale que le devoir moral ne peut être réduit à l'obéissance. Une loi n'est pas juste parce qu'elle est une loi ; elle doit être examinée par la conscience individuelle.

  "Le meilleur gouvernement est celui qui gouverne le moins."

  $=>$ Cet exemple permet de distinguer l'obligation juridique du devoir moral. On peut obéir à la loi tout en commettant une injustice, ou désobéir à la loi pour accomplir un devoir plus élevé. Le texte s'oppose ici à une conception du devoir fondée exclusivement sur l'autorité extérieure. Thoreau affirme que la source ultime de l'action morale réside dans la conscience du sujet.
]

#cadre[
  *Le refus de payer l'impôt*\
  -- Thoreau refuse de verser la captiation exigée par le Massachusetts

  L'auteur considère que cet impôt contribue indirectement au maintien de l'esclavage. Même si sa contribution est minime, il refuse de participer à un système qu'il juge injuste. Ce passage montre qu'un devoir peut exiger une action concrète et coûteuse. Thoreau ne se contente pas de condamner l'injustice en théorie : il accepte les conséquences de son refus. L'exemple est particulièrement intéressant pour montrer que le devoir moral peut entrer en conflit avec l'intérêt personnel. Payer l'impôt serait plus simple et plus confortable ; pourtant, Thoreau estime qu'il doit agir conformément à ses principes.

  "Je ne puis reconnaître pour mon gouvernement celui qui est aussi le gouvernement de l'esclave."

  $=>$ Comme Kant, Thoreau considère qu'une action est véritablement morale lorsqu'elle est accomplie par respect pour un principe, et non par intérêt ou par peur des sanctions. La différence est que Thoreau applique ce principe dans un contexte de résistance politique concrète.
]

#cadre[
  *La critique de la majorité*

  Dans l'Amérique du XIXe siècle, l'esclavage est légalement reconnu dans une partie du pays. Pour Thoreau, le fait qu'une pratique soit soutenue par la majorité ne suffit pas à la rendre juste. Ce texte permet de distinguer la légalité de la moralité. Une décision démocratique peut être injuste ; dès lors, le devoir ne consiste pas toujours à suivre la volonté du plus grand nombre.

  "Une majorité n'a pas le droit de gouverner simplement parce qu'elle est la plus forte."

  $=>$ Cet argument montre que la morale ne peut être abandonnée au jugement collectif. Chacun demeure responsable de ses actes. On peut rapprocher cette idée de Socrate, qui refusait déjà de confondre l'opinion majoritaire avec la vérité morale. Le devoir exige parfois de s'opposer à la foule.
]

#cadre[
  *La prison comme lieu du juste*\
  -- Après son refus de payer l'impôt, Thoreau est emprisonné.

  L'auteur transforme un événement qui pourrait apparaître comme un échec en preuve de cohérence morale. Puisque la loi est injuste, être puni par elle devient le signe que l'on a accompli son devoir. Ce passage montre que le devoir ne se mesure pas à la réussite ou à l'échec de l'action. Ce qui importe est la fidélité au principe moral.

  "Sous un gouvernement qui emprisonne injustement, la place de l'homme juste est aussi en prison."

  $=>$ L'exemple permet de montrer qu'il existe parfois un devoir de résistance. La justice peut exiger de supporter une sanction plutôt que de collaborer avec l'injustice. On retrouve ici un aspect essentiel de la morale kantienne : la valeur morale d'une action dépend de son intention et de sa conformité au devoir, non de ses conséquences.
]

#cadre[
  *Soyez d'abord des hommes, et ensuite des sujets*\
  -- Vers la fin de l'essai
  
  Cette formule résume toute l'argumentation du texte. Thoreau refuse que l'appartenance à l'État efface la responsabilité morale individuelle. Le citoyen demeure avant tout un être capable de juger par lui-même. Ce passage exprime l'idée centrale de l'œuvre : le devoir véritable est d'abord envers la justice et la conscience, avant d'être envers les institutions. Il permet de montrer qu'il existe une hiérarchie des devoirs. Lorsque le devoir d'obéissance entre en conflit avec le devoir moral, c'est ce dernier qui doit l'emporter. La loi n'est légitime que si elle respecte la justice.

  "Il faut être homme d'abord, sujet ensuite."

  $=>$ On peut rapprocher ce texte de Sartre. Pour Sartre, l'homme est responsable de ses choix et ne peut se réfugier derrière une autorité extérieure pour se décharger de sa responsabilité. De même, Thoreau refuse l'excuse consistant à dire : « Je n'ai fait qu'obéir à la loi. » Ainsi, l'essai défend une conception exigeante du devoir : être moralement responsable implique parfois de désobéir, de résister et d'assumer personnellement les conséquences de cette résistance.
]

= Exemple : _Les Misérables_ 

== Contexte

#cadre[
  Publié en 1862, _Les Misérables_ de Victor Hugo est à la fois un roman historique, social et moral. L'intrigue suit principalement Jean Valjean, ancien forçat condamné pour avoir volé du pain, qui tente de reconstruire sa vie après sa rencontre avec l'évêque Myriel. Tout au long du roman, Hugo interroge la nature du devoir : doit-on obéir à la loi, à sa conscience, à Dieu, aux autres ? À travers les choix de Jean Valjean, Javert, Mgr Myriel ou encore Marius, le roman met en scène des conflits entre plusieurs formes de devoir. L'œuvre permet d'aborder : l'opposition entre devoir moral et devoir légal  le devoir envers autrui ; le sacrifice ; la responsabilité ; les limites d'une morale fondée uniquement sur les règles.
]

== Passages clés

#cadre[
  *Le pardon de l'évèque Myriel : le devoir de charité*\
  -- Après avoir été accueilli par l'évêque, Jean Valjean lui vole son argenterie. Arrêté par les gendarmes, il est ramené devant Myriel qui affirme lui avoir donné les objets.

  À sa sortie du bagne, Valjean est rejeté par toute la société. L'évêque est le seul à lui ouvrir sa porte. Lorsqu'il le vole, tout semble confirmer l'idée que Valjean est irrécupérable. Pourtant, Myriel choisit le pardon. Cette scène constitue le véritable point de départ du roman. Myriel refuse de traiter Valjean selon la logique de la faute et de la punition. Il agit selon un devoir supérieur : celui de la charité et du respect de la dignité humaine.

  "Jean Valjean, mon frère, vous n'appartenez plus au mal mais au bien."

  $=>$ Ce passage peut-être rapproché de Levinas. Pour Levinas, la rencontre d'autrui fait naître une responsabilité qui précède même nos choix. Le visage de l'autre nous commande moralement. Myriel voit en Valjean non un ancien forçat mais une personne dont il est responsable. Son devoir naît de cette rencontre avec autrui.
]

#cadre[
  *Jean Valjean se dénonce pour sauver Champmathieu*\
  -- Un inconnu risque d'être condamné à sa place Jean Valjean doit choisir entre confort personnel et vérité.

  Valjean est devenu maire, industriel prospère et homme respecté. En révélant son identité, il risque de perdre sa liberté, sa position sociale et tout ce qu'il a construit depuis des années. Cette scène est un exemple presque parfait d'action accomplie par devoir. Valjean sait qu'il a tout à perdre, mais il refuse qu'un innocent souffre à sa place.

  "Je suis Jean Valjean"

  $=>$ On peut rapprocher ce passage de Kant. Pour Kant, une action morale est accomplie par respect pour la loi morale et non par intérêt personnel. Valjean ne cherche ni son bonheur ni son avantage ; il agit parce qu'il estime qu'il est de son devoir de dire la vérité et d'empêcher une injustice.
]

#cadre[
  *Javert : le devoir comme obéissance absolue*\
  -- Javert poursuit Jean Valjean pendant des années au nom du respect de la loi.

  Javert est convaincu que l'ordre social repose sur l'application stricte des règles. Pour lui, la loi constitue la référence ultime du bien et du mal. Javert représente une conception très rigide du devoir. Il pense qu'il suffit d'obéir aux règles pour être juste.

  "Le juge n'a que le devoir."

  $=>$ Ce personnage permet de réfléchir aux limites d'une telle conception. Contrairement à Kant, pour qui le devoir repose sur la raison morale autonome, Javert se contente d'obéir à une autorité extérieure. Il ne s'interroge jamais véritablement sur la justice des lois qu'il applique. Le personnage montre ainsi qu'obéir n'est pas toujours agir moralement. Le devoir exige aussi un jugement personnel.
]

#cadre[
  *Jean Valjean épargne Javert*\
  -- Sur les barricades, Valjean a l'occasion de tuer Javert, son persécuteur. Il choisit pourtant de le libérer.

  Après des années de traque et de souffrance, personne n'aurait reproché à Valjean de se venger. Pourtant, il refuse de céder à la haine. Valjean agit ici en homme maître de lui-même. Il ne se laisse pas gouverner par la colère ou le ressentiment.

  $=>$ Ce passage peut être rapproché des Stoïciens. Pour les stoïciens, la vertu consiste à agir conformément à la raison plutôt qu'aux passions. Valjean ne suit pas son désir immédiat de vengeance ; il choisit l'action qu'il juge moralement juste. On peut également le rapprocher de Nietzsche. Nietzsche critique le ressentiment, c'est-à-dire l'incapacité à dépasser les offenses subies. En épargnant Javert, Valjean refuse précisément de rester prisonnier de la haine et affirme sa liberté.
]

#cadre[
  *Le suicide de Javert : le conflit des devoirs*\
  -- Après avoir été sauvé par Valjean, Javert ne parvient plus à concilier sa mission de policier avec la reconnaissance qu'il éprouve envers celui qu'il considérait comme un criminel.

  Toute son existence reposait sur une opposition simple entre le bien et le mal, la loi et le crime. Le comportement de Valjean détruit cette certitude. Javert découvre que plusieurs devoirs peuvent entrer en conflit. D'un côté, son devoir professionnel lui commande d'arrêter Valjean ; de l'autre, sa conscience lui commande de reconnaître la justice et la générosité de cet homme.

  $=>$ Ce passage peut être rapproché de Rousseau. Rousseau distingue souvent l'obéissance aveugle à une autorité et l'obéissance à une loi reconnue comme juste par la conscience. Javert est incapable d'effectuer ce passage : il ne sait penser le devoir que comme soumission à la règle. On peut aussi établir un lien avec Sartre. Sartre insiste sur le fait qu'aucune règle ne peut nous dispenser de choisir. Or Javert refuse précisément cette responsabilité. Il voudrait que la loi décide à sa place. Lorsque cette certitude disparaît, il ne parvient plus à assumer la liberté de juger par lui-même.
]