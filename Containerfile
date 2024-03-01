FROM quay.io/fedora-ostree-desktops/base:39

COPY filesystem/ /

RUN rpm-ostree install \
        foot \
        gnome-icon-theme \
        sway \
        sway-wallpapers \
        swaybg \
        swaycaffeine \
        swayidle \
        swaylock \
        thunar \
        vim-enhanced \
        wev \
&&  rpm-ostree override remove \
        firefox \
        firefox-langpacks \
        PackageKit-glib \
        tracker \
        tracker-miners \
&&  rm -rf /var/* \
&&  ostree container commit