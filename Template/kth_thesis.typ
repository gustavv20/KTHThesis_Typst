#let sans_font = "Figtree"
#let serif_font = "Georgia"
#let math_font = "STIX Two Math"

#let titlepage(
  title: "",
  subtitle: "",
  author: "",
  degree: "",
  body
) = {

  set page( 
    paper: "sis-g5",
    margin: 0mm
  )
  let kth_blue = rgb("000061")

  align(center+top)[
      #v(15%)
      #image("../Figures/KTH_logo_RGB_bla.svg", width: 26%)
  ]

  align(center+bottom)[
    #set text(font: sans_font, fill: kth_blue)
    #text(size: 12pt, degree)\
    #v(1cm)
    #text(size: 26pt, strong(title))\
    #v(0.5cm)
    #text(size: 16pt, subtitle)\
    #v(1cm)
    #text(size: 12pt, upper(author))\
    #v(0.5cm)
    #text(size: 10pt, "KTH Royal Institute of Technology")\
    #v(15%)
  ]
  pagebreak(to: "even")

  body
}

#let kth_thesis(
  title: "",
  subtitle: "",
  author: "",
  degree: "",
  add_dummy_titlepage: false,
  body
) = {
  set document(title: title, author: author)

  if add_dummy_titlepage {
    show: doc => titlepage(
      title: title,
      subtitle: subtitle,
      author: author,
      degree: degree,
      doc
    )
  }

  set text(font: serif_font, size: 11pt)

  set page( 
    paper: "sis-g5",
    margin: (
      top: 30mm,
      bottom: 30mm,
      outside: 18mm,
      inside: 36mm)
  )
  
   // Configure paragraph properties.
  set par(
    leading: 0.78em, 
    first-line-indent: 1em, 
    hanging-indent: 0pt,
    justify: true,
    linebreaks: "optimized")
  show par: set block(spacing: 0.78em)

  // Heading settings
  show heading: set text(font: sans_font, weight: "bold", number-width: "tabular")
  show heading.where(level: 1): it => text(21pt)[#it] + v(1em)
  show heading.where(level: 2): it => text(13pt)[#it] + v(0.25em)
  show heading.where(level: 3): it => text(11pt)[#it] + v(0.25em)
  show heading.where(level: 4): it => text(size: 11pt, weight: "regular", style: "italic")[#it] + v(0.25em)
  
  // Outline settings
  show outline: set text(font: sans_font, number-width: "tabular")
  show outline.entry.where(level: 1): it => [#v(1em) #text(weight: "bold",it)]
  
  // List settings
  set list(body-indent: 4mm)

  // figure settings
  show figure.caption: it => text(size: 10pt, font: sans_font, it)

  // footnote settings
  show footnote.entry: it => text(font: sans_font, it)

  // math settings
  show math.equation: set text(font: math_font)
  set math.equation(numbering: "(1)")
    
body
}

#let header(
  title: "",
  body
) = {
set page(
  header: locate(
    loc => if calc.even(loc.page()){
      set text(font: sans_font, size: 9pt)
      align(left)[
        *#loc.page()* #h(1em) #upper(title)
      ]
    } else {
      set text(font: sans_font, size: 9pt)
      align(right)[
        #upper(title) #h(1em) *#loc.page()*
      ]
    }
  )
)

body
}

#let chapter(
  title: [],
  body
) = {
  pagebreak()

  show: it=> header(title: title, it)

  v(2cm)
  heading(title)
  body
}