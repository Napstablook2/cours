#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*Fiche 9 : Liberté*
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

== Épictète -- Le stoïcisme : la liberté par l'acceptation du nécessaire

#cadre[
  *Épictète (\~50-\~125)* était un esclave affranchi avant de devenir philosophe ; cette trajectoire personnelle éclaire sa conception de la liberté. Pour le stoïcisme, tout ce qui arrive dans le monde est déterminé par une chaîne ininterrompue de causes (la nécessité ou destin). L'homme ne peut pas changer le cours des événements ; il ne maîtrise que ses jugements. Être libre, c'est donc cesser de vouloir maîtriser ce qui ne dépend pas de soi (la santé, la richesse, la réputation, la mort) pour ne vouloir que ce qui dépend réellement de soi : ses opinions, ses désirs, ses volitions. Le Manuel d'Épictète pose le principe : "Ne demande pas que les choses arrivent comme tu le veux ; veux qu'elles arrivent comme elles arrivent." La liberté n'est pas l'indépendance à l'égard du monde, mais l'indépendance à l'égard de nos désirs déréglés. Le sage stoïcien est libre parce que rien ne peut le troubler, même les pires épreuves. Esclave à l'extérieur, il est roi à l'intérieur.

  "Ne demande pas que les choses arrivent comme tu les veux ; veux qu'elles arrivent comme elles arrivent, et tu seras heureux."\
  Épictète -- _Manuel, VIII_

  $=>$ Épictète est la référence pour une conception paradoxale de la liberté : on devient libre non en élargissant sa puissance d'agir, mais en réduisant le champ de ce que l'on désire. La liberté est une affaire de jugement, non de pouvoir.
]

== Spinoza -- Le libre arbitre est une illusion, la liberté est conscience du nécessaire

#cadre[
  *Baruch Spinoza (1632-1677)* est le plus radical des déterministes ; il est aussi l'un des théoriciens les plus exigeants de la liberté. Dans l'_Éthique_, il rejette l'idée de libre arbitre : un choix sans cause est une impossibilité logique. L'homme croit être libre parce qu'il a conscience de ses actions mais ignore les causes qui le déterminent. "Une pierre reçoit une certaine impulsion et pense qu'elle est libre parce qu'elle ignore la main qui la lance." Mais Spinoza ne conclut pas à l'absence de liberté ; il redéfinit la liberté. Est libre celui qui agit par la seule nécessité de sa nature, et non par contrainte extérieure. Dieu, par exemple, est libre parce qu'il n'agit que selon les lois de sa propre nature. L'homme peut approcher cette liberté : plus il comprend les causes de ses actions, moins il est passif, plus il est actif. La liberté n'est donc pas l'indétermination, mais la détermination par soi-même. "La liberté n'est qu'un nom pour désigner la conscience du nécessaire." Être libre, c'est savoir pourquoi on fait ce qu'on fait, et le vouloir pleinement.

  "La liberté n'est qu'un nom pour désigner la conscience du nécessaire."\
  Spinoza -- _Éthique, II, scolie de la proposition 35_

  "Une pierre qui se meut pense qu'elle est libre parce qu'elle ignore la main qui la lance."\
  Spinoza -- _Lettre à G. H. Schuller_

  $=>$ Spinoza est la référence pour une théorie déterministe de la liberté. Contre le libre arbitre des cartésiens, il montre que la liberté n'est pas l'absence de cause, mais l'adéquation de l'action à sa propre nature. Pont naturel vers la psychanalyse (l'inconscient) et les neurosciences (les causes de nos choix).
]

== Rousseau -- L'homme naît libre mais la société l'enchaîne

#cadre[
  *Jean-Jacques Rousseau (1712-1778)* ouvre le _Contrat social_ par une formule devenue célèbre : "L'homme est né libre, et partout il est dans les fers." Cette phrase résume sa thèse : la liberté est un état de nature, une propriété constitutive de l'humanité. Mais la société (la propriété privée, les inégalités, les lois injustes) l'a aliénée. Cependant, Rousseau n'est pas un retourniste : on ne peut pas revenir à l'état de nature. Il faut donc trouver une forme d'association qui protège la liberté de chacun sans l'annuler. C'est l'objet du contrat social : chacun aliène tous ses droits à la communauté, mais cette aliénation est réciproque, et chacun retrouve dans la souveraineté collective sa propre liberté. La formule clé est celle de l'autonomie : obéir à la loi qu'on s'est prescrite, c'est être libre. La liberté n'est donc plus l'absence de lois, mais la conformité à la loi qu'on a voulue. "L'essence de la liberté, c'est la dépendance à l'égard de soi seul." Rousseau distingue par ailleurs la liberté naturelle (faire tout ce que l'on veut) et la liberté civile (ne faire que ce que la loi permet). La seconde est supérieure, car elle transforme l'individu en citoyen.

  "L'homme est né libre, et partout il est dans les fers."\
  Rousseau -- _Du contrat social, I, 1_

  "L'essence de la liberté, c'est la dépendance à l'égard de soi seul."\
  Rousseau -- _Du contrat social, I, 8_

  $=>$ Rousseau est la référence pour le lien entre liberté et citoyenneté. La liberté n'est pas un isolement (le "sauvage" solitaire) mais une appartenance : être libre, c'est obéir à la loi que l'on s'est donnée avec les autres. Pont vers la notion républicaine de liberté.
]

== Kant -- La liberté comme autonomie de la volonté

