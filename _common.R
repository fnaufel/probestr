set.seed(1014)

library(knitr)

opts_chunk$set(
  collapse = TRUE,
  cache = TRUE,
  out.width = "70%",
  fig.align = 'center',
  fig.width = 6,
  fig.asp = 0.618,  # 1 / phi
  fig.show = "hold"
)

options(dplyr.print_min = 6, dplyr.print_max = 6)

# Supress crayon output
options(crayon.enabled = FALSE)

# Avoid scientific notation and use a comma as decimal separator
options(
  scipen = 15,
  OutDec = ','
)

# For nice dataframe summaries
library(summarytools)
st_options(
  plain.ascii = FALSE,
  dfSummary.varnumbers = FALSE,
  dfSummary.style = 'grid',
  dfSummary.graph.magnif = .75
)

# Tidy!
library(tidyverse)

# Sober theme for ggplot
theme_set(
  theme_linedraw() +                         # Set simple theme for ggplot
    theme(                                   # with some tweaks
      axis.title.y.left = element_text(
         angle = 0,                          # Never rotate y axis title
         margin = margin(r = 20),            # Separate y axis title a little 
         vjust = .5                          # Leave y axis title in the middle
      ),
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
fm <- function(x, big = '.', decimal = '{,}', ...) {
  if (!is.numeric(x)) {
    x
  } else {
    prettyNum(x, big.mark = big, decimal.mark = decimal, ...)
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
