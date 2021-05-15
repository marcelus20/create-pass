#!/bin/bash

#installer

#create the folder ~/.create-pass
##echo "Creatig the folder ~/.create-pass"
##mkdir ~/.create-pass

echo "Checking for environment variable"
##CreatePassEnvVariable="${CREATE_PASS_HOME:-$HOME/.create-pass}"

#Append this variable to the .bashrc
##echo "Setting the CREATE_PASS_HOME variable"
##echo "CREATE_PASS_HOME=$CreatePassEnvVariable" >> ~/.bashrc


#Download the python file from github to the folder ~/.create-pass folder
##echo "Downloading python script..."
##wget https://raw.githubusercontent.com/marcelus20/create-pass/master/create-pass.py
##mv ./create-pass.py ~/.create-pass/


#export the variable to the .bashrc
##echo "Appending the envirionment variable CREATE_PASS_HOME to the ~/.bashrc file"
##echo "export PATH=$PATH:$CREATE_PASS_HOME/bin" >> ~/.bashrc

#clear ./bashrc caches using source
##source ~/.bashrc

#Download the exec file to bin
##echo "Downloading script file..."
##wget https://raw.githubusercontent.com/marcelus20/create-pass/master/create-pass
##mv ./create-pass ~/.create-pass/
##chmod +x ~/.create-pass/create-pass