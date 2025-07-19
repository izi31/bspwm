# Installing Steam on Void Linux

This guide will walk you through installing Steam on Void Linux, including necessary dependencies and setup tips.

---

## Step 1: Update your system

Open a terminal and update your package index:

```bash
sudo xbps-install -Syu
sudo xbps-install void-repo-multilib void-repo-nonfree void-repo-multilib-nonfree
sudo xbps-install -Sy steam lib32-glibc lib32-libgl mesa-dri lib32-mesa-dri lib32-libgl lib32-libdrm lib32-alsa-lib
sudo usermod -aG video $USER
```
