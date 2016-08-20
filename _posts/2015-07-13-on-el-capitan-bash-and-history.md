---
title: On El Capitan, bash, and history
categories:
- osx
- environment
- apple
tags:
- osx
- bash
- el capitan
---
As explained in this [reddit](http://www.reddit.com/r/osx/comments/397uep/changes_to_bash_sessions_and_terminal_in_el/),
Apple made some changed for bash users especially on saving bash sessions/history.
Whenever a user exits, it saves the history in `~/.bash_sessions/` directory.
Until here, nothing strage until you don't play with `HISTFILESIZE` and `HISTSIZE`
environment variables.

In `/etc/bash_bashrc_Apple_Terminal` (which is called by `/etc/bashrc`), the
following piece of code can cause some issues when you have set `HISTFILESIZE`
and `HISTSIZE` to a very high values:

```
# Save new history commands.  
if [ $BASH_SESSION_HISTORY -eq 1 ]; then  
    history -a  
    cat "$BASH_SESSION_HISTFILE_NEW" >> "$BASH_SHARED_HISTFILE"  
    cat "$BASH_SESSION_HISTFILE_NEW" >> "$BASH_SESSION_HISTFILE"  

    # Empty this session's history file to keep track of  
    # which commands have already been copied.  
    : >| "$BASH_SESSION_HISTFILE_NEW"

    # Read/write the files via the history command so they  
    # are truncated as appropriate.  
    history -r "$BASH_SHARED_HISTFILE"  
    history -w "$BASH_SHARED_HISTFILE"  
    history -r "$BASH_SESSION_HISTFILE"  
    history -w "$BASH_SESSION_HISTFILE"  
fi  
```
    
I had the `HIST*` variables set as:

```
HISTFILESIZE=1000000000  
HISTSIZE=1000000
```
    
and this is what happened when I logout from the shell.

```
leonard:~ diegor$ logout  
+ bash_update_session_state  
+ bash_save_session_state  
+ '[' 1 -eq 1 ']'  
+ '[' -n /Users/diegor/.bash_sessions/97360883-85FB-4463-A9DF-1246FCD05977.session ']'  
+ echo -n Saving session...  
Saving session...++ date  
+ echo echo Restored session: Mon Jul 13 08:23:07 BST 2015  
+ declare -F bash_session_save_state  
+ '[' 1 -eq 1 ']'  
+ history -a  
+ cat /Users/diegor/.bash_sessions/97360883-85FB-4463-A9DF-1246FCD05977.historynew  
+ cat /Users/diegor/.bash_sessions/97360883-85FB-4463-A9DF-1246FCD05977.historynew  
+ :  
+ history -r /Users/diegor/.bash_history  
```    

Looking at the help of history, it is stated:

```
The `-w' option writes out the current history to the history file;  
`-r' means to read the file and append the contents to the history list instead.
```
    
which means: if you `HIST*` size are very high, the size is going to grow a lot,
with some implications (see three bullet points below)

At this point you observe the following things:

  * the terminal is stuck on `Saving session...`
  * CPU usage goes high (you have to kill the bash process from another shell or System Monitor)
  * the size of `~/.bash_session` is increasing overtime: every time you logout it increases by the size of the history file (in my case was 20MB)

My suggestion is **NOT to set those variables** and let OSX deal with them.

IHTH
