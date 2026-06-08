#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*Fiche 8 : Langage*
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

== Saussure

#cadre[
  *Ferdinand de Saussure (1857-1913)* est le fondateur de la linguistique moderne et l'un des penseurs les plus influents du XXe siècle, dont l'impact dépasse largement la linguistique pour toucher la philosophie, l'anthropologie et la littérature. Son œuvre maîtresse, le _Cours de linguistique générale_ (1916, publié de façon posthume par ses étudiants), pose les bases du structuralisme. Sa thèse centrale est celle de l'arbitraire du signe : le signe linguistique unit un signifiant (image acoustique) et un signifié (concept), mais ce lien est entièrement arbitraire — il n'y a aucune ressemblance naturelle entre le son "chien" et l'animal qu'il désigne, comme le prouve le fait que d'autres langues utilisent d'autres sons pour le même concept ("dog", "Hund", "perro"). Les mots ne sont pas des étiquettes collées sur des choses préexistantes — ils découpent le réel selon des divisions propres à chaque langue. La langue est un système de différences : un mot n'a pas de sens en lui-même, il n'a de sens que par opposition aux autres mots du système. "Chat" signifie par opposition à "chien", "animal", "félin"… Cette vision structurale a des conséquences philosophiques majeures : si le sens est produit par les différences internes au système linguistique, alors le langage ne reflète pas passivement un réel préexistant — il le structure activement.

  "Dans la langue, il n'y a que des différences sans termes positifs."\
  Saussure -- _Cours de linguistique générale, ch. IV_

  $=>$ Saussure est la référence pour l'arbitraire du signe et la nature différentielle du langage. Sa thèse que la langue découpe le réel plutôt qu'elle ne le reflète est fondamentale pour toute dissertation sur les rapports entre langage et pensée, ou langage et réalité.
]

== Wittgenstein

#cadre[
  *Ludwig Wittgenstein (1889-1951)* est l'un des philosophes les plus importants du XXe siècle et le seul à avoir proposé deux philosophies du langage radicalement différentes. Dans le _Tractatus logico-philosophicus_ (1921), il soutient que le langage est une image logique du monde — les propositions qui ont du sens sont celles qui figurent des états de choses possibles dans le monde. Tout ce qui dépasse cette figuration — l'éthique, l'esthétique, le sens de la vie, Dieu — ne peut pas être dit de façon sensée, seulement montré. D'où la proposition finale : "Ce dont on ne peut parler, il faut le passer sous silence." Et la proposition §5.6 : "Les limites de mon langage signifient les limites de mon monde." Le langage délimite ce que je peux penser et connaître — tout ce qui est au-delà est indicible. Dans les Recherches philosophiques (1953, posthumes), il renverse entièrement cette position. Le langage n'est pas une image logique du monde — c'est une pratique sociale inscrite dans des formes de vie. Il introduit la notion de jeux de langage : le langage a de nombreux usages différents (décrire, ordonner, promettre, plaisanter, prier…) et le sens d'un mot est son usage dans un contexte donné. "La signification d'un mot est son usage dans le langage." Les problèmes philosophiques naissent souvent de l'usage hors-contexte des mots — la philosophie doit les dissoudre plutôt que les résoudre.

  "Les limites de mon langage signifient les limites de mon monde"

  $=>$ Wittgenstein offre deux outils distincts. La formule "limites du langage = limites du monde" (Tractatus) est directement mobilisable pour questionner l'indicible. Les "jeux de langage" (Recherches) permettent de montrer que le langage est une pratique sociale — non un miroir du monde.
]

== Heidegger

#cadre[
  *Martin Heidegger (1889-1976)* propose une conception du langage radicalement différente de la tradition analytique — pour lui, le langage n'est pas un outil de communication ni même un système de signes, c'est le lieu même où l'être se dévoile. Dans la Lettre sur l'humanisme (1946), il formule l'une de ses thèses les plus célèbres : "Le langage est la maison de l'être. En son abri habite l'homme." Ce n'est pas l'homme qui possède le langage comme un instrument — c'est le langage qui "parle" à travers l'homme, qui ouvre un monde. Le langage n'est pas fait pour désigner des objets préexistants — il laisse les choses se montrer dans leur être. Heidegger s'intéresse particulièrement à la poésie, qu'il considère comme la forme la plus haute du langage : le poète ne "communique" pas des informations, il laisse l'être se dire dans toute sa plénitude. Il analyse longuement Hölderlin, dont les poèmes atteignent selon lui un rapport au langage que la prose ordinaire a perdu. Le langage quotidien, usé par l'usage et le bavardage (le Gerede — le "on-dit"), recouvre l'être au lieu de le révéler. C'est la poésie et la pensée philosophique qui peuvent rouvrir ce que le langage ordinaire a refermé.

  "Le langage est la maison de l'être. En son abri habite l'homme"

  $=>$ Heidegger est la référence pour le langage comme lieu de dévoilement de l'être — et pour la poésie comme forme supérieure du langage. À confronter à Wittgenstein (le langage comme outil) et à Saussure (le langage comme système différentiel).
]

== Merleau-Ponty

