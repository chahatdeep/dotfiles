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
 
  ▓▓▓▓▓▓▓▓▓▓
 ░▓ about   ▓ Custom Linux Config Files
 ░▓ author  ▓ Chahat Deep Singh <chahatdeepsingh@gmail.com>
 ░▓ support ▓ archahat.wordpress.com
 ░▓▓▓▓▓▓▓▓▓▓
 ░░░░░░░░░░░
```
## Table of contents:
- [MATLAB](#matlab)
- [Git Setup](#git-setup)
- [Appearance](#appearance)

### MAY CONTAIN BIOHAZARDS, VIRUSES, BUGS AND BLACK HOLES!

#### [Linux Cookbook and best practises](http://upstart.ubuntu.com/cookbook/#disabling-a-job-from-automatically-starting):

### Franz (The all-in-one Messenger):
Download [Franz](http://meetfranz.com/), extract and you are good to go!

### Installation Tweaks:
#### MATLAB:
Before installing any MATLAB toolbox on an already installed MATLAB, do:

```
sudo chmod -R ugo+rw /usr/local/MATLAB
sudo chown -R $USER /usr/local/MATLAB
```
- For color schemes, follow this [link](https://github.com/scottclowe/matlab-schemer). For specific ``solarized-dark`` theme, use [this](https://github.com/benhager/solarized-matlab).

***

#### Git setup:
1. `` sudo apt-get install git-all ``
2. Create a repository from your browser.
3. Edit ``git config``: 
```
git config --global user.name "chahatdeep"
git config --global user.email chahatdeepsingh@gmail.com
git config --global core.editor emacs
```
*Check your configuration, do ``git config --list``*
4. Git clone your repository, do `` git clone htttp://github.com/chahatdeep/<repo_name> ``

5. cd <repo_name>

6. `` git init ``

7. Copy all the files you want to move to the repo.

8. In the repo, do ``git add * ``

9. `` git add LICENSE `` (Optional)

10. `` git commit -m 'initial project version' ``

11. `` git push ``

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
sudo apt-get update
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
4. Arc: (Probably the best available)
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

##### For debian based systems:
```
sudo add-apt-repository ppa:pulb/mailnag
sudo apt-get update
sudo apt-get install mailnag
```
##### For Arch Linux:
Either run ``yaourt -S mailnag`` or ``packer -S mailnag`` (as root) to install the package. Mailnag is available in the AUR repository.
Desktop Integration Plugins:

- Mailnag Unity Plugin:
``sudo apt-get install mailnag-unity-plugin``

- Mailnag GNOME Shell Extension:
``sudo apt-get install gnome-shell-mailnag``

- Mailnag GNOME Online Accounts Plugin:
``sudo apt-get install mailnag-goa-plugin``

[Reference](https://github.com/pulb/mailnag)
***

#### Google Chrome:
- Setup key with: 
```
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
```
- Setup repository with: 
```
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
```
- Setup package with: 
```
sudo apt-get update 
sudo apt-get install google-chrome-stable
```
[Reference](https://www.ubuntuupdates.org/ppa/google_chrome)
***

#### Emacs setup:
After copying the ``.emacs.d`` folder and ``.emacs`` config file to ``~/``, follow the following steps:

```
sudo apt-get install emacs24
sudo apt-get install build-essential
```
- Get all dependencies of a previous emacs version:
```
sudo apt-get build-dep emacs24
```
Download emacs24.4 source code from [here](http://ftp.gnu.org/gnu/emacs/), then cd to the emacs source directory or do
[download emacs24.4 directly](http://ftp.gnu.org/gnu/emacs/emacs-24.4.tar.xz).

- Compile Emacs:
```
cd ‹source_dir_name›
./configure
make
```

- Optional. This basically copy the binary to /usr/local/bin
```
sudo make install
```
You should be good to go! Enjoy your ``emacs`` experience.

[Reference](http://ergoemacs.org/emacs/building_emacs_on_linux.html)
***


#### SLACK: ScudCloud – Unofficial open-source Slack client
- Please, first update your system with:
```
sudo apt-get update && sudo apt-get upgrade
```
*If not, ScudCloud will crash with some old components or will not be installed.*

```
sudo apt-add-repository -y ppa:rael-gc/scudcloud
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections
sudo apt update
sudo apt install scudcloud
```
- If you want spell checking, add the ``hunspell`` dictionary for your language and make sure dependencies are installed. For ``en-us``:
```
sudo apt-get install hunspell-en-us libqtwebkit-qupzillaplugins python3-hunspell
```
- If you want to use a Slack icon instead of ScudCloud (which is not possible to include in this package due to copyright), download any [128px Slack icon](https://www.google.com.br/search?q=slack+icon+transparent&tbm=isch&source=lnt&tbs=isz:ex,iszw:128,iszh:128) to your home folder saving as ``scudcloud.png`` and run:
```
sudo dpkg-divert --add --rename --divert /usr/share/pixmaps/scudcloud.png.real /usr/share/pixmaps/scudcloud.png
sudo cp ~/scudcloud.png /usr/share/pixmaps/
sudo chmod +r /usr/share/pixmaps/scudcloud.png
sudo update-desktop-database
```

*Also, Aliasing ``scudCloud`` as ``slack`` will be handy!* Do:
```
echo "alias slack='scudcloud'" >> ~/.bashrc
```

- For ``scudcloud`` config files, copy [``scudcloud_qt5.cfg``](https://github.com/chahatdeep/dotfiles/tree/master/.config/scudcloud) to ``~/.config/scudcloud/`` and you'll be good.

- To remove Scudcloud:
```
sudo apt remove scudcloud && sudo apt autoremove
```

[Reference](https://github.com/raelgc/scudcloud)

##### For Arch Linux:
There is a [PKGBUILD](https://aur.archlinux.org/packages/scudcloud/) available on the Arch User Repository. You can install it using whichever AUR method you use. For instance, if you use cower:
```
cower -d scudcloud
cd scudcloud
makepkg -si
```

***
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
- [Mirrors](http://wiki.ros.org/ROS/Installation/UbuntuMirrors)/[Source Debs](http://wiki.ros.org/DebianPackageSources) are also available.

##### Note: If you are using Mint, ``$(lsb_release -sc)`` will output something like ``serena`` or some other name linked to your version of Linux Mint. So, to install ROS in Mint, try:
- For Indigo:
```
sudo sh -c '. /etc/lsb-release && echo "deb http://mirror.umd.edu/packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list' 
wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | sudo apt-key add - 
sudo apt-get update 
```
Then do- ``sudo apt-get install ros-indigo-desktop-full`` or ``sudo apt-get install ros-indigo-desktop``.
``
- For Kinetic:
```
sudo sh -c '. /etc/lsb-release && echo "deb http://mirror.umd.edu/packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list' 
wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | sudo apt-key add - 
sudo apt-get update 
```
Then do- ``sudo apt-get install ros-kinetic-desktop-full`` or ``sudo apt-get install ros-kinetic-desktop``.
*Note*: I highly recommend to install ros-$(ros_version)-desktop-full which is essentially the complete ROS package.

3. Set up your keys
```
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
```

4. Installation
Make sure your packages are up to date:
```
sudo apt-get update
```
- If you are using Ubuntu Trusty 14.04.2 and experience dependency issues during the ROS installation, you may have to install some additional system dependencies. Do not install these packages if you are using 14.04, it will destroy your X server:
```
sudo apt-get install xserver-xorg-dev-lts-utopic mesa-common-dev-lts-utopic libxatracker-dev-lts-utopic libopenvg1-mesa-dev-lts-utopic libgles2-mesa-dev-lts-utopic libgles1-mesa-dev-lts-utopic libgl1-mesa-dev-lts-utopic libgbm-dev-lts-utopic libegl1-mesa-dev-lts-utopic
```
- Do not install the above packages if you are using 14.04, it will destroy your X server
- Alternatively, try installing just this to fix dependency issues:
```
sudo apt-get install libgl1-mesa-dev-lts-utopic
```

- Desktop-Full Install: (Recommended) : ROS, [rqt](http://wiki.ros.org/rqt), [rviz](http://wiki.ros.org/rviz), robot-generic libraries, 2D/3D simulators and 2D/3D perception.
```
sudo apt-get install ros-indigo-desktop-full
```
- or just the basic desktop install which comes with standard ROS, rqt, rviz, and robot-generic libraries.
```
sudo apt-get install ros-indigo-desktop
```

- For installing an individual Package, (specific ROS package) replace underscores with dashes of the package name:
```
sudo apt-get install ros-indigo-PACKAGE
```
example: ``sudo apt-get install ros-indigo-slam-gmapping``

- To find available packages, use:
``apt-cache search ros-indigo``


5. Initialize rosdep:
```
sudo rosdep init
rosdep update
```
6. Environment setup
- Adding ROS environment variables to your bash session:
``echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc`` or for kinetic: ``echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc``
``
source ~/.bashrc
``

7. Getting rosinstall:
- It enables you to easily download many source trees for ROS packages with one command:
``sudo apt-get install python-rosinstall``

8. See the next section for ROS turorials. Enjoy!

*All credits to ROS community and their [Installation Guidlines](http://wiki.ros.org/indigo/Installation/Ubuntu).

*** 
#### ROS Tutorials (for you!):
*Important*: I highly recommend installing [Catkin Tools](https://catkin-tools.readthedocs.io/en/latest/installing.html) before moving forward!

- Turtle bot Installation (for simulation only), do:
```
sudo apt-get install ros-indigo-turtlebot ros-indigo-turtlebot-apps ros-indigo-turtlebot-interactions ros-indigo-turtlebot-simulator ros-indigo-kobuki-ftdi ros-indigo-rocon-remocon ros-indigo-rocon-qt-library ros-indigo-ar-track-alvar-msgs
```
For kinetic:
```
sudo apt-get install ros-kinetic-turtlebot ros-kinetic-turtlebot-apps ros-kinetic-turtlebot-interactions ros-kinetic-turtlebot-simulator ros-kinetic-kobuki-ftdi ros-kinetic-rocon-launch ros-kinetic-rocon-apps ros-kinetic-ar-track-alvar-msgs
```
or simply follow the [reference](http://wiki.ros.org/turtlebot/Tutorials/indigo/Turtlebot%20Installation).

1. Configuring ROS Environment: (Make sure you did Point 6 of last section)
A good way to check is to ensure that environment variables like ``ROS_ROOT`` and ``ROS_PACKAGE_PATH`` are set:
```
printenv | grep ROS
```
You should get something like this:
```
ROS_ROOT=/opt/ros/kinetic/share/ros
ROS_PACKAGE_PATH=/opt/ros/kinetic/share
ROS_MASTER_URI=http://192.168.1.1:11311
ROS_HOSTNAME=
ROSLISP_PACKAGE_DIRECTORIES=
ROS_DISTRO=kinetic
ROS_IP=
ROS_ETC_DIR=/opt/ros/kinetic/etc/ros
```
If you don't, restart the ``terminal`` or open a new ``terminal`` window. If it still doesn't work, do:
```
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
```

2. Creating ROS Workspace:
Creating a ``ROS`` Workspace is simple.
```
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
```




***

### Snapdragon Flight:
#### For this manual the host operating system is assumed to be Ubuntu 16.04

1. **Set up the host platform**:
    1. [Install ROS](http://wiki.ros.org/kinetic/Installation/Ubuntu)
    2. Add the following lines to your `~/.bashrc`:

        ```
        export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64/"
        #export ROS_IP=192.168.1.96
        export ROS_IP=$(ifconfig | grep -Po '(?<=inet addr:)192.168.1[.0-9]+' )
        export ROS_HOSTNAME=$ROS_IP
        export ROS_MASTER_URI=http://192.168.1.1:11311
        ```

        **Note**: for the ROS_IP variable you can hardcode the ip address, but it can change, that is why the regexp is used.

    3. Install [ADB](https://developer.android.com/studio/command-line/adb.html)
        ```
        sudo apt-get install android-tools-adb android-tools-fastboot
        ```
2. **Configure the drone:**
    1. **Make sure ADB works: connect your platform with a micro usb cable and type in console**:
        ```
        adb devices
        ```

        The output will be:

        ```
        * daemon not running. starting it now on port 5037 *
        * daemon started successfully *
        List of devices attached 
        1daf9fb4   device
        ```
        Now, in order to connect to platform type ```adb shell```

        Note: **DO NOT** use USB 3.0 (10 pin) cable (it does not work)! Use a **standard type A to micro B** usb cable one instead. If you see an error message 'Unable to mount Android' - that is OK.
        - 10 pin USB 3.0 (Don't use)
        
        <img src="https://images-na.ssl-images-amazon.com/images/I/41ApTPgD9-L._SL500_AC_SS350_.jpg" width="400">
        
        - Use Standard Type A to Micro B
        
        <img src="https://images-na.ssl-images-amazon.com/images/I/811PyLh3cfL._SL1500_.jpg" width="400">

    2. **Connect via SSH**:
        - Connect to the drone's wi-fi network ``Atlanticus_XXXXX``. To check your Snapdragon's Wifi-ssid and passphrase, do ``vim /etc/hostapd.conf``. Once you are connected to the Snapdragon's AP network, do:
            ``` 
            ssh linaro@192.168.1.1

            The authenticity of host '192.168.1.1 (192.168.1.1)' can't be established.
            ECDSA key fingerprint is SHA256:ckKLZj8FB9OoekLIEmwPNfXi21S3EY96YrBm3hzB6sA.
            Are you sure you want to continue connecting (yes/no)? yes
            Warning: Permanently added '192.168.1.1' (ECDSA) to the list of known hosts.
            linaro@192.168.1.1's password: 
            ```
   
            The password is '**linaro**'

        - Set root password:
            ```
            passwd root
            <enter new UNIX password>
            ```
     
            Set it to '**mathematical**'

        - Login as root:
            ```
            su
            ```
    3. **Add the following lines to your ``/root/.bashrc``**:
        ```
        export HOME=/root
        cd $HOME

        export MV_SDK=/opt/qualcomm/mv/lib/mv
        source /opt/ros/indigo/setup.bash
        export ROS_IP=192.168.1.1
        export ROS_HOSTNAME=$ROS_IP
        export ROS_MASTER_URI=http://$ROS_HOSTNAME:11311
        ```
    4. **Configure the Wi-Fi**:
        - Configure the station mode by editing the ``/etc/wpa_supplicant/wpa_supplicant.conf ``:
          Configure one of the ``network`` sections (make sure only one ``network`` section is uncommented):`
            ```
            network={
                     ssid="Land of Ooo"
                     proto=RSN
                     key_mgmt=WPA-PSKa
            ```
          This configuration is for the Land of Ooo router. For different networks edit accordingly.
        
        - You can change SSID for the access point mode in ``/etc/hostapd.conf``

    5. **Learn how to switch between Wi-Fi modes**:
        - Access point (by default; Used for connecting directly to Ground Station Server; **No internet Connection**):
        ```
        /usr/local/qr-linux/wificonfig.sh -s softap
        ```

        - Station mode (connect to router):
        ```
        /usr/local/qr-linux/wificonfig.sh -s station
        ```
        After this you will need to reboot:
        ```
        reboot
        ```
        **IMPORTANT**: After you are connected to the internet, ``ping 8.8.8.8``. If for some reason, you are unable to reach the www server, try the following:
        - Check if your ``wlan0`` is on/off. Do:
        ```
        ip link show wlan0
        wlan0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc pfifo_fast state DOWN mode DEFAULT group default qlen 1000 link/ether 00:03:7f:17:93:43 brd ff:ff:ff:ff:ff:ff
        ```
        If you get ``DOWN`` in ``wlan0: <NO_CARRIER,BROADCAST,MULTICAST,DOWN>`` then you need to turn on your wireless network. Don't worry, the ``DOWN`` in ``pfifo_fast state DOWN`` doesn't matter. To turn on the wireless device, do:
        
        ```
        sudo ip link set wlan0 up
        ```
        and check ``ip link show wlan0`` again.
        *Note: The name of your wireless device is generally ``wlan0``. It can be anything else like: ``wlp0s3``. Check ``iwconfig`` for the network name.*
        
        - Try connecting to a *no-key* wifi server. Create a hotspot from you Mobile device, say: ``BlackTrojan`` ($SSID). Now,
        ```
        sudo iwconfig wlan0 essid $SSID # it sets the essid properly now
        sudo dhclient -v wlan0
        ```
        Now, You should be connected to the internet. Try ``ping 8.8.8.8``. Voila! It worked. *Note: Make sure that you have given access to iwconfig for the network connections. Inbuilt CLI applications/ services like ``network-manager`` may interfere with your network environment. To stop that particular service, do:*
        ```
        sudo service <service_name> stop
        ```
        e.g. ``sudo service network-manager stop``
        
       
       1. [Reference 1: Stop ``network-manager`` service](https://ubuntuforums.org/showthread.php?t=1796412)
       2. [Reference 2: Connect to Wifi Network through CLI](https://unix.stackexchange.com/questions/92799/connecting-to-wifi-network-through-command-line)
       3. [Reference 3: Another Wifi Connection using CLI](https://cboard.cprogramming.com/networking-device-communication/118431-connect-wireless-network-via-linux-command-line.html)
       4. [Reference 4: Installing an easy Network Interface in Linux](https://wiki.debian.org/WiFi/HowToUse)
       5. [Reference 5: ``netctl`` interface; Use ``wifi-menu``](https://wiki.archlinux.org/index.php/netctl)
       6. [Reference 6: Install necessary applications (like ``dialog`` and ``wpa_supplicant``) for ARM](https://github.com/chahatdeep/dotfiles/blob/master/app_list.sh)
       7. [Reference 7: Using ``nmcli``](https://askubuntu.com/questions/461825/connect-to-wifi-from-command-line)
        
       - If ping works fine, follow [Reference 2](https://unix.stackexchange.com/questions/92799/connecting-to-wifi-network-through-command-line) in order to connect to a WEP/WPA key protected Wifi network.
       
        **NOTE!** For some reason ROS refuses to properly communicate with host through the station mode, use AP instead! Station mode is useful if you need Internet access on the platform.

3. **Move some files to the platform. Go to the 'snapdragon_setup' folder, then execute (with platform connected via usb):**
    ```
    adb push ./PX4/px4.config /usr/share/data/adsp/px4.config
    adb push ./PX4/mainapp.config /root/mainapp.config
    adb push ./PX4/px4 /root
    adb push ./PX4/libpx4.so /usr/share/data/adsp
    adb push ./PX4/libpx4muorb_skel.so /usr/share/data/adsp
    adb push ./opencv3_20160222-1_armhf.deb /root
    adb push ./camera.h /usr/include
    adb push ./camera_parameters.h /usr/include
    adb push ./mv0.8.deb /root
    adb push ./snapdragon-flight-license.bin /usr/lib/
    adb shell sync

    adb shell
    dpkg -i ./mv0.8.deb
    dpkg -i ./opencv3_20160222-1_armhf.deb
    ```

4. **Install the software on the platform**
    1. Make sure to switch to the station mode and install ROS for snapdragon flight: [link](https://github.com/ATLFlight/ATLFlightDocs/blob/master/SnapdragonROSInstallation.md)
        - Also, install additional packages: `sudo apt-get install libeigen3-dev sip-dev libyaml-cpp-dev libboost-dev cmake ros-indigo-mavlink ros-indigo-tf ros-indigo-orocos-toolchain ros-indigo-angles ros-indigo-tf2 ros-indigo-tf2-ros`

    2. Download our catkin workspace:
        ```
        cd
        git clone https://github.com/cognifli/cognifli
        cp ~/cognifli/contrib/environment/.vimrc ~/
        cd cognifli
        git checkout snapdragon

        cd contrib
        ./INSTALL.py
        ```
 
    3. Build everything:
        ```
        cd ~/cognifli
        catkin_make
        ```

5. **Run the software**
    - Motor control
        - Make sure px4 is running (`./px4 mainapp.config` or through autorun)
        - In a separate window:
            ```
            roslaunch mavros px4.launch fcu_url:="udp://:14550@192.168.1.1:14556"
            ```
            You should see something like this in the end of the output. If you don't, something is wrong with your ip or port:
            ```
            [ WARN] [5117.660738345]: TM: Clock skew detected (-4893.277222308 s). Hard syncing clocks.
            [ INFO] [5118.277715740]: CON: Got HEARTBEAT, connected. FCU: PX4
            [ INFO] [5118.294045062]: RC_CHANNELS message detected!
            [ INFO] [5118.296279802]: IMU: High resolution IMU detected!
            [ INFO] [5119.289135323]: VER: 1.1: Capabilities 0x00000000000024ef
            [ INFO] [5119.290862667]: VER: 1.1: Flight software:     000000ff (7a23a043fbdfa880)
            [ INFO] [5119.291693604]: VER: 1.1: Middleware software: 000000ff (7a23a043fbdfa880)
            [ INFO] [5119.292522146]: VER: 1.1: OS software:         000000ff (0000000000000000)
            [ INFO] [5119.293103396]: VER: 1.1: Board hardware:      00000001
            [ INFO] [5119.294391833]: VER: 1.1: VID/PID: 0000:0000
            [ INFO] [5119.295084593]: VER: 1.1: UID: 0000000100000002
            [ INFO] [5119.295712510]: VER: 1.1: Capabilities 0x00000000000024ef
            [ INFO] [5119.296223395]: VER: 1.1: Flight software:     000000ff (7a23a043fbdfa880)
            [ INFO] [5119.296868239]: VER: 1.1: Middleware software: 000000ff (7a23a043fbdfa880)
            [ INFO] [5119.297530688]: VER: 1.1: OS software:         000000ff (0000000000000000)
            [ INFO] [5119.298221208]: VER: 1.1: Board hardware:      00000001
            [ INFO] [5119.298689490]: VER: 1.1: VID/PID: 0000:0000
            [ INFO] [5119.299195531]: VER: 1.1: UID: 0000000100000002
            [ INFO] [5133.279507089]: WP: mission received
            [ INFO] [5133.280639589]: WP: seems GCS requesting mission
            [ INFO] [5133.280740682]: WP: sheduling pull after GCS is done
            ```
        - On a configured host, run `rostopic list`. You will see a lot of `/mavros/...` topics. For more information on Mavros, see [this](http://wiki.ros.org/mavros).

        - Now run the demo code. (You need to have cognifli repo set up on host):
            ```
            rosrun snapflight snapflight
            ```

    - Localization:
        In a separate windows (if you did not put it on autorun):
        ```
        imu_app -s 2
        ```
        And
        ```
        rosrun snap_ros_examples snap_vislam_node
        ```
        Then on a host run rviz and visualize tf!


6. **Tips and tricks!**
    - Make things like ./px4 or IMU driver to run on system startup:
        ```
        cd ~/cognifli/contrib
        ./INSTALL.py --startup

        vim ~/.root_startup.sh
        ```
        Add line:
        ```
        nohup /root/px4 /root/mainapp.config &>> $LOGFILE &
        ```

    - Wipe the platform:
        Connect the drone via usb cable, execute on the host:
        ```
        cd firmware # This folder is in the 'snapdragon_setup'
        chmod +x jflash.sh
        sudo ./jflash.sh
        ```

7. **Read more:**
    - Snap overview: [link](http://ardupilot.org/copter/docs/common-qualcomm-snapdragon-flight-kit.html)
    - Setting PX4: [link](https://github.com/ATLFlight/ATLFlightDocs/blob/master/PX4.md)
    - PX4 and ROS: [link](https://dev.px4.io/en/simulation/ros_interface.html)
    - Cameras: [link](https://github.com/PX4/snap_cam)
    - Localization: [link](https://github.com/ATLFlight/ros-examples)

***
### To Do:
Add auto lock using ``xautolock`` and ``i3lock`` using the link given down below:
> [i3wm: ``i3lock``, ``xautolock`` & Suspend to Disk](http://rabexc.org/posts/awesome-xautolock-battery)

> Install [TWMN: A notifier for i3 like Tiling Window Manager](https://github.com/sboli/twmn)

> [Read about how to write a cool git readme file!](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)

> [Create your chahatdeep.github.io (change the website name from the settings)](https://github.com/chahatdeep/editchahatdeep.github.io)

