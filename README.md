# chomsky - a *meaningless* command line tool
for those times when you want to say nothing, but don't know how to say it

## description
- a python command line tool that generates a syntactically valid but semantically nonsensical sentence.
- sentences will loosely follow the phrase structure of ["colorless green ideas sleep furiously"](https://en.wikipedia.org/wiki/Colorless_green_ideas_sleep_furiously) 
- that's about it 

## installation
(you've gotta have python installed)

if you want to try it out (for mac), and you have homebrew installed run:

```
git clone https://github.com/nknish/chomsky; make -C chomsky install
```

this will probably cause some permission issues if you don't have homebrew. in that case, just run with `sudo`:

```
git clone https://github.com/nknish/chomsky; sudo make -C chomsky install
```

...and then the command `chomsky` will be in your system path (in `usr/local/bin`). 

if you're on windows, good luck!

## usage
- `chomsky` to print a sentence to stdout
- `chomsky --color` or `chomsky -c` to make it pretty
- `chomsky 3` (or any positive integer) to get that many sentences
- `chomsky --help` (or any invalid args) to see the usage syntax
- i might add some more features later but who knows

## tech stack
- written in python
- i figured out how to use a makefile and shell scripting to make installation easy, which was cool
    - shoutout jarrett's cs449
 
## contributing
- if you have any ideas or find any bugs, just let me know
- if you get a really great sentence, you should also share that

## credits
- credit to noam chomsky i guess
- somewhat inspired by [fortune](https://en.wikipedia.org/wiki/Fortune_(Unix))
- lists of words from [here](http://www.ashley-bovan.co.uk/words/partsofspeech.html) for now.
