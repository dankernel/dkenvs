#!/bin/bash

# Color code
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
NC='\033[0m' # No Color

if [[ "$SHELL" == */bash ]]; then
    echo -e "${GREEN}[PASS] Current shell is bash.${NC}"
elif [[ "$SHELL" == */zsh ]]; then
    echo -e "${RED}[FAIL] Current shell is zsh.${NC}"
    exit 0
else
    echo -e "${RED}[FAIL] The current shell is a different kind of shell : $SHELL${NC}"
    exit 0
fi

echo -e "${YELLOW}Install bashrc${NC}"
cp ~/.bashrc ~/.bashrc.old
cp config/.bashrc ~/.bashrc
echo -e "${YELLOW}Install bashrc ok..${NC}"
echo -e "${RED}Run the following command in terminal:${NC}"
echo -e "${RED} $ . ~/.bashrc${NC}"

echo -e "${YELLOW}Install Vundle${NC}"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo -e "${YELLOW}Install Vundle ok..${NC}"

echo -e "${YELLOW}Install vimrc${NC}"
cp ~/.vimrc ~/.vimrc.old
cp config/.vimrc ~/.vimrc
echo -e "${YELLOW}Install vimrc ok..${NC}"
echo -e "${RED}Run the following command in terminal:${NC}"
echo -e "${RED} $ vim${NC}"
echo -e "${RED} $ :PluginInstall${NC}"

echo -e "${YELLOW}Install shell script"
cp -R bash ~/
echo -e "${YELLOW}Install shell script ok.."
