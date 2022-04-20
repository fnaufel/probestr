source(
  system.file(
    'rmarkdown/resources/R/_common_book.R',
    package = 'fnaufelRmd'
  )
)

library(patchwork)

# For interactive exercises
# See https://github.com/fnaufel/exercises
library(exercises)
exercises::iniciar()
