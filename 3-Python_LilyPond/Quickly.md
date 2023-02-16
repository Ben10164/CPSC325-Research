# Quickly

(Description taken from: <https://quick-ly.info/overview.html>)

The quickly module provides ready-to-use functions to create, manipulate and convert LilyPond music text documents, and the building blocks to create new functionality.

Besides Python and its standard library, quickly only depends on parce. LilyPond documents are plain text documents; using parce, the text is tokenized into a tree structure of parce tokens and contexts, and then transformed into a “Document Object Model”, a more semantical tree structure of dom nodes.

When a document is modified (e.g. by the user, typing in a text editor), the tokens and the DOM document are automatically updated.

The two cornerstones of quickly are the parce. Document (or any class following this interface), and the quickly DOM. Lexing the text in the document is done by parce, using a root lexicon, which belongs to a language definition. Transforming the lexed text into a DOM document is also done by parce, using a Transform that’s coupled to the language definition.

Most music manipulation functions operate on the quickly DOM, which afterwards can update the text document it originated from, if desired. To target only specific regions in a text document, often a parce.Cursor is used.

## Usage

```py
import parce.transform
from quickly.lang.lilypond import LilyPond

# MIDI file taken from https://www.mfiles.co.uk/scores/prelude04.htm

infile = open("prelude04-midi.ly")

raw_data = infile.read()
# print(raw_data)

tree = parce.root(LilyPond.root, raw_data)

tree.dump() # outputs a tree-like structure of the file

t = parce.transform.Transformer()
music = t.transform_tree(tree)

music.dump() # outputs a different tree-like structure of the file

print(type(music))
print(len(music))
```


### Example output

```py 
>>> music = doc.get_transform(True)
>>> music.dump()
<lily.Document (1 child)>
 ╰╴<lily.Assignment music (3 children)>
    ├╴<lily.Identifier (1 child)>
    │  ╰╴<lily.Symbol 'music' [0:5]>
    ├╴<lily.EqualSign [6:7]>
    ╰╴<lily.MusicList (5 children) [8:21]>
       ├╴<lily.Note 'c' [10:11]>
       ├╴<lily.Note 'd' [12:13]>
       ├╴<lily.Note 'e' [14:15]>
       ├╴<lily.Note 'f' [16:17]>
       ╰╴<lily.Note 'g' [18:19]>
```