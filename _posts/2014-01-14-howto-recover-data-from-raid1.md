---
title: 'HOWTO: recover data from RAID1'
categories:
- Uncategorized
- computer
- ubuntu
- howto
tags:
- howto
- raid
---
**Scenario**: two or more HDs configured as RAID1. One of them gets broken and the computer doesn't boot for any reason.  
**Problem**: access data in the partition to recover them. It is not possible to mount it directly because it is a RAID partition, so:

  1. Create an image of the good disk using _dd_ and secure it
  2. Take another pc with debian/ubuntu (or similar distro)
  3. Using an _usb<->sata_ adapter, plug the disk in the new computer and make note of the device checking the output using _dmesg_ (eg. /dev/sdc)
  4. Verify with _fdisk/cfdisk_ the partition table of the disk: there should be one or more "raid autodetect" partitions
  5. Open a terminal and type 
    
        $ mdadm --assemble --run /dev/md0 /dev/sdc1

  
to create a temporary RAID1 and to make it available using /dev/md0

  6. If it doesn't work, maybe the RAID kernel module is not loaded. 
    
        $ modprobe raid1

  
and try again

  7. If everything is ok, it will be possible to mount /dev/md0: 
    
        $ mount /dev/md0 /mnt

  

  8. If the above command gives back "invalid argument", likely the ext3 module is not loaded. 
    
        $ modprobe ext3

  
and try again

  9. If mount hasn't given back any error, it will be possible to mount to access data in the raid1 from /mnt
  10. Save all you can save
  11.     $ umount /mnt

  

  12. Stop the temporary raid1 using 
    
        $ mdadm --stop /dev/md0

  

  13. If necessary, repeat the same process with the other partitions 
    
        $ mdadm --assemble --run /dev/md1 /dev/sdc2

  14. Done
  

  
WARNING: if you have a RAID5, this procedure won't work.

Many thanks to [Lorenzo](https://www.facebook.com/lorenzo.allegrucci)

