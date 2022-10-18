#!/usr/bin/env sh

# source: https://github.com/2ym/fedora-gnome-post-installation

sudo dnf -y update
sudo dnf -y group upgrade --with-optional Multimedia
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak update
sudo flatpak override --filesystem=/usr/share/themes/
sudo dnf -y copr enable nickavem/adw-gtk3
sudo dnf -y install adw-gtk3 gnome-tweak-tool
sudo wget -P /etc/dconf/db/local.d/ https://raw.githubusercontent.com/2ym/fedora-gnome-post-installation/main/dconf-keyfile
sudo dconf update
flatpak -y install flathub im.riot.Riot org.signal.Signal com.discordapp.Discord com.bitwarden.desktop com.spotify.Client dev.geopjr.Collision org.gnome.gitlab.somas.Apostrophe com.valvesoftware.Steam org.bluej.BlueJ
sudo flatpak override --env=GDK_SCALE=2 org.bluej.BlueJ
sudo flatpak override --env=GDK_SCALE=2 com.valvesoftware.Steam
