#!/bin/bash
#-------------------------------------------------------------------------------------------------------------
# Copyright (c) 2016 Loïc Guibert <lfdummy-devel@yahoo.fr>
#-------------------------------------------------------------------------------------------------------------
# This file is part of docker-utils.
#
# docker-utils is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#-------------------------------------------------------------------------------------------------------------
# Object : Functions to print message with colors on console
#-------------------------------------------------------------------------------------------------------------


glob_COLOR_RED='\033[1;31m'
glob_COLOR_GREEN='\033[1;32m'
glob_COLOR_BLUE='\033[1;34m'
glob_COLOR_YELLOW='\033[1;33m'
glob_COLOR_MAGENTA='\033[1;35m'
glob_COLOR_BOLD='\033[1m'
glob_COLOR_CLEAR='\033[0m'



#-------------------------------------------------------------------------------------------------------------
# Function : print_error
# --------------------------------------------------
# Parameters :
#   - $1 : Error message
#   - $2 (optional) : Error value
#   - $3 (optional) : Error detail
#-------------------------------------------------------------------------------------------------------------
function print_error() {
    printf "${glob_COLOR_RED}[ERROR] %s${glob_COLOR_CLEAR}" "$1" >> /dev/stderr
    
    if [ ! -z "$2" ]; then
        printf " ${glob_COLOR_BOLD}%s${glob_COLOR_CLEAR}" "$2" >> /dev/stderr
    fi
    
    if [ ! -z "$3" ]; then
        printf "\n%b" "$3" >> /dev/stderr
    fi
    
    printf "\n" >> /dev/stderr
}



#-------------------------------------------------------------------------------------------------------------
# Function : print_warn
# --------------------------------------------------
# Parameters :
#   - $1 : Message
#   - $2 (optional) : Value
#   - $3 (optional) : Detail
#-------------------------------------------------------------------------------------------------------------
function print_warn() {
    printf "${glob_COLOR_MAGENTA}[WARN] %s${glob_COLOR_CLEAR}" "$1"
    
    if [ ! -z "$2" ]; then
        printf " ${glob_COLOR_BOLD}%s${glob_COLOR_CLEAR}" "$2"
    fi
    
    if [ ! -z "$3" ]; then
        printf "\n%b" "$3"
    fi
    
    printf "\n"
}



#-------------------------------------------------------------------------------------------------------------
# Function : print_ok
# --------------------------------------------------
# Parameters :
#   - $1 : Message
#   - $2 (optional) : Value
#   - $3 (optional) : Detail
#-------------------------------------------------------------------------------------------------------------
function print_ok() {
    printf "${glob_COLOR_GREEN}[OK] %s${glob_COLOR_CLEAR}" "$1"
    
    if [ ! -z "$2" ]; then
        printf " ${glob_COLOR_BOLD}%s${glob_COLOR_CLEAR}" "$2"
    fi
    
    if [ ! -z "$3" ]; then
        printf "\n%b" "$3"
    fi
    
    printf "\n"
}



#-------------------------------------------------------------------------------------------------------------
# Function : print_info
# --------------------------------------------------
# Params :
#   - $1 : Message
#   - $2 (optional) : Value
#   - $3 (optional) : Detail
#-------------------------------------------------------------------------------------------------------------
function print_info() {
    printf "${glob_COLOR_YELLOW}%s${glob_COLOR_CLEAR}" "$1"
    
    if [ ! -z "$2" ]; then
        printf " ${glob_COLOR_BOLD}%s${glob_COLOR_CLEAR}" "$2"
    fi
    
    if [ ! -z "$3" ]; then
        printf "\n%b" "$3"
    fi
    
    printf "\n"
}



#-------------------------------------------------------------------------------------------------------------
# Function : print_sep
# --------------------------------------------------
# Parameters :
#   - $1 : Message
#   - $2 (optional) : Value
#   - $3 (optional) : Detail
#-------------------------------------------------------------------------------------------------------------
function print_sep() {
    printf "${glob_COLOR_BLUE}%b${glob_COLOR_CLEAR}\n" "$1"
}
