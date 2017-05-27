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

### Handy-Stuff:
- Checking your Ubuntu version:
```
lsb_release -a
```
***
### Everything about ROS:
#### Installing ROS Indigo (Ubuntu 14.04): ([Reference](http://wiki.ros.org/indigo/Installation/Ubuntu))
1. Configure your Ubuntu repositories: Configure your Ubuntu repositories to allow "restricted," "universe," and "multiverse." Follow [this](https://help.ubuntu.com/community/Repositories/Ubuntu)

2. Setup your sources.list 
```
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
```
[Mirrors](http://wiki.ros.org/ROS/Installation/UbuntuMirrors)/[Source Debs](http://wiki.ros.org/DebianPackageSources) are also available.

3. Set up your keys
```
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
```

4. Installation
Make sure your packages are up to date:
```
sudo apt-get update
```
If you are using Ubuntu Trusty 14.04.2 and experience dependency issues during the ROS installation, you may have to install some additional system dependencies. Do not install these packages if you are using 14.04, it will destroy your X server:
```
sudo apt-get install xserver-xorg-dev-lts-utopic mesa-common-dev-lts-utopic libxatracker-dev-lts-utopic libopenvg1-mesa-dev-lts-utopic libgles2-mesa-dev-lts-utopic libgles1-mesa-dev-lts-utopic libgl1-mesa-dev-lts-utopic libgbm-dev-lts-utopic libegl1-mesa-dev-lts-utopic
```
Do not install the above packages if you are using 14.04, it will destroy your X server
Alternatively, try installing just this to fix dependency issues:
```
sudo apt-get install libgl1-mesa-dev-lts-utopic
```

Desktop-Full Install: (Recommended) : ROS, [rqt](http://wiki.ros.org/rqt), [rviz](http://wiki.ros.org/rviz), robot-generic libraries, 2D/3D simulators and 2D/3D perception.
```
sudo apt-get install ros-indigo-desktop-full
```
or just the basic desktop install which comes with standard ROS, rqt, rviz, and robot-generic libraries.
```
sudo apt-get install ros-indigo-desktop
```

For installing an individual Package, (specific ROS package) replace underscores with dashes of the package name:
```
sudo apt-get install ros-indigo-PACKAGE
```
example: ``sudo apt-get install ros-indigo-slam-gmapping``

To find available packages, use:
``apt-cache search ros-indigo``


5. Initialize rosdep:
```
sudo rosdep init
rosdep update
```
6. Environment setup
Adding ROS environment variables to your bash session:
```
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
source ~/.bashrc
```
7. Getting rosinstall:
It enables you to easily download many source trees for ROS packages with one command:
``sudo apt-get install python-rosinstall``

8. See the next section for ROS turorials. Enjoy! 

*All credits to ROS community and their [Installation Guidlines](http://wiki.ros.org/indigo/Installation/Ubuntu).

#### ROS Tutorials (for you!):



***
### To Do:
Add auto lock using ``xautolock`` and ``i3lock`` using the link given down below:
> [i3wm: ``i3lock``, ``xautolock`` & Suspend to Disk](http://rabexc.org/posts/awesome-xautolock-battery)

> Install [TWMN: A notifier for i3 like Tiling Window Manager](https://github.com/sboli/twmn)

> [Read about how to write a cool git readme file!](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)

> [Create your chahatdeep.github.io (change the website name from the settings)](https://github.com/chahatdeep/editchahatdeep.github.io)

