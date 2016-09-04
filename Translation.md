Want to translate this book to some other language?
---------------------------------------------------

Easy way
--------

Just send me any piece of translated text (no matter how short) and I'll put it into my LaTeX source code.

Speed isn't important, because this is open-source project, after all.
Your name will be mentioned as project contributor.

Korean, Chinese and Persian languages are reserved by publishers.

English and Russian versions I do by myself, but my English is still that horrible, so I'm very grateful for any notes about grammar, etc.
Even my Russian is also flawed, so I'm grateful for notes about Russian text as well!

So do not hesitate to contact me: dennis(a)yurichev.com

Hard way
--------

For large parts, the best way is a single file for each language.
For example, main_EN.tex for English, main_RU.tex for Russian, etc.
So just find filename_EN.tex you want to translate, copy to filename_XX.tex (where XX is your language)
and replace English text by yours.
Then just send it to me. Or if you familiar with git and github, add your file to source tree and create pull request.
How to find directories with *_EN.tex files? Look here:
https://github.com/dennis714/RE-for-beginners/search?utf8=%E2%9C%93&q=input+EN&type=Code

For small files, it's OK to keep several translations in single file, like this:

	\ifdefined\ENGLISH
	... English text ...
	\fi
	\ifdefined\RUSSIAN
	... Russian text ...
	\fi

And finally language macros are also used: English text can enclosed in `\EN{}` 
LaTeX macro, all Russian text in `\RU{}`.
m4 (used here for assembly listings) has `_EN()` and` _RU()` macros.

Github may be used as for coordination.

Do not be discouraged by the size of the whole project. 
Try to translate some small piece with familiar material to you.
Start the ball rolling, as they say. Some other translator may continue your work.

How often to submit pieces of translated text?
----------------------------------------------

The book changes often, like Wikipedia, so it's good idea to send me anything as you have it,
so other people can use it, fix it, etc.
Also, other translators will be aware that some piece is already translated, so they will work on another one.

Style
-----

I deeply convinced that technical literature should should be terse and formal.
Imagine you've got some reference book on your bookshelf.
You need it once a month, to get Pi exact value from it or something like that.
Perfect reference is a book where you'll see "Pi=3.14159..." and nothing else.
Informal or verbose language in technical books annoys you each time you looking up for the information you need.

Language
--------

On the other hand, terminology may be informal, just as typical modern IT bloggers use.
Don't hesitate to use English words in your language if this is norm in IT speech of your language and there are no good translation yet.
For example, Russian IT language is a mix of Russian and English words, and this is current language norm (at least in 2015), so I use this language in this book.

Defined macros
--------------

Spanish: `\ES{}`
Brazilian Portuguese: `\PTBR{}`
Polish: `\PL{}`
Italian: `\ITA{}`
German: `\DE{}`
Thai: `\THA{}`
Dutch: `\NL{}`

You may start to translate right now.
To check your results, just run `make ES`, `make PTBR`, `make PL`, `make ITA`, `make DE`.
You'll see almost blank pages with only listings and screenshots, without any text.
Grep for each `\EN{}` macro in .tex file and add your translation.
Same story with .m4 files, there are `_ES()`, `_PTBR()`, `_PL()`, `_DE()` and `_IT()` macros.

There is also `\ESph{}`, `\PTBRph{}`, `\PLph{}`, `\DEph{}` and `\ITAph{}` placeholder macros in .tex files, where the translated text must be.
You may start to translate there.

Do not hesitate to contact me if you have any questions.

