DIR="~/.config/git"

# Check if the directory exists
if [ -d "$DIR" ]; then
  # If it exists, delete it
  rm -rf "$DIR"
fi

# Create the directory
mkdir ~/.config/git

# Copy default config into folder
cp ~/.local/share/bola/configs/.gitconfig ~/.config/git/.gitconfig
