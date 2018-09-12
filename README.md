<p align="center">
  <img src="https://raw.githubusercontent.com/PapirusDevelopmentTeam/adapta-kde/master/preview.png" alt="Preview Adapta KDE"/>
  <sup><sub>Screenshot: Engine: <a href="https://github.com/tsujan/Kvantum/tree/master/Kvantum">Kvantum</a> | Kvantum Theme: Adapta Nokto | Aurorae decoration: Adapta | Plasma Theme: Adapta | Icons: <a href="https://github.com/PapirusDevelopmentTeam/papirus-icon-theme">Papirus-Adapta-Nokto</a> | File Manager: Dolphin | Dock: <a href="https://github.com/psifidotos/Latte-Dock">Latte Dock</a> | Calendar: <a href="https://github.com/Zren/plasma-applet-eventcalendar">Event Calendar</a></sub></sup>
</p>

Adapta KDE - This is a port of the popular [GTK theme Adapta](https://github.com/adapta-project/adapta-gtk-theme) for Plasma 5 desktop with a few additions and extras.

In this repository you'll find:

- Aurorae Theme
- Konsole Color Schemes
- Kvantum Themes
- Plasma Color Schemes
- Plasma Desktop Theme
- Plasma Look-and-Feel Settings
- Wallpaper
- Yakuake Skins

## Installation

### Ubuntu and derivatives

You can install adapta-kde from our official [PPA](https://launchpad.net/~papirus/+archive/ubuntu/papirus):

```
sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
sudo apt-get install --install-recommends adapta-kde
```

or download .deb packages from [here](https://launchpad.net/~papirus/+archive/ubuntu/papirus/+packages?field.name_filter=adapta-kde).

### Adapta KDE Installer

Use the script to install the latest version directly from this repo (independently on your distro):

#### Install

```
wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/adapta-kde/master/install.sh | sh
```

#### Uninstall

```
wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/adapta-kde/master/install.sh | uninstall=true sh
```

### Third-party packages

Packages in this section are not part of the official repositories. If you have a trouble or a question please contact with package maintainer.

| **Distro** | **Maintainer** | **Package** |
|:-----------|:---------------|:------------|
| Arch Linux | Bruno Pagani | `sudo pacman -S adapta-kde kvantum-theme-adapta` <sup>[[link](https://www.archlinux.org/packages/community/any/adapta-kde/)]</sup> |
| Arch Linux | Jan Neumann | [adapta-kde-git](https://aur.archlinux.org/packages/adapta-kde-git) <sup>AUR</sup> |
| openSUSE | Konstantin Voinov | [adapta-kde](https://software.opensuse.org/download.html?project=home:kill_it&package=adapta-kde) <sup>OBS [[link](https://build.opensuse.org/package/show/home:kill_it/adapta-kde)]</sub> |

**NOTE:** If you maintainer and want be in the list please create an issue or send a pull request.

## Recommendations

- For better looking please use this pack with [Kvantum engine](https://github.com/tsujan/Kvantum/tree/master/Kvantum).

  Run `kvantummanager` to choose and apply **Adapta** or **Adapta Nokto** theme.

- Install [Papirus-Adapta icon theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme) for a more consistent and beautiful experience.

- Set tree menu view for systemsettings

- On systemsettings set **Noto Sans** font for title, menu and toolbar

- For better looking use toolbar icons without text with 16px size (for Papirus themes)

## Hacks for small scrren resolution

- Install widgets [Active Window Control](https://github.com/kotelnik/plasma-applet-active-window-control) & [Application Menu](https://cgit.kde.org/plasma-workspace.git/tree/applets/appmenu) and move to panel
- Disable window buttons & titlebar on decoration:

open rc-file on aurorae theme and set:
```
ButtonHeight=0
ButtonWidth=0
TitleHeight=0
```
- Use [GTK3-noCSD](https://github.com/PCMan/gtk3-nocsd) script 

## Known issues

- On some propietary video drivers Aurorae have wrong rendering by default with Adapta theme. See more info [here](https://github.com/PapirusDevelopmentTeam/adapta-kde/issues/21)

## Donate

If you like my project, you can donate at:

<span class="paypal"><a href="https://www.paypal.me/varlesh" title="Donate to this project using Paypal"><img src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-100px.png" alt="PayPal donate button" /></a></span>

## License

GNU GPL v3
