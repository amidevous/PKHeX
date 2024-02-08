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

## Building for Linux or Mac OSX online version 23.10.11 latest work on wine


install the prerequisites according to your system

Ubuntu/Debian/Raspbian with official repository (not use winehq repository or winehq-* package)


```

sudo apt-get -y install wine-stable winetricks wget zenity make gzip xz gettext

sudo winetricks --self-update


```


#Fedora/Red Hat/Centos/Alma Linux and other fork

for RHEL System add Fedora Epel Repository

https://docs.fedoraproject.org/en-US/epel/


```

sudo dnf -y install wine winetricks wget zenity make gzip xz gettext-devel

sudo winetricks --self-update


```



for Mac OSx install xcode

visit https://developer.apple.com/download/applications/

Login in the site with you Apple ID

accept the developer agreement

download and install a version of xcode compatible with your device

see the release notes to find out which version is compatible with your Mac OSX

https://developer.apple.com/documentation/xcode-release-notes/

with your browser identify on the site developer.apple.com you download any version of xcodes by changing the version number in the url here are 3 examples

updated to versions of February 7, 2024

actual beta

https://developer.apple.com/services-account/download?path=/Developer_Tools/Xcode_15.3_beta/Xcode_15.3_beta.xip


actual stable

https://developer.apple.com/services-account/download?path=/Developer_Tools/Xcode_15.2/Xcode_15.2.xip

old version 13.4.1

https://developer.apple.com/services-account/download?path=/Developer_Tools/Xcode_13.4.1/Xcode_13.4.1.xip

old version 13.2

https://developer.apple.com/services-account/download?path=/Developer_Tools/Xcode_13.2/Xcode_13.2.xip

old version 13

https://developer.apple.com/services-account/download?path=/Developer_Tools/Xcode_13/Xcode_13.xip

etc

install homebrew and dependency


```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install wget

brew install zenity

brew install --cask wine-stable

brew install winetricks

brew install gettext

brew install xz

brew install gzip

```

build


```
git clone https://github.com/amidevous/PKHeX.git
cd PKHeX
DESTDIR=$PWD/build make DESTDIR=$PWD/build install
sudo mv $PWD/build/* /
```

full manual (use for problem for reinstall or update)

```

wget https://github.com/amidevous/PKHeX/raw/master/update.sh -O update.sh

chmod +x update.sh

./update.sh

```
