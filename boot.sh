set -e

sudo apt-get update >/dev/null
sudo apt-get install git -y >/dev/null

rm -rf ~/.local/share/bola
git clone https://github.com/coltiq/bola.git ~/.local/share/bola >/dev/null

# TESTING ONLY
mkdir -p ~/.local/share/bola/bin
cp /media/sf_bin/bola ~/.local/share/bola/bin/bola

# Start Go app
$"~/.local/share/bola/bin/bola"