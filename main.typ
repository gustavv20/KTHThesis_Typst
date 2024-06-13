#import "Template/kth_thesis.typ": kth_thesis

#show: doc => kth_thesis(
  title: "Your Thesis Title:",
  subtitle: [Subtitle if Your \ Main Title Wasn't Enough],
  author: "Firstname Lastname",
  degree: "Doctoral Thesis in Electrical Engineering",
  add_dummy_titlepage: false,
  doc
)

// Abstract
#include "abstract.typ"

// Preface
#include "preface.typ"

// Paperlist
#include "paperlist.typ"

// Table of content
#pagebreak(to: "odd")
#outline(depth: 3, indent: auto)

// List of Tables
#pagebreak(to: "odd")
#outline(
  title: [List of Tables],
  target: figure.where(kind: table))

// List of Figures
#pagebreak(to: "odd")
#outline(
  title: [List of Figures],
  target: figure.where(kind: image),
)

#set heading(numbering: "1.1")

// Chapter 1
#include "Chapter1.typ"

// Chapter 2
#include "Chapter2.typ"

// References
#bibliography("references.bib", 
  title: [References],
  style: "ieee")