import quickly
import parce
import parce.document


doc = parce.Document(parce.find("lilypond"), r"music = { c d e f g }", transformer=True)

from quickly.pitch import Pitch
from quickly.transpose import transpose, Transposer
p1 = Pitch(-1, 0, 0)     # -> c
p2 = Pitch(-1, 3, 0)     # -> f
t = Transposer(p1, p2)

transpose(doc, t)
print(doc.text())

cur = parce.Cursor(doc, 12, 15)     # only the second and third note
transpose(cur, t)
print(doc.text())



# ---- RELATIVE

import parce
from quickly import find
doc = parce.Document(find("lilypond"), r"music = \relative c' { c d e f g }", transformer=True)
from quickly.relative import rel2abs
rel2abs(doc)
print(doc.text())

from quickly.relative import abs2rel
abs2rel(doc)
print(doc.text())


