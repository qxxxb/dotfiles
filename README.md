# Dotfiles

- Minimal dotfiles
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

I use [yadm](https://yadm.io/).

```
$ sudo apt-get install yadm
$ yadm clone https://github.com/qxxxb/dotfiles
$ yadm checkout <branch>
$ yadm bootstrap
```
