#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*Fiche 6 : Inconscient*
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

== Freud

#cadre[
  *Sigmund Freud (1856-1939)* est le fondateur de la psychanalyse et le penseur qui a imposé la notion d'inconscient au centre de la réflexion sur le sujet humain. Sa contribution est double : théorique et clinique. Sur le plan théorique, il développe deux "topiques" successives. La première, exposée dans _L'Interprétation des rêves_, divise le psychisme en trois systèmes : l'inconscient (contenu refoulé, inaccessible directement), le préconscient (accessible par un effort d'attention) et le conscient. La seconde topique, développée dans _Le Moi et le Ça_, remplace ce modèle par trois instances : le Ça (réservoir des pulsions et des désirs refoulés, entièrement inconscient, régi par le principe de plaisir), le Moi (instance de médiation entre le Ça, la réalité extérieure et le Surmoi, partiellement conscient) et le Surmoi (instance morale intériorisée, héritière des interdits parentaux, en grande partie inconsciente). Le mécanisme central est le refoulement : certaines représentations, incompatibles avec les exigences du Surmoi, sont activement chassées de la conscience — non pas oubliées, mais maintenues sous pression dans l'inconscient. Le refoulé ne disparaît pas : il revient sous forme déguisée dans les rêves, les lapsus, les actes manqués, les symptômes névrotiques. "Là où était le Ça, le Moi doit advenir" — la cure analytique vise à rendre conscient ce qui était inconscient, non pour supprimer l'inconscient (impossible) mais pour élargir la maîtrise du sujet sur ses propres déterminations. Freud inflige ainsi à l'humanité la "troisième blessure narcissique" : après Copernic (la Terre n'est pas au centre) et Darwin (l'homme descend de l'animal), Freud montre que le moi n'est pas maître en sa propre maison.

  "Le moi n'est pas maître en sa propre maison"\
  Freud -- _Introduction à la psychanalyse_

  $=>$  Freud est la référence de l'inconscient. À confronter systématiquement à Sartre (qui refuse l'inconscient) et à Descartes (dont il renverse la transparence de la conscience).
]

== Jung

#cadre[
  *Carl Gustav Jung (1845-1961)* fut l'un des plus proches collaborateurs de Freud avant de s'en séparer en 1912 sur une question fondamentale : la nature de l'inconscient. Là où Freud conçoit l'inconscient comme strictement individuel — formé dans l'histoire personnelle du sujet par le refoulement de désirs sexuels et agressifs — Jung postule l'existence d'un inconscient collectif, couche plus profonde de la psyché partagée par toute l'humanité. Cet inconscient collectif ne contient pas des souvenirs personnels refoulés, mais des archétypes — des formes ou des schèmes psychiques universels, héritées de l'évolution et de l'histoire de l'espèce : la Grande Mère, le Héros, l'Ombre (la part sombre de la personnalité), l'Anima (principe féminin chez l'homme), l'Animus (principe masculin chez la femme), le Vieux Sage, et bien d'autres. Ces archétypes se manifestent universellement dans les mythes, les religions, les contes populaires et les rêves de toutes les cultures — ce qui explique pour Jung les ressemblances frappantes entre des mythologies n'ayant jamais eu contact. La psychologie analytique jungienne vise non pas à supprimer l'inconscient mais à réaliser l'individuation — le processus par lequel le sujet intègre progressivement les contenus de son inconscient (notamment l'Ombre) dans sa personnalité consciente, parvenant ainsi à une totalité psychique. Jung ouvre ainsi l'inconscient à une dimension transpersonnelle et symbolique que Freud refusait : les mythes et les religions ne sont pas seulement des projections de désirs infantiles, mais des expressions de structures psychiques profondes et universelles.

  "L'inconscient est le seul grand danger qui existe pour l'homme — et les autres hommes ne sont dangereux que dans la mesure où ils sont eux-mêmes inconscients."\
  Jung -- _L'Homme à la découverte de son âme_

  $=>$ Jung est la référence pour l'inconscient collectif et les archétypes. Sa notion d'individuation permet de penser l'inconscient non comme un obstacle mais comme une ressource à intégrer.
]

== Nietzsche

#cadre[
  *Nietzsche (1844-1900)* est le grand précurseur philosophique de Freud, il développe avant lui l'idée que ce qui agit réellement en nous n'est pas la conscience rationnelle mais des forces souterraines que la conscience tente de masquer. Dans _Par-delà bien et mal_ et _La Généalogie de la morale_, il soutient que nos pensées conscientes, nos jugements moraux, nos convictions philosophiques ne sont que la surface — en dessous agissent les instincts, la volonté de puissance, le ressentiment, qui déterminent ces pensées à notre insu. "Une pensée vient quand 'elle' veut, et non quand 'je' veux" : la conscience n'est pas l'auteur de ses propres pensées, elle en est le théâtre passif. La conscience, dit Nietzsche dans _Le Gai Savoir_, est l'organe le plus récent et le moins développé de l'homme — elle est superficielle, elle ne voit que la face émergée de la vie psychique. Mais l'apport le plus original de Nietzsche par rapport à Freud est sa conception de la mauvaise conscience : ce n'est pas une voix morale naturelle, c'est le produit d'une répression historique des instincts agressifs que la vie sociale a imposée à l'homme primitif. Quand les instincts de domination ne peuvent plus s'exercer vers l'extérieur, ils se retournent vers l'intérieur — produisant la culpabilité, l'auto-punition, l'idéal ascétique. Ce que nous appelons "conscience morale" est en réalité de la cruauté retournée contre soi-même. Cette généalogie de la morale comme produit d'un refoulement collectif préfigure directement la notion freudienne de Surmoi comme intériorisation des interdits parentaux et sociaux.

  "Une pensée vient quand 'elle' veut, et non quand 'je' veux."\
  Nietzsche -- _Par-delà bien et mal, §17_

  $=>$ Nietzsche est le précurseur philosophique de Freud sur l'inconscient — mais par une voie différente : là où Freud pense l'inconscient comme mémoire refoulée, Nietzsche le pense comme énergie vitale réprimée.
]

