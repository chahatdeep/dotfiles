## All the dotfiles neccessary for my personalized Arch.
## WARNING: 
### For your own sake, CHECK THE SCRIPTS before you use ANYTHING!

 
                             __    _
                        _wr""        "-q__
                     _dP                 9m_
                   _#P                     9#_
                  d#@                       9#m
                 d##                         ###
                J###                         ###L
                {###K                       J###K
                ]####K      ___aaa___      J####F
            __gmM######_  w#P""   ""9#m  _d#####Mmw__
         _g##############mZ_         __g##############m_
       _d####M@PPPP@@M#######Mmp gm#########@@PPP9@M####m_
      a###""          ,Z"#####@" '######"\g          ""M##m
     J#@"             0L  "*##     ##@"  J#              *#K
     #"               `#    "_gmwgm_~    dF               `#_
    7F                 "#_   ]#####F   _dK                 JE
    ]                    *m__ ##### __g@"                   F
                           "PJ#####LP"
     `                       0######_                      '
                           _0########_
         .               _d#####^#####m__              ,
          "*w_________am#####P"   ~9#####mw_________w*"
              ""9@#####@M""           ""P@#####@M""

          
## MAY CONTAIN BIOHAZARDS, VIRUSES, BUGS AND BLACK HOLES!


### Installation Tweaks:
#### MATLAB:
Before installing any MATLAB toolbox on an already installed MATLAB, do:

```
sudo chmod -R ugo+rw /usr/local/MATLAB
sudo chown -R $USER /usr/local/MATLAB
```

#### Appearance:
``lxapperance`` will do it for you!
You also want QT, GTK 2.0, and GTK+ to look the same as your chosen theme.

```
sudo apt-get install lxappearance gtk-chtheme qt4-qtconfig
```
Now, open the apperance setting using ``lxapperance`` from the terminal. Check if you have any dark theme available! If not, try one of theme from this [link](http://www.devpy.me/10-of-the-best-linux-themes-compared/).
Or simply try:
1. Adapta:
```` sudo apt-add-repository ppa:tista/adapta -y ````
``` sudo apt-get update ```
``` sudo apt-get install adapta-gtk-theme ```

2. Numix:


For Network Manager Applet, install ``nm-applet``:
```
sudo apt-get install nm-applet
```
and add: `` exec --no-startup-id nm-applet `` to your i3 config file. Now, open ``lxapperance`` from your console and tweak the window properties that suits best for you :)

#### A simple Notification Utility ``dunst``
This is a simple notification utility. It isn't absolutely required to get i3 working, but if you don't install it then you won't get notification about things like wireless network status.



### To Do:
Add auto lock using ``xautolock`` and ``i3lock`` using the link given down below:
[i3wm: ``i3lock``, ``xautolock`` & Suspend to Disk](http://rabexc.org/posts/awesome-xautolock-battery)


> [Read regarding writing a cool git readme file!](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
