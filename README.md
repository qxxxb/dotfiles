# Dotfiles

- ASUS ViveBook S15 laptop
- Xubuntu 20.04

### SSH keys

Local machine:
```
$ ssh-keygen
$ ssh-copy-id -i <key.pub> user@ip
```

On the local machine, create a file `~/.ssh/config`:
```sshconfig
Host <alias>
    HostName <ip>
    User <username>
    IdentityFile ~/.ssh/<key>
```

Make sure that only the user owning the file can read and write to it.
```
$ chmod 600 ~/.ssh/config
```

Now to login from the local machine:
```
$ ssh <alias>
```

## Dotfiles

I use [yadm](https://yadm.io/).

```
$ sudo apt-get install yadm
$ yadm clone https://github.com/qxxxb/dotfiles -b asus_laptop
```

When prompted, execute the bootstrap script.
Then check `~/.config/yadm/todo.log` when the bootstrap script completes.

## Desktop

- Switch to `i3`.
- Background
  - Move an image to `~/Pictures/wallpapers` so you don't accidentally change
    the path
  - Open it `feh`
      - Right click, `File`, `Background`, `Set Filled`

### Touchpad

Use `libinput` instead of `synaptics` driver.
```
$ sudo apt-get remove xserver-xorg-input-synaptics
```

### Function lock

The function lock LED is inverted for some reason. A temporary solution is just
disable it in BIOS.

### Firefox

- Install `Saka Key`
  - Set to one-handed key binds
- Install `uBlock Origin`
