#!/bin/bash
sudo apt install ntfs-3g
fdisk -l
ntfsfix -b /dev/sdb2
