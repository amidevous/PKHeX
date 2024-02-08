#!/usr/bin/bash
# beta updater pkhex for linux and macosx
#dot not use update.sh this for devel not wokr with wine online for testing with proton
WINEPREFIX="/opt/pkhex/prefix"
export WINEDEBUG="${WINEDEBUG--all}"
#this require for net 7 and net 8 or error
export DOTNET_ROOT="C:\Program Files\dotnet"
#this require for net 7 and net 8 or error
export DOTNET_BUNDLE_EXTRACT_BASE_DIR="C:\dotnet_bundle_extract"
export TEXTDOMAIN=pkhex
export TEXTDOMAINDIR=$PWD/share/locale
progtitle=$(gettext "PKHeX For Linux and Mac OSX with wine")
adminpass=$(gettext "please enter administrator password")
adminerror=$(gettext "please enter correct administrator password for create folder /opt/pkhex for all user")
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
  echo $adminpassword | sudo -S chmod -R ugoa+rwx "/opt/"
  mkdir -p "/opt/pkhex/bak"
  echo $adminpassword | sudo -S chmod -R ugoa+rwx "/opt/pkhex/"
  echo $adminpassword | sudo -S chmod -R ugoa+rwx "/opt/pkhex/*"
  cd /opt/pkhex
  rm -f PKHeX.exe PKHeX.23.10.11.zip linux-stable-version
  wget https://github.com/amidevous/PKHeX/releases/download/24.01.12/PKHeX.23.10.11.zip -qO PKHeX.23.10.11.zip
  unzip PKHeX.23.10.11.zip
  rm -f PKHeX.23.10.11.zip
  mkdir -p $WINEPREFIX
  winetricks -q --force dotnetdesktop7 win10
  rm -f cfg.json
  wine PKHeX.exe
  echo 'Completed installing PKHeX.'
