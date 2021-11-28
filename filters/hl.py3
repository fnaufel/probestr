#!/usr/bin/env python3
import panflute as pf

"""
Pandoc filter that generate highlights in latex.  
Uses soul package.
Other output formats are unaffected.
"""


def latex(s):
    return pf.RawInline(s, format='latex')


# See https://github.com/jgm/pandoc/issues/5529
# The soul package can't handle some things inside code blocks.
# This function wraps code blocks in \mbox{}
def clean(e, doc):
    if type(e) == pf.Code:
        return pf.Span(pf.RawInline('\\mbox{', 'latex'), e, pf.RawInline('}', 'latex'))

                    
def hl(e, doc):
    if doc.format=='latex' and type(e) == pf.Span and 'hl' in e.classes:
        e.walk(clean)
        return pf.Span(latex('\\hl{'), *e.content, latex('}'))


if __name__ == "__main__":
    pf.toJSONFilter(hl)
