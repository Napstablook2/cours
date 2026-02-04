#import "@preview/cetz:0.3.2": canvas, draw
#import "@preview/cetz-plot:0.1.0": plot
#import "@preview/gentle-clues:1.1.0": *
#import "@preview/codly:1.2.0": *
#import "@preview/codly-languages:0.1.1": *
#import "@preview/diagraph:0.3.1": *
#import "@preview/finite:0.5.0": automaton
#import "@preview/finite:0.5.0"
// Correspond au travail perso (exos, TDs, etc.)
#let exercice(text, ..other) = goal(title: [Exercice], text)
#let perso(text, ..other) = task(title: [Perso], breakable: true, text)
// Correspond à la correction des exos
#let correction(text, ..other) = idea(title: [Correction], breakable: true, text)
#let remarque(text, ..other) = tip(title: [_Remarque_], text)
#let definition(text, ..other) = info(title: [Définition], text)
// #let prop(text, ..other) = info(title: [_Propriété_], text)
#let attention(text, ..other) = warning(title: [Attention], text)
#let example(text, ..other) = [#block(
  fill: luma(250),
  inset: 8pt,
  radius: 4pt,
  width: 100%,
  [*Exemple #context counter("example").step()#context counter("example").display()*: #text]
)]

#let citation(text, ..other) = quotation(title : [Citation], text)
#let ul(text, ..other) = underline(text)