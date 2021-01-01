---
layout: post
title:  "Creating <i>aliases</i> on Ubuntu"
date:   2020-09-15
categories: codes
description: "Intro and recommendations of alias to abbreviate long command-lines on Ubuntu."
---

Trying to be more productive and to have an easier experience with Ubuntu? So, I guess you'll enjoy the *alias* command as much as I do! Check here **what they are**, **how they work** and a **few suggested aliases** to have on your computer.

## What is an Alias?
**Alias** is shell command to create nicknames to abbreviate longer commands during a section on your Ubuntu terminal (and here I'm using *Ubuntu 18*, but most commands are simple enough to run in any other version). But because we know that our terminals always run the file *~/.bashrc* of your home folder in the begging of every new session, you can write *aliases* on this file and have them forever! ~~(or until you use someone else's computer and feel totally lost)~~

During any session, you can enter the command line
```sh
> alias
```
and it will **show you all valid _aliases_** in your current session. To **add a new alias** to your session (or to your *~/.bashrc*), enter
```sh
> alias Shortname='Long Command Line'
```
on your shell (double primes instead of single primes will work just as well).

You can learn more about *aliases* on this [Wikipage](https://en.wikipedia.org/wiki/Alias_(command)). Here, I'll skip to the practice and share with you ~~(and future me as a backup)~~ the ones I use the most.

## A list of recommanded alias
I'll list here some of my favorite **aliases** to have on your *~/.bashrc*, you can simple copy and paste them into your own file. I tried to organize them in a meaningful way that makes it easy to understand and easy to come up with your own ideas of *aliases*. 

#### Navigation
Let's start **navigating quickly** through the terminal:
```sh
> alias ..='cd ..'          #One folder up
> alias ...='cd ../..'      #Two folders up
> alias ....='cd ../../..'  #Three folders up
```
and here you can also add 'cd ~/favorite_folders' (remember to use always absolute paths to folders). For exemple, to acess the folder where I mount my External HD, I just type *cdhd* and the alias makes the trick with
```sh
> alias cdhd='cd /media/vsud/MyHD'
```
Finally, remember you can always go to your *home folder* with a simple 'cd' (without any argument).

#### Quick use - one letter
Some command lines are so recurrent that **they deserve one letter**:
```sh
> alias l='ls -CF'
> alias h='history'
> alias c='clear'
> alias e='exit'
> alias u='sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get autoclean'
> alias j='jobs -l'
> alias o='xdg-open' #Opens files with default application
```
and now you see how to use alias to **execute multiple commands at the same alias: &&**. 

#### Colors for files
Add some **colors** to your terminal, and show files and folders variously:
```sh
> alias ls='ls --color=auto' #Adds color to your ls in all cases
> alias la='ls -A'           #List all files and folders in columns (including hidden)
> alias ll='ls -alFh'        #List all files and folders in rows (including hidden)
> alias lr='ls -ltrh'        #List files and folders in rows by recent modified
> alias l.='ls -d .*'        #List only hidden directories in columns
```

This last example is very insightful to search for extensions you use the most, as in
```sh
> alias lcodes="echo 'Python:';ls *.py;echo 'R:';ls *.R;echo 'Gnuplot:';ls *.gp"  #List all .py, .R e .gp separately
```

And if you used alias to add flags to one command and maintained the same name of the original command (as we did with 'ls' up here), don't worry: if you ever need the **original command** for some reason, you can always use it by **starting with a backslash**, e.g. '\ls' is the original non-colored 'ls' command. Some other examples are:
```sh
> alias dir='dir --color=auto'
> alias egrep='egrep --color=auto'
> alias grep='grep --color=auto'
> alias fgrep='fgrep --color=auto'
> alias df='df -h'               #Size of files in KB, MB,...
> alias bc='bc -lqi'             #Calculator with libraries
```

#### Quick use - two letters
Some command lines are very useful and **they deserve two or three letters**:
```sh
> alias py='python3'
> alias ipy='ipython3'
> alias gp='gnuplot'
> alias rr='Rscript'
> alias now='date +"%d-%m-%Y %T"' #This one is useful in some contexts of automated logs
> alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort" #Show all mounted devices at /dev/...
```

#### Github users' best friends
Aliases make our lives of **add, commit, pull and push** way faster... but be careful - don't use generic commit messages if you work in a collective repository!
```sh
> alias gs='git status'
> alias gl='git pull'
> alias gp='git push'
> alias ga='git add .' # Add all modified files
> alias gc='git commit -m' 
> alias gb='git branch'
> alias gco='git checkout'
> alias gitall='bash ~/.script/gitall.sh' # Look below at 'Make you own bash scripts'
> alias run_jekyll='bundle exec jekyll serve' # Useful if you have a website in jekyll
```

#### Control your CPU clocking
If you have installed *[cpufreq](http://manpages.ubuntu.com/manpages/bionic/man1/cpufreq-set.1.html)* package, you can **control your clocking** and get information with
```sh
> alias highclock='sudo cpufreq-set -r -g performance && cpufreq-info'
> alias lowclock='sudo cpufreq-set -r -g powersave && cpufreq-info'
```
so before running a simulation run *highclock*, and then return to the regular state by *lowclock*. Using highclock nonstop might harm your hardware by overheating it and overwasting the battery, so keep those things in mind!

#### Log to your remote machines
You can use it to quickly save the addresses or accesses of servers and remote machines, you can use for instance
```sh
> alias uni_server='ssh -X debian@186.217.XXX.XX'
```

#### Aliases that help clumsy people
Your common typos can become your helpful aliases: this way you save time from retyping command lines. Some examples:

```sh
> alias pdw='pwd'
> alias dc='cd' #If you ever need the actual calculator dc, use \dc
```

#### Make your own bash scripts 

You can create a hidden folder at *~/* called *.scripts* . There you can put all your bash scripts with long command lists to your hardest endeavours. 

To use the alias *gitall* I mentioned before, create *gitall.sh* with
```sh
#!/usr/bin/env bash

git add . 
echo -n "Enter the commit message with quotes: "
read TEXT

if [[ -z TEXT ]]
then
	git commit -m $TEXT #If you enter a particular message
else
	git commit -m "Add update" #General message for updates without message
fi

git push && \
echo "**** Successfully pushed to Github. Status: ****" && \
git status
```

Other examples, sometimes I had matrices in a file and I wanted to transpose them quickly into a new file. So, I opened in the hidden folder *~/.scripts/* a file with an [algorithm](https://stackoverflow.com/questions/1729824/an-efficient-way-to-transpose-a-file-in-bash) in *awk* to transpose files. Finally, I wrote an alias that accesses this 'hidden file’ so that it becomes the simple terminal line *transpose*...
```sh
> alias transpose='awk -f ~/.scripts/transpose.awk'
```
and you can do the same using *Bash scripts*, *awk*, *Python*, *C*, and so on, to your most recurrent needs. 

***

Thank you for reading up to here and I hope you enjoyed this list of useful **alias**! [**Retweet** this post](https://twitter.com/vitorsudbrack/status/1305998416816807942?s=20), tweet or DM me at *[@vitorsudbrack](https://twitter.com/vitorsudbrack)* if you have any **new ideas to add to the list**, I'll be happy to hear them from you and start using them too.

***

Updated on Oct, 2nd. with more examples.
Last update on Jan, 1st. with new script.




