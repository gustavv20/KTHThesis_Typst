#import "Template/kth_thesis.typ": chapter
#show: doc => chapter(title: "Introduction", doc)

#lorem(40) Something something footnote #footnote("Please note that this footnote is a footnote, not just a note in the footer.") something.  

== Heading 2
  #lorem(20)
  Math is very easy to do in Typst, for example @MyEq, 
  
  $ sum_(k=0)^n k
    &= 1 + ... + n \
    &= (n(n+1)) / 2 $ <MyEq>

 
== Heading 2
 #lorem(100) Here I am referring to my table, @MyTable.

 #figure(
  table(
    columns: 2,
    [*Lorem*], [567(89)],
    [*Ipsum*], [0.12(34)],
    align: center
  ),
  caption: lorem(28)
  ) <MyTable>
  
  #lorem(100)