== Sartre

#cadre[
  *Sartre (1905-1980)* est le grand adversaire philosophique de Freud sur la question de l'inconscient. Dans _L'Être et le Néant_, il consacre de longs développements à réfuter la notion d'inconscient, qu'il juge philosophiquement contradictoire. Son argument principal est celui de la conscience du refoulement : pour que le moi refoule une représentation, il faut qu'il la reconnaisse comme désagréable ou inacceptable — et donc qu'il en ait conscience. Mais s'il en a conscience, comment peut-il "ne pas savoir" qu'il la refoule ? Le mécanisme du refoulement suppose une conscience qui sait et qui ne sait pas simultanément — ce qui est contradictoire. La thèse freudienne implique donc une "coupure" dans la conscience qui est, pour Sartre, une impossibilité ontologique : la conscience est toujours transparente à elle-même, même quand elle se ment. Sartre ne nie pas les phénomènes que Freud décrit — il les réinterprète autrement. Ce que Freud appelle inconscient, Sartre l'appelle mauvaise foi : une tromperie de soi par soi-même, consciente. Le sujet sait ce qu'il refuse de savoir : il se ment à lui-même en pleine connaissance de cause, pour fuir le vertige de sa liberté. Le garçon de café qui "joue à être garçon de café", l'homme qui dit "je n'y peux rien, c'est ma nature" — ils savent qu'ils fuient, mais ils choisissent de ne pas regarder cette fuite en face. La mauvaise foi n'exige pas un inconscient : elle exige une conscience capable de se mentir à elle-même. En refusant l'inconscient, Sartre maintient la liberté et la responsabilité absolues du sujet — personne ne peut se décharger de ses actes sur "l'inconscient".

  "La mauvaise foi ne vient pas de l'inconscient mais d'une conscience qui fuit ce qu'elle sait."\
  Sartre -- _L'Être et le Néant_

  $=>$ Sartre est la contre-thèse à Freud sur l'inconscient. La confrontation Freud/Sartre pose la question de savoir si l'ignorance de soi est subie (inconscient) ou choisie (mauvaise foi) — ce qui a des conséquences directes sur la liberté et la responsabilité.
]

== Lacan

#cadre[
  *Jacques Lacan (1901-1981)* est le grand "relecteur" de Freud, qui propose de revenir à Freud en l'éclairant par la linguistique structurale de Saussure. Sa thèse centrale, formulée dans les _Écrits et ses Séminaires_, est d'une formulation lapidaire mais d'une portée immense : "l'inconscient est structuré comme un langage." Ce n'est pas une métaphore — Lacan soutient que l'inconscient fonctionne selon les deux mécanismes fondamentaux du langage : la métaphore (substitution d'un signifiant à un autre — ce que Freud appelait condensation) et la métonymie (déplacement d'un signifiant à un autre par contiguïté — ce que Freud appelait déplacement). Le sujet est fondamentalement divisé — il ne coïncide jamais avec lui-même — parce qu'il est constitué par le langage, qui lui préexiste et le traverse. "Je est un autre" (Rimbaud), dit Lacan : le moi est une construction imaginaire, non le centre du sujet. Le sujet de l'inconscient est le sujet du signifiant — ce qui parle en moi sans que je le sache ni le contrôle. La cure analytique est alors une pratique de la parole : en parlant librement (association libre), le sujet laisse l'inconscient se dire à travers les glissements, les équivoques, les lapsus du langage.

  "L'inconscient est structuré comme un langage."\
  Lacan -- _Écrits_

  $=>$ Lacan est difficile à citer directement sans risquer l'inexactitude, mais sa thèse centrale (inconscient structuré comme un langage) est très intéressante. Elle permet de relier l'inconscient au langage, à la littérature et à l'art — et de montrer que l'inconscient ne se manifeste pas seulement dans les rêves mais dans toute production symbolique.
]

== Spinoza

#cadre[
  *Spinoza (1632-1677)* n'utilise pas le terme "inconscient" — il précède Freud de deux siècles — mais il développe dans l'_Éthique_ une conception des affects et de leur méconnaissance qui anticipe remarquablement la psychanalyse. Pour Spinoza, les hommes se croient libres parce qu'ils sont conscients de leurs désirs mais ignorent les causes qui les déterminent — "ils sont conscients de leurs appétits et ignorants des causes qui les déterminent." Cette ignorance des causes déterminantes est pour Spinoza la servitude : l'homme croit choisir librement alors qu'il est mû par des forces qu'il ne comprend pas. La liberté spinoziste n'est pas l'absence de détermination — c'est la connaissance adéquate des causes qui nous déterminent. Connaître la nécessité qui me détermine, c'est cesser d'en être passivement le jouet et commencer à agir de façon active. Ce programme philosophique — passer de la passivité à l'activité par la connaissance — est structurellement analogue à celui de la cure freudienne : "là où était le Ça, le Moi doit advenir." Dans les deux cas, la connaissance de ses propres déterminismes est le chemin vers une forme de liberté possible.

  "Les hommes se croient libres parce qu'ils sont conscients de leurs volitions et de leur appétit, et ne pensent pas, même en rêve, aux causes qui les disposent à désirer et à vouloir."\
  Spinoza -- _Éthique, scolie de la prop. 35_

  $=>$ Spinoza est le précurseur philosophique de la thèse que l'ignorance de ses propres déterminations est la servitude — et que la connaissance de ces déterminations est une forme de liberté. Lien direct avec Freud : la cure analytique est une philosophie spinoziste appliquée. À mobiliser pour les dissertations sur inconscient et liberté.
]

