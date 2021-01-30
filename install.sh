
echo -e "\e[32mInstall bashrc"
cp ~/.bashrc ~/.bashrc.old
cp bash/.bashrc ~/.bashrc
echo -e "\e[32mInstall bashrc ok.."
echo -e "\e[34mRun the following command in terminal:"
echo -e "\e[37m $ . ~/.bashrc"

echo -e "\e[32mInstall Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo -e "\e[32mInstall Vundle ok.."

echo -e "\e[32mInstall vimrc"
cp ~/.vimrc ~/.vimrc.old
cp bash/.vimrc ~/.vimrc
echo -e "\e[32mInstall vimrc ok.."
echo -e "\e[34mRun the following command in terminal:"
echo -e "\e[37m $ vim"
echo -e "\e[37m $ :PluginInstall"
