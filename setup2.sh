sudo wg-quick up wg0
sudo wg show wg0
sudo systemctl enable wg-quick@wg0
sudo sysctl -p
sudo ufw allow 51820/udp
