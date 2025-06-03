#!/bin/bash

echo "Installing JATAV CyberHub Dependencies..."

# Update and install core packages
pkg update && pkg upgrade -y
pkg install wget curl git python nodejs ruby php clang make openssl ffmpeg nmap toilet figlet boxes termux-api htop nyancat sl cmatrix hollywood tcpdump steghide lynx tor -y

# Install Python dependencies
pip install yt-dlp twint instaloader

# Install hacking and coding tools
pkg install metasploit-framework tshark sqlmap zphisher nikto hydra jupyter code-server gdb aircrack-ng john hashcat recon-ng dirb cewl -y

# Install Termux:X11 and XFCE for desktop environment
pkg install termux-x11 xfce4 -y

echo "Installation complete! Run './AllInOne.sh' to start JATAV CyberHub."