== Merleau-Ponty

#cadre[
  *Merleau-Ponty (1908-1961)* propose une conception de l'inconscient radicalement différente de celle de Freud — non pas un inconscient psychique peuplé de désirs refoulés, mais un inconscient corporel : la dimension préréflexive de notre rapport au monde, antérieure à toute conscience thématique. Dans la _Phénoménologie de la perception_, il analyse le schéma corporel — cette connaissance implicite que le corps a de lui-même et du monde, qui lui permet d'agir sans passer par la représentation consciente. Le pianiste qui joue ne pense pas à chaque doigt — son corps "sait" où aller. Le conducteur expérimenté "sent" la largeur de sa voiture sans la mesurer. Ces savoirs incorporés, ces habitudes motrices, ce sont des formes de connaissance qui opèrent en deçà de la conscience — un inconscient non pas refoulé mais simplement non encore thématisé. Merleau-Ponty élargit ainsi la notion d'inconscient au-delà du champ psychanalytique : il ne s'agit pas seulement des désirs cachés, mais de toute la couche pré-personnelle de notre existence incarnée. Le corps est "le sujet de la perception" — il perçoit et agit avant que la conscience réfléchie n'intervienne.

  "Le corps est notre moyen général d'avoir un monde — il y a un savoir dans les mains qui dépasse tout ce que nous en savons consciemment."\
  Merleau-Ponty -- _Phénoménologie de la perception_

  $=>$ Merleau-Ponty offre une troisième voie entre Freud et Sartre sur l'inconscient — ni inconscient refoulé, ni simple mauvaise foi, mais une dimension corporelle et préréflexive irréductible à la conscience. Très utile pour nuancer le débat et montrer qu'il existe des formes d'inconscient non pathologiques et non morales.
]

= Exemple : _Crime et Châtiment_

== Le projet de l'œuvre

#cadre[
  *Un roman sur la défaite de la raison face à la psyché profonde*\
  Contexte général -- Saint-Pétersbourg, 1865

  Rodion Raskolnikov est un étudiant pauvre, brillant et arrogant qui développe une théorie : les hommes se divisent en deux catégories — les hommes ordinaires (soumis à la loi morale) et les hommes extraordinaires (Napoléon, César) qui ont le droit de franchir la loi si leur génie le justifie. Pour se prouver qu'il appartient à la seconde catégorie, il planifie froidement l'assassinat d'une vieille usurière qu'il juge nuisible à la société. Le meurtre est rationnel, calculé, justifié intellectuellement. Et pourtant, dès le moment où il le commet, quelque chose se brise en lui — non pas la théorie, qu'il continue de défendre verbalement, mais lui-même. Le roman est le récit de cette destruction progressive d'un homme par une culpabilité qu'il refuse de reconnaître consciemment et que son inconscient exprime malgré lui sous toutes les formes possibles.

  $=>$ Le dispositif narratif du roman est lui-même une démonstration philosophique : la raison peut construire une théorie cohérente justifiant n'importe quel acte, mais la psyché profonde — l'inconscient — déjoue cette rationalisation et impose sa propre vérité. C'est la réfutation la plus puissante de l'intellectualisme moral : connaître le bien ne suffit pas à le faire, et ne pas reconnaître sa faute ne suffit pas à s'en affranchir.
]

== Lés épisodes clés : l'inconscient à l'œuvre

#cadre[
  *Le rêve du cheval : le refoulé avant le crime*\
  Partie I, chapitre 5 -- La nuit précédant la décision finale de tuer

  La veille du meurtre, Raskolnikov fait un rêve d'une précision clinique freudienne. Il se voit enfant, accompagnant son père dans une rue de campagne. Il assiste à une scène de violence insoutenable : un homme ivre, Mikolka, fait battre à mort une vieille jument incapable de tirer la charrette surchargée. La foule rit. L'enfant Raskolnikov, bouleversé, tente d'intervenir, embrasse la jument mourante sur le museau, puis se réveille en larmes. Ce rêve survient précisément au moment où Raskolnikov hésite encore — une partie de lui refuse le meurtre qu'une autre partie a planifié. Le rêve est la voix de cette partie refusante : l'inconscient exprime sous forme symbolique (la vieille jument = la vieille usurière, l'acte de violence = le meurtre planifié) l'horreur que la conscience diurne tente de rationaliser. Au réveil, Raskolnikov se dit "c'est impossible, je ne peux pas faire ça" — mais il le fait quand même le lendemain. La rationalité diurne l'emporte sur l'inconscient, temporairement.

  "Il rêvait du passé, de son enfance, du même village... Le petit garçon tremblait, criait, se frayait un chemin à travers la foule jusqu'à la jument, passa ses bras autour de sa tête morte et sanglante, et l'embrassa."

  $=>$  Ce rêve est l'exemple le plus parfait du mécanisme freudien du rêve dans la littérature : le contenu latent (le meurtre planifié et son refus moral) s'exprime dans le contenu manifeste (la scène de violence sur la jument) par déplacement et condensation. Dostoïevski écrit en 1866 ce que Freud ne théorisera qu'en 1900 dans L'Interprétation des rêves. Permet de montrer que la littérature peut devancer la psychanalyse dans la compréhension de l'inconscient.
]

