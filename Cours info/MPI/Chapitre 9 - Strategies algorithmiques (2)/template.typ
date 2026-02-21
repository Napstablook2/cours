#import "@preview/codly:1.2.0": *
#import "@preview/codly-languages:0.1.1": *

#let template(doc) = [
  // Configuration de la page (police, langue, espaces, etc.)
  #set text(
  	lang: "fr",
  	size: 13pt,
  )
  #set par(spacing: 1.15em, leading: 0.55em, justify: false)
  #set text(font: "New Computer Modern", hyphenate: true)
  #set page(
  	paper: "a4",
  	numbering: "1 / 1",
  	margin: 2cm,
  )

  // Configuration des blocs de code
  #show raw: set text(font: "Fira Code")
  #codly(languages: codly-languages)
  //#show: codly-init.with()

  #show outline.entry.where(
    level: 1
  ): it => {
    v(12pt, weak: true)
    strong(it)
  }

  // Titres
  /*#set heading(numbering: "1.")
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
  ]*/

  #doc
]
