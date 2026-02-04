#import "header.typ": *
#import "template.typ": template
#show: template

#align(center, text(24pt)[
	*Correction DS1 : type Centrale*
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
#set heading(numbering: "I.1.a")

#set par(justify: true)

= Correction du résumé

Première partie (l.1-10)\
Au $"XVIII"^"e"$, on a voulu faire croire que l'étude de la nature n'as commencé que $"XVII"^"e"$, mais cependant elle a commencé bien avant.

Deuxième partie (l.11-20)\
On pourrait remonter ainsi jusqu'à la préhistoire, chaque époque a eu "son miracle" dans l'observation de la nature.

Troisième partie (l.21-58)\
La nature est avant tout un champ moral et l'observation scientifique de la nature va toujours de pair avec un sens moral. Le savant est toujours travaillé par le moraliste et le moraliste est toujours travaillé dans la science de la vie.

*Proposition de corrigé :*

Malgré ce qu'on a pu prétendre, la physique moderne du dix-septième siècle n'est pas la première a avoir étudié la nature. Les travaux de Duhem rappellent que les hommes ont toujours voulu connaître et observer cette dernière. Cependant même si la réalité du monde est demeurée la même, chaque époque la regardait différemment si bien que l'on peut affirmer qu'il ne s'agissait pas d'une représentation identique.\
De plus on ne peut pas se limiter à un aspect scientifique de la nature car il en existe aussi un moral qui explique qu'elle puisse être envisagée autant comme une mère généreuse que comme une marâtre. On ne peut séparer ces deux aspects puisque le savant est aussi bien tributaire de la morale de son temps que le moraliste de la science.\
Comme l'as montré Duhem la description scientifique est ainsi toujours liée à une explication morale qui change selon les époques. Pour appréhender les progrès qui ont permis d'aboutir à une connaissance objective de la nature, il faut par conséquent saisir l'unité des représentations scientifiques, artistiques, morales en même temps que leur évolution au cours du temps.

= Correction de la dissertation

#ul[Rappel du sujet] : Selon Robjet Lenoble, "la conception du monde dépend pour une petite partie seulement des idées scientifiques. Elle reflète plus encore des besoins moraux et sociaux, voire des désirs inconscient. C'est pourquoi nous disions que c'est à ce niveau que s'opère la jonction de la science et de la vie."

== Introduction
_(Pas littéralement)_