#cadre[
  *La fièvre et les comportements compulsifs : le corps trahit*\
  Partie II -- Les jours qui suivent le meurtre

  Immédiatement après le double meurtre (il a tué aussi Lizaveta, la sœur de l'usurière, témoin inattendu), Raskolnikov sombre dans un état fiévreux qui dure plusieurs jours. Il délire, s'évanouit, perd conscience à plusieurs reprises. La fièvre physique est l'expression corporelle de la culpabilité psychique — le corps dit ce que la conscience refuse d'admettre. Plus révélateurs encore sont ses comportements compulsifs : il retourne sur les lieux du crime sans raison apparente, sonne à la porte de l'appartement de la victime comme pour vérifier que le sang est encore là, engage des conversations avec des inconnus sur le meurtre, provoque presque lui-même les soupçons. Ces comportements sont inexplicables du point de vue de la raison consciente — Raskolnikov se met lui-même en danger inutilement. Mais du point de vue de l'inconscient, ils sont parfaitement logiques : c'est la pulsion de mort, le désir inconscient d'être découvert et puni, qui le ramène compulsivement vers le crime.

  $=>$ Ces comportements compulsifs illustrent ce que Freud appellera la "compulsion de répétition" — le sujet reproduit malgré lui les situations traumatiques, comme si l'inconscient cherchait à résoudre ce que la conscience a laissé en suspens. À relier aussi à la notion freudienne de pulsion de mort (Thanatos) : Raskolnikov semble inconsciemment vouloir sa propre punition et destruction.
]

#cadre[
  *Porphyre : la joute intellectuelle comme symptôme*\
  Parties III et IV -- Les entretiens avec le juge d'instruction

  Porphyre Pétrovitch, le juge d'instruction, est l'un des personnages les plus fascinants du roman — et une figure de la psychanalyse avant la lettre. Il ne confronte jamais directement Raskolnikov avec les preuves matérielles (qu'il n'a pas). À la place, il l'enveloppe dans un jeu de questions apparemment philosophiques sur la théorie des "hommes extraordinaires", laisse des silences, revient sur des détails anodins, provoque Raskolnikov à se défendre, à s'expliquer, à en dire trop. Raskolnikov, convaincu de sa supériorité intellectuelle, tombe dans chaque piège — il ne peut pas s'empêcher de parler, de théoriser, de se justifier. Cette incapacité à se taire est le signe que l'inconscient pousse vers l'aveu ce que la conscience cherche à taire. Porphyre dit à Raskolnikov, avec une ironie tranquille, qu'il sait que c'est lui — non pas grâce aux preuves, mais parce qu'il a observé ses symptômes psychiques.

  $=>$ Porphyre incarne la figure de l'analyste avant Freud — celui qui lit les symptômes là où le patient croit présenter un discours rationnel. Les entretiens entre Porphyre et Raskolnikov préfigurent la cure analytique : le juge crée les conditions pour que l'inconscient se manifeste malgré la volonté consciente du sujet. À relier à Lacan : "l'inconscient parle" — et il parle toujours, même (surtout) quand on croit le faire taire.
]

#cadre[
  *Sonia : l'aveu comme résolution du conflit inconscient*\
  Partie V -- Raskolnikov avoue à Sonia

  Le premier aveu de Raskolnikov n'est pas fait à la police, ni à Porphyre — il est fait à Sonia, la jeune prostituée dont la sainteté humble contraste avec l'orgueil théorisant de Raskolnikov. Pourquoi avouer à Sonia ? La raison consciente qu'il donne est floue, insatisfaisante. La raison inconsciente est plus claire : Sonia représente la possibilité d'une absolution, d'un regard qui accueille la faute sans la juger. L'aveu à Sonia est une tentative de soulager la pression de l'inconscient — de mettre des mots sur ce que le corps et les rêves exprimaient depuis des semaines. C'est un moment structurellement analogue à la cure analytique : la parole adressée à un autre comme voie de résolution du conflit intérieur. Après l'aveu, Raskolnikov va se livrer à la police — non par calcul rationnel, mais parce que l'inconscient a enfin trouvé son chemin vers la conscience et impose sa logique jusqu'au bout.

  "Il fallait qu'il aille tout dire à quelqu'un — pas pour se justifier, mais simplement parce que cette chose pesait sur lui comme une pierre et qu'il ne pouvait plus la porter seul."

  $=>$ L'aveu à Sonia illustre la thèse freudienne que "là où était le Ça, le Moi doit advenir" — la résolution du conflit inconscient passe par la mise en mots, par la parole adressée à autrui. À relier aussi à Hegel : la conscience de soi ne se constitue que dans la relation à une autre conscience — Sonia est le miroir dans lequel Raskolnikov peut enfin se voir tel qu'il est.
]

