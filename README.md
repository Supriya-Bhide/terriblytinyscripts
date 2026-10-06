**Scripts and their corresponding use**

1. testscript.sh: Test Script

2. buildLLVM.sh:                Install and build llvm

3. installLLVM.sh:              Installing LLVM from git repo

4. 'how to set a pass.txt':     Set up LLVM pass

5. mountDisk.sh:   		    Mount any external storage device

6. gitsetup.txt:   		    Setting up git for the first time 

7. remind.sh:          	    Set a reminder (format: ./remind.sh <message> <HH:MM>)

8. installFrama-c.sh:	    Install frama-c package(along with opam, depext)

9. random.txt:		    Miscellaneous text

10. LockScreenat.sh:         Locks screen at the set time

11. gitCLoneBranch.sh:       Clones a specific branch of repository

12. Latex2dviPDF.sh: Compile latex file _[tex -> dvi -> ps -> pdf]_

## How to run for the first time: 
$ chmod +x <scriptname.sh>
$ ./scriptname.sh

## Add to your bashrc
$ vi ~/.bashrc
Add the following line to the file:
export PATH="/home/path_to_this_folder/terriblytinyscripts:$PATH"

## The scripts can then be run from anywhere in this PC now as  <Do NOT use >:
$ scriptname.sh

