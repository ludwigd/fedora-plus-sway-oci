# Fedora Plus Sway (atomic version)

> **Note:** Work in Progress.

An attempt to create an atomic variant of my [current desktop](https://github.com/ludwigd/fedora-plus-sway/). Docs will follow upon success.

## Installation

To rebase an existing Fedora Atomic installation to the latest build:

1. Rebase to the unsigned image to get the proper siging keys and policies:
   ```
   rpm-ostree rebase ostree-unverified-registry:ghcr.io/ludwigd/fedora-plus-sway-oci:latest
   ```

2. Reboot into the new deployment:
   ```
   systemctl reboot
   ```
  
3. Rebase to the signed image:
   ```
   rpm-ostree rebase ostree-image-signed:docker://ghcr.io/ludwigd/fedora-plus-sway-oci:latest
   ```

4. Reboot again to complete the installation:
   ```
   systemctl reboot
   ```