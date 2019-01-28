# You can use your own choice of editor
# First, you must edit your Grub config file
sudo nano /etc/default/grub

# Change the following configurations to their values below

# GRUB_DEFAULT=saved
# GRUB_TIMEOUT=0
# ...
# GRUB_HIDDEN_TIMEOUT=0
# GRUB_HIDDEN_TIMEOUT_QUIET=true
# ...
# GRUB_SAVEDEFAULT="true"

# Run the command to update the Grub config
sudo grub-mkconfig