#!/bin/bash

#installer

#create the folder ~/.create-pass
echo ""
echo "Creatig the folder ~/.create-pass"
mkdir -p ~/.create-pass/bin

#Append this variable to the .bashrc
echo ""
echo "Setting the CREATE_PASS_HOME variable"
echo "" >> ~/.bashrc
echo "" >> ~/.bashrc
echo "CREATE_PASS_HOME=~/.create-pass" >> ~/.bashrc


#Download the python file from github to the folder ~/.create-pass folder
echo ""
echo "Downloading python script..."
wget https://raw.githubusercontent.com/marcelus20/create-pass/master/scripts/create-pass.py
mv ./create-pass.py ~/.create-pass/


#export the variable to the .bashrc
echo ""
echo "" >> ~/.bashrc
echo "Appending the envirionment variable CREATE_PASS_HOME to the ~/.bashrc file"
echo "export PATH=\$PATH:\$CREATE_PASS_HOME/bin" >> ~/.bashrc

#Download the exec file to bin
echo ""
echo "Downloading script file..."
wget https://raw.githubusercontent.com/marcelus20/create-pass/master/scripts/create-pass
mv ./create-pass ~/.create-pass/bin
chmod +x ~/.create-pass/bin/create-pass

echo "Close your current terminal and re-open it, or manually issue the command 'source ~/.bashrc'."
