# ripdvd

A script to help me rip my DVD's from disc to ISO automatically.

The only time you have to interact with it is when the DVD label is blank or it's a duplicate name with a DVD you already ripped.

*Note: This is also my first attempt at using Git and GitHub.  So it's a learning experience!*

**TODO**: Clarify installation instructions 

## USAGE

*   Insert a DVD. A Terminal window (primitive, isn't it?) will pop up with the script output. 
    
    If it doesn't like the default name, it will beep and ask you to enter a different one.
    
*   After ripping, it will eject the disc.

    You can immediately put in another disc and the process will start over. 
    
*   Meanwhile, back in the terminal window, it will have asked you if you want to rename the ISO from the default name. If not, just press ENTER.

## UNDER THE HOOD

The script does the following:
* Queries the DVD for its internal name using `dvdbackup`
* If there is a (*rare*) problem with that internal title, it pauses to ask for a rename.
* Backs up the DVD using `dvdbackup`
* Includes some progress and runtime information
* Ejects the disc
* Converts to ISO
* Deletes the `dvdbackup` directory
* Asks for a final rename of the ISO (or `Enter` if none)


## INSTALLATION

0) Before starting, install dvdbackup.  (mkisofs/genisoimage are installed on most modern distros)

1) Download the script and save it somewhere (like ~/bin/ripdvd)

2) Make sure it is executable with 'chmod a+x ~/bin/ripdvd'

3) Open it up in an editor, and change the 'backup_dir=' line to specify the directory where you want it to place all your DVD ISO's.

xxx4) In GNOME, go to System->Preferences->Removable Drives/Media->Multimedia, and set the "Play DVD when inserted" command to "/home/klfjoat/bin/ripdvd %d" (I don't know how to do this in other types of desktop environments)


(The script and instructions based on http://lifehacker.com/494836168#comments)

