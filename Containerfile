FROM quay.io/fedora-ostree-desktops/base:39

COPY sway-supplemental.repo /etc/yum.repos.d/
COPY packages.sh /

RUN sh /packages.sh && \
    rm /packages.sh && \
    rm -rf /var/* && \
    ostree container commit
