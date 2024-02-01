#!/bin/bash


prefix=game

export WINEARCH=win64
export script="$(readlink -f "${BASH_SOURCE[0]}")"
export scriptdir="$(dirname "$script")"
export LANG=ru_RU.UTF-8

export WINEPREFIX="${scriptdir}"/$prefix
wine game.exe
