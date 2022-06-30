#!/bin/bash

###############################################################################
# Set variables                                                               #
###############################################################################

BASE_PATH=$(dirname "$0")

ROOT=$BASE_PATH                   # root folder of Clean-macOS
BIN=$BASE_PATH/bin                # shell scripts

###############################################################################
# Menu                                                                        #
###############################################################################

while :
do
    clear
    cat<<EOF
    ########################################################################
    # Clean-macOS                                                          #
    # Version : 1.12.7                                                     #
    ########################################################################
    #                                                                      #
    #  Please enter your choice:                                           #
    #                                                                      #
    #  (1) Install                                                         #
    #  (2) Configure                                                       #
    #  (3) Update                                                          #
    #  (0) Exit                                                            #
    #                                                                      #
    ########################################################################
EOF
    read -n1 -s
    case "$REPLY" in
    "1")  echo "Ready to install Homebrew..."            | $BIN/install.sh       ;;
    "2")  echo "Ready to configure macOS..."             | $BIN/config.sh        ;;
    "3")  echo "Ready to update Homebrew..."             | $BIN/update.sh        ;;
    "0")  exit                                                                   ;;
     * )  echo "Invalid option!"                                                 ;;
    esac
    sleep 1
done
