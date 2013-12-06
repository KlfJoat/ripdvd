# ripdvd

A script to help me back up my DVD's from disc to ISO automatically.

The only time you have to interact with it is when the DVD label is blank or it's a duplicate name with a DVD you already ripped.

*Note: This is also my first attempt at using Git and GitHub.  So it's a learning experience!*

**TODO**: Clarify installation instructions 

## USAGE

*   Insert a DVD. A Terminal window (primitive, isn't it?) will pop up with the script output. 
    
    If it doesn't like the default name, it will beep and ask you to enter a different one.
    
*   After backing up, it will eject the disc.

    You can immediately put in another disc and the process will start over. 
    
*   Meanwhile, back in the terminal window, it will have asked you if you want to rename the ISO from the default name. If not, just press ENTER.


## INSTALLATION

0) Before starting, install dvdbackup.  (mkisofs/genisoimage are installed on most modern distros)

1) Download the script and save it somewhere (like ~/bin/ripdvd)

2) Make sure it is executable with 'chmod a+x ~/bin/ripdvd'

3) Open it up in an editor, and change the 'backup_dir=' line to specify the directory where you want it to place all your DVD ISO's.

xxx4) In GNOME, go to System->Preferences->Removable Drives/Media->Multimedia, and set the "Play DVD when inserted" command to "/home/klfjoat/bin/ripdvd %d" (I don't know how to do this in other types of desktop environments)


## UNDER THE HOOD

The script does the following:
* Queries the DVD for its internal name using `dvdbackup`
* If there is a (*rare*) problem with that internal title, it pauses to ask for a rename.
* Backs up the DVD using `dvdbackup`
* Includes some progress and runtime information
* Ejects the disc
* Creates an ISO
* Deletes the `dvdbackup` directory
* Asks for a final rename of the ISO (or `Enter` if none)


## WHY THIS WAY?

I've seen (and used) many of the other backup methods, and found them wanting...
* Brasero: Not automated
* dd: I've used Linux for 20 years and I can't figure out how to use this tool properly
* Rip::DVD: Couldn't get it to work, seems to transcode, and not automated
* OGMrip: Transcoder, not automated
* mplayer: Transcodes by its nature when ripping
* vlc: Transcodes by its nature when ripping

... And so on.  `dvdbackup` is different...
* It is designed to read DVD's specifically.
* It understands DVD's internal content and structure.
* It grabs native DVD structures *without transcoding*.
* It preserves menus, special features, subtitles, alternate audio, etc.
* It uses `libdvdread` directly, so it takes advantage of DVD (optical) drive error correction.
* It has internal error correction and recovery of bad reads.
* It backs up my DVD's even when Digital **Restrictions** Management has been **forced** on me **in violation of my Fair Use rights!!**

Sure, it takes longer than Brasero's image file option, but it reads a lot more discs and it's automated.  So that's basically why.

(The script and instructions based on http://lifehacker.com/494836168#comments)

