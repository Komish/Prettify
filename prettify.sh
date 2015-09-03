#!/usr/bin/env bash
 
         #### START COPY HERE ####
function prettify {

## Bash/BBCode Colorization Helper Function
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

local NORMALIZE_BB="[/b][/color]"
local GREEN_BB="[color=green][b]"
local RED_BB="[color=red][b]"
local BLUE_BB="[color=blue][b]"
local CYAN_BB="[color=cyan][b]"
local PURPLE_BB="[color=purple][b]"
local YELLOW_BB="[color=yellow][b]"
local WHITE_BB="[color=white][b]"

case $COLOR_LOWER in
    ## BASH Colorization
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
    
    ## BBCode Colorization
    'greenbb') COLOR_CHOICE=$GREEN_BB && NORMALIZE=$NORMALIZE_BB ;;
    'redbb') COLOR_CHOICE=$RED_BB && NORMALIZE=$NORMALIZE_BB;;
    'bluebb') COLOR_CHOICE=$BLUE_BB && NORMALIZE=$NORMALIZE_BB;;
    'cyanbb') COLOR_CHOICE=$CYAN_BB && NORMALIZE=$NORMALIZE_BB;;
    'purplebb') COLOR_CHOICE=$PURPLE_BB && NORMALIZE=$NORMALIZE_BB;;
    'yellowbb') COLOR_CHOICE=$YELLOW_BB && NORMALIZE=$NORMALIZE_BB;;
    'whitebb') COLOR_CHOICE=$WHITE_BB && NORMALIZE=$NORMALIZE_BB;;
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
echo 'Usage:  prettify color "string"'
echo 'Add colorization to text output for Bash and BBCode. Copy function and include in your scripts.'
echo 'Running this script standalone will only ever display this output'
echo '    Available Bash colors:'
echo "    $(prettify green green)"
echo "    $(prettify red red)"
echo "    $(prettify blue blue)"
echo "    $(prettify cyan cyan)"
echo "    $(prettify purple purple)"
echo "    $(prettify yellow yellow)"
echo "    $(prettify white white)"
echo
echo '    Available BBCode colors:'
echo "    $(prettify green greenbb)"
echo "    $(prettify red redbb)"
echo "    $(prettify blue bluebb)"
echo "    $(prettify cyan cyanbb)"
echo "    $(prettify purple purplebb)"
echo "    $(prettify yellow yellowbb)"
echo "    $(prettify white whitebb)"
echo
echo 'Example Bash Colorization:'
echo '  # echo $(prettify red "Hello World")'
echo "  $(prettify red 'Hello World')"
echo '  # echo $(prettify green "$string")'
echo "  $(prettify green "$string")"
echo '  # "[$(prettify yellow "Test")]"'
echo "  [$(prettify yellow 'Test')]"
echo 'Example BBCode Colorization:'
echo '   # echo $(prettify greenbb "Hello World")'
echo "   $(prettify greenbb 'Hello World')"
echo '   # echo $(prettify redbb "Hello World")'
echo "   $(prettify redbb 'Hello World')"
echo '   # echo $(prettify greenbb "Hello World")'
echo "   $(prettify purplebb 'Hello World')"
