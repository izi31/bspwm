# Installing Picom-jonaburg on Void Linux

## Step 1: Install Dependencies

Open a terminal and run:

```bash
sudo xbps-install -Sy \
  git meson ninja pkg-config \
  xcb-util xcb-util-image xcb-util-renderutil \
  libev libconfig libdbus xcb-util-xrm \
  pcre uthash libglvnd \
  pixman xcb-util-cursor libepoxy \
  dbus-devel libconfig-devel \
  mesa-libGL-devel xcb-util-renderutil-devel \
  xcb-util-image-devel xcb-util-xrm-devel \
  libev-devel uthash-devel pcre-devel \
  libX11-devel libXext-devel libXrandr-devel \
  libXinerama-devel libXcomposite-devel libXdamage-devel \
  libXfixes-devel libXrender-devel libXcursor-devel
```

## Step 2: Clone Picom-jonaburg
Copied
Edit
cd ~
git clone --recursive https://github.com/jonaburg/picom
cd picom

## Step 3: Build with Meson and Ninja

meson --buildtype=release . build
ninja -C build

## Step 5: Set Picom to Start with BSPWM
Edit your bspwm configuration file:

nano ~/.config/bspwm/bspwmrc

Add this line near the bottom to launch Picom on startup:

picom --config ~/.config/picom/picom.conf &

Make sure your bspwmrc script is executable:

chmod +x ~/.config/bspwm/bspwmrc

## Step 6: Verify Installation
Run:
picom --version