#cadre[
  *Maurice Merleau-Ponty (1908-1961)* aborde le langage depuis sa phénoménologie du corps et de la perception, dans Phénoménologie de la perception et La Prose du monde. Sa thèse centrale renverse le modèle classique selon lequel la pensée précède le langage et le langage ne fait qu'habiller des pensées déjà formées. Pour Merleau-Ponty, c'est la parole qui crée la pensée — ou du moins qui l'achève et la configure. Avant d'être dite, une pensée n'est qu'une intention vague, un mouvement vers quelque chose qui n'a pas encore de forme. C'est l'acte même de parler — de chercher les mots, de les assembler, de les entendre — qui donne à la pensée sa forme définitive. "Ma pensée me paraît une traduction — et pourtant le sens est dans et par l'expression, non avant elle." La parole n'est donc pas un simple véhicule — elle est constitutive du sens. Merleau-Ponty distingue par ailleurs la parole parlée (le langage institutionnalisé, les phrases toutes faites, le cliché) et la parole parlante (la parole créatrice, celle de l'écrivain ou du penseur qui forge un sens nouveau en cherchant ses mots). C'est la parole parlante — la littérature, la philosophie, la poésie — qui est l'expression la plus haute du langage.

  "Le sens est dans et par l'expression, non avant elle — ma parole me surprend et m'enseigne ma pensée."

  $=>$ Merleau-Ponty renverse la thèse classique — la parole crée la pensée, elle ne la traduit pas. Sa distinction parole parlée/parole parlante est très mobilisable pour analyser la littérature comme mode d'expression supérieur au langage ordinaire.
]

== Austin & Searle

#cadre[
  *John Austin (1911-1960)*, dans _Quand dire c'est faire_ (How to Do Things with Words, 1962), opère une révolution dans la philosophie du langage en montrant que le langage ne se réduit pas à décrire des états de choses — il peut aussi faire des choses. Il distingue les énoncés constatatifs (qui décrivent et peuvent être vrais ou faux) et les énoncés performatifs (qui accomplissent l'action qu'ils énoncent : "je te promets", "la séance est ouverte", "je vous baptise"). "Je te promets de venir" ne décrit pas une promesse — c'est l'acte même de promettre. Austin développe ensuite une théorie plus générale des actes de langage : tout énoncé comporte une dimension locutoire (ce qui est dit), illocutoire (ce qu'on fait en disant — promettre, ordonner, affirmer, avertir) et perlocutoire (l'effet produit sur l'interlocuteur). *John Searle (1932-2025)* reprend et systématise cette théorie, en montrant que les règles constitutives des actes de langage forment une institution sociale. La promesse, le mariage, la déclaration de guerre — tous ces actes ne sont possibles que dans un cadre institutionnel partagé. Le langage est donc un fait social irréductible à la physique des sons.

  "Dire, c'est faire. Certaines paroles n'informent pas — elles agissent."

  $=>$ Austin et Searle sont les références pour le langage comme action — "quand dire c'est faire". La théorie des actes de langage est très mobilisable pour des dissertations sur le pouvoir des mots, la rhétorique, ou la dimension sociale du langage.
]

== Foucault

#cadre[
  *Michel Foucault (1926-1984)* aborde le langage non comme un système neutre de signes mais comme un lieu d'exercice du pouvoir. Dans L'Ordre du discours (1971) et dans ses grandes analyses historiques (Les Mots et les Choses, Surveiller et Punir), il développe la notion de discours : un ensemble d'énoncés organisés selon des règles qui définissent ce qui peut être dit, ce qui est vrai ou faux, qui est autorisé à parler et qui ne l'est pas. Le discours médical, le discours juridique, le discours psychiatrique — chacun produit des "sujets" (le malade, le criminel, le fou) en les nommant, les classant, les normalisant. Nommer quelqu'un "fou" ou "délinquant", c'est exercer un pouvoir sur lui — et ce pouvoir passe entièrement par le langage. Foucault montre que "la vérité" dans une société n'est pas indépendante du pouvoir — elle est produite par des "régimes de vérité", c'est-à-dire des ensembles de procédures sociales qui définissent ce qui est tenu pour vrai. Le langage n'est donc pas un miroir neutre de la réalité — il est le champ de bataille où se jouent les rapports de pouvoir. Cette thèse entre en résonance directe avec le Novlangue de _1984_ d'Orwell : si l'on contrôle le langage, on contrôle la pensée.

  "Le discours n'est pas simplement ce qui traduit les luttes ou les systèmes de domination, mais ce pour quoi et par quoi on lutte."

  $=>$ Foucault est la référence pour le langage comme instrument de pouvoir. Sa notion de "discours" est très mobilisable pour analyser la langue de bois politique, la publicité, les institutions. Pont naturel vers _1984_ d'Orwell.
]

== Benveniste

#cadre[
  *Émile Benveniste (1902-1976)* est le grand linguiste français du XXe siècle, moins connu du grand public que Saussure mais philosophiquement très riche. Dans Problèmes de linguistique générale, il développe une thèse décisive : c'est dans et par le langage que le sujet se constitue comme sujet. "C'est dans et par le langage que l'homme se constitue comme sujet." Ce n'est pas que l'homme préexiste au langage et l'utilise pour s'exprimer — c'est la capacité de dire "je" qui fait de l'homme un sujet. Le "je" est la marque de la subjectivité dans le langage — et il n'existe que dans l'acte d'énonciation, jamais en dehors. Cette thèse est vertigineuse : elle signifie que la subjectivité humaine — le fait d'être un "moi" — est constituée par le langage, non indépendante de lui. Benveniste développe aussi la théorie de l'énonciation — la distinction entre l'énoncé (ce qui est dit) et l'acte d'énonciation (le fait de dire, qui implique toujours un "je" qui parle, un "tu" à qui l'on parle, et un "maintenant" de la parole). Cette distinction enrichit considérablement la compréhension du langage comme acte vivant et situé, non comme texte abstrait.

  "C'est dans et par le langage que l'homme se constitue comme sujet."

  $=>$ Benveniste est la référence pour le lien entre langage et subjectivité. Sa thèse que "je" n'existe que dans l'énonciation relie directement le thème du langage à celui de la conscience et de l'identité personnelle. Pont naturel entre les deux fiches.
]

