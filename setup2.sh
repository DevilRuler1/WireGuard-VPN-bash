#!/usr/bin/env bash

sysctl -p
echo 1 > /proc/sys/net/ipv4/ip_forward
chown -v root:root /etc/wireguard/wg0.conf
chmod -v 600 /etc/wireguard/wg0.conf
wg-quick up wg0
systemctl enable wg-quick@wg0.service 
