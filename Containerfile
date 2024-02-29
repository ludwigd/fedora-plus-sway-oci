FROM quay.io/fedora-ostree-desktops/base:39

COPY packages.sh filesystem/ /

RUN sh /packages.sh && \
    rm /packages.sh && \
    rm -rf /var/* && \
    ostree container commit
