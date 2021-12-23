#!/bin/sh
lsblk
echo
echo 'Drive name: '
read -e diskselect
echo $diskselect
echo 'Location of image file: '
read -e imagefile 
doas dd bs=4M if=$imagefile of=$diskselect conv=fsync oflag=direct status=progress
read -n 1 -s -r -p 'The command has finished! Press any key to close.'
exit
