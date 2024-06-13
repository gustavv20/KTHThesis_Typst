#import "Template/kth_thesis.typ": chapter
#show: doc => chapter(title: [Heading 1],  doc)

#lorem(100)

- Indrag text 4 mm, Georgia 11pt tem quamet iriliquatie modipis
- Indrag text 4 mm, Georgia 11pt tem quamet iriliquatie modipis
- Indrag text 4 mm, Georgia 11pt tem quamet iriliquatie modipis,

== Heading 2
#lorem(100)
Here we also try to cite our reference @li.

=== Heading 3
#lorem(100)

==== Heading 4
We also include an example of a figure here @example_fig.

#figure(
  image("Figures/example_fig.png"),
  caption: [Highly informative caption.]
) <example_fig>

#lorem(100)