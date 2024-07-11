# Alacritty terminal: https://alacritty.org/
sudo apt install -y alacritty
mkdir -p ~/.config/alacritty
echo "Hello"

cp ~/.local/share/bola/configs/alacritty.toml ~/.config/alacritty/alacritty.toml
cp ~/.local/share/bola/themes/catppuccin-mocha/alacritty.toml ~/.config/alacritty/theme.toml
cp ~/.local/share/bola/configs/alacritty/fonts/MesloLGLDZ.toml ~/.config/alacritty/font.toml
cp ~/.local/share/bola/configs/alacritty/font-size.toml ~/.config/alacritty/font-size.toml