#!/usr/bin/env python3
import panflute as pf

"""
Pandoc filter that replaces \(...\) with $...$
Other output formats are unaffected.
"""


def dollar(e, doc):
    if  doc.format=='latex' and type(e) == pf.Math and e.format == 'InlineMath':
        contents = e.text
        return pf.RawInline('$' + contents + '$', format='latex')


if __name__ == "__main__":
    pf.toJSONFilter(dollar)