#cadre[
  *L'épilogue : la guérison par la souffrance consciente*\
  Épilogue -- Raskolnikov en Sibérie avec Sonia

  En Sibérie, après avoir purgé une partie de sa peine, Raskolnikov traverse une crise finale — il reste enfermé dans son orgueil, incapable de vraiment reconnaître sa faute. Puis, dans une scène brève mais décisive, quelque chose se brise en lui et il pleure aux pieds de Sonia. C'est le moment où la culpabilité inconsciente devient enfin culpabilité consciente assumée — non plus symptôme, mais reconnaissance. Dostoïevski appelle cela le début de la "résurrection". Du point de vue psychanalytique, c'est le moment de la "perlaboration" — l'inconscient n'est plus refoulé, il est intégré dans la conscience, et peut commencer à être transformé. La guérison de Raskolnikov n'est pas intellectuelle (sa théorie sur les hommes extraordinaires est abandonnée, pas réfutée) — elle est affective et relationnelle. C'est l'amour de Sonia, la relation à autrui, qui rend possible l'intégration de l'inconscient dans la conscience.

  $=>$  *Thème de l'inconscient :* L'épilogue montre que la résolution du conflit inconscient ne passe pas par la raison mais par l'affecte et la relation. À relier à Freud (la cure comme travail sur la relation transférentielle) et à Hegel (la conscience de soi par la reconnaissance d'autrui). *Thème de la conscience :* Le trajet de Raskolnikov est celui d'une conscience qui se reconquiert — de l'aveuglement rationnel à la lucidité affective. *Thème du devoir et de la morale :* La théorie des hommes extraordinaires est la forme la plus élaborée de la mauvaise foi sartrienne — une construction intellectuelle pour nier le devoir moral. Sa chute est la démonstration que le devoir moral ne peut pas être supprimé par la raison, seulement refoulé.
]

= Exemple : _Du côté de chez Swann_

== Le projet philosophique de Proust

#cadre[
  *Un inconscient proustien distinct de l'inconscient freudien*\
  Contexte général

  Proust et Freud sont contemporains — ils écrivent tous deux au tournant du XXe siècle — et tous deux s'intéressent à ce qui échappe à la conscience volontaire. Mais leur conception de l'inconscient est profondément différente. L'inconscient freudien est un inconscient du refoulement : quelque chose a été activement chassé de la conscience parce qu'il était insupportable. L'inconscient proustien est un inconscient de l'oubli organique : des souvenirs, des impressions, des essences n'ont pas été refoulés — ils ont simplement déposé leur sédiment dans des couches profondes de la psyché inaccessibles à la mémoire volontaire. Ce n'est pas la censure du Surmoi qui les tient cachés, c'est la nature même du temps et de la perception. Et contrairement à Freud, qui accède à l'inconscient par la parole et l'interprétation, Proust y accède par la sensation involontaire — un goût, un parfum, une lumière qui court-circuite la mémoire volontaire et restitue d'un coup un monde entier. Ce que Proust appelle "mémoire involontaire" est sa version de l'inconscient — non pathologique, non refoulée, mais tout aussi déterminante pour le sujet que l'inconscient freudien.

  $=>$ Proust permet de montrer qu'il existe des formes d'inconscient qui ne sont pas le produit du refoulement — et donc de nuancer la thèse freudienne. À mobiliser pour toute dissertation sur "peut-on se connaître soi-même ?" ou "qu'est-ce que l'inconscient ?", en montrant que la psychanalyse n'en épuise pas la réalité.
]

== La mémoire involontaire : l'inconscient par la sensation

#cadre[
  *La madeleine : l'inconscient surgit malgré la vonlonté*\
  Combray I -- L'ouverture du roman, la tasse de thé chez la mère du narrateur

  Le narrateur trempe une madeleine dans une tasse de thé. Au moment où le goût atteint son palais, quelque chose d'extraordinaire se produit : un plaisir intense et inexplicable l'envahit, suivi d'une certitude que quelque chose d'essentiel se tient là, à portée, mais encore voilé. Il s'arrête, réessaie, boit une deuxième gorgée — mais l'effet diminue. La vérité qu'il cherche n'est pas dans la tasse, elle est en lui. Il fait alors un effort d'attention intense pour remonter jusqu'à la source de cette impression — et soudain, le voile se lève : c'est Combray, sa ville d'enfance, qui ressuscite entièrement, non pas comme un souvenir abstrait mais comme une réalité vivante, avec ses odeurs, ses couleurs, ses gens, ses matins du dimanche. Ce qui était "dans l'inconscient" n'était pas refoulé — il était simplement inaccessible à la mémoire volontaire. Aucun effort de remémoration consciente n'aurait pu restituer Combray avec cette précision et cette vie. Seule la sensation a pu le faire — en contournant la mémoire volontaire pour atteindre directement la couche profonde où le passé est conservé intégralement.

  "Et tout d'un coup le souvenir m'est apparu. Ce goût, c'était celui du petit morceau de madeleine que le dimanche matin à Combray [...] ma tante Léonie m'offrait après l'avoir trempé dans son infusion de thé ou de tilleul."

  $=>$ La madeleine illustre un inconscient inaccessible non par refoulement mais par la structure même de la mémoire et du temps. À confronter à Freud : là où la cure analytique accède à l'inconscient par la parole, Proust y accède par la sensation — deux voies d'accès différentes à deux types d'inconscients différents. À relier aussi à Bergson (la durée et la mémoire pure) : le passé est conservé intégralement dans la mémoire profonde, mais la conscience habituelle n'y a pas accès.
]

