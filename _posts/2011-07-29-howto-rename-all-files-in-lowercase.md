---
title: 'HOWTO: rename all files in lowercase'
categories:
- howto
- english
tags:
- job 
- linux
- bash
---
Pretty simple.

  1. If you don't have a *NIX operating system, please skip this post.
  2. Create a script with the following content:

     ```bash
     #!/bin/sh  
     for f in *; do  
         g=`expr "xxx$f" : 'xxx(.*)' | tr '[A-Z]' '[a-z]'`  
         mv -n "$f" "$g"  
     done
     ```
     and call it `rename.sh`

  3. Give it execution permissions, typing:

     ```
     $ chmod u+x rename.sh
     ```
  4. Execute the script from the directory where you have your files to rename
  
If you have two files, `Foo` and `foo`, you'll be notified and **no files
will be overwritten**. So, don't worry about that, you won't lose any
information. To be sure, try it with a few files in "_/tmp_" directory.

Question? Suggestion? Comment! :)