#cadre[
  *Emmanuel Kant (1724-1804)* est celui qui a peut-être le plus profondément théorisé la liberté morale. Pour lui, la liberté n'est pas un fait observable (on ne voit jamais une cause sans antécédent), mais un postulat pratique : sans liberté, la morale serait impossible. Si nos actions étaient entièrement déterminées par des causes extérieures (besoins, penchants, éducation), nous ne pourrions pas être tenus pour responsables. La liberté est donc la condition de la morale. Mais qu'est-ce que la liberté pour Kant ? C'est l'autonomie de la volonté : la capacité de se donner à soi-même sa propre loi. Être libre, ce n'est pas suivre ses désirs (c'est l'hétéronomie, la loi venue d'ailleurs), c'est agir par respect pour la loi morale que la raison universelle prescrit. La liberté kantienne est exigeante : elle ne consiste pas à "faire ce qu'on veut", mais à "vouloir ce qu'on doit". "La liberté est la puissance de faire ce que l'on doit vouloir." L'homme est partagé entre deux mondes : le monde sensible (où il est déterminé par les causes naturelles) et le monde intelligible (où il est libre parce qu'il obéit à la loi qu'il se donne). Cette dualité est l'une des plus difficiles (et des plus célèbres) de la philosophie kantienne.

  "La liberté est la puissance de faire ce que l'on doit vouloir."\
  Kant -- _Métaphysique des mœurs, Introduction_

  "Agis de telle sorte que la maxime de ton action puisse être érigée en loi universelle."\
  Kant -- _Fondements de la métaphysique des mœurs_ (formulation de l'impératif catégorique)

  $=>$ Kant est la référence pour la liberté comme autonomie rationnelle. Être libre, ce n'est pas obéir à ses caprices, mais obéir à la loi que l'on se donne en tant qu'être raisonnable. Pont naturel entre le thème de la liberté et celui de la morale.
]

== Sartre -- L'homme est condamné à être libre

#cadre[
  *Jean-Paul Sartre (1905-1980)* est le philosophe de la liberté radicale. Dans _L'Être et le Néant_ et _L'Existentialisme est un humanisme_, il soutient une thèse extrême : l'homme est "condamné à être libre". Condamné, car il n'a pas choisi d'être libre ; libre, car rien ne le détermine. Pour Sartre, l'existence précède l'essence : l'homme n'a pas de nature préétablie (comme le croyait la tradition essentialiste) ; il n'est rien d'autre que ce qu'il se fait. La liberté n'est donc pas une propriété parmi d'autres ; elle est le fond même de l'humain. "Nous sommes une liberté qui choisit, mais nous ne choisissons pas d'être libres." Cette liberté est angoissante, car elle implique une responsabilité totale. Si rien ne m'excuse, si aucun déterminisme ne peut me décharger de mes actes, alors je suis seul, sans recours. La mauvaise foi consiste à feindre de croire que l'on n'est pas libre (se dire "je n'ai pas le choix", "c'est plus fort que moi"). Contre la mauvaise foi, Sartre affirme la liberté absolue : même l'esclave est libre, puisqu'il peut toujours choisir son attitude face à sa servitude. Cette thèse a été souvent critiquée : l'esclave est-il vraiment libre ? Sartre répond que la liberté n'est pas le pouvoir d'agir, mais le pouvoir de se projeter.

  "L'homme est condamné à être libre."\
  Sartre -- _L'Existentialisme est un humanisme_

  "Nous sommes une liberté qui choisit, mais nous ne choisissons pas d'être libres."\
  Sartre -- _L'Être et le Néant_

  $=>$ Sartre est la référence pour la liberté comme absolue et inconditionnelle. Contre tous les déterminismes (biologiques, sociaux, psychanalytiques), il défend l'idée que l'homme est un "projet" qui se fait librement. À critiquer utilement avec Marx (la liberté réelle suppose des conditions matérielles) ou avec Bourdieu (les habitus déterminent nos choix à notre insu).
]

== Berlin -- Liberté négative contre liberté positive

#cadre[
  *Isaiah Berlin (1909-1997)* est l'un des penseurs politiques majeurs du XXe siècle. Dans son essai _Éloge de la liberté_, il propose une distinction devenue classique entre deux conceptions de la liberté. La liberté négative répond à la question : "Dans quel domaine puis-je agir sans entrave ?" C'est l'absence d'obstacles extérieurs (contrainte, censure, interdiction). La liberté positive répond à une autre question : "Qui est maître de ma vie ?" C'est l'autonomie, l'autodétermination, le fait d'être son propre maître. Berlin ne rejette aucune des deux ; mais il met en garde contre un danger de la liberté positive. On peut en effet soutenir que quelqu'un (un individu, une classe, un peuple) ne connaît pas son "vrai moi" ; on peut alors le contraindre "pour son bien", "pour le rendre libre". C'est ainsi que la liberté positive a servi à justifier les pires tyrannies : on opprime au nom de la liberté. La liberté négative, plus modeste, est aussi plus sûre. Berlin préfère donc clairement la liberté négative, sans pour autant nier l'importance de la liberté positive dans certaines traditions (Rousseau, Kant, Marx).

  "La liberté négative est l'absence d'obstacles à l'action ; la liberté positive est la possibilité d'être son propre maître."\
  Berlin -- _Éloge de la liberté_

  $=>$ Berlin est la référence pour la distinction entre deux concepts de liberté, et pour la critique politique de la dérive autoritaire de la liberté positive. Très mobilisable dans les dissertations sur la liberté en société (jusqu'où l'État peut-il contraindre pour nous rendre libres ?).
]

== Merleau-Ponty -- Liberté située : on n'est pas libre d'être libre

