
if [ "$1" == "set-prefs" ]; then
    exit

    # Finder configurations
    defaults write com.apple.finder ShowPathbar -bool true # Enable path view
    defaults write com.apple.finder _FXSortFoldersFirst -bool true # Keep folders on top
    killall Finder # Restart Finder to apply changes

    ## TextEdit configurations
    # Use plain text mode for new TextEdit documents
    defaults write com.apple.TextEdit RichText -int 0
    # Open and save files as UTF-8 in TextEdit
    defaults write com.apple.TextEdit PlainTextEncoding -int 4
    defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

    # These are untested, but I'm keeping them here for reference
    # Keyboard configurations
    defaults write NSGlobalDomain KeyRepeat -float 0.01 # Set key repeat rate to Fast (lower number is faster)
    # defaults write -g InitialKeyRepeat -int 15 # Set delay until repeat to medium-short (range from 15-120)

    # # Disable smart quotes as they’re annoying when typing code
    # defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

    # # Trackpad: enable tap to click for this user and for the login screen
    # defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
    # defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
    # defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

    # # Enable App Expose gesture
    # defaults write com.apple.dock showAppExposeGestureEnabled -bool true

    # # Desktop and Dock configurations
    # defaults write com.apple.dock mineffect -string "scale" # Minimize windows using the scale effect
    # defaults write com.apple.dock minimize-to-application -bool true # Minimize windows into application icon
    # defaults write com.apple.dock show-recents -bool false # Disable the "Recent Applications" in Dock

    # killall Dock # Restart Dock to apply changes
fi