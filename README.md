# chomsky - a _meaningless_ command line tool

for those times when you want to say nothing, but don't know how to say it

## description

- a python command line tool that generates a syntactically valid but semantically nonsensical sentence.
- sentences will loosely follow the phrase structure of ["colorless green ideas sleep furiously"](https://en.wikipedia.org/wiki/Colorless_green_ideas_sleep_furiously)
- that's about it

## installation

### dependencies

- only supports **mac** os.
- you've gotta already have **python** installed
- downloading this without using `git clone` will be a headache but is certainly possible

### instructions

- just run

```
git clone https://github.com/nknish/chomsky && sh chomsky/install.sh
```

- if you have permission issues, you'll be prompted to enter your password.

- and then the command `chomsky` will be in your system path (in `usr/local/bin`).

## usage

- `chomsky` to print a sentence to stdout
- `chomsky --color` or `chomsky -c` to make it pretty
- `chomsky 3` (or any positive integer) to get that many sentences
- `chomsky --help` (or any invalid args) to see the usage syntax
- i might add some more features later but who knows

## tech stack

- written in python
- i figured out how to use shell scripting to make installation easy, which was cool
  - shoutout jarrett's cs449

## contributing

- if you have any ideas or find any bugs, just let me know
- if you get a really great sentence, you should also share that

## credits

- credit to noam chomsky i guess
- somewhat inspired by [fortune](<https://en.wikipedia.org/wiki/Fortune_(Unix)>)
- lists of words from [here](http://www.ashley-bovan.co.uk/words/partsofspeech.html) for now.
