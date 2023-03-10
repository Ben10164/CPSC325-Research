# LilyPond in python?

`brew install lilypond`
`pip install python-ly`

## python-ly

<https://pypi.org/project/python-ly/>

^ so this library was really annoying.  
i spent about an hour trying to implement it so here are some of the issues i faced while doing so

```py
from ly import *

# this doesnt work because there is no __all__ in the __init__.py file for python-ly
```

the documentation was very odd.

I did not enjoy using this module

there was no examples in the documentation, and i found 0 instances of it being used before

## quickly

<https://pypi.org/project/quickly/>
