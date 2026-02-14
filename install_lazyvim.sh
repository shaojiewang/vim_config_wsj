!/bin/bash
set -ex

wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-x86_64.tar.gz
tar -xzvf nvim-linux-x86_64.tar.gz
ln -s $(pwd)/nvim-linux-x86_64/bin/nvim /usr/bin/nvim
rm nvim-linux-x86_64.tar.gz

apt update
apt install -y fzf ripgrep fd-find

# npm & tree-sitter-cli
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
\. "$HOME/.nvm/nvm.sh"
nvm install 24
npm install tree-sitter-cli

LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
install lazygit -D -t /usr/local/bin/

mv ~/.config/nvim{,.bak}
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

echo "添加 alias v='nvim' 到 ~/.bashrc"
echo -e "\n# Alias for neovim" >>~/.bashrc
echo "alias v='nvim'" >>~/.bashrc
echo "alias vi='nvim'" >>~/.bashrc
echo "alias vim='nvim'" >>~/.bashrc
