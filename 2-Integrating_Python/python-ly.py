# https://github.com/frescobaldi/python-ly
# http://python-ly.readthedocs.org
import ly
# from ly import words, etreeutil, reformat, rests, rhythm, util, indent, pitch, pkginfo, server, slexer, data, docinfo, document, dom, duration, lex, xml, cli, colorize, cursortools, barcheck, node, music, musicxml


import ly.music.read
import ly.music.event
import ly.music.items
import ly.document

# run `midi2ly Claire_de_Lune.mid`

with open('Clair_de_Lune.ly', 'r') as file:
    data = file.read()

# print(data)
doc = ly.document.Document(data)

# for block in doc._blocks:
#     print(doc.tokens_with_position(block))
# 
# for i in range(len(doc)):
#     print(doc.block(i))

run = ly.document.Runner(doc)
print(run.token()) # this will print the first token (which is a comment)

cur = ly.document.Cursor(doc, 0, 0) # cursor is at position 0, 0

print(cur.text())

# wow this module is weird