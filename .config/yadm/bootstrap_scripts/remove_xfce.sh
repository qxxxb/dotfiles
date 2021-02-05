# These packages are from /var/log/apt/history.log
# https://askubuntu.com/a/425896

sudo apt-get remove --purge \
    gnome-mines \
    gnome-sudoku \
    catfish \
    elementary-xfce-icon-theme \
    engrampa \
    gigolo \
    greybird-gtk-theme \
    gucharmap \
    inxi \
    mate-calc \
    menulibre \
    mousepad \
    mugshot \
    numix-gtk-theme \
    onboard \
    onboard-common \
    onboard-data \
    parole \
    pidgin \
    pidgin-data \
    pidgin-otr \
    ristretto \
    sgt-puzzles \
    thunar \
    thunar-archive-plugin \
    thunar-data \
    thunar-media-tags-plugin \
    thunar-volman \
    xfburn \
    xfce4-appfinder \
    xfce4-cpugraph-plugin \
    xfce4-dict \
    xfce4-indicator-plugin \
    xfce4-mailwatch-plugin \
    xfce4-netload-plugin \
    xfce4-notes-plugin \
    xfce4-notifyd \
    xfce4-panel \
    xfce4-places-plugin \
    xfce4-power-manager \
    xfce4-power-manager-data \
    xfce4-power-manager-plugins \
    xfce4-pulseaudio-plugin \
    xfce4-screenshooter \
    xfce4-session \
    xfce4-settings \
    xfce4-statusnotifier-plugin \
    xfce4-systemload-plugin \
    xfce4-taskmanager \
    xfce4-terminal \
    xfce4-verve-plugin \
    xfce4-weather-plugin \
    xfce4-whiskermenu-plugin \
    xfce4-xkb-plugin \
    xfconf \
    xfdesktop4 \
    xfdesktop4-data \
    xfwm4 \
    atril \
    atril-common

sudo apt-get autopurge

# Some important-looking packages got removed
sudo apt-get install \
    xorg \
    aptdaemon \
    unzip \
    zip \
    policykit-desktop-privileges \
    nemo \
    gimp \
    gnome-software \
    gnome-font-viewer \
    gnome-keyring \
    x11-apps x11-session-utils xapps-common xcursor-themes \
    libgtk-3-0 \
    lightdm slick-greeter lightdm-settings

sudo apt-get remove --purge gnome-shell unity-greeter

sudo apt-get autopurge
