# Quickstart
This is a quick way to get up and running on a new Mac with my opinionated set of apps.  

From the user home directory, run

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/andrewawilley/dotfiles/main/my_mac_setup.sh)"

This will 

  1. Install the xcode commandline tools (includes git)
  2. Install the Homebrew package manager
  3. Pulls the dotfiles repo to the user home folder
  4. Runs brew to install the formulae/casks/etc from the Brewfile
  5. Installs oh-my-zsh 
  6. Copies the dotfiles
  
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
 * Strechly
    * 15 minutes between micro-breaks


# TODO 
 * Finish testing all of the MacOS default updates

Can use 

    cp -r /Library/Preferences before

which will capture all the current preferences.  Make a settings change, and then look at the differences to see what default you may be able to use to do it automatically.

    cp -r /Library/Preferences after
    diff -ur before after
