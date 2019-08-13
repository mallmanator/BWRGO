
Debian
====================
This directory contains files used to package bwrgod/bwrgo-qt
for Debian-based Linux systems. If you compile bwrgod/bwrgo-qt yourself, there are some useful files here.

## bwrgo: URI support ##


bwrgo-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install bwrgo-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your bwrgo-qt binary to `/usr/bin`
and the `../../share/pixmaps/bwrgo128.png` to `/usr/share/pixmaps`

bwrgo-qt.protocol (KDE)