#cadre[
  *Maurice Merleau-Ponty (1908-1961)* propose, dans la _Phénoménologie de la perception_, une conception de la liberté qui se situe entre le déterminisme absolu (l'homme n'est jamais libre) et le liberté absolue de Sartre (l'homme est toujours libre). Pour Merleau-Ponty, nous ne choisissons pas librement toutes nos déterminations. Nous naissons dans un corps, dans une époque, dans une langue, dans une culture ; tout cela constitue notre "situation". Mais cette situation n'est pas une prison ; elle est le terreau de notre liberté. Être libre, c'est reprendre et transformer ce qui a été donné. "La liberté n'est pas l'indépendance par rapport à la situation, mais la reprise de la situation." Merleau-Ponty critique Sartre : on ne peut pas être libre "absolument", car la liberté elle-même suppose un monde, un corps, des autres. "L'homme n'est pas libre d'être libre" : il ne peut pas décider un beau jour d'être libre comme on choisit un vêtement. La liberté se conquiert dans l'action, dans l'histoire, dans la relation aux autres. Cette conception "située" de la liberté est très influente dans la philosophie politique contemporaine (et notamment chez les penseurs post-coloniaux qui critiquent l'universalisme abstrait).

  "La liberté n'est pas l'indépendance par rapport à la situation, mais la reprise de la situation."\
  Merleau-Ponty -- _Phénoménologie de la perception_

  "L'homme n'est pas libre d'être libre"\
  Merleau-Ponty -- _Phénoménologie de la perception_

  $=>$ Merleau-Ponty est la référence pour une conception "située" de la liberté, qui évite à la fois le déterminisme (l'homme n'est pas une chose) et le volontarisme sartrien (l'homme n'est pas un pur esprit). Très utile pour les dissertations qui cherchent à dépasser l'opposition entre liberté et déterminisme.
]

= Exemple : _La Servante écarlate_ -- Le corps comme dernier territoire

== Contexte et situation

#cadre[
  _La Servante écarlate_ paraît en 1985, dans le contexte de la montée de la droite religieuse aux États-Unis (Reagan, la Moral Majority) et des débats sur l'avortement, la contraception et le rôle des femmes. Atwood imagine un régime, la République de Galaad, issu d'un coup d'État fondamentaliste après une catastrophe écologique et démographique (la baisse drastique de la natalité). La société est rigidement hiérarchisée : les Commandants (l'élite au pouvoir), leurs Épouses, les Marthas (servantes domestiques), les Économes (femmes stériles chargées des comptes), et les Servantes écarlates – des femmes fertiles réduites à l'état d'utérus ambulants, contraintes de porter les enfants des Commandants lors de cérémonies sexuelles ritualisées.
  
  La narratrice, dont on n'apprendra jamais le vrai nom (elle s'appelle Defred, littéralement "de Fred", du nom du Commandant qui la possède), raconte son histoire depuis un futur incertain. Le roman alterne entre la description de son enfermement quotidien et les flashbacks de sa vie "d'avant" (quand elle avait un mari, un enfant, un travail, un compte en banque). Cette structure temporelle est philosophiquement décisive : elle montre que la liberté, une fois perdue, n'est plus qu'un souvenir. Mais ce souvenir est précisément ce qui empêche la servante de devenir une chose.

  $=>$ La Servante écarlate est l'une des œuvres les plus puissantes pour penser la liberté négative (Berlin) et ses limites. Galaad supprime quasiment toutes les libertés négatives des femmes : liberté de circuler (les Servantes ne sortent qu'avec un laissez-passer), liberté de lire (la lecture est interdite aux femmes), liberté de parler (les conversations sont surveillées), liberté de son corps (les cérémonies sexuelles sont imposées). Mais le régime prétend justifier cette oppression au nom de la liberté positive : les femmes sont "protégées", "valorisées", "libérées" de la pornographie, du viol, du harcèlement. C'est exactement le danger que Berlin identifie dans la liberté positive : "On peut prétendre libérer les gens d'un mal qu'ils ne ressentent pas comme un mal, au nom d'une liberté qu'ils ne désirent pas."

  L'œuvre confronte également les thèses de Sartre et de Merleau-Ponty sur la liberté située. Sartre dirait que Defred est libre, puisqu'elle peut toujours choisir son attitude (se révolter, se soumettre, feindre). Mais Atwood montre les limites matérielles de cette liberté : quand on vous enlève votre nom, votre enfant, votre corps, la "liberté absolue" de Sartre paraît abstraite. Merleau-Ponty est plus proche : la liberté n'est pas l'indépendance par rapport à la situation, mais la reprise de la situation. Defred ne choisit pas sa situation (elle n'a pas choisi d'être Servante), mais elle invente des marges de liberté minuscules : voler un beurre, cacher une boîte d'allumettes, garder le souvenir de sa fille.

  Enfin, l'œuvre propose une analyse originale du lien entre liberté et langage. Defred perd son nom, perd le droit de lire, perd le droit d'écrire. Le régime lui impose des formules ("Sous son œil", "Je te remercie", "Béni soit le fruit") qui sont des actes de langage performatifs (Austin) : elles ne disent pas, elles font – elles fabriquent une servante soumise. Mais Defred résiste par le langage : elle raconte son histoire, elle la met en cassette, elle la destine à des auditeurs futurs. "Mon histoire est vraie", répète-t-elle. La narration est son dernier territoire de liberté.
]

== La destruction systématique des libertés négatives

#cadre[
  *Galaad : un régime qui soustrait tous les "je peux"*

  Berlin définit la liberté négative comme l'absence d'obstacles à l'action. La question qu'elle pose est : "Sur quoi suis-je libre d'agir ?" Galaad répond : sur rien. L'œuvre catalogue méthodiquement les interdits. Les Servantes ne peuvent pas circuler seules : "Nous n'avons pas le droit de sortir sans laissez-passer." Elles ne peuvent pas lire : "Lire, c'est interdit aux femmes. On nous a confisqué tous nos livres." Elles ne peuvent pas parler entre elles librement : les conversations sont limitées au strict nécessaire, et les Marthas (qui pourraient les dénoncer) sont partout. Elles ne peuvent pas refuser la cérémonie mensuelle, quelle que soit leur répugnance. Elles ne peuvent pas conserver leur nom : on leur donne le nom de leur Commandant (Ofglen, Ofwarren, Offred). La négation de la liberté négative est totale, méthodique, rationalisée.

  "Nous dormions dans ce qui avait été une salle de gym. C'est ainsi que tout a commencé. Non pas avec des coups de feu et des explosions, mais avec l'abrogation des droits."\
  Atwood, _La Servante écarlate, ch. 1_

  $=>$ Liberté négative. Galaad illustre la thèse libérale classique (Berlin, Hayek, Constant) : un régime peut être terrifiant non seulement par ce qu'il fait, mais par ce qu'il empêche. La liberté négative n'est pas une liberté "mineure" (comme le pensent Rousseau ou Marx) ; elle est la condition de toute vie digne. Atwood montre ce qui se passe quand on la supprime.
]

