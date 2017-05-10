---
title: 'HOWTO: moving Time Machine data to new hard disk'
categories:
- howto
- english
tags:
- osx
- time machine
---
If you are using [**Time Machine**](http://www.apple.com/macosx/what-is-macosx/time-machine.html)
feature in OSX maybe you need to move data from
you hard disk to a new one avoiding to lose it. There is no official way to do
this, but with some trick you can do it easily. Follow these steps:

  1. Make sure both drives (could be also a remote hard disk) are connected;
  2. Launch _"Disk Utility"_
  3. In the left column, click on one drive name (NOTE: main drive icon!)
  4. At the right side click on _"restore"_ tab (the last one)
  5. From the left, click and drag the icon of the older hard drive to _"source"_ field
  6. Repeat step 5 with the new drive dragging it into _"destination"_ field
  7. Best choice is to set _"Erase Destination"_
  8. Click _"Restore"_
  9. Realax for some hours (**_for 120 GB I waited 5 hours_**).
  
[![]({{site.url}}/images/TMrestore.png){: .align-center}]({{site.url}}/images/TMrestore.png)

When the process finishes, new drive will have the same name of the old one.
**Rename old drive or give a new name to new drive**. Once you changed the
name open Time Machine settings and choose new drive.

That's it :)

If you have any trouble, let me know commenting this post.
