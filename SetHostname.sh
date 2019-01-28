# Add hostname file and use first arguement as hostname
echo $1 >> /etc/hostname

# Add hosts file and basic configuration
echo If you plan to use a static IP or custom domain, it is recommended to edit /etc/hosts manually yourself later
echo "127.0.0.1	localhost" >> /etc/hosts
echo "::1		localhost" >> /etc/hosts
echo "127.0.1.1	$1.localdomain	$1" >> /etc/hosts