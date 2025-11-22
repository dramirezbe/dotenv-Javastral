sudo apt update

sudo apt install python3-full git cmake make build-essential curl wget zsh fonts-powerline kitty zsh-syntax-highlighting fonts-jetbrains-mono nitrogen polybar
sudo fc-cache -f -v

#install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


#install alien
git clone https://github.com/eendroroy/alien.git
cd alien
git submodule update --init --recursive --remote

#install plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions



#finally
chsh -s $(which zsh)
