---
title: 'HOWTO: protect a web url with a password'
categories:
- howto
- english
tags:
- apache
- htaccess
- job
---
Today I show you how **to protect a web url with a password**. This can be
done in several ways (you can find it in Google) and in this post I use
[Apache2](http://apache.org/). Follow these steps:

  1. Install Apache2. Most OS have a preinstalled version (OSX has got)
  2. Create a file named .htpasswd` via `htpasswd`:
     
     ```
     $ htpasswd -c /path/to/.htaccess diegor
     ```

     and when the prompt asks you the password, type it (twice). The file looks
     like (in this case the password is like the username - **DON'T DO IT,
     EVER!!**):

     ```
     diegor:HMAATyF2kQ37E
     ```
  3. Put this file to a directory **NOT accessible** to web server. For example, move it above `www` root directory
  4. Finally create a file named `.htaccess` in the directory to protect:
     
     ```
     AuthUserFile /path/to/your/safedir/.htpasswd  
     AuthGroupFile /dev/null  
     AuthName EnterPassword  
     AuthType Basic
     require user diegor
     ```
  5. Restart Apache and go to you protected url via browser. You can't access until you type your user and password
  
That's it. If you have any issue, comment this post.