= Exemple : _1984_

== Le projet philosophique

#cadre[
  *Un angle d'étude nouveau*

  1984 a déjà été développé dans les fiches sur l'État (Big Brother comme Léviathan sans limite, la surveillance, la destruction de la conscience individuelle) et sur la conscience (le télécran, le doublepense, la destruction du cogito). Pour le thème du langage, il faut donc se concentrer sur ce qui n'a pas encore été analysé : le Novlangue et la théorie du langage qui le sous-tend. C'est un angle différent et complémentaire — Orwell n'y illustre plus seulement la domination politique, mais une thèse philosophique précise sur le rapport entre langage et pensée : si les mots disparaissent, les pensées qu'ils permettaient deviennent impossibles. C'est la formule de Wittgenstein ("les limites de mon langage signifient les limites de mon monde") transformée en programme politique délibéré.

  $=>$ À l'oral, précise que tu mobilises 1984 sous un angle spécifique — non pour la domination politique en général, mais pour sa théorie du langage. Cela montre une maîtrise fine de l'œuvre et évite la répétition.
]

== Le novlangue : la destruction du langage comme arme politique

#cadre[
  *Le Novlange : rétrécir la langue pour rétrécir la pensée*\
  Appendice du roman -- "Les principes du Novlangue" -- et conversations avec Syme

  Le Novlangue (Newspeak) est la langue officielle qu'Océania est en train de substituer progressivement à l'Oldspeak (l'anglais actuel). Son principe est radicalement inverse à celui de toutes les langues ordinaires : au lieu d'enrichir son vocabulaire au fil du temps, le Novlangue le réduit délibérément, édition après édition. Syme, le philologue chargé de rédiger le dictionnaire de Novlangue, explique à Winston avec enthousiasme : "Nous détruisons des mots — des dizaines de mots chaque jour. Nous réduisons la langue à son os. La onzième édition ne contiendra aucun mot qui sera devenu obsolète avant 2050." L'objectif n'est pas l'économie linguistique — c'est la destruction de la pensée dissidente. Si le mot "liberté" est supprimé, la pensée de la liberté devient impossible — non par manque d'imagination, mais parce que la pensée abstraite requiert des mots. "La Révolution sera complète quand la langue sera parfaite. Le Novlangue, c'est l'Ingsoc ; l'Ingsoc, c'est le Novlangue."

  "La beauté du crime-pense, c'est que la langue sera un jour incapable de l'exprimer. Chaque concept dont on pourrait avoir besoin sera exprimé par un seul mot, dont le sens sera délimité avec rigueur et dépouillé de tout sens subsidiaire."\
  Orwell -- _1984, Appendice sur le Novlangue_

  $=>$ Langage et pensée : Le Novlangue est l'illustration la plus radicale de la thèse de Sapir-Whorf (hypothèse de relativité linguistique) : la structure de la langue détermine les pensées possibles. Si le Novlangue supprime le mot "rébellion", la pensée de la rébellion devient-elle vraiment impossible ? Orwell répond : oui — pour la masse. La dissidence de Winston tient précisément à ce qu'il garde accès à l'Oldspeak par ses lectures clandestines. À relier à Wittgenstein : "les limites de mon langage sont les limites de mon monde."
]

#cadre[
  *La conversation avec Syme : l'enthousiasme du linguicide*\
  Partie I -- Winston déjeune avec Syme à la cantine du Ministère

  Syme est le personnage le plus fascinant du roman après O'Brien. Il est brillant, cultivé, enthousiaste — et il travaille à la destruction délibérée du langage avec une jubilation sincère. Il explique à Winston que l'objectif final du Novlangue n'est pas de fournir un moyen de communication plus commode, mais de rendre le crime-pense "littéralement impossible, parce qu'il n'y aura pas de mots pour l'exprimer." Ce qui est saisissant, c'est que Syme comprend parfaitement ce qu'il fait et l'approuve. Mais Winston comprend, en l'écoutant, que Syme sera "vaporisé" — non parce qu'il est dissident, mais parce qu'il est trop intelligent : il comprend trop bien le Novlangue pour en être entièrement la victime. Et effectivement, Syme disparaît quelques chapitres plus tard. La lucidité est elle-même dangereuse dans un régime dont la survie dépend de l'opacité.

  $=>$ L'épisode de Syme illustre le paradoxe du régime totalitaire face au langage : il a besoin de gens assez intelligents pour construire le Novlangue, mais ces mêmes gens sont trop intelligents pour être entièrement contrôlés par lui. C'est une version du problème que pose Platon avec les philosophes-rois. À relier à Foucault : le discours crée ses propres résistances, même involontaires.
]

== La langue comme construction du réel

