# create-pass

create-pass is a shell script program that utilises python to generate secure passwords by printing them in the terminal. 

## Use case

This program is not a password manager, it won't store passwords anywhere in your computer. It is to be solely used to suggest secure passwords when you are creating a new account somewhere or wants to update an existing one but don't want to to type random keys in the keyboard. It wil still be your responsibility to keep it safe. The use case has a very narrow scope
 - User wants to create a new password at a website, but doesn't have an idea which one it will be. 
 - User will open terminal, invoke the program, pass the parameters and a password suggestion will show
 - User will pick that password or generate a new one if they wish.
 - User will copy to clipboard, paste the new password in the website and take note of that password or leave for the browser to securely store it. 
 - User will close the program. 


## Installation

 - Don't clone this repository to install program, instead follow the steps below. 
 - You need to have python3 installed and it should be involked by using "python3" command. 
 - Open your terminal and issue the following commands:

Download the installer file
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

After executing these commands, you should have a ~/.create-pass folder and your $PATH variable should now include it.

Before using, close your current terminal and open a new one, or manually enter the command "source ~/.bashrc"

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
