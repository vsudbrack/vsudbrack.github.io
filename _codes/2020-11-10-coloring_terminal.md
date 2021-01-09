---
layout: post
title:  "A colorful terminal for scientists"
date:   2020-11-10
categories: codes
description: "How to color code files and datasets on Ubuntu terminal listing."
---

Make your experience navigating in your files through the terminal nicer coloring your different types of files (folders, datasets, codes, ...) with this simple tutorial. 

Here you can see, for instance, blue background for folders, green background for code files and pink background for data files - easy to spot each of them:

{% include image.html image="blog/exemple_dircolors.png" text="Example of colorful terminal" %}

## Making your experience nicer

Recently, I was searching some templates of colors to **ls** command (among others that also use them) and I came across this Github [nord-dircolors](https://github.com/arcticicestudio/nord-dircolors), where I downloaded and started using their [~/.dircolors](https://github.com/arcticicestudio/nord-dircolors/blob/develop/src/dir_colors). 

But then I realized that yet, it was not optimized for my needs (and I imagine other scientists), where I typically classify my files as pdfs (~~which I promise I'll read one day~~), databases (from NumPy, or datasets in csv, outputs  in .dat,...) and, most importantly, my executable codes (from Python, R, gnuplot,...). 

Therefore, I wanted to change a bit the nord-dircolors template in order to be very easy to identify these kinds of files from my terminal. I'll share here the experience I had changing it, showing how I added my most used extensions to the *dircolors* file.

#### How to change colors in dircolors

So if you open the original file *~/.dircolors*, from [nord-dircolors](https://github.com/arcticicestudio/nord-dircolors/blob/develop/src/dir_colors) or whatever base you'll prefer to work on, you'll see extensions of files and numbers. I'll briefly explain the meaning of each number that belongs to the triple you see separated by a semicolon:

The first number is for formatting the text:
```sh
00     #to restore default color
01     #for bold text
04     #for underlined text
05     #for flashing text
```

The second stands for choosing the letter-color of the text:
```sh
30     #for black letters
31     #for red letters
32     #for green letters
33     #for yellow (or brown) letters
34     #for blue letters
35     #for purple letters
36     #for cyan letters
37     #for white (or gray) letters
```

Finally, the last one indicates the background-color of the text:
```sh
40     #for black background
41     #for red background
42     #for green background
43     #for yellow (or brown) background
44     #for blue background
45     #for pink (or purple) background
46     #for cyan background
47     #for white (or gray) background
```

But notice that they are all different, so actually the order doesn't matter here (01;30;40 would be the same as 40;01;30). I'll keep the order just to be easier to read our alterations. The "actual" colors depend on the palette of colors of your terminal (and you can alter it opening a terminal, and *Edit>Preferences>Profile>Colors*). In the picture I showed before, I'm using 'system theme' of Ubuntu 18.04 and the palette **Solarized**. (Another hint since you opened this tab is changing the **cursor shape** from *box* to *underline*).

## Editing the colors

In your *~/.bashrc*, you have to add a couple of lines to tell the terminal to search for a file called *~/.dircolors*, and if existent, to use it as your default coloring. If it doesn't have this block of text, add it there:
```sh
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
```

Here, we wrote in our *~/.bashrc* some **aliases** so that the commands actually use the colors... if you don't know what they do, maybe you'll enjoy this older post **[Creating *aliases* on Ubuntu](/page/update/tips_for_alias.html)**, there I listed several other examples. 


In your *~/.dircolors* file (the one you download from [nord-dircolors](https://github.com/arcticicestudio/nord-dircolors/blob/develop/src/dir_colors) or other source), first change your folders to bold white-letters in blue-background, altering the line that starts with DIR to

```sh
DIR 01;37;44
```

Then, add at the bottom of the file the extension of your codes (and here are listed my most used extensions, feel free to add yours!) to bold white-letter with green-background, for instance:
```sh
#+--- Codes ---+
.py 01;37;42
.R 01;37;42
.Rmd 01;37;42
.gp 01;37;42
.md 01;37;42
.m 01;37;42
.c 01;37;42
.cpp 01;37;42
.html 01;37;42
.sh 01;37;42
.awk 01;37;42
```

And, after that, add your datasets and sheets extensions to bold white-letter in red-background:

```sh
#+--- Datasets and sheets ---+
.txt 01;37;45
.dat 01;37;45
.foo 01;37;45
.csv 01;37;45
.npy 01;37;45
.npz 01;37;45
.xls 01;37;45
.xlsx 01;37;45
.odt 01;37;45
.ott 01;37;45
```

Probably by now you got the idea of how to add extensions to this list in a colorful way! Be creative to what serves you best :smile:

Finally, I should mention we alter the user configurations. If you move the *.dircolors* from *~/* to */etc/DIR_COLORS*, then you will add a system-wide configuration file, and alterations will happen to all users. 

*** 

Thank you for reading up to here and I hope you found it useful for you. Take your time to also adapt the extensions to your most frequent types of files... and if you do so, tweet or DM me at *[@vitorsudbrack](https://twitter.com/vitorsudbrack)* with your **new extensions added to the lists**, it will be nice to hear them from you and I look forward to maybe using them too.

:brazil: This page does not have a version in Portuguese yet. If you are Brazilian and want to help me translating this post (or other contents of this webpage) to reach more easily Brazilian students, your help would be highly appreciated and acknowledged. Mail me! :)
