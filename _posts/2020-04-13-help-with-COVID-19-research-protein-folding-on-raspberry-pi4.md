---
title: Help with COVID-19 research - protein folding on Raspberry Pi4
categories:
- howto
- english
- personal
tags:
- covid19
- raspberry
- rosetta
---

Hello, it has been a while since I wrote here last time.

Today I want to share with you something I've been doing in the last couple of
days. The lock down measures for COVID-19 and some free time brought me to
tinker a bit with my Raspberry Pi4.

The project [Rosetta@home](https://boinc.bakerlab.org) allows people to give
compute power to scientists for designing new proteins. The compute power could
come from any device: a laptop, a desktop, a server and even a portable device.

Recently I bumped into [the news of running Rosetta@home on aarch64 (arm64)](
https://twitter.com/mininodes/status/1246091380507553792) hardware and,
in my case, on my new and shiny Raspebrry Pi4.

In theory what you need is:
* An account on: [https://boinc.bakerlab.org](https://boinc.bakerlab.org)
* A Raspberry Pi4
* A 64-bit OS
* The BOINC client
```
$ sudo apt-get update
$ sudo apt-get install boinc-client boinctui
```
* The client configure with your email/password

A good write-up could be found [here](
https://www.mininodes.com/how-to-run-rosettahome-on-arm-powered-devices/)

[![Protein Folding on Raspberry Pi4]({{site.url}}/assets/images/protein_folding_on_rpi4.png){: .align-center}]({{site.url}}/assets/images/protein_folding_on_rpi4.png)

While I was setting it up I found few *"issues"*. Hopefully they could save you
some time.

**Rosetta doesn't work on Raspbian**  
If you own a Raspberry Pi4, I'm sure you'll have a [Raspbian](
https://www.raspberrypi.org/downloads/raspbian/) based system. It runs without
any problem but unfortunately it is not suitable for running Rosetta@home.
Although the hardware supports 64-bit, Raspbian is a 32-bit OS and this means
it cannot run 64-bit applications.  
**Solution: install a 64-bit distribution.**  
Ubuntu officially supports Raspberry
Pi4. Download the **64-bit** version from [here](
https://ubuntu.com/download/raspberry-pi) or follow [this tutorial from
Ubuntu](https://ubuntu.com/tutorials/how-to-install-ubuntu-on-your-raspberry-pi)
I had issue with WiFi module hence reverted to wired connection!

**The SD card is a bit slow.**  
Although SD cards nowadays are fast, they are slower than HDD/SDD and when you
run high I/O computations on them, they could fail fairly quick.  
**Solution: move the root file system out from the SD card to an external hard
disk.**  
I had a 1TB portable one and it works like a charm.
It's not that straightforward to move the root file system to an external disk
but it's a doable. What you need is a [good guide](
https://www.tomshardware.com/uk/news/boot-raspberry-pi-from-usb,39782.html)

**The Pi4 is slow.**  
Those are [the specs](
https://www.raspberrypi.org/products/raspberry-pi-4-model-b/specifications/).
As you can see it has 4 CPUs running at 1.5GHz. Not bad for a small board.  
**Solution: overclock the CPU.**  
Just follow [this tutorial](
https://magpi.raspberrypi.org/articles/how-to-overclock-raspberry-pi-4).
I did try to overclock it to 2GHz but it kept power cycling (likely due to
power consumption) so **I stuck with 1.75GHz**.  
If you overclock it, I strongly suggest something **to cool down the CPU.**
I have a [Fan SHIM](https://shop.pimoroni.com/products/fan-shim): a bit noisy
but it does the job.

**High memory usage**  
Even I have the 4GB version, I found the Raspberry Pi4 to be very unstable
while doing computations. Memory is somehow limited and when processes use a
large amount of it, the OOM killer could be invoked killing processes that
make the system unstable.  
**Solution: create a swapfile**  
Like any other Linux distribution [create swap space](
https://itsfoss.com/create-swap-file-linux/) to use part of the hard disk as
_"extention"_ of the memory. I created a 4GB swap file and it seems working OK.

