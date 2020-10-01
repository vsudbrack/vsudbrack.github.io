---
layout: post
title:  "Scheduling programs to run with <i>crontab</i>"
date:   2020-09-17
categories: page update
---

Tired of repeating the same command once-in-a while? Looking forward to creating automated jobs? Then I think you'll enjoy this tutorial. I'll briefly introduce the *crontab* mechanism, how to add commands to it with some of my recommandations and finally an idea of internet scrapping you could make with *crontab*.

## What is *crontab*?

**Crontab is a mechanism to schedule the execution of command lines with specific frequencies**. For instance, if you run a program everyday, you can add it to your crontab and the computer will run it automatically everyday. Sounds like magic to your ears, doesn't it? Yes, it will save you lots of work. 

During any session, you can enter the command line
```
> crontab -l
```
and it will **show you all scheduled commands** for your user (each user has different *crontab*s). 

#### How to edit it

When **adding new commands** to your *crontab*, remember that this file cannot be edited by regular text editors (like Gedit, Emacs,...). To edit it, enter the crontab command with the flag '-e' for editing,
```
> crontab -e
```
on your shell. To close your *crontab* you can type *CTRL+X*,*Y*,*Enter* to close and save, or *CTRL+X*,*N*,*Enter* to discard any possible changes you might havee done.

There, its own text editor opens and you will see the following syntax (so-called *Crontab Macros*):

```
@yearly    #Run once a year  (at 0a.m. of January 1st)
@monthly   #Run once a month (at 0a.m. of the 1st day)
@weekly	   #Run once a week  (at 0a.m. of Sunday)
@daily     #Run once a day   (at 0a.m.)
@hourly	   #Run once an hour at the beginning of the hour
@reboot	   #Run at startup
```

I should mention that there is a more generic syntax, which allows you to run codes every minute, every 5 hours, every other day, etc. It is based on values for minute (m), hour (h), day of month (dom), month (mon) and day of week (dom). There are plenty of [tutorials](https://code.tutsplus.com/tutorials/scheduling-tasks-with-cron-jobs--net-8800) that focous on this syntax, so in this tutorial, we'll skip these details and get to the practical examples.

Also, if you want more about the theory and history of *crontab*, check its [Wikipage](https://en.wikipedia.org/wiki/Cron). 

## Helpful examples
I'll list here some of my favorite commands to have on your *crontab*, you can simple write them in your crontab with the flag '-e' (remember you cannot edit it from regular editors). I tried to organize them in order of frequency, and at the end the more complex examples.

Keep in mind that running all jobs hourly (when they only need to run once a day) is overkill for resources if it is not extremely necessary.

#### Run codes every day



Writing the output of the command to an output file can be done with closing bracket (>), but that will rewrite the output file every time (and so you only have the last output). If you would like to keep a record of output logs, then by using double closing bracket (>>) you will append the last output in the end of the file wit previous output. 

Everyday, you can clear your cache that is celebrating birthday, ie. that is 1 year old. With this simples line in your *crontab*, you will remove all files within *~/.cache* whose last modification date is more than 365 days ago.  
```
@daily chronic find ~/.cache -depth -type f -mtime +365 -delete
```
This will avoid you saving things of websites you hardly visited the last year and have more space for the files that matter :+1:

#### Run codes whenever you reboot your computer

The macro @reboot is the one I use the most! It is extremely helpful either if you have problems with screen resolution, your keyboard layout or even to mount my devices everytime you reboot your computer. 

Problems with screen resolution

Your keyboard configurations reset everytime your computer reboot? Then you can set the keyboard layout everytime you reboot your machine with
```
@reboot setxkbmap -layout br
```
where *br* is an example. 

Whenever I reboot my computer, I need to mount my external HD to the folder *MyHD*. Instead of doing it manually, *crontab* does the trick with
```
@reboot sudo mount -t ext4 /dev/sda /media/vsud/MyHD
```

When commands require internet connection, you should be aware that the *@reboot* possibly runs even before the computer settles internet connection. One strategy is to run these commands after a 5-minute sleep in order to make sure that the computer had had time to have proper internet access, you can run
```
@reboot sleep 5m & sudo apt-get update
```
for instance.

#### Automated roboots

When writing a script to be excuted periodically, you should be careful to prevente job collision - that it, if the program takes 2h to run, and I run it hourly, we'll running multiple times the same code, and that's not what we usually want. Therefore, you should make sure that there isn't any other similar process still runing before starting to run it again. You can make this control with this following structure.
```
RUNFILE="my_program.run"  #Come up with a generic name...
if [ -f $RUNFILE ]; then  #If the program is still running
    exit                  #simply exit. 
fi
touch $RUNFILE            #Otherwise, register that you're starting an execution.
> #################
> # All your commands go here
> #################
rm $RUNFILE               #Once finished, remove this register. 
```

One example is using *curl* command to download a webpage everyday. Afterwords you can process these downloaded .html and search for keywords of your interest. 


***

####Bonus
```

```
will send to yourself a reminder to stop working at 18h30 =)

I want to thank Renato Coutinho who taught me this nice trick using it to create robots to analyse COVID-19 data in Brazil. I also thank you for reading up to here and I hope you found it useful for you! Tweet or DM me at *[@vitorsudbrack](https://twitter.com/vitorsudbrack)* if you have any **new ideas of exemples to add to the list**, it will be nice to hear them from you and I look forward to using them too.
