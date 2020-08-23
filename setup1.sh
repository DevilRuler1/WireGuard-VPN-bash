#!/usr/bin/env bash

add-apt-repository ppa:wireguard/wireguard
apt-get update
apt-get install wireguard-dkms wireguard-tools linux-headers-$(uname -r)
umask 077
wg genkey | tee server_private_key | wg pubkey > server_public_key
