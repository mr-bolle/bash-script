### bash_prompt + bash_profile
Source @necolas https://github.com/necolas/dotfiles

![Screenshot new prompt](http://i.imgur.com/EkEtphC.png)

```
curl "https://raw.githubusercontent.com/mr-bolle/bash-script/master/bash-dotfiles/bash_prompt" -o ~/.bash_prompt
curl "https://raw.githubusercontent.com/mr-bolle/bash-script/master/bash-dotfiles/bash_profile" -o ~/.bash_profile
echo -e '\n. ~/.bash_prompt\n. ~/.bash_profile' >> ~/.bashrc && source ~/.bashrc
```