#cadre[
  *Mémoire volontaire vs. mémoire involontaire*\
  Tout le roman -- distinction structurante de la Recherche

  Proust oppose systématiquement deux régimes de mémoire. La mémoire volontaire — celle que l'intelligence commande — ne restitue du passé que des données mortes, abstraites, sans vie : "le passé que je me rappelle en le cherchant." Si le narrateur essaie de se souvenir de Combray volontairement, il n'obtient qu'une image pâle, sans épaisseur, comme une photographie décolorée. La mémoire involontaire, en revanche, restitue le passé dans toute sa densité sensible et affective — mais seulement quand une sensation présente rencontre par hasard une sensation passée enfouie. C'est ce hasard qui révèle que le passé n'est pas perdu — il est conservé quelque part hors de la conscience, dans une mémoire profonde que Proust associe à la sensation et au corps plutôt qu'à l'intelligence. Ce "quelque part" hors de la conscience volontaire, c'est l'inconscient proustien — non pas le Ça freudien peuplé de désirs sexuels refoulés, mais une couche de l'être où le temps est suspendu et le passé intact.

  $=>$ Cette distinction permet de montrer que la conscience volontaire n'a accès qu'à une infime partie de notre vie psychique — ce qui rejoint Freud sur le fond (le moi n'est pas maître chez lui) tout en proposant une conception radicalement différente de ce qui lui échappe. À relier à Merleau-Ponty : la mémoire involontaire est une forme de savoir corporel et perceptif qui précède et dépasse la conscience réfléchie.
]

== La petite phrase de Vinteuil : l'inconscient affectif

#cadre[
  *Swann et la sonate : un inconscient émotionnel*\
  Un amour de Swann -- La sonate de Vinteuil chez les Verdurin

  Dans Un amour de Swann, la petite phrase musicale de Vinteuil produit sur Swann un effet qu'il ne comprend pas — elle lui révèle l'existence d'une réalité intérieure qu'il ne soupçonnait pas, une "patrie inconnue" dont il se souvient sans l'avoir jamais visitée. Cet effet est involontaire et incontrôlable : Swann ne décide pas d'être bouleversé, il l'est. La musique atteint quelque chose en lui qui précède et déborde toute pensée consciente — un inconscient affectif, une capacité émotionnelle enfouie que la vie mondaine avait anesthésiée. Plus révélateur encore : la petite phrase devient progressivement "l'hymne" de son amour pour Odette, et elle lui dit sur cet amour des vérités que sa conscience refuse d'admettre — notamment l'intensité de sa jalousie et la profondeur de sa souffrance. Quand la musique cesse, Swann "ne sait plus" ces vérités. La musique est un accès temporaire à l'inconscient affectif — elle dit ce que le sujet ne peut pas se dire consciemment.

  $=>$ La petite phrase illustre un inconscient ni refoulé (Freud) ni seulement mnésique (la madeleine) — mais affectif et esthétique. C'est une forme d'inconscient que seul l'art peut révéler, ce qui relie directement le thème de l'inconscient à celui des arts. À relier à Schopenhauer que Proust avait lu : la musique accède à la Volonté, au fond de toute chose, en court-circuitant la représentation consciente.
]

== Swann et Odette : l'inconscient du désir amoureux

#cadre[
  *Swann compare Odette à une Zéphora de Botticelli : l'inconscient esthétique comme déni*\
  Un amour de Swann -- Swann tombe amoureux d'Odette

  Swann, grand connaisseur d'art, ne trouve pas Odette à son goût au premier abord — "ce n'était pas son type." Puis il remarque une ressemblance entre elle et la Zéphora de Botticelli dans une fresque de la Chapelle Sixtine. Dès lors, il se met à aimer Odette — non plus elle directement, mais à travers l'écran de la référence artistique. Ce mécanisme est profondément inconscient : Swann ne choisit pas de s'en servir pour se convaincre qu'Odette est aimable — il le vit comme une révélation esthétique sincère. Mais du point de vue psychanalytique, la référence à Botticelli fonctionne comme un mécanisme de défense : elle permet à Swann de désirer Odette sans avoir à reconnaître consciemment qu'il la désire "elle", avec toute la vulnérabilité que cela implique. L'inconscient du désir passe par le détour de la culture pour s'autoriser ce qu'il ne pourrait pas s'avouer directement.

  $=>$ Cet épisode illustre que l'inconscient ne se manifeste pas seulement dans les rêves ou les symptômes — il informe aussi nos goûts esthétiques, nos jugements culturels, nos "coups de foudre". À relier à Freud (le mécanisme de défense comme déplacement d'un désir sur un objet acceptable) et à Nietzsche (nos jugements de valeur sont déterminés par des forces que nous ignorons).
]

#cadre[
  *La jalousie de Swann : l'inconscient sait avant la conscience*\
  Un amour de Swann -- Les nuits d'attente et d'angoisse

  À mesure que Swann devient jaloux d'Odette, quelque chose de remarquable se produit : son inconscient "sait" qu'Odette le trompe avant que sa conscience ne l'admette. Il souffre d'une angoisse inexplicable avant même d'avoir des preuves, il imagine des scènes sans savoir pourquoi, il ressent un malaise physique en présence de certains noms ou lieux. Sa conscience, elle, fabrique des rationalisations, des explications rassurantes. C'est l'inconscient affectif qui perçoit la vérité — la conscience la censure. La jalousie proustienne est une forme d'inconscient cognitif : une connaissance que le sujet possède sans savoir qu'il la possède, et qui se manifeste dans le corps (l'angoisse, l'insomnie) avant d'atteindre la conscience. Quand Swann finit par admettre qu'Odette le trompe, ce n'est pas une découverte — c'est une reconnaissance de ce qu'il savait déjà sans le savoir.

  "Il souffrait de cette souffrance dont il ne connaissait pas encore la cause, comme un malade qui ne sait pas encore de quelle maladie il est atteint mais la sent couver en lui depuis des semaines."

  $=>$ La jalousie de Swann illustre un inconscient cognitif — le sujet "sait" sans "savoir qu'il sait." C'est une forme très différente de l'inconscient freudien (refoulement d'un désir) : ici c'est une connaissance, non un désir, qui est inconsciente. À relier à la phénoménologie de Merleau-Ponty : le corps perçoit et "sait" avant la conscience réfléchie.
]