#cadre[
  *Les slogans du Parti : la langue qui inverse le sens*\
  Omniprésents dans tout le roman -- Inscrit sur les murs, scandés lors des Deux Minutes de Haine

  "La guerre c'est la paix. La liberté c'est l'esclavage. L'ignorance c'est la force." Ces trois slogans du Parti sont le cœur de la manipulation linguistique d'Océania. Ils ne sont pas de simples mensonges — ils sont des contradictions assumées et institutionnalisées. Leur fonction n'est pas de convaincre par la logique, mais de court-circuiter la logique elle-même. Répétés assez souvent, ils s'installent dans la conscience non comme des vérités argumentées mais comme des évidences non questionnées. C'est ce que Orwell appelle le "doublepense" : la capacité d'accepter simultanément deux affirmations contradictoires comme vraies toutes les deux. La langue ici ne décrit plus le réel — elle le remplace. La guerre est redéfinie comme paix non par un argument mais par un décret linguistique.

  $=>$ Langage et réalité : Les slogans illustrent que le langage peut ne pas décrire la réalité mais la construire — ou plutôt la détruire, en rendant les distinctions conceptuelles impraticables. À relier à Austin (actes de langage performatifs — les slogans ne décrivent pas, ils instituent) et à Saussure (le sens est produit par les différences — supprimer la différence guerre/paix, c'est supprimer les deux concepts). Le langage ici est l'arme principale du pouvoir, non la force physique.
]

#cadre[
  Le journal de Winston : résister par l'écriture\
  Partie I -- Winston commence à tenir un journal clandestin

  L'acte de résistance inaugural de Winston est un acte linguistique : il commence à écrire dans un journal. "À Big Brother" — il ne sait même pas à qui il écrit. Mais il écrit. L'écriture est ici la forme élémentaire de la résistance parce qu'elle suppose un sujet qui s'adresse à un autre, qui maintient une distinction entre vrai et faux, qui use du langage de façon réflexive. Le journal suppose que les mots ont un sens stable, indépendant de ce que le Parti décrète — que "2+2=4" même si le Parti dit "5". Winston écrit cette phrase dans son journal comme une affirmation fondamentale : l'existence d'une réalité objective que le langage peut dire. C'est son cogito — je dis la vérité, donc je pense librement. Et c'est précisément ce que le Parti veut détruire : non le corps de Winston, mais sa capacité à maintenir cette distinction.

  $=>$ Langage et liberté : Le journal de Winston illustre que le langage authentique — celui qui distingue vrai et faux, qui s'adresse à un autre, qui maintient la mémoire — est constitutif de la liberté. À relier à Benveniste (le "je" de l'énonciation comme acte de subjectivité) et à Heidegger (le langage authentique contre le "Gerede" — le bavardage institutionnel). Le journal est la forme minimale du langage comme résistance.
]

== La réécriture du passé : le langage contre la mémoire

#cadre[
  *Le Ministère de la Vérité : réécrire les archives pour réécrire le réel*\
  Le travail quotidien de Winston

  Ce qui n'a pas été assez souligné dans l'analyse précédente est la dimension proprement linguistique du travail de Winston. Il ne falsifie pas seulement des faits — il réécrit des textes. Chaque article de journal qui contredit la ligne actuelle du Parti est reformulé, rephrasé, mis en conformité. Ce n'est pas une simple manipulation des données — c'est une manipulation du langage lui-même. En changeant les mots, on change les faits ; en changeant les faits, on change la réalité ; en changeant la réalité, on change le passé. "Celui qui contrôle le passé contrôle l'avenir." Le passé n'existe que dans les documents — et les documents sont du langage. Si le langage est sous contrôle total, la réalité l'est aussi. C'est la thèse de Saussure radicalisée politiquement : le langage ne reflète pas la réalité, il la produit — et si l'on contrôle le langage, on contrôle la réalité.

  $=>$ Le Miniver illustre que la vérité n'est pas indépendante du langage — elle est produite par des pratiques langagières. C'est Foucault avant Foucault : le "régime de vérité" d'Océania est un régime linguistique. À relier aussi à Nietzsche (la vérité comme convention, comme construction — "qu'est-ce que la vérité ? une armée mobile de métaphores") pour montrer que le danger décrit par Orwell prolonge des intuitions philosophiques profondes.
]

= Exemple : _Phèdre_ ; La réthorique, entre manipulation et vérité

== Le projet philosopjique

