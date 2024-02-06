PKHeX FOR Unix (Linux and Mac OSX with wine)
=====
<div>
  <span>English</span> / <a href=".github/README-es.md">Español</a> / <a href=".github/README-fr.md">Français</a> / <a href=".github/README-de.md">Deutsch</a> / <a href=".github/README-it.md">Italiano</a> / <a href=".github/README-zhHK.md">繁體中文</a> / <a href=".github/README-zh.md">简体中文</a>
</div>

![License](https://img.shields.io/badge/License-GPLv3-blue.svg)

Pokémon core series save editor, programmed in [C#](https://en.wikipedia.org/wiki/C_Sharp_%28programming_language%29).

Supports the following files:
* Save files ("main", \*.sav, \*.dsv, \*.dat, \*.gci, \*.bin)
* GameCube Memory Card files (\*.raw, \*.bin) containing GC Pokémon savegames.
* Individual Pokémon entity files (.pk\*, \*.ck3, \*.xk3, \*.pb7, \*.sk2, \*.bk4, \*.rk4)
* Mystery Gift files (\*.pgt, \*.pcd, \*.pgf, .wc\*) including conversion to .pk\*
* Importing GO Park entities (\*.gp1) including conversion to .pb7
* Importing teams from Decrypted 3DS Battle Videos
* Transferring from one generation to another, converting formats along the way.

Data is displayed in a view which can be edited and saved.
The interface can be translated with resource/external text files so that different languages can be supported.

Pokémon Showdown sets and QR codes can be imported/exported to assist in sharing.

PKHeX expects save files that are not encrypted with console-specific keys. Use a savedata manager to import and export savedata from the console ([Checkpoint](https://github.com/FlagBrew/Checkpoint), save_manager, [JKSM](https://github.com/J-D-K/JKSM), or SaveDataFiler).

**We do not support or condone cheating at the expense of others. Do not use significantly hacked Pokémon in battle or in trades with those who are unaware hacked Pokémon are in use.**

## Screenshots

![Main Window](https://i.imgur.com/HZs37cM.png)

## Install

Windows binary latest version

https://projectpokemon.org/home/files/file/1-pkhex/

Linux packages version 23.10.11 latest work on wine

https://software.opensuse.org//download.html?project=home%3Aamidevousgmail%3Apkhex&package=pkhex

## Building

for windows version visite official project

https://github.com/kwsch/PKHeX

## Building for Linux or MacOSX online version 23.10.11 latest work on wine

install dependencie

wine version = 9.0 (multiarch require) or + 
winetricks version =  20240105 or +
zenity
wget
make

for Mac OSX install Xcode with apple web site and wine-stable winetricks zenity and wget with homebrew

```
git clone https://github.com/amidevous/PKHeX.git
cd PKHeX
DESTDIR=$PWD/build make DESTDIR=$PWD/build install
sudo mv $PWD/build/* /
```

full manual

```
#install the prerequisites according to your system

#Ubuntu/Debian/Raspbian with official repository (not use winehq repository or winehq-* package)

sudo apt-get -y install wine winetricks wget zenity make

# or

sudo apt-get -y install wine-stable winetricks wget zenity make

sudo winetricks --self-update

#fedora install rpm fusion free and rpm fussion non free repository (not use winehq repository or winehq-* package)

#https://rpmfusion.org/Configuration/

sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf -y install wine winetricks wget zenity make

sudo winetricks --self-update

#for Mac OSx install xcode and homebrew require

#visit https://developer.apple.com/download/applications/
#and https://brew.sh/
#for last information
#if your computer is not compatible with the latest version of xcodes
#you can download an older version that will be compatible by simply changing the version number in the final url example
#actual latest version
#https://developer.apple.com/services-account/download?path=/Developer_Tools/Xcode_15.3_beta/Xcode_15.3_beta.xip
#https://developer.apple.com/services-account/download?path=/Developer_Tools/Xcode_15.2/Xcode_15.2.xip
#but my mac is only compatible with version 13 this url will be functional
#https://download.developer.apple.com/Developer_Tools/Xcode_13.2/Xcode_13.2.xip
#to know the compatibility of the xcodes development tools version visit this page
#https://developer.apple.com/documentation/xcode-release-notes/

brew install wget

brew install zenity

brew install --cask wine-stable

brew install winetricks

#once the prerequisites are installed you can install by executing the following command

sudo wget https://github.com/amidevous/PKHeX/raw/master/launcher -O /usr/bin/pkhex

sudo wget https://github.com/amidevous/PKHeX/raw/master/pkhex.desktop -O /usr/share/applications/pkhex.desktop

sudo wget https://github.com/amidevous/PKHeX/raw/master/icon.png -O /usr/share/pixmaps/icon.png


#clean all $HOME folder for reset

rm -rf $HOME/.local/share/pkhex

#when the new version is published you must delete the /opt/pkhex directory with administrator rights

sudo rm -rf /opt/pkhex
```
