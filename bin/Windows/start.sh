#!/bin/bash


prefix="/home/igorek/Games/mygames/Escape from nothing"

export WINEARCH=win64
export script="$(readlink -f "${BASH_SOURCE[0]}")"
export scriptdir="$(dirname "$script")"
export LANG=ru_RU.UTF-8

export WINEPREFIX=$prefix
wine game.exe
#winecfg
