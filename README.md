# create-pass

create-pass is a shell script program that utilises python to generate secure passwords by printing them in the terminal. 

## Installation

 - Don't clone this repository to install program, instead follow the steps below. 
 - You need to have python3 installed and it should be involked by using "python3" command. 
 - Open your terminal and issue the following commands:

# Download the installer file
```bash
wget https://raw.githubusercontent.com/marcelus20/create-pass/master/create-pass-installer.sh
```

Make it executable in your linux system. 
```bash
chmod +x create-pass-installer.sh
```
Run the installer
```bash
./create-pass-installer.sh
```

After executing these commands, it should create a ~/.create-pass folder and add the folder in your $PATH variable using the ~/.bashrc file. 
Because the .bashrc needs to be sourced, <b>the invoking of "create-pass" program will not work until you either</b>:
 - Issue the command <b>source ~/.bashrc</b> in the terminal after the installation; or
 - Restart your computer.

Now you are good to use it. 

## Usage
```bash
create-pass [length] [howMany]
```

length and howMany are optional.
length defaults to 12 whereas howMany defaults to 1

Passing no arguments   
```bash
# defaults to 12 of length and 1 password generating. 
create-pass
```
Passing only the length argument
```bash
# Will generate a password with 8 characters.
create-pass 8 
```
Passing length and the howMany passwords to generate
```bash
# Will generate 50 different passwords with 15 characters.
create-pass 15 50 
```

Passing invalid arguments
```bash
#Will default to no arguments given, so 12 of length and only one password will be generated.
create-pass foo bar 
```


## License
[MIT](https://choosealicense.com/licenses/mit/)
