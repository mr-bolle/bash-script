# bash-script collection
a collection of bash scriptes

### [spdny-update.sh](spdny-update.sh)  
Mit diesem Script wird die aktuelle externe IP an den DynDNS Hoster [spdyn.de](https://spdyn.de) übergeben.  
Einfach *dns_host* und *dns_token* anpassen, und dieses Script über einen cronjob ausführen

### [current_ip.sh](current_ip.sh)
Wenn mehrere Hosts über eine IP betrieben werden sollen, dafür ist dieses Script behilflich.

* SCRIPT_PATH = Pfad wo sich das spdny_update Script befindet

  `sudo crontab -e`  
  `*/5 * * * * /home/USER/current_ip.sh`  

### [Debian|Ubuntu Update Neustart notwendig](debian_update_restart-required.sh)
Wenn ein Update vom zB. Kernel durchgeführt wurde, ist ein Neustart des Rechner/Server in vielen Fällen notwendig.
Ist der Neustart notwendig, wird eine Datei '' generiert. Und über das og. Script in Verbindung mit dem Cronjob geschieht dies automatisch.

  `sudo crontab -e`  
  `* 1 * * * /home/USER/debian_update_restart-required.sh`

### bash_prompt
Source @necolas https://github.com/necolas/dotfiles

![Screenshot new prompt](http://i.imgur.com/EkEtphC.png)

`curl "https://raw.githubusercontent.com/mr-bolle/bash-script/master/bash-dotfiles/bash_prompt" -o ~/.bash_prompt`
