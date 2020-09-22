---
layout: post
title:  "Scheduling programs to run with <i>crontab</i>"
date:   2020-09-17
categories: page update
---

Tired of repeating the same command once-in-a while? Looking forward to creating automated jobs? Then I think you'll enjoy this tutorial.

## What is *crontab*?


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
on your shell. There, its own text editor opens and you will see the following syntax (so-called *Crontab Macros*):

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

#### Run codes whenever you reboot your computer

The @reboot is the one I use the most!

Problems with screen resolution

Problems with keyboard layout


When commands require internet connection

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
