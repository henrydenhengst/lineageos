#!/usr/bin/env bash
#
#  _   _                             _              _   _                      _   
# | | | | ___ _ __  _ __ _   _    __| | ___ _ __   | | | | ___ _ __   __ _ ___| |_ 
# | |_| |/ _ \ '_ \| '__| | | |  / _` |/ _ \ '_ \  | |_| |/ _ \ '_ \ / _` / __| __|
# |  _  |  __/ | | | |  | |_| | | (_| |  __/ | | | |  _  |  __/ | | | (_| \__ \ |_ 
# |_| |_|\___|_| |_|_|   \__, |  \__,_|\___|_| |_| |_| |_|\___|_| |_|\__, |___/\__|
#                        |___/                                       |___/      
#
#==================================================================================
#
#          FILE:  install-apps.sh
#
#         USAGE:  bash install-apps.sh OR ./install-apps.sh
#
#   DESCRIPTION:  Install a batch of f-droid apps on a Android Device
#
#       OPTIONS:  ---
#  REQUIREMENTS:  "Linux Mint" adb fastboot fdroidcl "repo config"
#          BUGS:  ---
#         NOTES:  optionally check for newer releases with "fdroidcl search"
#        AUTHOR:  Henry den Hengst , henrydenhengst@gmail.com
#       COMPANY:  privacy-software.nl
#       VERSION:  0.01
#       CREATED:  11-01-2023
#      REVISION:  ---
#==================================================================================
#
# Check if adb, fastboot and fdroidcl are installed.
sudo apt install golang git adb fastboot
go install mvdan.cc/fdroidcl@latest
sudo apt install fdroidcl
fdroidcl
# Create Repos Config
fdroidcl defaults
# Copy the correct json repo file
wget -c https://raw.githubusercontent.com/henrydenhengst/lineageos/main/fdroidcl-config.json
cp fdroidcl-config.json ~/.config/fdroidcl/config.json
# Update the Repos
fdroidcl update
# Show Connected Devices, non connected, please abort
fdroidcl devices
# Install F-droid
fdroidcl install org.fdroid.fdroid:1015054
# Install Aurora Store
fdroidcl install com.aurora.store:41 
# Install NewPipe
fdroidcl install org.schabi.newpipe:991
# Install LibreTube
fdroidcl install com.github.libretube:26
# Install Element
fdroidcl install de.spiritcroc.riotx:40100990
# Install Briar
fdroidcl install org.briarproject.briar.android:10419
# Install Jitsi Meet
fdroidcl install org.jitsi.meet:227000
# Install K9 Mail
fdroidcl install com.fsck.k9:34000
# Install Syncthing
fdroidcl install com.nutomic.syncthingandroid:4334
# Install Organicmaps
fdroidcl install app.organicmaps:22121812
# Install Tether-fi
fdroidcl install be.mygod.vpnhotspot.foss:262
# Install Antennapod
fdroidcl install de.danoeh.antennapod:2070195
# Install Catima
fdroidcl install me.hackerchick.catima:116
# Install Odysee
fdroidcl install com.odysee.floss:69
# Install KeepassDX
fdroidcl install com.kunzisoft.keepass.libre:114
# Install Wookey (Monero wallet)
fdroidcl install io.wookey.wallet.monero:221
# Install Firefox Focus
fdroidcl install org.mozilla.focus:352631859
# Install Amarok
fdroidcl install deltazero.amarok.foss:27
# Install Signal
fdroidcl install org.thoughtcrime.securesms:112305
# Simple Book Reader
fdroidcl install com.github.axet.bookreader:416
# Collabora Office
fdroidcl install com.collabora.libreoffice:2147483647
# LibreAV
fdroidcl install tech.projectmatris.antimalwareapp:10400
# Install Aegis Authenticator 2FA
fdroidcl install com.beemdevelopment.aegis:56
# Install eSpeak TTS engine voor Organicsmaps
fdroidcl install com.reecedunn.espeak:21
# Install rhvoice TTS engine
fdroidcl install com.github.olga_yakovleva.rhvoice.android:108000