== Le détournement de la liberté positive

#cadre[
  *Galaad prétend libérer les femmes ; il les enchaîne*

  L'un des traits les plus glaçants du roman est que Galaad ne se présente pas comme une tyrannie, mais comme une libération. Le régime a été fondé par des hommes (les Commandants) mais aussi par des femmes (les Épouses, les Tantes) qui ont activement collaboré. La justification idéologique est la suivante : avant Galaad, les femmes étaient "libres" (elles pouvaient travailler, avorter, divorcer, lire), mais cette liberté était une illusion. Elles étaient en réalité exploitées, harcelées, violentées, réduites à des objets sexuels par la pornographie et la publicité. Galaad les protège. Galaad leur donne une fonction sacrée : la maternité. Galaad les "libère" du chaos de la liberté moderne.

  C'est exactement la dérive dénoncée par Berlin : la liberté positive (la maîtrise de soi, l'autodétermination) peut être détournée pour justifier l'oppression. "On peut prétendre libérer les gens d'un mal qu'ils ne ressentent pas comme un mal, au nom d'une liberté qu'ils ne désirent pas."

  "Nous étions libres, disent-elles. Libres de nous faire exploiter. Libre de nous faire tuer. Maintenant nous sommes protégées."\
  -- _Chapitre 23_

  $=>$ Liberté positive. L'œuvre est une mise en garde contre l'idée que la liberté consisterait à "forcer les gens à être libres" (Rousseau) ou à "les libérer contre leur gré" (certaines lectures de Marx). Atwood montre que la liberté positive, lorsqu'elle est confisquée par une oligarchie, devient l'instrument le plus efficace de la servitude.
]

== La cérémonie : le corps comme enjeu ultime

#cadre[
  *La cérémonie mensuelle : le langage et corps niés*

  La "cérémonie" est le dispositif central du roman. Une fois par mois, la Servante s'étend entre les jambes de l'Épouse, et le Commandant la féconde. La dimension sexuelle de l'acte est ouvertement niée : ce n'est pas un rapport sexuel (les Tantes le répètent), c'est un acte rituel, un devoir sacré. La Servante n'est pas un corps ; elle est un "vase", un "contenant", un "fruit". Atwood décrit la cérémonie avec une précision clinique : les gestes codifiés, les prières, l'absence de regard entre les participants. Defred vit ces moments comme une étrangeté, une dissociation. Son corps n'est plus le sien.

  Cette scène est philosophiquement décisive. Elle montre que la liberté n'est pas seulement une affaire de choix ou de raison ; elle est d'abord une affaire de corps. Galaad ne cherche pas à convaincre les Servantes ; il cherche à les déposséder d'elles-mêmes, à les séparer de leur propre corps. C'est la servitude parfaite : non pas celle où l'on obéit à une force extérieure, mais celle où l'on n'est même plus présent à ce qu'on subit.

  "Ce n'est pas un viol, disent-elles. C'est ce qu'elles disent. Moi, je ne peux pas dire ce que c'est."\
  -- _Chapitre 23_

  $=>$ Liberté et corps. L'épisode rappelle que la liberté commence par la souveraineté sur son propre corps (un thème central dans les débats sur l'avortement, la contraception, la GPA). À relier à Simone de Beauvoir dans Le Deuxième Sexe : la femme a été historiquement réduite à son corps reproducteur. Atwood donne à cette analyse une forme dystopique.
]

== Les résistances minuscules : la liberté comme obstination

#cadre[
  *Le beurre, les allumettes, le jardin : ce qui reste de l'humain*

  Defred n'est pas totalement passive. Elle vole un beurre qu'elle cache dans sa chambre ; elle trouve une boîte d'allumettes oubliée ; elle cultive en secret un petit jardin dans sa chambre ; elle entretient le souvenir de sa fille perdue. Ces actes sont infimes. Ils ne changent rien à la structure du régime. Mais ils sont tout ce qui lui reste de sa liberté. Atwood montre que la liberté, dans l'enfermement total, n'est plus une conquête héroïque (comme chez Sartre) ; elle est un souffle, une habitude, une obstination à rester humaine.

  Ce qui est remarquable, c'est que Defred ne se révolte pas. Elle ne prépare pas un complot. Elle n'assassine pas le Commandant. Elle fait des gestes minuscules. C'est peut-être la thèse la plus profonde du roman : la liberté, quand les grands espaces sont fermés, se réfugie dans les interstices.

  "Je garde ce beurre pour moi. C'est une chose interdite. C'est une chose que j'ai choisie. C'est la mienne."\
  -- _Chapitre 18_

  $=>$ Liberté située. L'épisode illustre la thèse de Merleau-Ponty : "La liberté n'est pas l'indépendance par rapport à la situation, mais la reprise de la situation." Defred ne choisit pas sa situation (elle ne peut pas quitter Galaad). Mais elle choisit son attitude dans la situation. C'est une liberté pauvre, minuscule, mais réelle. Contre Sartre (qui exigerait une liberté totale), Atwood montre que la liberté se niche souvent dans les marges.
]

== Le langage comme dernier territoire

