#!/bin/bash

# Colorizationn of shell output
# for use within other bash scripts

        #### START COPY HERE ####
function prettify {

## Bash Colorization Helper Function
## https://github.com/Komish/Prettify

TEXT=$2

COLOR_LOWER=$( echo $1 | tr '[:upper:]' '[:lower:]')

## Color definition
local NORMALIZE="\e[0m"
local GREEN="\e[1;32m"
local RED="\e[1;31m"
local BLUE="\e[1;34m"
local CYAN="\e[1;36m"
local PURPLE="\e[1;35m"
local YELLOW="\e[1;33m"
local WHITE="\e[1;37m"



case $COLOR_LOWER in
    'green')
        COLOR_CHOICE=$GREEN ;;
    'red')
        COLOR_CHOICE=$RED   ;;
    'blue')
        COLOR_CHOICE=$BLUE  ;;
    'cyan')
        COLOR_CHOICE=$CYAN ;;
    'purple')
        COLOR_CHOICE=$PURPLE ;;
    'yellow')
        COLOR_CHOICE=$YELLOW ;;
    'white')
        COLOR_CHOICE=$WHITE ;;
    *)
        COLOR_CHOICE='' 
        NORMALIZE='' ;;
esac

echo -e "${COLOR_CHOICE}${2}${NORMALIZE}"
}
        #### END COPY HERE ####

# Running this script will always output
# This help text below.
string="This is a string"
echo 'Usage:  prettify [color]... [string]...'
echo 'Add colorization to text output. Copy function and include in your scripts.'
echo 'Running this script standalone will only ever display this output'
echo '    Available colors:'
echo "    $(prettify green green)"
echo "    $(prettify red red)"
echo "    $(prettify blue blue)"
echo "    $(prettify cyan cyan)"
echo "    $(prettify purple purple)"
echo "    $(prettify yellow yellow)"
echo "    $(prettify white white)"
echo
echo 'Examples:'
echo '  # echo $(prettify red "Hello World")'
echo "  $(prettify red 'Hello World')"
echo '  # echo $(prettify green "$string")'
echo "  $(prettify green "$string")"
echo '  # "[$(prettify yellow "Test")]"'
echo "  [$(prettify yellow 'Test')]"