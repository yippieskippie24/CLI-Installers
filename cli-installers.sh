#!/bin/bash

#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
#                                                         #
#                  CLI installer Script                   #
#                                                         #
#        This script allows a user to selectively         #
#       install custom scripts and other programs.        #
#                                                         #
#         This script is written specifically for         #
#                    Ubuntu 18.04 LTS.                    #
#                                                         #
#              Written by:  Tyler M Johnson               #
#           https://github.com/yippieskippie24            #
#                                                         #
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#

#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
#                       File Check                        #
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#

#Saves the directory that the ./cli-installer.sh was run from to $DIR
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

#verify the variables-and-functions file exists.  If not, download it from github.
if [ ! -d "$DIR/variables-and-functions" ]; then
  curl -o variables-and-functions https://raw.githubusercontent.com/yippieskippie24/CLI-Installers/master/variables-and-functions
fi

#verify the software file exists.  If not, download it from github.
if [ ! -d "$DIR/software" ]; then
  curl -o software https://raw.githubusercontent.com/yippieskippie24/CLI-Installers/master/software
fi



#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
#                     Source files                        #
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#

source variables-and-functions
source software

#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*``#*#*#*#*#*#*#*#*#*#*#*#*#*#
#                    Calling Functions                    #
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#

START

MENU

VALIDATE

EXIT
