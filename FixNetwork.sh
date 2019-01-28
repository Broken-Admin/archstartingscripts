# Log in as root for following changes
sudo -i

# Append the following to the file "/etc/systemd/network/enp0s3.network"

echo [Match] >> /etc/systemd/network/enp0s3.network
echo name=en* >> /etc/systemd/network/enp0s3.network
echo [Network] >> /etc/systemd/network/enp0s3.network
echo DHCP=yes >> /etc/systemd/network/enp0s3.network

# Restart the network and enable start on boot
systemctl restart systemd-networkd
systemctl enable systemd-networkd

# Append the following to "/etc/resolv.conf"
echo nameserver 8.8.8.8 >> /etc/resolv.conf
echo nameserver 8.8.4.4 >> /etc/resolv.conf

# Reboot to make changes final
reboot