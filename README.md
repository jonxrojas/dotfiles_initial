sudo dnf install zsh
sudo chsh -s $(which zsh)
chsh -s $(which zsh)
curl -fsSL https://starship.rs/install.sh | bash
mkdir ~/.zsh
cd ~/.zsh && git clone https://github.com/zdharma/fast-syntax-highlighting.git
wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/lib/completion.zsh
git clone https://github.com/zsh-users/zsh-autosuggestions.git
wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/lib/history.zsh
wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/lib/key-bindings.zsh

