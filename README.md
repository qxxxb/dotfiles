# Server dotfiles

## Static IP

See the "Static IP Address Assignment" assign from
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

### Firefox

- Install `Saka Key`
  - Set to one-handed key binds
- Install `uBlock Origin`

### GTK

- Open `LXAppearance` set `Yaru` as theme

### Configs for root
