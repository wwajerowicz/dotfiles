#/usr/bin/env bash
cd ~/dotfiles
git submodule init
git submodule update
ln -sv ~/dotfiles/.vim  ~/.vim
ln -sv ~/dotfiles/.vimrc ~/.vimrc
ln -sv ~/dotfiles/.bashrc ~/.bashrc
ln -sv ~/dotfiles/.ackrc ~/.ackrc
ln -sv ~/dotfiles/.gitconfig ~/.gitconfig
echo 'Checking for git username:'
git config --get user.name
if [ $? -ne 0 ]
then
    echo "What name do you want to use for commits from this machine?"
    read git_user_name
    git config  --global user.name "$git_user_name"
fi
echo 'Checking for git email address:'
git config --get user.email
if [ $? -ne 0 ]
then
    echo "What email do you want to use for commits from this machine?"
    read git_email
    git config  --global user.email "$git_email"
fi
vim +BundleInstall +qall

curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
