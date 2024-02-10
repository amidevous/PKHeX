#!/usr/bin/bash
export WINEPREFIX="/opt/pkhex/prefix"
export WINEDEBUG="${WINEDEBUG--all}"
#this require for net 7 and net 8 or error
export DOTNET_ROOT="C:\Program Files\dotnet"
#this require for net 7 and net 8 or error
export DOTNET_BUNDLE_EXTRACT_BASE_DIR="C:\dotnet_bundle_extract"
cd $HOME
rm -rf /tmp/pkhexinstall
mkdir -p /tmp/pkhexinstall
cd /tmp/pkhexinstall
wget https://github.com/amidevous/PKHeX/archive/refs/heads/master.tar.gz -qO master.tar.gz
tar -xf master.tar.gz
cd /tmp/pkhexinstall/PKHeX-master
msgfmt --output-file=/tmp/pkhexinstall/PKHeX-master/share/locale/aa/LC_MESSAGES/pkhex.mo /tmp/pkhexinstall/PKHeX-master/share/locale/aa/LC_MESSAGES/pkhex.po
msgfmt --output-file=/tmp/pkhexinstall/PKHeX-master/share/locale/ab/LC_MESSAGES/pkhex.mo /tmp/pkhexinstall/PKHeX-master/share/locale/ab/LC_MESSAGES/pkhex.po
msgfmt --output-file=/tmp/pkhexinstall/PKHeX-master/share/locale/af/LC_MESSAGES/pkhex.mo /tmp/pkhexinstall/PKHeX-master/share/locale/af/LC_MESSAGES/pkhex.po
msgfmt --output-file=/tmp/pkhexinstall/PKHeX-master/share/locale/en/LC_MESSAGES/pkhex.mo /tmp/pkhexinstall/PKHeX-master/share/locale/en/LC_MESSAGES/pkhex.po
msgfmt --output-file=/tmp/pkhexinstall/PKHeX-master/share/locale/fr/LC_MESSAGES/pkhex.mo /tmp/pkhexinstall/PKHeX-master/share/locale/fr/LC_MESSAGES/pkhex.po
export TEXTDOMAIN=pkhex
export TEXTDOMAINDIR=/tmp/pkhexinstall/PKHeX-master/share/locale
progtitle=$(gettext "PKHeX For Linux and Mac OSX with wine")
adminpass=$(gettext "please enter you administrator password")
adminerror=$(gettext "please enter correct administrator password")
adminerror="$adminerror $(gettext "for install or update PKHeX")"
admincheck="error"
while [ "$admincheck" == "error" ];
do
    if ret=`zenity --entry --title="$progtitle" --text="$adminpass"`
    then
      adminpassword=$ret
    fi
    if sudo -lS &> /dev/null << EOF
$adminpassword
EOF
   then
     admincheck="ok"
   else
     admincheck="error"
     zenity --error --title="$progtitle" --text="$adminerror"
   fi
done
  echo 'Installing PKHeX...'
  echo $adminpassword | sudo -S mkdir -p "/usr/bin/"
  echo $adminpassword | sudo -S mkdir -p "/usr/share/pixmaps/"
  echo $adminpassword | sudo -S mkdir -p "/usr/share/applications/"
  echo $adminpassword | sudo -S rm -rf "/usr/bin/pkhex"
  echo $adminpassword | sudo -S install -D -m 755 "launcher" "/usr/bin/pkhex"
  echo $adminpassword | sudo -S rm -rf "/usr/share/pixmaps/pkhex.png"
  echo $adminpassword | sudo -S install -D -m 644 "icon.png" "/usr/share/pixmaps/pkhex.png"
  echo $adminpassword | sudo -S rm -rf "/usr/share/applications/pkhex.desktop"
  echo $adminpassword | sudo -S install -D -m 644 "pkhex.desktop" "/usr/share/applications/pkhex.desktop"
  echo $adminpassword | sudo -S rm -rf "/opt/pkhex/"
  echo $adminpassword | sudo -S mkdir -p "/opt/pkhex/bak"
  echo $adminpassword | sudo -S mkdir -p "/opt/pkhex/bin"
  echo $adminpassword | sudo -S install -D -m 755 "winetricks" "/opt/pkhex/bin/winetricks"
  echo $adminpassword | sudo -S chown root:root "/opt/pkhex/" -R
  echo $adminpassword | sudo -S chmod 777 "/opt/pkhex/" -R
  mkdir -p /opt/pkhex/share/locale/
  cp -R /tmp/pkhexinstall/PKHeX-master/share/locale/* /opt/pkhex/share/locale/
  cd /opt/pkhex
  rm -rf /tmp/pkhexinstall/
  wget https://github.com/amidevous/PKHeX/releases/download/24.01.12/PKHeX.24.01.12.zip -qO PKHeX.24.01.12.zip
  unzip PKHeX.24.01.12.zip
  rm -f PKHeX.24.01.12.zip
  mkdir -p $WINEPREFIX
  wget https://github.com/amidevous/PKHeX/releases/download/24.01.12/wine-GE-9.1-x86_64.tar.xz -qO wine-GE-9.1-x86_64.tar.xz
  tar -xvf /home/andy/wine-ge-custom/builds/runners/wine/wine-GE-9.1-x86_64.tar.xz
  cp -R  /opt/pkhex/GE-9.1-x86_64/*  /opt/pkhex/
  rm -rf /opt/pkhex/GE-9.1-x86_64/
  wget https://download.visualstudio.microsoft.com/download/pr/f18288f6-1732-415b-b577-7fb46510479a/a98239f751a7aed31bc4aa12f348a9bf/windowsdesktop-runtime-8.0.1-win-x64.exe -O windowsdesktop-runtime-8.0.1-win-x64.exe
  /opt/pkhex/bin/wine windowsdesktop-runtime-8.0.1-win-x64.exe /q
  rm -f windowsdesktop-runtime-8.0.1-win-x64.exe
  rm -f cfg.json
  /opt/pkhex/bin/wine PKHeX.exe
  echo 'Completed installing PKHeX.'

  
