#!/bin/bash
extract () {
  if [ -f "$1" ] ; then
    case "$1" in
      *.tar.bz2)   tar xvjf "$1"    ;;
      *.tar.gz)    tar xvzf "$1"    ;;
      *.tar.xz)    tar xvJf "$1"    ;;
      *.bz2)       bunzip2 "$1"     ;;
      *.rar)       unrar x "$1"     ;;
      *.gz)        gunzip "$1"      ;;
      *.tar)       tar xvf "$1"     ;;
      *.tbz2)      tar xvjf "$1"    ;;
      *.tgz)       tar xvzf "$1"    ;;
      *.zip)       unzip "$1"       ;;
      *.Z)         uncompress "$1"  ;;
      *.7z)        7z x "$1"        ;;
      *.xz)        unxz "$1"        ;;
      *.exe)       cabextract "$1"  ;;
      *)           echo "'$1': unrecognized file compression" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}



#   pour les formats .tar .tar.gz .tgz .tar.bz2 .tbz2 .tar.xz , voir la page tar
#   pour les formats .7z .zip .Zip64 .cab .rar .arj .gz .bz2 .tar .cpio .rpm .iso (image disque) .deb , voir la page p7zip
#   pour le format .zip , voir la page zip
#   pour le format .rar , voir la page rar
#   pour le format .ace , voir la page unace
#   pour le format .xtm , voir Xtremsplit (outil en ligne de commande, n'est plus maintenu)#

 