#cadre[
  *Le récit : raconter pour exister*

  L'acte le plus important de Defred est le récit lui-même. Elle raconte son histoire sur des cassettes, à destination d'auditeurs futurs (des historiens, comme le suggère l'épilogue). Elle ne sait pas si quelqu'un l'entendra. Elle ne sait pas si elle survivra. Mais elle raconte. Pourquoi ? Parce que raconter, c'est affirmer qu'on a été un sujet et non une chose. "Mon histoire est vraie", répète-t-elle. La vérité de son histoire n'est pas une vérité factuelle (Atwood joue avec l'incertitude du témoignage) ; c'est une vérité existentielle. Elle a été là. Elle a senti, souffert, désiré, craint. Et elle le dit.

  Le langage est donc le dernier territoire de liberté. Galaad a confisqué les livres, interdit la lecture, codifié la parole (on ne dit pas "je" quand on est une Servante, on dit "moi" ou "cette servante"). Mais le récit clandestin échappe à cette confiscation.

  "J'ai une histoire à raconter. Je l'appellerai comme je veux."\
  -- _Chapitre 1_

  $=>$ Langage et liberté. L'épisode montre que le langage est constitutif de la liberté, comme chez Benveniste : "C'est dans et par le langage que l'homme se constitue comme sujet." Defred redevient sujet (et non objet du régime) par l'acte de raconter. À relier également à Orwell (1984) : Winston résiste par l'écriture de son journal. Mais Atwood ajoute une dimension supplémentaire : le récit est adressé, il attend une écoute future. La liberté est aussi une affaire de transmission.
]

== L'épilogue : la liberté perdue, retrouvée, menacée

#cadre[
  *La conférence universitaire : Galaad est déjà de l'histoire*

  L'épilogue du roman (souvent négligé) est philosophiquement essentiel. Il nous transporte dans un futur lointain (2195) où Galaad a disparu. Des historiens discutent du "témoignage de Defred" comme d'une archive du passé. Ce décalage temporel produit trois effets.

  D'abord, il nous rassure : Galaad a fini par tomber. La liberté a triomphé, au moins dans ce futur académique où l'on peut débattre sans crainte. Ensuite, il relativise : Galaad n'a été qu'une période parmi d'autres, un "caillou dans la chaussure de l'histoire". Enfin, il inquiète : l'historien principal, le professeur Pieixoto, a des plaisanteries machistes et semble peu soucieux du sort des Servantes. La liberté du futur n'est pas totale ; les mentalités ont encore des zones d'ombre.

  Atwood suggère ainsi que la liberté n'est jamais définitivement acquise. Galaad est tombé, mais quelque chose de Galaad pourrait revenir. L'historien Pieixoto, avec son rire gras, est un rappel : la domination masculine n'a pas disparu avec le régime.

  "Galaad n'était pas une anomalie. C'était une possibilité toujours latente."\
  -- _Épilogue_

  $=>$ L'épilogue rappelle une leçon d'Arendt : la liberté est un fragile équilibre ; les tyrannies ne sont pas des monstres exceptionnels, mais des potentialités toujours réactivables. La vigilance est le prix de la liberté.
]

= Exemple : _Les Liaisons dangereuses_ : la liberté de nuire

== Contexte et situation

#cadre[
  _Les Liaisons dangereuses_ paraît en 1782, à la veille de la Révolution française. Le roman est épistolaire : il se compose des lettres échangées entre les principaux personnages, principalement la Marquise de Merteuil et le Vicomte de Valmont, deux aristocrates libertins qui font de la séduction une arme de domination. Leur projet : se jouer des conventions sociales, de la morale religieuse, des sentiments sincères. Valmont séduit la vertueuse Présidente de Tourvel ; Merteuil corrompt la jeune Cécile de Volanges pour se venger de son amant. Le roman suit l'enchaînement des manipulations jusqu'à la catastrophe finale : Tourvel meurt de chagrin, Valmont est tué en duel, Merteuil est défigurée par la petite vérole et ruinée socialement.

  Ce roman est souvent lu comme un portrait de la noblesse décadente avant la Révolution ; il est aussi une réflexion philosophique profonde sur la liberté. Laclos était proche des Lumières (il a fréquenté les cercles matérialistes, lu _Diderot_ et _Helvétius_), et son roman met en scène les contradictions de l'idéal de liberté.

  $=>$ _Les Liaisons dangereuses_ apporte au thème de la liberté un angle que n'ont ni _Atwood_ (la liberté niée par un régime totalitaire), ni _Camus_ (la liberté face à l'absurde), ni _Berlin_ (la distinction conceptuelle). Laclos pose une question pratique et morale : que se passe-t-il quand des individus décident d'user de leur liberté sans aucune limite ?

  Merteuil et Valmont sont libres. Ils n'ont pas de contraintes extérieures : ils sont riches, aristocrates, sans obligation religieuse ou familiale qui les retienne. Leur liberté négative (absence d'obstacles) est maximale. Ils revendiquent aussi une liberté positive : ils se donnent leurs propres lois, ils refusent toute hétéronomie (la loi venue d'ailleurs). La devise de Merteuil pourrait être : "Je suis ma propre maîtresse."

  Mais cette liberté absolue a un coût. D'abord, elle est tyrannique pour autrui : la liberté de Merteuil et Valmont se construit sur la souffrance des autres (Tourvel, Cécile, Danceny). Ensuite, elle se retourne contre eux : la liberté sans limites mène à l'isolement, à la guerre de tous contre tous, à l'autodestruction. Le roman de Laclos illustre la thèse de _Berlin_ sur la liberté positive : quand elle n'est pas tempérée par le respect d'autrui, elle peut devenir un instrument de domination.

  L'œuvre dialogue aussi avec _Sartre_. Dans _L'Être et le Néant_, Sartre écrit que "l'enfer, c'est les autres" ; mais il ajoute que ma liberté est inséparable de celle d'autrui. Merteuil et Valmont vivent comme si la liberté des autres était un obstacle à la leur ; ils finissent par se détruire mutuellement. _Laclos_ semble dire : une liberté qui n'est que négative et qui ignore autrui est une liberté suicidaire.

  Enfin, l'œuvre propose une réflexion originale sur le langage et la liberté. Le roman est épistolaire : la liberté s'y exprime par l'écriture. Mais les lettres sont aussi des instruments de manipulation. Valmont écrit à Tourvel des lettres d'amour qu'il ne pense pas ; Merteuil écrit à Cécile des conseils perfides. Le langage, chez Laclos, n'est pas un outil neutre ; il est une arme. La liberté de mentir est une forme de pouvoir.
]

== Merteuil : la liberté comme autocréation

