Want to translate this book to some other language?
---------------------------------------------------

Keep in mind, it's a very hard and tedious work.
You'll need basic understanding of git, LaTeX and m4.
Aside from this, I do a lot of changes, so translators may need to syncronize their
work often.

But anyway, everything is simple: as you may see, all English text is enclosed in `\EN{}` 
LaTeX macro, all Russian text in `\RU{}`.
m4 (used here for assembly listings) has `_EN()` and` _RU()` macros.

Since translation project is large, work can be done gradually.
Try to start at ["patterns" directory] 
(https://github.com/dennis714/RE-for-beginners/tree/master/patterns).
There are also [lite (introductory) version](http://beginners.re/#lite), and that's a good idea to translate it first.
Translators may use git to get to know which TeX files are in somewhat stable state so can be 
translated before those parts which I still rework occasionally.

Choose a new macro name, for example, `\FR{}` for French or `\PTBR{}` for Brazilian Portuguese.
Create a new fork at Github and I'll setup everything to build a book in your language.
Or just send me files you had changed to `dennis(a)yurichev.com`.

In past, I often translated sentences by parts, so each sentence may contain several 
`\RU{}` and `\EN{}` macros, like [here](https://github.com/dennis714/RE-for-beginners/blob/b06840982e0c50c661b4327cbf5e32784cfe5b51/patterns/03_printf/x86/x86.tex#L98).
It was not a good idea, as I realized.
Better way to provide translations to a sentence is to list them, like [here](https://github.com/dennis714/RE-for-beginners/blob/06c668a6c57546239cc9dfa7f8c9cb24b5ab258c/patterns/00_ret/main.tex#L44):

    `\EN{English sentence.}`
    `\RU{Russian sentence.}`
    `\FR{French sentence.}`
    ...
    `\EN{Another English sentence.}`
    `\RU{Another Russian sentence.}`
    `\FR{Another French sentence.}`
    ...

Since this work can be done collaboratively, you may also use [my forum](http://forum.yurichev.com/viewforum.php?f=6) for coordination.
Github may also be used as well.

Do not be discouraged by the size of the whole project. 
Try to translate some small piece with familiar material to you.
Start the ball rolling, as they say. Some other translator may continue your work.

All your work will be licensed, like this book, in CC BY-NC-ND terms.
Korean, Chinese and Farsi translations are reserved by publishers.
English and Russian versions I maintain by myself, but any fixes are very welcome!

[Contact me](http://yurichev.com/contacts.html) for any questions.
