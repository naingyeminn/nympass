#NYMPASS

NYMPASS is a shell script that allows you to save your passwords in encrypted file and get the password back to clipboard. Clipboard will be clear after defined interval.

##Features
* Password will be encrypted using the MAC address (Network Card's Hardware Address) of your System.
* Encrypted password will be stored in encrypted File using a Passphrase.
* When user decrypted the password, it will be set into the clipboard.
* Clipboard will keep the password for only 5 seconds (Default).
* Encrypted password files cannot be decrypted on other Systems without the right MAC address.
* Macbook users can use Thunderbolt Ethernet Adapter as a Key to decrypt password files.

##Purposes
* User needs to remember only one password (Master) for certain encrypted password files.
* User can simply paste the passwords without typing long and complex passwords whenever login to specific account.
* Password file will be decrypted only on script run.

##Installation

* Download [NYMPASS](https://github.com/naingyeminn/nympass/archive/master.zip) zip file.

```sh
$ wget https://github.com/naingyeminn/nympass/archive/master.zip -O nympass.zip
```

* Extract nympass.zip file.

```sh
$ unzip nympass.zip
```

* Change into the extracted directory in Terminal.

```sh
$ cd nympass-master
```

* Open `nympass` file with Text Editor.
* Set `passpath` value in **Line 5** if you want to save the password files in specific location. e.g. `passpath='/home/username/passdir/'`
* Replace `passkey` value in **Line 10** with your Ethernet Interface Name such as `eth0` or `eth1` or `en0` or `en1`.

> Recommend to use the Interface Name of Thunderbolt Ethernet Adapter for a Macbook User.

* Set `timeout` duration in **Line 12**. (Default is 5 Seconds)

* Run "make" command as root:

```sh
$ sudo make
```

> Mac OS X user should download the zip file directly from Browser if wget is not installed.

##Uninstall

* Change into `nympass` directory in Terminal.
* Run Following Command.

```sh
$ sudo make uninstall
```

##Usage
###Create Password File

```sh
$ nympass create
Name Pass : facebook [Password File Name]
Account ID : facebook_user@gmail.com [Account ID or Email]
Enter Passphrase : [Account Password]
enter aes-256-cbc encryption password: [Master Password]
Verifying - enter aes-256-cbc encryption password: [Master Password]
```

> Password file will be created in current directory. User can define Default file path in Script's **Line number 5**. Network Interface Name is also needed to define. See in **Line number 10**.

###Get Password

```sh
$ nympass get facebook
enter aes-256-cbc decryption password: [Master Password]
Account ID : facebook_user@gmail.com
```

> Password will be set in clipboard and cleaned up after **5 seconds**. Timeout duration can be defined in **Line 12**.

##License

		DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
			   Version 2, December 2004

	Copyright (C) 2013 Naing Ye` Minn <naingyeminn@gmail.com>

	Everyone is permitted to copy and distribute verbatim or modified 
	copies of this license document, and changing it is allowed 
	as long as the name is changed.

		DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
	TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

	0. You just DO WHAT THE FUCK YOU WANT TO.