#cadre[
  *La Marquise de Merteuil : "Je suis ma propre ouvrage"*

  Merteuil est peut-être le personnage le plus fascinant du roman. Elle raconte sa propre formation dans une lettre célèbre (Lettre 81) : née femme dans une société qui ne lui accordait aucun pouvoir, elle a décidé de se fabriquer elle-même. Elle a appris à observer, à dissimuler, à analyser. "Je suis ma propre ouvrage", écrit-elle. Cette formule résume une conception de la liberté comme autocréation : Merteuil n'accepte aucun destin imposé ; elle se fait elle-même.

  Mais cette autocréation a un prix : le rejet de toute sincérité. Merteuil ne peut être vraie avec personne, pas même avec Valmont (son complice et son rival). Elle est libre, mais cette liberté est aussi une prison

  "Je suis ma propre ouvrage."\
  _Laclos_ --- _Les Liaisons dangereuses_, Lettre 81 (Merteuil à Valmont)

  $=>$ Liberté et identité. La formule de Merteuil fait écho à la thèse de _Sartre_. "L'existence précède l'essence" : l'homme n'a pas de nature préétablie ; il se fait par ses choix. Merteuil illustre cette liberté radicale. Mais _Laclos_ montre aussi sa limite : se faire soi-même dans le mensonge et la manipulation, c'est s'enfermer dans un rôle. La libertine n'est plus jamais elle-même. À confronter à _Montaigne_ qui, dans _Les Essais_, cherche aussi à se peindre, mais par la sincérité, non par le masque.
]

== La liberté contre autrui : le contrat des libertins

#cadre[
  *Le pacte Merteuil-Valmont : une liberté sans frein*

  Dès le début du roman, Merteuil propose à Valmont un marché : si Valmont séduit la Présidente de Tourvel (une femme vertueuse et dévote), elle lui accordera ses faveurs. Ce pacte transforme la séduction en stratégie militaire. Valmont n'aime pas Tourvel (du moins le croit-il) ; il la conquiert pour gagner un pari. Merteuil ne désire pas Valmont ; elle l'utilise comme un instrument.

  Ce qui est philosophiquement intéressant, c'est que Merteuil et Valmont sont pleinement conscients de leur liberté. Ils ne se cachent derrière aucune illusion. Ils savent qu'ils choisissent d'être cruels. Le roman montre une liberté sans mauvaise foi (pour reprendre un concept _sartrien_) : ils assument leur projet. Mais ce projet est destructeur pour autrui.

  "Je ne puis être heureuse que par le malheur des autres."\
  _Laclos_ — _Les Liaisons dangereuses_, Lettre 81 (Merteuil à Valmont)

  $=>$ Liberté et autrui. _Sartre_ écrit : "L'enfer, c'est les autres" (_Huis clos_). Mais il ajoute ailleurs que ma liberté est inséparable de celle d'autrui. Merteuil et Valmont vivent comme si la liberté des autres était un obstacle ; ils en viennent à souhaiter le malheur des autres comme condition du leur. _Laclos_ montre l'impasse de cette conception : à force de vouloir dominer autrui, on finit par s'isoler et se détruire.
]

== La lettre comme instrument de liberté et de domination

#cadre[
  *Le langage épistolaire : écrire pour être libre, écrire pour manipuler*

  _Les Liaisons dangereuses_ est un roman épistolaire : l'intrigue avance par les lettres que les personnages s'écrivent. L'écriture est d'abord une forme de liberté : elle permet de s'exprimer, de se confier, de réfléchir. Tourvel écrit à sa amie pour partager ses doutes ; Danceny écrit à Cécile des lettres amoureuses sincères.

  Mais l'écriture est aussi une arme. Valmont écrit à Tourvel des lettres d'amour qu'il a copiées ou dictées à son valet ; il calcule ses effets, il chronomètre ses réponses. Merteuil écrit à Cécile des conseils perfides qui la livrent à Valmont. La lettre, dans ce roman, n'est jamais neutre : elle est un acte de langage (_Austin_) qui peut séduire, tromper, blesser ou libérer.

  La liberté d'écrire est donc ambivalente. Le roman épistolaire donne la parole à tous (même aux personnages trompés) ; mais cette parole peut être un mensonge. _Laclos_ ne propose pas de solution ; il montre simplement la dualité du langage.

  "C'est un art que je n'ai jamais pu apprendre ; et je m'en console, car je suis sûre qu'il ne sert qu'à mieux cacher le peu qu'on pense."\
 _Laclos_ — _Les Liaisons dangereuses_, Lettre 33 (Tourvel à son amie)

 $=>$ Langage et liberté. La lettre est un territoire de liberté (Benveniste : "C'est dans et par le langage que l'homme se constitue comme sujet"). Mais elle peut aussi être un instrument de domination (Foucault). _Laclos_ illustre cette ambivalence mieux que quiconque.
]

== La liberté sans limites mène à l'autodestruction

#cadre[
  *Le dénouement : la guerre des libertins*

  Le roman s'achève sur la destruction mutuelle des deux libertins. Valmont, jaloux, provoque Danceny en duel ; il est tué. Merteuil, discréditée par les lettres de Valmont (rendues publiques par Danceny), perd son rang, sa réputation, son visage (la petite vérole la défigure). Elle fuit en Hollande, ruinée.

  Ce dénouement n'est pas une punition morale venue d'en haut (Laclos n'est pas un moraliste chrétien). C'est la conséquence logique de leur conception de la liberté. Si ma liberté consiste à dominer autrui, alors autrui (qui est aussi libre) finira par se retourner contre moi. La liberté sans limites ne peut pas durer ; elle débouche sur la guerre de tous contre tous, comme _Hobbes_ l'avait théorisé.

   "Elle emporta le désespoir et la honte de sa défaite."\
  _Laclos_ — _Les Liaisons dangereuses_, dernière lettre (narrateur)

  $=>$ Liberté et politique. Le roman illustre la thèse hobbesienne : dans l'état de nature (sans lois, sans limites), la liberté de chacun est menacée par celle des autres. La solution de Hobbes est le contrat social (renoncer à une partie de sa liberté pour la sécurité). Merteuil et Valmont refusent tout contrat ; ils en meurent. À confronter à _Rousseau_ : la liberté civile (obéir à la loi qu'on s'est donnée) est supérieure à la liberté naturelle (faire tout ce qu'on veut).
]

