# Quickstart
This is a quick way to get up and running on a new Mac.  Pull directly to the user home folder, update the Brewfile with additional packages and comment out the formulae/casks you don't want.  Grant execute permission with `chmod -x config.sh` and then run with `./config.sh`

# TODO 
 * Finish testing all of the MacOS default updates

Can use 

    $ cp -r /Library/Preferences before

which will capture all the current preferences.  Make a settings change, and then look at the differences to see what default you may be able to use to do it automatically.

    $ cp -r /Library/Preferences after
    $ diff -ur before after


# Summary of my personal preferences

Settings
 * Finder
    * Enable path view
    * Keep folders on top
 * Keyboard
    * Key repeat rate = Fast
    * Delay until repeat = 4 (Med-Short)
    * Enable Keyboard Navigation
    * Input Sources -> disable smart quotes
    * Swap the shortcut for "Screenshot to File" and "Screenshot to Clipboard"
 * Desktop and Dock
    * Change "Minimize Using" to "Scale"
    * Enable Minimize windows into application icon
    * Disabled "Recommended and Recent" apps in docker
    * Trackpad
      * Enable Tap to Click
      * More Gestures -> Enable App Expose with three finger down-swipe
