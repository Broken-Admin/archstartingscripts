# Sometimes sudo will not be properly installed, fix this with "pacman -S sudo"
# This can also be accomplished "visudo"
nano /etc/sudoers
# You can then add a line of "[USERNAME] ALL=(ALL) All"