set.seed(1014)

library(knitr)

opts_chunk$set(
  collapse = TRUE,
  cache = FALSE,
  out.width = "100%",
  fig.align = 'center',
  fig.width = 7,
  fig.show = "hold"
)

options(dplyr.print_min = 6, dplyr.print_max = 6)

# Supress crayon output
options(crayon.enabled = FALSE)

options(
  # Avoid scientific notation
  scipen = 15,
  # Use a comma as decimal separator
  OutDec = ',',
  # Number of decimal digits for numbers produced by inline R code
  fmdigits = 2,
  # Width of text output
  width = ifelse(is_html_output(), 85, 73),
  # Number of head elements to show in
  str = strOptions(vec.len = 3)
)

# Useful libraries
library(glue)
library(patchwork)
library(latex2exp)
library(kableExtra)
options(knitr.kable.NA = '')

# For nice dataframe summaries
library(summarytools)
st_options(
  plain.ascii = FALSE,
  dfSummary.style = 'grid',
  dfSummary.varnumbers = FALSE,
  dfSummary.valid.col = FALSE,
  dfSummary.graph.col = is_html_output(),
  headings = FALSE,
  dfSummary.graph.magnif = 1,
  tmp.img.dir = 'dfimg',
  lang = 'pt',
  subtitle.emphasis = FALSE
)

# Tidy!
library(tidyverse)

# Text size in plots
plot_text_size = ifelse(is_html_output(), 12, 13)
  
# Sober theme for ggplot
theme_set(
  theme_linedraw() +                         # Set simple theme for ggplot
    theme(                                   # with some tweaks
      text = element_text(size = plot_text_size),
      axis.title.y.left = element_text(
         angle = 0,                          # Never rotate y axis title
         margin = margin(r = 20),            # Separate y axis title a little
         vjust = .5                          # Leave y axis title in the middle
      ),
      axis.title.y.right = element_text(
         angle = 0,                          # Never rotate y axis title
         margin = margin(l = 20),            # Separate y axis title a little
         vjust = .5                          # Leave y axis title in the middle
      ),
      axis.ticks.y.right = element_blank(),  # No ticks on secondary y axis
      axis.title.x.bottom = element_text(
         margin = margin(t = 20)             # Separate x axis title a little
      ),
      axis.line = element_blank(),           # No axis lines
      panel.border = element_blank(),        # No frame
      panel.grid.minor = element_blank()     # No grid minor lines
    )
)

# Format a number with thousand separators (default point)
# and decimal comma enclosed in curly braces for LaTeX printing.
# CAREFUL: if called outside math mode, will print the braces!
fm <- function(
  x,
  digits = getOption('fmdigits', default = 4),
  big = '.',
  decimal = '{,}',
  ...
) {
  if (!is.numeric(x)) {
    x
  } else {
    if (any(x != floor(x))) {
      # floating point
      formatC(
        x,
        big.mark = big,
        decimal.mark = decimal,
        digits = digits,
        format = 'f',
        ...
      )
    } else {
      # integer
      formatC(
        x,
        big.mark = big,
        decimal.mark = decimal,
        format = 'd',
        ...
      )
    }
  }
}

# Set this as a hook for inline R code
knitr::knit_hooks$set(inline = fm)


# To center the results of a chunk (image, video etc.)
# Usage:
#         out.extra=center()
#
center <- function(){

  if (is_html_output()) {
    'class="center"'
  }

}


# To embed YT videos in HTML and the link (centered) in LaTeX
embed_yt <- function(code) {

  if (is_html_output()) {
    include_url(
      paste0(
        'https://www.youtube.com/embed/',
        code
      )
    )
  } else {
    cat(
      paste0(
        '```{=latex}\n',
        '\\begin{center} \\url{https://youtu.be/',
        code,
        '} \\end{center}\n',
        '```'
      )
    )
  }

}
