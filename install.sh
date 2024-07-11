set -e

RUNNING_GNOME=$([[ "$XDG_CURRENT_DESKTOP" == *"GNOME"* ]] && echo true || echo false)

if $RUNNING_GNOME; then
  # Ensure computer doesn't go to sleep or lock while installing
  gsettings set org.gnome.desktop.screensaver lock-enabled false
  gsettings set org.gnome.desktop.session idle-delay 0
fi

# Install terminal tools
echo "Installing terminal tools..."
source ~/.local/share/bola/install/terminal.sh

if $RUNNING_GNOME; then
  # Revert to normal settings
  gsettings set org.gnome.desktop.screensaver lock-enabled true
  gsettings set org.gnome.desktop.session idle-delay 300

  gnome-session-quit --logout --no-prompt
fi
