---
title: 'HOWTO: fix "workspace in use" in Eclipse'
categories:
- computer
- job
- howto
tags:
- howto
---
If you have this error when you try to run Eclipse and you don't have any
running instance of Eclipse, solve it in this way:

  1. Go to your _**"workspace"**_ directory
  2. Inside _**".metadata"**_ directory, delete **_".lock"_** file
  3. Run Eclipse.
  

  
Simple, isn't it? :)

