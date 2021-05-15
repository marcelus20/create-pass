#!/bin/bash

#installer

CreatePassEnvVariable="${CREATE_PASS:-~/.create-pass}"

#Append this variable to the .bashrc
#$CREATE_PASS_HOME=$CreatePassEnvVariable

#export the variable to the .bashrc
#~/.bashrc >> "PATH=$PATH:$CREATE_PASS_HOME/bin"

#clear ./bashrc caches using source
#source ~/.bashrc