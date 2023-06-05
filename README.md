# My Dotfiles

This is my dotfiles used to setup my Linux fresh install. It's completely based on [HyprV4](https://github.com/SolDoesTech/HyprV4) by [@SolDoesTech](https://github.com/SolDoesTech/) with a good amount of tweaks by myself.

## Installation

Follow these steps to install this [Hyprland](https://hyprland.org/) custom spin built on top of [ArchLinux](https://archlinux.org/) distro.

### Prerequisites

- Git pre-installed
- Fresh minimal install of [ArchLinux](https://archlinux.org/);
- AMD Hardware (optional - nvidia may not work 100%);
- Physical drivers (not virtual machines)

### Quick Installation

Run the following command

```
git clone git@github.com:alancunha26/.dotfiles.git ~/.dotfiles && ~/.dotfiles/setup
```

### Manual Installation

You can grab the **.config** files and install packages by hand with the command listed below

Do this ONLY if you need Nvidia support (do this first)

```
yay -S linux-headers nvidia-dkms qt5-wayland qt5ct libva libva-nvidia-driver-git

Add modules: nvidia nvidia_modeset nvidia_uvm nvidia_drm to /etc/mkinitcpio.conf

Generate new image: sudo mkinitcpio --config /etc/mkinitcpio.conf --generate /boot/initramfs-custom.img

Add/create the following: options nvidia-drm modeset=1 in /etc/modprobe.d/nvidia.conf

reboot!
```

Now install the below for Hyprland

```
yay -S hyprland kitty jq mako waybar-hyprland swww swaylock-effects \
wofi wlogout xdg-desktop-portal-hyprland swappy grim slurp thunar \
polkit-gnome python-requests pamixer pavucontrol brightnessctl bluez \
bluez-utils blueman network-manager-applet gvfs thunar-archive-plugin \
file-roller btop pacman-contrib starship ttf-jetbrains-mono-nerd \
noto-fonts-emoji lxappearance xfce4-settings sddm-git sddm-sugar-candy-git
```

## TODO

- [ ] Guide on installing minimal ArchLinux
- [ ] Change wofi for another launcher (probably rofi)
- [ ] Symlink dotfiles from git repository
- [ ] Dynamic theme switch of neovim
- [ ] Multiple colorscheme options
- [ ] Add GTK4 configuration and themes

## Naming Ideas

I have some names in mind for this ArchLinux spin:

- KittyOS;
- ArchKitty;
- HyprKitty;

Yes, I love cats 😺.