= Exemple : _Hamlet_

== Le projet philosophique : pourquoi Freud lit Hamlet

#cadre[
  *Le texte que Freud cite dans _L'Interprétation des rêves_*\
  Contexte général -- Hamlet, prince du Danemark, apparend par le spectre de son père que son oncle Claudius l'a assassiné pour s'emparer du trône et de la reine Gerturude

  Hamlet est une pièce sur la paralysie — un homme qui sait ce qu'il doit faire (venger son père en tuant Claudius) et qui n'arrive pas à le faire, malgré de nombreuses occasions. Les critiques ont longtemps cherché la raison de cette hésitation dans des causes externes : le doute sur la culpabilité de Claudius, la peur de la mort, la prudence politique. Mais aucune de ces explications ne tient vraiment — Hamlet a des preuves de la culpabilité de Claudius (la réaction de celui-ci au spectacle de "The Mousetrap"), et il est clairement capable de tuer (il poignarde Polonius sans hésitation, envoie Rosencrantz et Guildenstern à la mort). Freud, dans L'Interprétation des rêves (1900), propose une explication radicalement nouvelle : si Hamlet ne peut pas tuer Claudius, c'est parce que Claudius a réalisé son propre désir inconscient — tuer le père et posséder la mère. Tuer Claudius reviendrait à tuer la partie de lui-même qui a voulu ce que Claudius a accompli. C'est le complexe d'Œdipe projeté sur la scène shakespearienne.

  $=>$ Le fait que Freud lui-même analyse Hamlet comme cas clinique dans son œuvre fondatrice donne à cet exemple une légitimité philosophique exceptionnelle. À mobiliser pour montrer que la littérature peut être un matériau d'analyse psychanalytique — et que l'inconscient se manifeste non seulement dans les rêves et les symptômes, mais dans les grandes œuvres de l'imagination humaine.
]

== La paralysie d'Hamlet : le symptôme central

#cadre[
  *Pourquoi Hamlet ne peut pas tuer Clausius : la thèse freudienne*\
  Tout au long de la pièce -- Les occasions manquées

  Freud et Ernest Jones (son disciple qui a consacré un livre entier à Hamlet) expliquent la paralysie du prince ainsi : dans l'inconscient d'Hamlet, Claudius n'est pas seulement un meurtrier à punir — il est un double qui a accompli ce qu'Hamlet lui-même désirait inconsciemment dans son enfance. L'enfant Hamlet a désiré la mort du père pour posséder la mère — c'est le fantasme œdipien universel selon Freud. Ce désir a été refoulé et est devenu inconscient. Claudius a réalisé ce désir : il a tué le père et pris la mère. Hamlet ne peut donc pas condamner Claudius sans se condamner lui-même — tuer Claudius, c'est tuer son propre désir refoulé, ce qui est psychiquement impossible. La paralysie d'Hamlet est un symptôme : elle protège l'inconscient de la conscience. Il ne peut pas se dire "je ne tue pas Claudius parce qu'il a réalisé mon désir" — il se dit à la place qu'il doute, qu'il réfléchit, qu'il cherche des preuves supplémentaires. Ce sont des rationalisations conscientes qui masquent la vraie cause inconsciente.

  "Hamlet est capable d'agir envers tout le monde, sauf envers l'homme qui a éliminé son père et pris sa place auprès de sa mère — l'homme qui lui montre les désirs refoulés de sa propre enfance réalisés."\
  Freud -- _L'interprétation des rêves_

  $=>$ La paralysie d'Hamlet est l'illustration la plus dramatique du mécanisme de l'inconscient : un empêchement dont le sujet ne comprend pas la cause réelle, et qui résiste à toutes les rationalisations conscientes. À relier à Raskolnikov (chez qui c'est la culpabilité inconsciente qui empêche — ici c'est le désir inconscient). Les deux illustrent la même thèse : l'inconscient bloque l'action consciente sans que le sujet en comprenne la raison.
]

== Les épisodes clés à la lumière de l'inconscient

#cadre[
  *"Être ou ne pas être" : la conscience envahie par l'inconscient*\
  Acte III, scène 1 -- Le monologue le plus célèbre du théâtre occidental


  Le monologue "To be or not to be" est souvent lu comme une méditation philosophique abstraite sur la mort et le suicide. Mais dans le contexte freudien, il prend une autre dimension : c'est le discours d'une conscience tellement envahie par son inconscient qu'elle ne peut plus agir. Hamlet ne se demande pas simplement s'il vaut mieux vivre ou mourir — il se demande s'il vaut mieux subir les "flèches et les pierres d'une fortune outrageante" ou "prendre les armes contre une mer de troubles." Prendre les armes, c'est agir — c'est tuer Claudius. Mais il n'y arrive pas. À la place, il se réfugie dans la pensée, dans la philosophie, dans l'hésitation. Hamlet incarne ce que Nietzsche appellera plus tard "l'excès de conscience réfléchie qui paralyse l'action" : trop penser, c'est ne plus pouvoir agir — parce que la pensée est le masque que la conscience met sur l'inconscient pour ne pas le voir.

  "Être ou ne pas être, c'est là la question. Y a-t-il plus de noblesse d'âme à subir la fronde et les flèches de la fortune outrageante, ou à s'armer contre une mer de douleurs et à l'arrêter par une révolte ?"

  $=>$ *Thème de l'inconscient :* Le monologue illustre l'excès de conscience réfléchie comme symptôme de l'inconscient — la pensée infinie comme fuite de l'action que l'inconscient interdit. À relier à Nietzsche (Naissance de la tragédie : l'homme dionysien, comme Hamlet, a entrevu la vérité de l'être et ne peut plus agir — la connaissance tue l'action). *Thème de la conscience :* Hamlet est le personnage de la conscience réfléchie poussée à sa limite — il pense tellement qu'il ne peut plus vivre. À confronter à Meursault (Camus) qui, lui, agit sans réfléchir.
]

