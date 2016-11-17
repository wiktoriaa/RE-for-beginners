# Want to translate this book to another language?

Take a look on [GitHub repository](https://github.com/dennis714/RE-for-beginners).
For example, `main_EN.tex` for English, `main_RU.tex` for Russian, etc.
So just find `filename_EN.tex` file you want to translate, copy to filename_XX.tex (where XX is your language)
and replace English text by yours.
No special TeX/LaTeX knowledge is needed.
Then just send it to me.
Or if you familiar with git and github, add your file to source tree and create pull request.
How to find directories with `*_EN.tex` files?
[Look here](https://github.com/dennis714/RE-for-beginners/search?utf8=%E2%9C%93&q=input+EN&type=Code).

Korean, Chinese and Persian languages are reserved by publishers.

## Style

I deeply convinced that technical literature should should be terse and formal.
Imagine you've got some reference book on your bookshelf.
You need it once a month, to get Pi exact value from it or something like that.
Perfect reference is a book where you'll see "Pi=3.14159..." and nothing else.
Informal or verbose language in technical books annoys you each time you looking up for the information you need.

## Language

On the other hand, terminology may be informal, just as typical modern IT bloggers use.
Don't hesitate to use English words in your language if this is norm in IT speech of your language and there are no good translation yet.
For example, Russian IT language is a mix of Russian and English words, and this is current language norm (at least in 2016), so I use this language in this book.

## Defined macros

Spanish: `\ES{}`
Brazilian Portuguese: `\PTBR{}`
Polish: `\PL{}`
Italian: `\ITA{}`
German: `\DE{}`
Thai: `\THA{}`
Dutch: `\NL{}`

There are also `\ESph{}`, `\PTBRph{}`, `\PLph{}`, `\DEph{}` and `\ITAph{}` placeholder macros in `*.tex` files, where the translated text must be.

## Compiling

To check your results, just run `make ES`, `make PTBR`, `make PL`, `make ITA`, `make DE`.
You'll see almost blank pages with only listings and screenshots, without any text, but your text will be present.

## Contact me

Do not hesitate to contact me if you have any questions: dennis(a)yurichev.com

