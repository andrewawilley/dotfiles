#! /bin/bash

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# change to home directory
cd ~

git clone https://github.com/andrewawilley/dotfiles.git

cd dotfiles

# run the Brewfile
brew bundle --file=~/dotfiles/Brewfile

# check to see if oh-my-zsh is installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    # install oh-my-zsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# disable spctl to allow runnign jnlp files
# TODO find a better way to do this
sudo spctl --master-disable

# run with the "df" argument to only update the dotfiles

# don't want to override the bash_profile yet, commenting out for now
# DOTFILES=(.bash_profile .gitconfig .gitignore .zshrc)
DOTFILES=(.gitconfig .gitignore .zshrc)

for dotfile in $(echo ${DOTFILES[*]});
do
    cp ~/dotfiles/$(echo $dotfile) ~/$(echo $dotfile)
done

cp ~/dotfiles/vs_code.user.settings.json ~/Library/Application\ Support/Code/User/settings.json
