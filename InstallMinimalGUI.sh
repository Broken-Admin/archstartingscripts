# Log in as root for following installs
sudo -i

# Install gdm, Gnome's login interface
pacman -S gdm

# Install i3, a desktop interface
pacman -S i3

# Install polybar, an infobar tool
pacman -S polybar

# Add polybar to i3 bootup

# Create a startup file for polybar
# https://github.com/jaagr/polybar/wiki

  # Terminate already running bar instances
  echo "killall -q polybar" >> $HOME/.config/polybar/launch.sh

  # Wait until the processes have been shut down
  echo "while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done" >> $HOME/.config/polybar/launch.sh

  # Launch example bar, this can be edited later
  echo "polybar example" >> $HOME/.config/polybar/launch.sh

# Make the file executable
chmod +x $HOME/.config/polybar/launch.sh

# Add following file to boot with i3
echo "exec_always --no-startup-id $HOME/.config/polybar/launch.sh" >> ${HOME}/.config/i3/config

# Exit root login
Exit