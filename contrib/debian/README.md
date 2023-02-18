
Debian
====================
This directory contains files used to package litoreumd/litoreum-qt
for Debian-based Linux systems. If you compile litoreumd/litoreum-qt yourself, there are some useful files here.

## litoreum: URI support ##


litoreum-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install litoreum-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your litoreum-qt binary to `/usr/bin`
and the `../../share/pixmaps/litoreum128.png` to `/usr/share/pixmaps`

litoreum-qt.protocol (KDE)

