### bash_prompt + bash_profile
Source @necolas https://github.com/necolas/dotfiles

![Screenshot new prompt](http://i.imgur.com/EkEtphC.png)

Führe folgenden Befehl unter allen verwendeten Benutzern aus.

```
curl "https://raw.githubusercontent.com/mr-bolle/bash-script/master/bash-dotfiles/bash_prompt" -o ~/.bash_prompt
curl "https://raw.githubusercontent.com/mr-bolle/bash-script/master/bash-dotfiles/bash_profile" -o ~/.bash_profile
curl "https://raw.githubusercontent.com/mr-bolle/bash-script/master/bash-dotfiles/bash_aliases" -o ~/.bash_aliases
echo -e '\n. ~/.bash_prompt\n. ~/.bash_profile\n. ~/.bash_aliases' >> ~/.bashrc && source ~/.bashrc
```
