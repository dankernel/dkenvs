
echo -e "\e[32mInstall bashrc"
cp ~/.bashrc ~/.bashrc.old
cp config/.bashrc ~/.bashrc
echo -e "\e[32mInstall bashrc ok.."
echo -e "\e[34mRun the following command in terminal:"
echo -e "\e[37m $ . ~/.bashrc"

echo -e "\e[32mInstall Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo -e "\e[32mInstall Vundle ok.."

echo -e "\e[32mInstall vimrc"
cp ~/.vimrc ~/.vimrc.old
cp config/.vimrc ~/.vimrc
echo -e "\e[32mInstall vimrc ok.."
echo -e "\e[34mRun the following command in terminal:"
echo -e "\e[37m $ vim"
echo -e "\e[37m $ :PluginInstall"

echo -e "\e[32mInstall shell script"
cp -R bash ~/
echo -e "\e[32mInstall shell script ok.."
echo -e "\e[34mRun the following command in terminal:"
echo -e "\e[37m $ vim bash/notifications/config_sample.ini"
echo -e "\e[34mAnd cp bash/notifications/config_sample.ini bash/notifications/config.ini"
