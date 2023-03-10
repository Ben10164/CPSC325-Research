import parce.transform
from quickly.lang.lilypond import LilyPond

# MIDI file taken from https://www.mfiles.co.uk/scores/prelude04.htm

# run `midi2ly prelude04.mid`

infile = open("prelude04-midi.ly")

raw_data = infile.read()
# print(raw_data)

tree = parce.root(LilyPond.root, raw_data)

# tree.dump()

t = parce.transform.Transformer()
music = t.transform_tree(tree)

# music.dump()

print(type(music))
print(len(music))