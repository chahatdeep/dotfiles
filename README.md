## All the dotfiles neccessary for my personalized Arch Linux.
### WARNING: For your own sake, CHECK THE SCRIPTS before you use ANYTHING!

 ```
       ██             ██     ████ ██  ██                
      ░██            ░██    ░██░ ░░  ░██                
      ░██  ██████  ██████ ██████ ██ ░██  █████   ██████
   ██████ ██░░░░██░░░██░ ░░░██░ ░██ ░██ ██░░░██ ██░░░░ 
  ██░░░██░██   ░██  ░██     ░██  ░██ ░██░███████░░█████ 
░██  ░██░██   ░██  ░██     ░██  ░██ ░██░██░░░░  ░░░░░██
░░██████░░██████  ░░██    ░██  ░██ ███░░██████ ██████ 
 ░░░░░░  ░░░░░░     ░░    ░░   ░░ ░░░  ░░░░░░ ░░░░░░  
 
  ▓▓▓▓▓▓▓▓▓▓▓
 ░▓ about   ▓ Custom Linux Config Files
 ░▓ author  ▓ Chahat Deep Singh <chahatdeepsingh@gmail.com>
 ░▓ support ▓ archahat.wordpress.com
 ░▓▓▓▓▓▓▓▓▓▓▓
 ░░░░░░░░░░░
```

### MAY CONTAIN BIOHAZARDS, VIRUSES, BUGS AND BLACK HOLES!


### Installation Tweaks:
#### MATLAB:
Before installing any MATLAB toolbox on an already installed MATLAB, do:

```
sudo chmod -R ugo+rw /usr/local/MATLAB
sudo chown -R $USER /usr/local/MATLAB
```
***

#### Appearance:
``lxapperance`` will do it for you!
You also want QT, GTK 2.0, and GTK+ to look the same as your chosen theme.

```
sudo apt-get install lxappearance gtk-chtheme qt4-qtconfig
```
Now, open the apperance setting using ``lxapperance`` from the terminal. Check if you have any dark theme available! If not, try one of theme from this [link](http://www.devpy.me/10-of-the-best-linux-themes-compared/).
Or simply try one of these:
1. Adapta:
``` 
sudo apt-add-repository ppa:tista/adapta -y
sudo apt-get update ``
sudo apt-get install adapta-gtk-theme 
```

2. Numix:
```
sudo add-apt-repository ppa:numix/ppa  
sudo apt update  
sudo apt install numix-gtk-theme 
```
3. Vertex:
```
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/vertex-theme.list"  
sudo apt update  
sudo apt install vertex-theme  
```
4. Arc:(Probably the best available)
```
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"  
sudo apt update  
sudo apt install arc-theme  
```
and set the desired theme using ``lxapperance`` from the terminal.
***

#### For Network Manager Applet, install ``nm-applet``:
```
sudo apt-get install nm-applet
```
and add: `` exec --no-startup-id nm-applet `` to your i3 config file. Now, open ``lxapperance`` from your console and tweak the window properties that suits best for you :)

- or install [TWMN: A notifier for i3 like Tiling Window Manager](https://github.com/sboli/twmn)
![Notifier for Tiling Manager](https://github.com/sboli/twmn/blob/master/screencast.gif)

#### A simple Notification Utility ``dunst``
This is a simple notification utility. It isn't absolutely required to get i3 working, but if you don't install it then you won't get notification about things like wireless network status.
***

#### Mailnag notifier:

For debian based systems:
```
sudo add-apt-repository ppa:pulb/mailnag
sudo apt-get update
sudo apt-get install mailnag
```
For Arch Linux:
Either run ``yaourt -S mailnag`` or ``packer -S mailnag`` (as root) to install the package.
Mailnag is available in the AUR repository.
Desktop Integration Plugins

-Mailnag Unity Plugin:
``sudo apt-get install mailnag-unity-plugin``

-Mailnag GNOME Shell Extension:
``sudo apt-get install gnome-shell-mailnag``

-Mailnag GNOME Online Accounts Plugin:
``sudo apt-get install mailnag-goa-plugin``

[Reference](https://github.com/pulb/mailnag)


#### Avant Window Navigator: (Mac-like Dock)
```
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt update
sudo apt install --install-recommends avant-window-navigator
```
if Avant Window Navigator crashes the first time you run it, use the following command to restart gconfd-2:
```
killall gconfd-2
```
Then, use Synaptic Package Manager to install the AWN applets you want to use (simply search for "awn applet" and you should get a complete list of applets).

Or, to install all the available applets (except the DockBarX AWN applet, which is not part of AWN), use the following command:
```
sudo apt install --no-install-recommends awn-applets-all
```
I used "--install-recommends" for the AWN package because on Linux Mint, recommended packages are not installed by default, and that would result in awn-settings package (among a few others) not being installed. For the awn-applets-all, I used "--no-install-recommends" to prevent it from installing Unity Control Center and other Unity / GNOME Flashback packages along with the AWN applets in Xubuntu, Ubuntu MATE, etc (this is not the case for Linux Mint).
Here is the reference [link](http://www.webupd8.org/2016/09/how-to-install-avant-window-navigator.html).

***
### Git GUI Application for Linux:
Apart from ``gitkraken``, ``rabbitvcs`` is an amazing app which comes with an integration of ``nautilus``. Add ppa:
```
sudo add-apt-repository ppa:rabbitvcs/ppa
sudo apt-get update
sudo apt-get install rabbitvcs-nautilus rabbitvcs-cli
```
Note: If you are using ``nautilus3`` instead of ``nautilus``, do ``sudo apt-get install rabbitvcs-nautilus3``
[Reference](http://wiki.rabbitvcs.org/wiki/install/ubuntu)
***

### To Do:
Add auto lock using ``xautolock`` and ``i3lock`` using the link given down below:
> [i3wm: ``i3lock``, ``xautolock`` & Suspend to Disk](http://rabexc.org/posts/awesome-xautolock-battery)
> Install [TWMN: A notifier for i3 like Tiling Window Manager](https://github.com/sboli/twmn)

> [Read about how to write a cool git readme file!](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
> [Create your chahatdeep.github.io (change the website name from the settings)](https://github.com/chahatdeep/editchahatdeep.github.io)
