#!/usr/bin/env python3
import panflute as pf

"""
Pandoc filter that generate highlights in latex.  
Other output formats are unaffected.
"""


def latex(s):
    return pf.RawInline(s, format='latex')


def hl(e, doc):
    if  doc.format=='latex' and type(e) == pf.Span and 'hl' in e.classes:
        contents = e.content
        return pf.Span(latex('\\hl{'), *contents, latex('}'))


if __name__ == "__main__":
    pf.toJSONFilter(hl)
