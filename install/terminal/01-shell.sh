# Configure the bash shell using Bola defaults
[ -f ~/.bashrc ] && mv ~/.bashrc ~/.bashrc.bac
cp ~/.local/share/bola/configs/bashrc ~/.bashrc

# Load Path
source ~/.local/share/bola/defaults/bash/shell

[ -f ~/.inputrc ] && mv ~/.inputrc ~/.inputrc.bac
# Configure the inputrc using Bola defaults
cp ~/.local/share/bola/configs/inputrc ~/.inputrc
