alias yd="pwd | tr -d '\n' | xsel -i -b"

alias display_off="sudo service lightdm stop && light -S 0"
alias display_on="sudo service lightdm start && light -S 10"

if [[ $EUID -ne 0 ]]; then
    alias ls="exa"
fi
alias dc="docker-compose"

function padtype {
    xinput set-prop "ELAN1300:00 04F3:3057 Touchpad" \
        "libinput Disable While Typing Enabled" $1
}

function xxddiff {
    vimdiff <(xxd $1) <(xxd $2)
}