#cadre[
  Le Phèdre est l'un des dialogues les plus complexes de Platon, souvent considéré comme son chef-d'œuvre littéraire. La scène se déroule hors des murs d'Athènes, au bord de l'Ilissos, sous un platane ; Socrate et le jeune Phèdre, amateur de discours, vont lire et commenter ensemble un texte du sophiste Lysias. Ce texte défend une thèse provocante : il vaut mieux accorder ses faveurs à celui qui n'est pas amoureux qu'à celui qui l'est. Ce qui intéresse Platon n'est pas vraiment cette thèse elle-même, mais la manière dont elle est défendue. Lysias use de tous les ressorts de la rhétorique (antithèses, figures de style, répétitions) sans jamais définir ce dont il parle. Socrate, en réponse, propose deux discours successifs : d'abord un discours plus convaincant sur le même sujet, puis un discours de "palmodie" qui rétracte le précédent et loue la folie amoureuse comme une forme de divination.

  Le dialogue bascule alors vers une réflexion méthodique : qu'est-ce que bien parler ? Qu'est-ce que la rhétorique ? Peut-on enseigner l'art de convaincre sans connaître le vrai ? Platon oppose deux conceptions du langage. La première, celle des sophistes (représentés par Lysias), voit dans la parole un instrument de persuasion indépendant de la vérité ; la seconde, celle du philosophe (Socrate), soutient que toute parole digne de ce nom doit s'enraciner dans une connaissance des réalités (définition des termes, connaissance de l'âme, visée de la justice).

  $=>$ Le Phèdre est fondamental pour le thème du langage pour trois raisons. D'abord, il pose la question de l'autonomie de la rhétorique : le langage peut-il être efficace sans être vrai ? Ensuite, il propose une réflexion sur la nature du discours vivant (la parole échangée) par opposition au discours écrit (qui ne peut pas répondre aux questions). Enfin, il lie le langage à une psychologie (la connaissance de l'âme) et à une éthique (parler, c'est conduire l'autre, soit vers le bien, soit vers le mal). Ces trois dimensions (vérité, présence, éthique) font du Phèdre une pièce maîtresse pour toute réflexion philosophique sur le langage, et un contrepoint précieux à Orwell (le langage comme pouvoir) et à Montaigne (le langage comme exploration de soi).
]

== La réthorique sophistique : le langage comme arme de persuasion massive

#cadre[
  *La réthorique : l'art de persuader indépendamment du vrai*

  Dans le Phèdre, Platon met en scène un dialogue entre Socrate et Phèdre, un amateur de discours. Le texte commence par la lecture d'un discours du sophiste Lysias, qui défend une thèse provocante : il vaut mieux accorder ses faveurs à celui qui n'est pas amoureux qu'à celui qui l'est. Ce qui intéresse Platon n'est pas vraiment la thèse elle-même — c'est la manière dont elle est défendue. Lysias use de tous les ressorts de la rhétorique : il organise son discours en antithèses, il joue sur les émotions, il répète ses arguments sous des formes variées. Mais son discours est vide : il ne cherche pas à établir la vérité, seulement à convaincre. C'est exactement ce que Platon reproche aux sophistes — ces professeurs itinérants qui enseignaient l'art de persuader contre paiement, sans se soucier du vrai ou du juste.

  "Ce n'est pas pour dire la vérité qu'il a écrit ce discours, mais pour persuader le public."\
  Socrate -- Commentant le discours de Lysias dans le _Phèdre_

  $=>$ Langage et vérité : Le discours de Lysias illustre la possibilité d'un usage du langage détaché de la vérité — ce que Platon appelle la "rhétorique" au sens péjoratif. À relier à Orwell (le Parti use aussi du langage pour faire croire le faux) et à Foucault (le langage comme instrument de pouvoir). La question que pose Platon est toujours la nôtre : un discours peut-il être beau et convaincant sans être vrai ?
]

== La critique socratique : le langage doit être au service de la vérité

#cadre[
  *La réponse de Socrate : un discours vrai contre un discourd vide*

  Après avoir écouté le discours de Lysias, Socrate propose de faire mieux : non pas un discours plus convaincant, mais un discours plus vrai. Il reprend le même sujet (faut-il accorder ses faveurs à l'amoureux ou au non-amoureux ?) mais en partant d'une définition : qu'est-ce que l'amour ? Socrate montre que tout discours digne de ce nom doit commencer par définir son objet — sinon, on parle sans savoir de quoi on parle. Lysias n'a pas défini l'amour, il est donc parti de nulle part et n'est allé nulle part. Socrate, lui, définit l'amour comme une forme de folie — mais une folie qui peut être divine, comme la folie du poète ou du prophète. Son discours n'est pas plus "efficace" que celui de Lysias (il ne convainc peut-être même pas Phèdre), mais il est vrai — ou du moins il vise la vérité.

  "Il faut d'abord savoir de quoi on parle. Sans définition, on ne fait que jouer avec les mots."

  $=>$ L'épisode de la double réponse (Lysias puis Socrate) illustre la différence entre un usage vide du langage (la rhétorique sophistique) et un usage véridique (la dialectique philosophique). À relier à Austin (les performatifs — le discours de Socrate ne "fait" pas la même chose que celui de Lysias) et à Merleau-Ponty (la "parole parlante" de Socrate contre la "parole parlée" du sophiste). La langue peut mentir — mais elle peut aussi dire le vrai.
]

#pagebreak()

== La métaphore du char : le langage comme accès à l'âme

#cadre[
  *Le mythe du char ailé -- l'âme, les chevaux et le cocher*

  Socrate, dans la seconde partie du dialogue, propose un célèbre mythe : l'âme est comparée à un char tiré par deux chevaux — l'un bon, docile, qui tire vers le haut ; l'autre mauvais, rétif, qui tire vers le bas. Le cocher (la raison) doit les conduire. Ce mythe n'est pas une digression — c'est le cœur de la réflexion de Platon sur le langage. Pourquoi ? Parce que parler à quelqu'un, c'est s'adresser à son âme. Et si l'on ne connaît pas la structure de l'âme (ses deux chevaux, son cocher), on ne peut pas vraiment parler à quelqu'un. Un bon discours, selon Platon, doit être comme un médecin qui connaît le corps qu'il soigne — il doit connaître l'âme qu'il veut convaincre. C'est ce que Platon appelle la "psychagogie" : l'art de conduire les âmes par la parole.

  "Pour bien parler, il faut connaître la nature de l'âme à qui l'on s'adresse."

  $=>$ Langage et communication : Le mythe du char illustre que le langage n'est jamais neutre — il s'adresse toujours à quelqu'un. Parler, c'est chercher à conduire l'autre, soit vers le vrai (la philosophie), soit vers le faux (la sophistique). À relier à Benveniste (le "tu" de l'énonciation — tout discours suppose un destinataire) et à Austin (la dimension perlocutoire du langage — l'effet produit sur l'interlocuteur). Platon est le premier à penser le langage comme relation, pas seulement comme système.
]

== La réthorique véritable : le langage comme art royal

