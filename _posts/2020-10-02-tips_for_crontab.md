---
layout: post
title:  "Scheduling programs to run with <i>crontab</i>"
date:   2020-10-02
categories: page update
---

Tired of repeating the same command every once-in-a while? Looking forward to creating automated jobs? Then, I think you'll enjoy this tutorial. 

I'll briefly introduce the *crontab* mechanism, how to add commands to it with some of my recommendations and finally an idea of internet scrapping you could make with *crontab*.

## What is *crontab*?

**Crontab is a mechanism to schedule the execution of command lines with specific frequencies**. For instance, if you run a program everyday, you can add it to your crontab and the computer will run it automatically everyday (as long as the computer is on). Sounds like magic to your ears, doesn't it? Yes, it will save you lots of work. 

During any terminal session, you can enter the command line
```
> crontab -l
```
and it will **show you all scheduled commands** for your user (each user has different *crontab*s). 

#### How to edit it

When **adding new commands** to your *crontab*, keep in mind that it is not an ordinary text file (like *~/.bashrc*, and so on) and it cannot be edited by regular text editors (like Gedit, Emacs,...). To edit it, enter the crontab command with the flag '-e' for editing,
```
> crontab -e
```
on your shell. It will probably ask you for a text editor of your choice, and then you proceed from there as you write to regular files.  At this point, the text editor will open your *crontab* and you will see the following syntax (so-called *Crontab Macros*):

```
@yearly    #Run once a year  (at 0a.m. of January 1st)
@monthly   #Run once a month (at 0a.m. of the 1st day)
@weekly	   #Run once a week  (at 0a.m. of Sunday)
@daily     #Run once a day   (at 0a.m.)
@hourly	   #Run once an hour at the beginning of the hour
@reboot	   #Run at startup
```
Therefore, you basically **enter in every line a frequency with one Crontab Macro, and one command to be run.** The examples in the next section you'll help you understand it, make sure you check them out before editing.

I should mention that **there is a more generic syntax** than Macros, which allows you to run codes every minute, every 5 hours, every other day, etc. It is based on values for minute (m), hour (h), day of month (dom), month (mon) and day of week (dom). There are plenty of [tutorials](https://code.tutsplus.com/tutorials/scheduling-tasks-with-cron-jobs--net-8800) that focus on this syntax, so in this tutorial, we'll skip these details and get to the practical examples with Macros.

Finally, after editing as much as you wish, remember when closing your *crontab* you can either **save your modifications** typing *CTRL+X*,*Y*,*Enter* to close and save, or type *CTRL+X*,*N*,*Enter* to discard any possible changes you might have done.

Also, if you want more about the theory and history of *crontab*, check its [Wikipage](https://en.wikipedia.org/wiki/Cron). 

## Some examples to make your life easier
I'll list here some of my favorite commands to have on your *crontab*, you can simply write them in your crontab with the flag '-e' (remember you cannot edit it from regular editors). I tried to organize them by frequency, and at the end the more complex examples.

Keep in mind that **running all jobs hourly (when they only need to run once a day) is overkill for resources if it is not extremely necessary**, and might slow down other processes. That is why I start with daily frequencies, but examples are very interchangeable.

Before getting to business, a reminder: **writing the output of a command to an output-file is highly recommended** and it can be done with a closing bracket (>), but that will rewrite the output file every time (and so you only have the last output). If you would like to keep a record of output logs, then by using two closing brackets (>\>) you will append the last output in the end of the file with previous output. 

#### Run codes every day

Everyday you can **clear your cache files that are celebrating birthday**, ie. that are 1-year old. With this simple line in your *crontab*, you will remove all files within *~/.cache* whose last modification date is more than 365 days ago.
```
@daily chronic find ~/.cache -depth -type f -mtime +365 -delete
```
This will avoid you saving things of websites you hardly visited the last year and have more space for the files that matter :+1:

You also can **daily check for updates of your programs and your packages**, some routine of maintenance of your PC would be like
```
LOGFILE="$/.script/outputs/autoupdate_daily.log"
@daily sudo apt-get update 	     >> $LOGFILE
@daily sudo apt-get upgrade -y       >> $LOGFILE
@daily sudo apt-get autoremove -y    >> $LOGFILE
@daily sudo apt-get autoclean -y     >> $LOGFILE
@daily rm -rf ~/.local/share/Trash/* >> $LOGFILE
```
**updating, upgrading, cleaning expired packages and the trash can** every day at midnight. 

#### Run codes whenever you reboot your computer

The macro *@reboot* is the one I use the most! It is extremely helpful either if you have problems with **screen resolution**, your **keyboard layout** or even to **mount devices everytime you reboot your computer**. 

Once I had problems with screen resolution and I solved installing *xrandr* and adding this line to my *crontab*:
```
@reboot xrandr -s 800x600 -r 85 --output HDMI-0
```
Notice it might change depending on the output and ideal resolution to your device. 

And it your keyboard configurations reset every time your computer reboot, then you can reset the keyboard layout everytime you reboot your machine with
```
@reboot setxkbmap -layout br
```
where *br* is an example. 

And whenever I reboot my computer, I need to mount my HD to the folder *MyHD*. Instead of doing it manually, *crontab* does the trick with
```
@reboot sudo mount -t ext4 /dev/sda /media/vsud/MyHD
```

When **commands require internet connection**, you should be aware that the *@reboot* possibly runs even before the computer settles internet connection. One strategy is to run these commands after a 5-minute sleep in order to make sure that the computer has had time to have proper internet access. For instance, you can run
```
@reboot sleep 5m && ping 8.8.8.8 -c 5
```
but of course this example doesn't make anything special, even so I leave the example here because it is helpful to develop further commands that require the internet. 

#### Automated robots

First, to **automate one program** :robot:, you have to call it from the *crontab* and not write it directly there. So in the *crontab* there is no big deal, just use something like
```
@hourly bash $/scripts/update_cases_covid19.sh
```

Now, the **tricks lay in the *.sh* file** you are writing. For instance, when writing a script to be executed periodically, you should be careful to **prevent job collision** - that is, if the program takes 2h to run and you run it hourly, we'll be running the same code simultaneously, and that's not what we usually want. 
Therefore, you should make sure that there isn't any other similar process still running before trying to start running it again. You can make this control with this following structure.

```
RUNFILE="my_flag.run"     #Come up with a generic name...
if [ -f $RUNFILE ]; then  #If the program is still running
    exit                  #simply exit. 
fi
touch $RUNFILE            #Otherwise, register that you're starting an execution.
##################################
# All commands you want to     ###
# automatize go here in middle ###
##################################
rm $RUNFILE               #Once finished, remove this register. 
```

One example is using *curl* command to download a news webpage everyday. Several platforms such as Youtube and Spotify have free API in which you can also download data from these websites and keep a historical dataset on your computer, or even with Github commands to pull or push repositories.  Afterwards, you can process these downloaded datasets and search for keywords of your interest or check its time behaviours. 


***

I thank Professor **Renato Coutinho** who taught me this nice trick using it to create robots to analyse COVID-19 data in Brazil. 

I also thank you for reading up to here and I hope you found it useful for you! Tweet or DM me at *[@vitorsudbrack](https://twitter.com/vitorsudbrack)* if you have any **new ideas of exemples to add to the list**, it will be nice to hear them from you and I look forward to using them too.


