#!/usr/bin/env bash

sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:wireguard/wireguard
sudo apt install wireguard
wg genkey | sudo tee /wireguard/privatekey | wg pubkey | sudo tee /wireguard/publickey
sudo chmod 600 /wireguard/{privatekey,wg0.conf}
