#!/bin/bash
 
PARTITION="/dev/sda1"
FTYPE="vfat"
MOUNTDIR=/mnt
EXECFILE="autoexec"
 
logger "device-connect-test.sh: start script."
 
if [ ! -e $PARTITION ]; then
        logger "device-connect-test.sh: $PARTITION is not found."
        exit 1
fi
 
mount -t $FTYPE $PARTITION $MOUNTDIR
if [ $? -ne 0 ]; then
        logger "device-connect-test.sh: mount error."
        umount $MOUNTDIR 2> /dev/null
        exit 1
fi
 
if [ -x "$MOUNTDIR/$EXECFILE" ]; then
        logger "device-connect-test.sh: execute $MOUNTDIR/$EXECFILE."
        $MOUNTDIR/$EXECFILE
fi
 
umount $MOUNTDIR 2> /dev/null
exit 0