À l'instar du mythe d'Icare, la science de notre temps prétend percer les mystères de la nature comme Icare moura en voulant percer les secrets du soleil en faisant preuve d'hybris. Montaigne nous rappelle que "chaque homme porte la forme entière de l'humaine condition", nous sommes limité et notre approche du monde se fait aussi selon nos besoins et nos capacité, selon nos désirs, nos aspirations.
[INSÉRER CITATION].
[Définir les différents termes du sujet, ce qu'on entend par monde, par besoins, etc...]. Dans quelle mesure notre vision de la nature est-elle fondée sur la science et comment notre condition humaine, morale, sociale, vient compléter voire dépasser ce cadre scientifique ? [I] La thèse est que la science constitue un socle objectif pour nos connaissant [II] Ce cadre est insuffisant et des besoins moraux et sociaux viennent le compléter [III] La science et la vie se rejoignent dans l'expérience de la nature.
[Citer les oeuvres au programme, J.V puis G.C puis M,H]

[I] La science et la technologie fournissent un cadre de référence qui est indispensable pour comprendre le monde, l'appréhender [A] Le rôle explicatif et descriptif de la science. Nos trois oeuvres prétendent décrire et expliquer le monde. Dans #ul[Vingt mille lieues sous les mers], le Nautilus n'est pas qu'un véhicule mais un véritable laboratoire permettant de décrypter la nature. Il y a une abondance de détails technique : la gestion de l'oxygène, la double coque, etc... On peut également citer Aronnax et Conseil qui incarnent la manie de la classification et la rigueur de la science. Une conception du monde qui ne peut se faire que par la science et la technologie. Canguilhem dans #ul[La Connaissance de la vie] montre que la science commence par une approche objective. La représentation qu'il nous fait de l'organisme est celle d'un ensemble mesurable, qui obéit à des lois mécaniques, chimiques, etc... Là ici dans la méthode appliquée par Canguilhem on a quelque chose de purement scientifique. Enfin dans #ul[Le Mur invisible], l'isolement total de la narratrice la force à revenir à une conception du monde basée sur des choses fiables et donc scientifiques : pour survivre elle se vie aux almanach trouvés dans le chalet et qui lui permettent notamment de suivre les cycle agricole et le fonctionnement de la nature. L'écriture de son journal devient un acte scientifique de catalogage des ressources, des évènements, des méthodes à appliquer pour survivre, etc... La démarche rationnelle lui permet de rétablir un peu d'ordre dans le chaos qu'est la nature. [B] L'objectivité de la science. La science est un langage universel qui semble donc dépasser, transcender les cultures différentes et les ressentis individuels. Une juste appropriation de la nature en est une qui peut se partager, qui plaît à tout le monde, et seule une approche scientifique permet cela. Dans #ul[Vingt mille lieues sous les mers], le Nautilus a beau être merveilleux, il se plie néanmoins aux lois de la physique. Il défie nos attentes mais est tout de même sujet à la gravité, à la pression hydrostatique, aux problèmes d'oxygène, etc... Même dans l'inconnu le plus total, la réalité est toujours sujette à une rationnalité. Et c'est tout l'intérêt d'un personnage comme Arronax qui va transformer son étonnement et son appréhension personnelle en données scientifiques. Canguilhem nous dit dans #ul[La Connaissance de la vie] que ... ... des mécanismes qui sont applicables à tous les êtes vivant. Canguilhem lui aussi fait reposer son oeuvre sur une sorte d'universalité des lois biologiques. Enfin,chez Haushofer, certes il y a un monde qui s'écroule mais ce monde qui s'écroule rend les lois de la nature encore plus fortes, encore plus vitales. Ce qui est intéressant de voir dans le mur invisible, c'est que même quand le monde s'écroule, la nature continue de tourner : la narratrice survie précisément parceque les lois de la natures ne s'écroulent pas, malgré tout les plantes, les arbres continuent de pousser, le feu continue de chauffer, etc... Finalement, il y a quelque chose ici de neutre, de rationnel, qui appartient à la vie et lui permet de lutter contre l'angoisse que représente le mur.

[II] L'importance des besoins moraux, sociaux et des désirs inconscients. _L'idée est que la science ne suffit pas, derrière chaque scientifique se cache en fait un moraliste_. [A] La morale comme filtre d'interprétation : la science est toujours la fille de la morale. L'exemple le plus probant ici c'est Nemo. Nemo a par certains aspects un coté scientifique : il fait avancer la science en faisant découvrir à Aronnax les vérités du monde marin. Cependant, sa démarche scientifique est biaisée par sa moralité : les merveilles scientifique de Nemo ne sont que les instruments d'une vengence du capitaine. Le nautilus et tout ce qu'il permet de découvrir n'est qu'une incarnation d'un rejet total de la civilisation terrestre et d'une mysanthropie totale. La beauté qu'il voit dans le sous-marin n'est qu'une incarnation de son dégout pour le monde terrestre. Chez Canguilhem, le pathologique n'est pas qu'une simple déviation du normal mais c'est aussi une valeur : un individu qui est malade c'est un individu qui dévie de ce qui est sain mais c'est aussi l'individu qui se sent incapable de porter en lui de nouvelles normes de vie. Finalement, la question de la normalité et du pathologique, on peut défendre l'idée qu'elle est encrée chez Canguilhem dans des valeurs sociales : la capacité à s'intégrer, produire, surpasser des obstacles ; le pathologique n'est plus capable de ça et on le décrit alors par le prisme de nos besoins moraux. [B] Dans #ul[Le Mur invisible], la narratrice se confronte aux limites non pas conscientes mais inconscientes de la science : le mur est un fait mais il n'as pas d'explication, il est illogique. Il est là mais invisible, impénétrable, on a l'impression qu'il est là pour son absurdité, pour faire passer notre conception du monde d'une rationnalité scientifique à une sorte de quête de sens. Partant de là, il y a quelque chose de l'ordre de l'inconscient : ce mur réduit la narratrice à des besoins primitifs, bruts (manger, se protéger, témoigner, etc...) On retrouve aussi cela dans son rapport à l'animal, elle ne le comprend pas mais se sent proche de lui.

[III] Une collaboration entre la science et la "vie" (la condition de l'homme). [A] /*Une hiérarchie, la science est dépassé*/ La science peut être un instrument de notre volonté, de nos aspirations, quand nous étudions la nature. Le Nautilus, malgré sa merveille, n'est qu'un outils scientifique. Chez Canguilhem, les considérations scientifiques ne sont là que pour aider tout patient à retrouver son pouvoir de normativité, c'est à dire sa capacité à s'adapter, à creer de nouvelles normes de vie pour survivre. Chez Haushofer, la science est juste quelque chose de pragmatique, de pratique qui permet la survie : la science, les connaissances rationnelle ne sont qu'un outil dans ce désir inconscient qu'a la narratrice de vivre _(on peut dire quelque chose là desus dans le II.B)_. [B] On peut parler de co-construction, de dialectique au sens du dialogue entre la science et nos valeurs morales. Dans #ul[Vingt mille lieues sous les mers], on trouve dans la bibliothèque du Nautilus aussi bien des livre hyper technique comme des livres d'art et d'histoire, Nemo tient la barre et joue de l'orgue. Le monde du capitaine Nemo est une synthèse entre la connaissance pure et la morale _(il a une forme de nostalgie de la culture humaine)_ Chez Canguilhem, il y a un sens objectif de l'organisme mais il y a aussi une impulsion vitale de chaque individu. La biologie est un domaine de rencontre entre les faits pur et les droits moraux de tout sujet. Dans #ul[Le Mur invisible], la narratrice utilise la science sans arrêt mais l'accompagne de considérations morales et affectives. Autrement dit, l'expérience de la nature, qu'elle soit une expérience scientifique ou morale est avant tout une expérience humaine, et l'idée est que si la science donne le monde à l'homme alors c'est l'homme qui donne son sens au monde.

[CONCLUSION]