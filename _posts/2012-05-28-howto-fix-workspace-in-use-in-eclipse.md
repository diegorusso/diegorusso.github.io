---
title: 'HOWTO: fix "workspace in use" in Eclipse'
categories:
- howto
- english
tags:
- job
- eclipse
---
If you have this error when you try to run Eclipse and you don't have any
running instance of Eclipse, solve it in this way:

  1. Go to your `workspace` directory
  2. Inside `.metadata` directory, delete `.lock` file
  3. Run Eclipse.
  
Simple, isn't it? :)
