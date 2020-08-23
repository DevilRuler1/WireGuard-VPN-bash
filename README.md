# WireGuard-VPN-bash

http://portal.altispeed.com/kb/faq.php?id=201

visit link this for more, Info. This is a bash script created from this link to save time.
Follow these steps:

# Step 1 
clone the repo into /etc/
Run these commands:

    cd WireGuard-VPN-bash/
    cp setup1.sh etc/
    cp setup2.sh etc/
    cd ..
    chmod +x setup1.sh
    chmod +x setup2.sh

Run setup1.sh using ./setup1.sh and press enter or Y when prompted

# Step 2
Move to directory /etc/wireguard
Run the command 

    wg genkey | tee server_private_key | wg pubkey > server_public_key

Use cat to view private and public keys of the server 

    cat server_private_key
    cat server_public_key

Copy those in a text file

# Step 3
Move to directory /etc/WireGuard-VPN-bash/ 

    cp wg0.conf /etc/wireguard/
    cd ..
    cd wireguard/

# Step 4
Fill in the server private key and the client public key in the wg0.conf file (If you dont have a client setup remove the [Peer] and its data)
Open /etc/sysctl.conf and uncomment net.ipv4.ip_forward=1 this line.

Go to /etc/ and run setup2.sh to setup your server



To add peers (Users) to your wireguard vpn server use the following command to add peers without interupting the server

    sudo wg set wg0 peer PUBLIC-KEY-OF-PEER allowed-ips IP-SET-ON-BOTH-SIDES

allowed-ips will be the same as entered in the wg0.conf [Interface] data