== L'échec de la liberté masculine et féminine

#cadre[
  *Valmont et Merteuil : deux impasses symétriques*

  Valmont et Merteuil ne sont pas symétriques. Valmont est un homme dans une société patriarcale ; sa liberté est plus facile. Merteuil est une femme ; sa liberté doit se conquérir contre la société. C'est pourquoi elle est plus lucide, plus calculatrice, plus amère. Mais leurs échecs sont différents.

  Valmont échoue parce qu'il tombe amoureux (contre son projet). Il s'attache sincèrement à Tourvel ; sa liberté en est entamée. C'est sa "faiblesse" (du point de vue libertin). Merteuil, elle, ne tombe amoureuse de personne ; elle est purement stratégique. Mais son échec est social : elle est femme, et quand ses machinations sont découvertes, elle n'a aucune ressource. La société lui pardonne moins qu'à Valmont.

  _Laclos_ montre ainsi que la liberté n'est pas la même pour les hommes et les femmes. Merteuil est plus libre intérieurement (elle se domine mieux), mais moins libre socialement. C'est une leçon que reprendra _Simone de Beauvoir_ dans _Le Deuxième Sexe_ : la "liberté" abstraite des femmes ne suffit pas ; il faut changer les conditions sociales.

  "N'étant pas destinée par la nature à avoir un sort à part, je me suis donné celui de la célébrité."\
  _Laclos_ — _Les Liaisons dangereuses_, Lettre 81 (Merteuil à Valmont)

  $=>$ Liberté et genre. L'œuvre est féministe avant la lettre : elle montre que la liberté abstraite (philosophique) ne suffit pas si les conditions matérielles (sociales) ne la soutiennent pas. À relier à _Berlin_ (liberté positive et négative) et à _Merleau-Ponty_ (la liberté située).
]

= Exemple : _Le Mythe de Sisyphe_ : la liberté au pied du mur

== Contexte

#cadre[
  _Le Mythe de Sisyphe_ paraît en 1942, en pleine Occupation allemande. Camus a trente ans. L'essai s'ouvre par une phrase devenue célèbre : "Il n'y a qu'un problème philosophique vraiment sérieux : c'est le suicide." La question est la suivante : la vie vaut-elle la peine d'être vécue ? Camus part d'un constat : le monde n'a pas de sens. Ni Dieu, ni la raison universelle, ni l'histoire ne nous offrent une signification transcendante. L'homme cherche un sens ; le monde n'en donne pas. De cette confrontation naît *l'absurde*.

  Mais Camus ne conclut pas au désespoir. Il conclut à la liberté. Si le monde est absurde, alors rien ne nous oblige à obéir à des valeurs supérieures. Nous sommes libres de créer nos propres valeurs, nos propres règles, notre propre sens. L'absurde n'est pas une prison ; c'est une libération.

  L'essai se conclut par le mythe de Sisyphe. Sisyphe, condamné par les dieux à rouler éternellement un rocher au sommet d'une montagne d'où il retombe toujours, est l'image parfaite de l'absurdité : un travail sans fin, sans espoir, sans sens. Mais Camus le montre heureux. "Il faut imaginer Sisyphe heureux." Pourquoi ? Parce que Sisyphe est libre. Il n'attend rien ; il n'espère rien ; il ne se plaint de rien. Il est pleinement présent à son rocher, à ses mains, à sa sueur. Sa liberté est celle du prisonnier qui cesse de regarder les barreaux et regarde le ciel.

  $=>$ _Le Mythe de Sisyphe_ apporte au thème de la liberté un angle que n'ont ni _Atwood_ (la liberté niée), ni _Laclos_ (la liberté tyrannique), ni _Berlin_ (la liberté comme concept politique). Camus pose une question plus radicale : que reste-t-il de la liberté quand tout le reste a été supprimé ?

  Sisyphe est le moins libre des hommes : il est condamné, enchaîné à une tâche absurde pour l'éternité. Mais Camus soutient qu'il est libre. Sa liberté n'est pas la liberté négative (absence d'obstacles) ; elle n'est pas la liberté positive (autodétermination) ; elle est *la liberté d'attitude*. On ne choisit pas ses chaînes ; on choisit le regard qu'on porte sur elles.

  Cette conception dialogue avec _Épictète_ (le stoïcien : "Ne demande pas que les choses arrivent comme tu le veux ; veux qu'elles arrivent comme elles arrivent"). Mais contre Épictète, Camus n'affirme pas l'existence d'un ordre rationnel du monde (le "destin" stoïcien). L'absurde de Camus est plus radical : le monde n'a ni ordre ni désordre ; il est simplement indifférent.

  L'œuvre dialogue aussi avec _Sartre_. Sartre dit : "L'homme est condamné à être libre." Camus ne dit pas exactement cela. Il dit plutôt : "L'homme est libre parce qu'il est condamné à l'absurde." La liberté vient de l'absence de sens, non d'une nature humaine préexistante.

  Enfin, l'œuvre propose une réflexion originale sur le temps et la liberté. Sisyphe est libre parce qu'il a renoncé au futur. Il ne vit plus dans l'espoir (le dieu qui pourrait le sauver) ni dans le regret (le passé heureux). Il vit dans l'instant. C'est une liberté sans projet, sans avenir – ce que Camus appelle *la liberté absurde*
]

== L'absurde : la confrontation entre l'homme et le monde

