#!/bin/bash

#Basic set of tput commands
#formating
TPUTBOLD="$(tput bold)"
TPUTDIM="$(tput dim)"
TPUTRESET="$(tput sgr 0)" 
TPUTITALIC="$(tput sitm)" 
TPUTBLINK="$(tput sitm)"
TPUTLIGHT="$(tput smso)" 
#colors
TPUTGREEN="$(tput setaf 2)" 
TPUTRED="$(tput setaf 1)"
TPUTBLUE="$(tput setaf 6)"
TPUTGREY="$(tput setaf 241)" 

#tput presets 
USERINPUTTPUT="${TPUTRESET}${TPUTGREEN}${TPUTBOLD}" #user inputs
LOGTPUT="${TPUTRESET}${TPUTGREY}${TPUTITALIC} " #advanced logging 
ERRORTPUT="${TPUTRESET}${TPUTBOLD}${TPUTRED} " #errors
INFOTPUT="${TPUTRESET}${TPUTBLUE}" #logging

read -p "${USERINPUTTPUT}Install supertux2-saveedit globaly on your system [y/N]" -n 1 INSTALLSCRIPT
case $INSTALLSCRIPT in
    'y'|'Y')
        printf "${INFOTPUT}Installing Supertux2...\n${LOGTPUT}\n"
        sudo cp ./supertux2-saveedit /usr/bin/ -rv
        printf "${INFOTPUT}Installed"
    ;;
    * )
        printf "${INFOTPUT}Exiting installer...\n"
        exit 1
esac

