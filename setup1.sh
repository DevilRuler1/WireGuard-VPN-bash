#!/usr/bin/env bash

sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:wireguard/wireguard
sudo apt install wireguard
wg genkey | sudo tee /etc/wireguard/privatekey | wg pubkey | sudo tee /etc/wireguard/publickey
sudo chmod 600 /etc/wireguard/{privatekey,wg0.conf}