#cadre[
  *La vraie rhétorique -- unir la persuasion et la vérité*

  Platon ne rejette pas la rhétorique en bloc. Ce qu'il rejette, c'est la mauvaise rhétorique — celle des sophistes qui enseignent à persuader sans savoir. Mais il existe une bonne rhétorique : celle du philosophe. Le philosophe sait ce qui est vrai, et il sait s'adresser à l'âme de l'autre pour le conduire vers cette vérité. Cette bonne rhétorique est un art royal — elle n'est pas une technique parmi d'autres, elle est ce qui donne leur sens à toutes les autres techniques. Un général qui ne sait pas convaincre ses soldats n'est pas un bon général ; un médecin qui ne sait pas persuader son malade de se soigner n'est pas un bon médecin. La parole vraie est donc constitutive de tout art véritable.

  "Le vrai rhéteur doit être juste et connaître la justice."

  $=>$ La "bonne rhétorique" platonicienne est une anticipation de ce que Merleau-Ponty appellera la "parole parlante" — une parole qui ne répète pas des clichés (la parole parlée des sophistes) mais qui crée du sens en s'enracinant dans le vrai. À relier aussi à Austin : le discours du philosophe n'est pas seulement constatif (il dit le vrai), il est aussi performatif (il transforme l'auditeur en le conduisant vers le vrai). Platon invente l'idée que le langage peut faire du bien s'il est vrai.
]

== La question des discours écrit : le langage sans présence

#cadre[
  *Le mythe de Theuth -- l'écriture n'est qu'un "souvenir apparent"*

  À la fin du Phèdre, Socrate raconte un mythe égyptien. Le dieu Theuth invente l'écriture et la présente au roi Thamous comme un "remède pour la mémoire". Le roi répond : "Tu donnes à tes élèves l'apparence de la sagesse, non la sagesse réelle." L'écriture, dit Platon, a un défaut fondamental : un discours écrit ne peut pas répondre aux questions. Si on l'interroge, il reste toujours silencieux, répétant la même chose indéfiniment. Le discours vivant — celui de la parole échangée entre deux personnes qui se répondent — est supérieur parce qu'il peut s'adapter, préciser, se corriger, répondre aux objections. C'est une critique puissante de l'écriture qui a traversé toute la philosophie.

  "L'écriture, une fois écrite, roule partout, également chez ceux qui s'y connaissent et chez ceux qui n'y connaissent rien."

  $=>$ Langage et communication : Platon pose ici la question de la présence dans le langage. Un discours vivant implique un "je" et un "tu" (Benveniste) ; un discours écrit est un langage sans énonciateur. À relier à Rousseau (qui reprend cette critique dans l'Essai sur l'origine des langues) et à Derrida (qui, dans De la grammatologie, retournera cette critique en montrant que l'écriture est originaire — "il n'y a pas de dehors du texte"). La question reste ouverte : l'écriture est-elle une perte ou un gain pour la pensée ?
]

= Exemple : _Les Essais_ de Montaigne : tâtonner pour dire vrai

== Le projet philosophique

#cadre[
  Les Essais de Montaigne paraissent pour la première fois en 1580, puis dans des éditions augmentées jusqu'à sa mort en 1592. L'ouvrage est unique en son genre : ni traité philosophique, ni autobiographie, ni recueil d'anecdotes, mais un mélange instable de tout cela. Montaigne y annonce d'emblée son projet dans l'"Au lecteur" : "C'est ici un livre de bonne foi, lecteur." Et plus loin : "Je suis moi-même la matière de mon livre." Il ne prétend pas enseigner une doctrine, ni démontrer des vérités universelles ; il cherche simplement à se peindre, à se raconter, à s'explorer. Mais ce projet apparemment modeste se heurte à une difficulté majeure : le moi qu'il veut peindre change sans cesse. Il écrit au livre III, chapitre 2 : "Je ne peins pas l'être. Je peins le passage." Comment une langue qui fige ce qu'elle nomme peut-elle rendre compte de ce qui ne cesse de fuir ?

  Cette difficulté n'est pas seulement un problème personnel ; elle est au cœur de toute tentative pour dire l'expérience vécue. Montaigne refuse les langues savantes de son temps (la scolastique médiévale, la rhétorique des doctes) qu'il juge déconnectées du réel. Il leur préfère la langue ordinaire, vivante, celle qu'on parle "au premier que je rencontre". La forme même de l'essai (du latin exagium, la pesée, l'épreuve) reflète cette conception du langage : non pas un instrument de démonstration, mais un outil d'exploration qui se cherche en avançant.

  $=>$ Les Essais apportent au thème du langage un angle irréductible aux autres œuvres. Contre Platon, qui cherche une rhétorique vraie fondée sur la connaissance des Idées, Montaigne montre qu'une parole peut être fidèle sans être exacte, et sincère sans être démonstrative. Contre Orwell, qui montre le langage comme instrument de pouvoir et de manipulation, Montaigne montre le langage comme instrument d'exploration intime et de résistance à la doxa. Trois apports majeurs se dégagent.

  D'abord, une critique du langage abstrait : les mots techniques des "doctes" (théologiens, juristes, médecins) ne disent pas plus le réel que la langue ordinaire ; ils disent moins, car ils s'éloignent de l'expérience vécue. Ensuite, une théorie du tâtonnement : la vérité n'est pas un contenu qu'on possède, mais une direction qu'on cherche ; le langage doit pouvoir se reprendre, se contredire, digresser, car c'est ainsi que la pensée avance réellement. Enfin, une exploration des limites du langage : l'amitié (celle de La Boétie), l'expérience intime, le moi fluide – tout cela ne se dit pas entièrement. L'indicible n'est pas chez Montaigne un mystère métaphysique, mais une donnée existentielle ; et le langage peut montrer ses propres limites sans cesser d'être fidèle.
]

