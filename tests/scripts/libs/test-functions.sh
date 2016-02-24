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
# Object : Test script for scripts/lib/functions.sh
#-------------------------------------------------------------------------------------------------------------

__script_name=$(basename "$0")
__script_root=$(readlink -f "$0")
__script_root=$(dirname "${__script_root}")

__project_base=$(readlink -f "${__script_root}/../../..")
__scripts_base=$(readlink -f "${__project_base}/scripts")
__scripts_lib_base=$(readlink -f "${__scripts_base}/lib")




#-------------------------------------------------------------------------------------------------------------
# Init
#-------------------------------------------------------------------------------------------------------------
set -e
source "${__scripts_lib_base}/functions.sh"



# ============================================================================================================
#   MAIN
# ============================================================================================================

echo "========================================="
echo "Test function : print_error"
echo "========================================="
print_error "An error message"
print_error "An error message :" "An error value"
print_error "An error message :" "An error value" "The error\ndetail"
print_error "An error message" "" "The error\ndetail"
echo "========================================="



echo ""
echo "========================================="
echo "Test function : print_warn"
echo "========================================="
print_warn "An warning message"
print_warn "An warning message :" "An warning value"
print_warn "An warning message :" "An warning value" "The warning\ndetail"
print_warn "An warning message" "" "The warning\ndetail"
echo "========================================="



echo ""
echo "========================================="
echo "Test function : print_ok"
echo "========================================="
print_ok "An OK message"
print_ok "An OK message :" "An OK value"
print_ok "An OK message :" "An OK value" "The OK\ndetail"
print_ok "An OK message" "" "The OK\ndetail"
echo "========================================="



echo ""
echo "========================================="
echo "Test function : print_info"
echo "========================================="
print_info "An info message"
print_info "An info message :" "An info value"
print_info "An info message :" "An info value" "The info\ndetail"
print_info "An info message" "" "The info\ndetail"
echo "========================================="



echo ""
echo "========================================="
echo "Test function : print_sep"
echo "========================================="
print_sep "========================================="
print_sep "--------------------"
print_sep ">>>>>\n<<<<<"
echo "========================================="
