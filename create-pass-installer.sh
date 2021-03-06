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
echo "Downloading python Module"
wget https://raw.githubusercontent.com/marcelus20/create-pass/master/CreatePass/__main__.py
wget https://raw.githubusercontent.com/marcelus20/create-pass/master/CreatePass/chars.py
wget https://raw.githubusercontent.com/marcelus20/create-pass/master/CreatePass/CreatePassView.py
wget https://raw.githubusercontent.com/marcelus20/create-pass/master/CreatePass/CreatePass.py

mkdir CreatePass

mv ./__main__.py ./CreatePass
mv ./chars.py ./CreatePass
mv ./CreatePassView.py ./CreatePass
mv ./CreatePass.py ./CreatePass

mv ./CreatePass ~/.create-pass/


#export the variable to the .bashrc
echo ""
echo "" >> ~/.bashrc
echo "Appending the envirionment variable CREATE_PASS_HOME to the ~/.bashrc file"
echo "export PATH=\$PATH:\$CREATE_PASS_HOME/bin" >> ~/.bashrc

#Download the exec file to bin
echo ""
echo "Downloading script file..."
wget https://raw.githubusercontent.com/marcelus20/create-pass/master/create-pass
mv ./create-pass ~/.create-pass/bin
chmod +x ~/.create-pass/bin/create-pass

echo "Close your current terminal and re-open it, or manually issue the command 'source ~/.bashrc'."