#cadre[
  *L'absurde naît de la rencontre entre l'appel humain et le silence déraisonnable du monde*

  Camus définit l'absurde non comme une propriété du monde (le monde n'est pas absurde en soi) ni comme une propriété de l'esprit (l'esprit n'est pas absurde en soi), mais comme une *relation*. L'homme cherche un sens, une unité, une clarté ; le monde est indifférent, divers, silencieux. De cette déchirure naît l'absurde.

  "L'absurde naît de la confrontation de l'appel humain avec le silence déraisonnable du monde."\
  Camus — _Le Mythe de Sisyphe_

  $=>$ Liberté et sens. L'absurde est la condition de la liberté. Si le monde avait un sens (un Dieu, une raison immanente, une téléologie), nous serions obligés de nous y conformer. L'absence de sens nous libère. Camus inverse le rapport habituel : ce n'est pas parce que je suis libre que le monde n'a pas de sens ; c'est parce que le monde n'a pas de sens que je suis libre.
]

== Les trois réponses à l'absurde : suicide, saut, révolte

#cadre[
  *Le suicide, le saut philosophique, la révolte*

  Camus distingue trois attitudes face à l'absurde.

  La première est *le suicide physique* : si la vie n'a pas de sens, pourquoi continuer ? Camus rejette cette solution. Le suicide n'est pas une réponse à l'absurde ; c'est son acceptation passive.

  La seconde est *le saut philosophique* : la solution des existentialistes chrétiens (Kierkegaard, Chestov). Devant l'absurde, on "saute" vers la foi, on accepte un dieu ou une transcendance qui dépasse la raison. Camus rejette aussi cette solution : le saut est une tricherie, un abandon de la raison.

  La troisième est *la révolte* : maintenir l'absurde vivant, ne pas le fuir, ne pas le nier, mais le regarder en face et en tirer les conséquences. La révolte, pour Camus, n'est pas une résignation ; c'est une lucidité active. "Je me révolte, donc je suis."

  "La liberté véritable est celle qui ne supprime pas l'absurde, mais qui l'assume."\ 
  Camus — _Le Mythe de Sisyphe_

  $=>$ Liberté et révolte. La révolte absurde est une forme de liberté radicale. Elle n'attend rien des dieux, rien de l'histoire, rien d'un sens supérieur. Elle se suffit à elle-même. C'est ce que Camus appelle "la liberté absurde".
]

== Le mythe de Sisyphe : le héros absurde

#cadre[
  *Sisyphe, condamné à l'éternel recommencement*

  Sisyphe a trahi les dieux (il a dénoncé leurs secrets) et enchaîné la Mort. Sa punition est exemplaire : rouler un rocher jusqu'au sommet d'une montagne ; chaque fois, le rocher retombe ; il faut recommencer. C'est le châtiment du travail inutile et sans espoir.

  Mais Camus le regarde différemment. Dans la descente, quand Sisyphe redescend vers son rocher, il est libre. "Cette descente, c'est l'heure de la conscience." Il n'espère plus ; il ne désespère plus. Il sait. Il sait que son rocher retombera, et il y retourne quand même. C'est cela, la liberté absurde : agir sans espoir, mais non sans lucidité.

  "Il faut imaginer Sisyphe heureux."\
  Camus — _Le Mythe de Sisyphe_

  $=>$ Liberté et condition. Sisyphe est libre parce qu'il accepte sa condition. Non par résignation (il n'est pas passif), mais par lucidité. Il cesse de lutter contre ce qui ne peut être changé, mais il ne cesse pas d'agir. C'est une leçon pour la liberté quotidienne : on ne choisit pas toujours ses contraintes, mais on choisit toujours son attitude face à elles.
]

== La liberté sans avenir : renoncer à l'espoir

#cadre[
  *L'espoir est le premier obstacle à la liberté*

  Thèse provocante de Camus : l'espoir n'est pas une vertu ; c'est un piège. L'homme qui espère attend quelque chose du futur (un dieu, une révolution, une guérison). En attendant, il cesse de vivre le présent. L'espoir est une forme de non-liberté.

  L'homme absurde, lui, n'espère pas. Il ne croit pas qu'un sens viendra demain. Il n'attend pas de récompense ni de salut. Il agit maintenant. Sa liberté n'est pas conditionnelle ; elle est immédiate.

  "Pour l'homme absurde, il ne s'agit plus de réparer ou d'expliquer, mais de décrire et de sentir."\
  Camus — _Le Mythe de Sisyphe_

  $=>$ Liberté et temps. Camus propose une liberté sans projet au sens classique. Être libre, ce n'est pas seulement se projeter dans l'avenir (Sartre) ; c'est aussi savoir ne pas en avoir besoin. L'instant présent, vécu pleinement, est le lieu de la liberté.
]

== Don Juan, l'acteur, le conquérant : trois figures de la liberté absurde

#cadre[
  *Trois vies absurdes*

  Camus présente trois figures de l'homme absurde.

  *Don Juan* aime des femmes, les quitte, en aime d'autres. Il ne s'attache pas. Il ne croit pas à l'amour éternel. Il vit l'instant, intensément. Sa liberté est celle du séducteur sans illusion.

  *L'acteur* joue des rôles, traverse des vies, n'en habite aucune vraiment. Il se donne des personnages, les quitte, en prend d'autres. Sa liberté est celle de l'homme qui refuse d'être fixé à une identité.

  *Le conquérant* sait que ses conquêtes sont vaines (les empires s'effondrent, les révolutions dévorent leurs enfants). Il agit quand même, non pour l'avenir, mais pour l'action elle-même. Sa liberté est celle de l'engagement sans garantie.

  Ces trois figures ne sont pas des modèles à imiter ; ce sont des illustrations de la vie absurde.

  "La vie ne sera jamais assez grande pour Don Juan. Et c'est pourquoi Don Juan est un héros absurde." \
  Camus — _Le Mythe de Sisyphe_

  $=>$ Liberté et identité. L'acteur et Don Juan illustrent une liberté qui ne s'enracine pas dans une identité stable. Contre la tradition philosophique (qui lie liberté et constance de soi), Camus propose une liberté du passage. À confronter à _Montaigne_ : "Je ne peins pas l'être, je peins le passage."
]