PKHeX PARA Unix (Linux y Mac OSX con vino)
=====
![License](https://img.shields.io/badge/License-GPLv3-blue.svg)

Editor de guardado de las series principales de Pokémon, programado en [C#](https://es.wikipedia.org/wiki/C_Sharp).

Soporta los siguientes archivos:
* Archivos de guardado ("main", \*.sav, \*.dsv, \*.dat, \*.gci, \*.bin)
* Archivos de Memory Card de GameCube (\*.raw, \*.bin) que contienen archivos de GC Pokémon.
* Archivos de entidades individuales de Pokémon (.pk\*, \*.ck3, \*.xk3, \*.pb7, \*.sk2, \*.bk4, \*.rk4)
* Archivos de Regalos Misteriosos (\*.pgt, \*.pcd, \*.pgf, .wc\*) incluyendo conversión a .pk\*
* Importar archivos de entidades de GO Park (\*.gp1) incluyendo conversión a .pb7
* Importar equipos desde archivos Decrypted 3DS Battle Videos
* Pasar de una generación a la siguiente, convirtiendo los archivos en el proceso.

Los datos son visualizados en una forma que permite modificarlos y guardarlos.
La interfaz gráfica puede ser traducida con archivos de texto externos para dar soporte a múltiples lenguajes.

Pokémon Showdown asigna un código QR que puede ser importado/exportado para ayudar al compartir.

PKHeX espera archivos de guardado que no estén cifrados con las claves específicas de la consola. Use un gestor de archivos de guardado para importar y exportar información de la consola ([Checkpoint](https://github.com/FlagBrew/Checkpoint) o [JKSM](https://github.com/J-D-K/JKSM)).

**No apoyamos ni toleramos las trampas a expensas de otros. No uses un Pokémon modificado significativamente en batalla o en intercambios con quienes no estén al tanto de que estás usando un Pokémon modificado.**

## Capturas de Pantalla

![Pantalla principal](https://i.imgur.com/oM407mV.png)

## Instalar

Última versión binaria de Windows

https://projectpokemon.org/home/files/file/1-pkhex/

Paquetes de Linux versión 22.12.18 último trabajo en Wine

https://software.opensuse.org//download.html?project=home%3Aamidevousgmail%3Apkhex&package=pkhex

## Compilación

PKHeX es una aplicación de Windows Forms que requiere [.NET 8.0](https://dotnet.microsoft.com/download/dotnet/8.0).

El archivo ejecutable puede ser construido con cualquier compilador que soporte C# 12.

### Configuraciones del Build

Para hacer el build puedes usar las configuraciones de Debug o de Release. ¡No hay que preocuparse por código específico de ninguna plataforma!

## Dependencias

La generación de códigos QR de PKHeX es la de [QRCoder](https://github.com/codebude/QRCoder), licenciado bajo [la licencia MIT](https://github.com/codebude/QRCoder/blob/master/LICENSE.txt).

La colección de sprites de Pokémons Shiny de PKHeX fue tomada de [pokesprite](https://github.com/msikma/pokesprite), licenciado bajo [la licencia MIT](https://github.com/msikma/pokesprite/blob/master/LICENSE).

PKHeX's Pokémon Legends: Arceus sprite collection is taken from the [National Pokédex - Icon Dex](https://www.deviantart.com/pikafan2000/art/National-Pokedex-Version-Delta-Icon-Dex-824897934) project and its abundance of collaborators and contributors.

### IDE

PKHeX se puede abrir con un IDE como [Visual Studio](https://visualstudio.microsoft.com/es/downloads/), abriendo los archivos .sln o .csproj.

## Compilación para Linux o MacOSX versión en línea 22.12.18, último trabajo en Wine

instale Wine 9.0 (requiere multiarca) o + y Winetricks 20240105 o +

```
git clone https://github.com/amidevous/PKHeX.git
cd PKHeX
DESTDIR=$PWD/build make DESTDIR=$PWD/build install
sudo mv $PWD/build/* /
```



manual completo

```
sudo wget https://github.com/amidevous/PKHeX/raw/master/launcher -O /usr/bin/pkhex

sudo wget https://github.com/amidevous/PKHeX/raw/master/pkhex.desktop -O /usr/share/applications/pkhex.desktop

sudo wget https://github.com/amidevous/PKHeX/raw/master/icon.png -O /usr/share/pixmaps/icon.png

#Ubuntu/Debian/Raspbian with official repository (not use winehq repository)

sudo apt-get -y install wine winetricks

sudo winetricks --self-update

#fedora install rpm fusion free and rpm fussion non free repository (not use winehq repository)

#https://rpmfusion.org/Configuration/

sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf -y install wine winetricks

sudo winetricks --self-update

#clean all $HOME folder for reset

rm -rf $HOME/.local/share/pkhex
```
