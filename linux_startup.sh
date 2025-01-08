sudo apt update && sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt update && sudo apt install git
sudo apt update && sudo apt install tmux
sudo apt update && sudo apt install fzf
sudo apt update && sudo apt install fd-find
sudo apt update && sudo apt install ripgrep
sudo apt update && sudo apt install pydf
pydf
curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env
uv venv
source .venv/bin/activate
which python
python --version