#pagebreak()

== La critique du langage abstrait : les mots vides de doctes

#cadre[
  *La langue des "doctes" : un langage qui éloigne du réel*

  Montaigne ouvre les Essais par une déclaration qui engage d'emblée une conception du langage : "C'est ici un livre de bonne foi, lecteur." La "bonne foi" est d'abord une affaire de langage. Montaigne refuse le langage des savants de son temps (juristes, théologiens, médecins) qui parlent une langue technique, fermée, pleine de distinctions latines et de syllogismes. Ce langage, dit Montaigne, ne dit rien du réel. Il écrit au livre III, chapitre 13 : "Nous ne faisons que nous entredire sur des mots." La scolastique médiévale, avec ses "quiddités" et ses "ecceités", est sa cible favorite. Il raille ces "subtilitez qui nous ont rendu le langage de la langue française plus épineux et plus difficile". Ces mots ultra-spécialisés sont des "crocheteurs de puces" : des outilles ridicules pour des questions fausses.

  À l'inverse, Montaigne revendique une langue simple et directe. Il écrit dans l'"Au lecteur" : "Je parle au papier comme je parle au premier que je rencontre." Ce n'est pas une coquetterie de style, mais une thèse philosophique : la langue ordinaire, celle de la conversation, est plus proche du réel que la langue savante, qui ne fait que s'embarrasser de distinctions inutiles.

 $=>$ Langage et réalité. Montaigne est le premier philosophe à poser que le langage abstrait peut être un obstacle au réel, non un accès. À relier à Wittgenstein dans les Recherches philosophiques : "La signification d'un mot, c'est son usage dans le langage." Ce n'est pas la définition technique qui importe, mais la manière dont on emploie le mot dans la vie.
]

== La langue des Essais : une langue de tâtonnement

#cadre[
  *L'essai comme forme : un langage qui cherche, qui ne possède pas*

  Le mot "essai" vient du latin _exagium_ (la pesée, l'épreuve). Essayer, c'est tenter, mettre à l'épreuve, sans certitude de réussite. La forme de l'essai reflète une conception précise du langage : le langage ne possède pas d'avance la vérité, il la cherche. Contrairement au traité philosophique (Descartes, Spinoza, Kant) qui procède par démonstrations et conclusions assurées, l'essai procède par approximations, digressions, repentirs et reprises. Montaigne ajoute des chapitres, corrige les précédents, ajoute des "je" et des "peut-être". Au livre III, chapitre 2, il écrit : "Je ne puis assurer mon objet en un état stable et paisible ; il va comme mon naturel l'entraîne, chancelant et chancelant." Et ailleurs : "Je ne décris pas l'être, je décris le passage." Son langage n'est pas celui de celui qui sait ; c'est celui de celui qui cherche à savoir ce qu'il pense en l'écrivant. Il écrit au livre II, chapitre 6 : "Je ne puis tenir mon sujet ferme ; il va titubant et chancelant d'une ivresse naturelle." Le langage n'est donc pas un simple véhicule pour des pensées préexistantes ; il est le lieu même où la pensée se découvre.

  "Je ne peins pas l'être. Je peins le passage."
  Montaigne -- _Essais, III, 2_

  $=>$ Langage et pensée. Montaigne incarne la thèse de Merleau-Ponty (la parole crée la pensée) avant la lettre. Il ne pense pas d'abord, puis écrit ; il pense dans et par l'écriture. Son langage est une parole parlante au sens fort : une parole qui ne répète pas des idées toutes faites, mais qui en forge de nouvelles en tâtonnant.
]

== Le moi fluide : un objet que le langage ne peut pas épuiser

*"Je suis moi-même la matière de mon livre"*

#cadre[

  L'annonce du projet est aussi sa difficulté. Montaigne veut se peindre, décrire son "moi" ; mais quel moi ? Un moi qui change à chaque instant, en fonction de l'âge, de l'humeur, de la santé, des circonstances. Il écrit au livre II, chapitre 12 ("Apologie de Raimond Sebond") : "Nous sommes tous des pièces rapportées et d'une contexture si informe et diverse que chaque pièce, chaque moment fait son jeu." Ailleurs, au livre III, chapitre 2 : "Je n'ai pas plus fait mon livre que mon livre m'a fait." Le moi n'est jamais identique à lui-même, et Montaigne en tire une conséquence sur le langage. Comment une langue qui avance mot après mot, phrase après phrase, peut-elle saisir ce qui passe sans cesse ? Chaque mot fige ce qui est fluide ; chaque description est déjà fausse au moment où elle est écrite.

  Montaigne refuse pourtant de renoncer. Il écrit au livre III, chapitre 9 : "Je m'égare, mais c'est plutôt par licence que par méprise." Le désordre de son langage n'est pas un défaut ; il est la marque de sa fidélité à un moi qui n'est jamais stable. À celui qui lui reprocherait de se contredire, il répond au livre II, chapitre 12 : "Si mon âme pouvait prendre pied, je ne m'essaierais pas, je me résoudrais ; mais elle est toujours en apprentissage et en épreuve."

  "Je n'enseigne point, je raconte."\
  Montaigne -- _Essais, I, 1_

  $=>$ Langage et identité. Montaigne pose la question que Benveniste formulera ainsi dans Problèmes de linguistique générale : "C'est dans et par le langage que l'homme se constitue comme sujet." Chez Montaigne, le "je" des Essais n'est pas le même d'une page à l'autre ; c'est justement ce que le livre veut montrer. Le langage ne peut pas "capturer" le moi ; il ne peut que le pointer, l'évoquer, le suggérer.
]

