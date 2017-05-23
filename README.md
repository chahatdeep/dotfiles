## All the dotfiles neccessary for my personalized Arch Linux.
### WARNING: For your own sake, CHECK THE SCRIPTS before you use ANYTHING!

 ```
      ██            ██     ████ ██  ██                
     ░██           ░██    ░██░ ░░  ░██                
     ░██  ██████  ██████ ██████ ██ ░██  █████   ██████
  ██████ ██░░░░██░░░██░ ░░░██░ ░██ ░██ ██░░░██ ██░░░░ 
 ██░░░██░██   ░██  ░██    ░██  ░██ ░██░███████░░█████ 
░██  ░██░██   ░██  ░██    ░██  ░██ ░██░██░░░░  ░░░░░██
░░██████░░██████   ░░██   ░██  ░██ ███░░██████ ██████ 
 ░░░░░░  ░░░░░░     ░░    ░░   ░░ ░░░  ░░░░░░ ░░░░░░  
 
  ▓▓▓▓▓▓▓▓▓▓
 ░▓ about   ▓ Custom Linux Config Files
 ░▓ author  ▓ Chahat Deep Singh <chahatdeepsingh@gmail.com>
 ░▓ support ▓ archahat.wordpress.com
 ░▓▓▓▓▓▓▓▓▓▓
 ░░░░░░░░░░
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

#### A simple Notification Utility ``dunst``
This is a simple notification utility. It isn't absolutely required to get i3 working, but if you don't install it then you won't get notification about things like wireless network status.

***

### To Do:
Add auto lock using ``xautolock`` and ``i3lock`` using the link given down below:
> [i3wm: ``i3lock``, ``xautolock`` & Suspend to Disk](http://rabexc.org/posts/awesome-xautolock-battery)


> [Read about how to write a cool git readme file!](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
