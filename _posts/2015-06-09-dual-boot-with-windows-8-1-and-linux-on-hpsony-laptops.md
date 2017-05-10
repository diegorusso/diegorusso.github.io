---
title: Dual boot with Windows 8.1 and Linux on HP/Sony laptops
categories:
- howto
- english
tags:
- windows
- ubuntu
- dual boot
- UEFI
---
Branded laptops (e.g. HP, Sony, etc) don't boot Linux. Just Windows. Yes, you
got it. **Just Windows**. You can try installing Linux but it won't be added
to the boot manager. You can also try to configure GRUB as boot manager, but
this will be overwritten by the Windows boot manager. Unfortunately there is
no unique solution and every brand can adopt different strategies: googling
around I've read that sometime the boot manager just boots entries where the
name starts with Windows. Crazy!  
Everything started when my niece told me that Ubuntu wasn't started anymore on
her HP Pavillon. I said: _"No problem, it's a piece of cake"_. At the time I
installed Ubuntu she had Windows 8 and now she has Windows 8.1. This rang a
bell. Maybe the update overwrote the UEFI configuration. Ok, it might be
possible.  
I downloaded [EasyBCD](https://neosmart.net/EasyBCD/) trying to add Ubuntu. It
was kind of done but every time I rebooted the machine I couldn't see the
entry (I was using the Windows Boot Manager). I tried tens of times, every
possible combination. I've played with
[bcdedit.exe](https://technet.microsoft.com/en-GB/library/cc709667\(v=ws.10\).aspx)
under Windows, with [efibootmanager](http://linux.die.net/man/8/efibootmgr)
under Linux, I've installed rEFInd but I had no luck at all. [I've even disabled the fast boot
on Windows 8.1.](http://askubuntu.com/questions/452071/why-disable-fast-boot-on-windows-8-when-having-dual-booting)

**Nothing, nada, tabula rasa.**

I couldn't boot to Linux unless I went to the kind of BIOS menu and selected
the Linux partition. After spending few days after this, I bumped into this
[comment](http://askubuntu.com/questions/486752/dual-boot-win-8-ubuntu-loads-only-win/486789#comment650733_486789)
in a stackoverflow post. It states:

_"Yes! Renaming worked for me! I mounted the efi partition and copied the
files ../EFI/ubuntu/grubx64.efi to ../EFI/Boot/ and to /EFI/Microsoft/Boot and
changed the name of the file as follows. In the ../EFI/Boot directory I
overwrote the bootx64.efi with the file and in the ../EFI/Microsoft/Boot I
overwrote the bootmgfw.efi with the file. That was all I think. Thank you very
much! - user296880 Jun 23 '14 at 20:28"_

Well user296880, it did work for me too! **Renaming file under the hood is
really the last resort**. A new upgrade might wipe everything and have to
start again but I accept the risk.

Searching a bit better I also bumped into [this other
post](http://askubuntu.com/a/381741) which explains **exactly** my situation.

Said that, really good luck with that.
