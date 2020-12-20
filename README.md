# Dotfiles

- Dell Inspiron 15 laptop home server
- Ubuntu 20.04

## Static IP

See the "Static IP Address Assignment" section from
[this page](https://ubuntu.com/server/docs/network-configuration).

## SSH Server
```
$ sudo apt-get install openssh-server
```

### SSH keys

Local machine:
```
$ ssh-keygen
$ ssh-copy-id -i <key.pub> user@ip
```

On the remote machine, edit `/etc/ssh/sshd_config`:
```
PubkeyAuthentication yes
AuthorizedKeysFile /home/<user>/.ssh/authorized_keys
PasswordAuthentication no
ChallengeResponseAuthentication no
UsePAM no
AcceptEnv LANG LC_*
```

Now to login from the local machine:
```
$ ssh -i ~/.ssh/<key> user@ip
```

## Dotfiles

I use [yadm](https://yadm.io/)

```
$ sudo apt-get install yadm
$ yadm clone https://github.com/qxxxb/dotfiles
$ yadm bootstrap
```

## Desktop

- Switch to `i3`.
- Background
  - Move an image to `~/Pictures/wallpapers` so you don't accidentally change
    the path
  - Open it `feh`
      - Right click, `File`, `Background`, `Set Filled`

### Ignore lid switch

Edit `/etc/systemd/logind.conf`:
```
HandleLidSwitch=ignore
```

Then run
```
$ sudo systemctl restart systemd-logind
```

Source [here](https://www.dell.com/community/Linux-General/Stop-laptop-going-to-sleep-when-closing-the-lid-UBUNTU-Server/td-p/6086201)

### Firefox

- Install `Saka Key`
  - Set to one-handed key binds
- Install `uBlock Origin`

### GTK

- Open `LXAppearance` set `Yaru` as theme
