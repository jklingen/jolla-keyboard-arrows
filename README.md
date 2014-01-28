Left and right Arrow keys for Jolla keyboard
============================================

Installation:

1. Make sure to create a backup of ```/usr/share/maliit/plugins/com/jolla/``` first!
2. Copy the .qml files to the same directory (you need to be root to do this).
3. Edit ```layout/en.qml``` (or whichever keyboard layout you want to extend) and add the keys as follows, whereever you want them to be: ```ArrowLeftKey {}``` and ```ArrowRightKey {}```
4. Exit root and run (as nemo): ```systemctl --user restart maliit-server.service```

That's all... have fun :)