#pagebreak()

#cadre[
  *The Mousetrap : l'art comme révélateur de l'inconscient*\
  Acte III, scène 2 -- Hamlet fait jouer une pièce reproduisant le meurtre de son père

  Hamlet fait jouer devant la cour une pièce qui reproduit exactement le meurtre de son père tel que le spectre le lui a décrit. Son but conscient est de "attraper la conscience du roi" — de confirmer la culpabilité de Claudius par sa réaction. Claudius se lève, pâlit, quitte la salle : la preuve est faite. Mais quelque chose d'autre se passe aussi : Hamlet lui-même assiste à la représentation de son propre désir inconscient — le meurtre du père, la prise du pouvoir. Il y a dans cette scène une dimension auto-analytique : Hamlet utilise l'art pour regarder en face ce qu'il ne peut pas regarder directement. La pièce dans la pièce est une mise en scène de l'inconscient — l'art sert de médiation pour approcher une vérité que la conscience directe refuse. C'est ce que Freud appellera plus tard le "travail de la culture" : l'art permet d'exprimer et de contempler des désirs et des angoisses que la vie ordinaire censure.

  $=>$ *Thème de l'inconscient :* The Mousetrap illustre la thèse que l'art révèle l'inconscient — à relier directement au thème des arts (Heidegger : l'art dévoile ce que la vie cache). *Thème de la conscience :* Hamlet utilise l'art pour voir ce qu'il ne peut pas voir autrement — la conscience a besoin de détours pour atteindre certaines vérités. C'est aussi une démonstration de la fonction cathartique de l'art (Aristote) : la représentation fictive permet de traverser des émotions que la réalité directe rendrait insupportables.
]

#cadre[
  *Le traitement d'Ophélie : l'inconscient projette sur autrui*\
  Actes II-IV -- La relation d'Hamlet avec Ophélie

  Le comportement d'Hamlet envers Ophélie est inexplicable sur le plan de la logique consciente : il l'aime, puis la repousse violemment, la bless par des paroles cruelles ("va au couvent"), la traite avec une misogynie féroce. Freud et Jones expliquent ce comportement par un mécanisme de projection inconsciente : Hamlet, incapable d'assumer sa rage envers sa mère Gertrude (qui a épousé l'assassin de son père avec une indécente célérité), reporte cette rage sur Ophélie, la seule autre femme dans sa vie. "Fragilité, ton nom est femme" — cette formule générale masque une colère très spécifique dirigée contre Gertrude, que la conscience d'Hamlet ne peut pas s'autoriser à exprimer directement (parce que la colère contre la mère est liée au désir incestueux). Ophélie est la victime innocente de la dynamique inconsciente d'Hamlet.

  $=>$ La projection sur Ophélie illustre le mécanisme freudien de déplacement — un affect (la rage contre la mère) est transféré sur un objet de substitution (Ophélie). À relier à Swann qui projette sur Odette ses idéaux esthétiques (Botticelli) pour se permettre de la désirer. Dans les deux cas, l'inconscient use d'un détour pour accomplir ce que la conscience directe interdirait.
]

#cadre[
  *La mort d'Hamlet : l'inconscient trouve enfin sa résolution*\
  Acte V -- Le dénouement

  Hamlet ne tue Claudius que lorsque lui-même est déjà mourant — empoisonné par l'épée de Laertes. C'est un détail que la lecture freudienne éclaire parfaitement : Hamlet ne peut tuer Claudius qu'une fois qu'il n'a plus rien à perdre, qu'il est lui-même condamné. La culpabilité inconsciente associée à l'acte — tuer son double, réaliser son propre désir — ne peut être surmontée que lorsque la punition est déjà en route. L'inconscient a organisé sa propre punition (la mort d'Hamlet) comme condition préalable à l'accomplissement de l'acte conscient (tuer Claudius). C'est le même mécanisme que chez Raskolnikov : l'inconscient cherche la punition avant même que la conscience ne l'admette. Hamlet meurt en accomplissant sa mission — mais trop tard pour en jouir, et c'est précisément ce "trop tard" qui révèle que l'inconscient a tout organisé pour que la vengeance et la punition coïncident.

  $=>$ Le dénouement d'Hamlet illustre la "pulsion de mort" freudienne — l'inconscient qui organise sa propre destruction comme résolution d'un conflit psychique insoluble. À relier à Raskolnikov (qui cherche inconsciemment à se faire prendre) et à la notion freudienne de compulsion de répétition. La mort est ici la seule issue que l'inconscient a trouvée pour résoudre le conflit entre désir et interdit.
]