== Le langage de la conversation : la parole vivante contre le livre

#cadre[
  *L'amitié avec La Boétie : une parole sans artifice*

  L'un des chapitres les plus célèbres des Essais est "De l'amitié" (I, 28). Montaigne y raconte sa rencontre avec Étienne de La Boétie, son ami "parfait". Ce qui frappe dans leur relation, c'est la qualité du langage : ils n'ont besoin ni de rhétorique, ni de précautions, ni de calculs. Montaigne écrit : "Parce que c'était lui, parce que c'était moi." Leur parole est immédiate, transparente, sans artifice. Et il ajoute cette phrase qui touche à la limite du langage : "Si on me presse de dire pourquoi je l'aimais, je sens que cela ne se peut exprimer."

  L'aveu est remarquable : l'amitié parfaite, la relation la plus vraie que Montaigne ait connue, ne se laisse pas dire. Non par hasard, mais par nature. Il y a des choses que le langage ne peut pas exprimer, non parce qu'elles sont mystérieuses, mais parce qu'elles sont trop immédiates, trop évidentes. La formule "parce que c'était lui, parce que c'était moi" est à la fois une explication et un aveu d'échec de l'explication.

  "Si on me presse de dire pourquoi je l'aimais, je sens que cela ne se peut exprimer."\
  Montaigne -- _Essais, I, 28, "De l'amitié"_

  $=>$ Langage et communication. Montaigne touche ici à la même limite que Wittgenstein dans le Tractatus : "Ce dont on ne peut parler, il faut le passer sous silence." Mais là où Wittgenstein en conclut à un silence méthodique, Montaigne continue à parler, sachant qu'il ne dira pas tout. L'indicible n'est pas une forteresse à abattre, mais une réalité à respecter.
]

== La digression et le désordre : un autre ordre du langage

#cadre[
  *Les chapitres qui dévient : le langage suit la pensée, pas le plan*

  Un essai de Montaigne n'a pas de plan. Il part d'un sujet (par exemple : "De l'institution des enfants") puis il dévie, s'égare, revient, raconte une anecdote, cite un ancien, fait une remarque personnelle. Montaigne est pleinement conscient de ce désordre, et il l'assume. Au livre III, chapitre 9, il écrit : "Je m'égare, mais c'est plutôt par licence que par méprise." Et au livre III, chapitre 2 : "La chose la plus contraire à mon humeur, ce serait de m'astreindre à une police réglée."

  Ce désordre est voulu ; il correspond à ce que Montaigne appelle "la fantaisie", c'est-à-dire le mouvement libre de l'esprit qui pense. Imposer un plan, c'est imposer une logique étrangère au réel du penser. Le langage doit suivre la pensée comme elle va, avec ses sauts, ses boucles, ses retours. Montaigne écrit encore au livre I, chapitre 50 : "Je ne suis plus capable d'un grand effort ; je ne suis plus capable d'une longue suite d'arguments." C'est pourquoi il préfère la brièveté et la digression : "Je ne dis les autres que pour d'autant plus me dire."

  "Je m'égare, mais c'est plutôt par licence que par méprise."\
  Montaigne -- _Essais III, 9_

  $=>$ Le désordre des Essais est une thèse philosophique sur le langage : l'ordre logique n'est pas le seul ordre possible. Il existe un ordre vivant, celui de l'esprit en train de penser. À relier à Wittgenstein et à son concept de "jeux de langage" : le langage philosophique n'est qu'un jeu parmi d'autres, et il n'est pas forcément le plus pertinent pour dire l'expérience.
]

#pagebreak()

== Le latin, le français, les citations : un langage polyphonique

#cadre[
  *Les citations grecques et latines : la voix des Anciens dans la sienne*

  Montaigne parsème ses textes de citations en latin (parfois en grec). Il ne le fait pas pour faire savant ; il le fait parce que ces citations sont sa propre pensée. Il écrit au livre II, chapitre 10 : "Je ne dis les autres que pour d'autant plus me dire." Il ne cite pas Virgile ou Plutarque pour appuyer son propos par une autorité extérieure ; il les cite parce qu'ils parlent en lui. Son langage n'est pas un langage solitaire ; il est traversé par toutes les lectures qui ont formé son esprit.

  Ce choix a une conséquence philosophique majeure : il n'y a pas de parole "pure" ou "originaire". Tout langage est habité par d'autres langages. Montaigne ne le cache pas ; il en fait au contraire une richesse. Il écrit au livre III, chapitre 12 : "Je ne puis pas si bien garantir ma pensée en français qu'en latin." Le latin n'est pas une langue étrangère pour lui ; c'est une langue maternelle seconde, celle des auteurs qu'il a lus dès son enfance. Son "moi" est polyglotte ; son langage est polyphonique.

  "Je ne dis les autres que pour d'autant plus me dire."\
  Montaigne, _Essais, I, 26_

  $=>$ Langage et subjectivité. Montaigne inverse la thèse classique de l'originalité du langage. Le "moi" ne parle pas une langue vierge ; il parle une langue déjà pleine des autres. À relier à Bakhtine (la "polyphonie" du roman) et à Kristeva (l'"intertextualité"). Le "je" des Essais est un "je" peuplé, et c'est ainsi qu'il accède à sa singularité.
]

