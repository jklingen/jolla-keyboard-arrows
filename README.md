## Left and right Arrow keys for Jolla keyboard

These changes add left and right arrow keys to your keyboard layouts. When switching to symbol mode, the keys send a <kbd>Backtab</kbd> or <kbd>Tab</kbd> event instead.

There are also some other small improvements for the English and German keyboard layout, see below for details.

### Installation:
 
1. Make sure to create a backup of ```/usr/share/maliit/plugins/com/jolla/``` first!
2. Copy the files to the same directory (you need to be root to do this). Make sure to store layout files (```en.qml``` and/or ```de.qml```) into the ```layouts``` subdirectory.
3. Exit root and run (as nemo): ```systemctl --user restart maliit-server.service```

That's all... have fun :)

### Keyboard layout changes:

#### en.qml
Apart from having arrow keys, the modified English keyboard layout is closer to the layout of a physical QWERTY keyboard.
* Added arrow keys left and right next to the <kbd>Space</kbd> key.
* Moved <kbd>.</kbd> key to the 3rd row and <kbd>,</kbd> key to the 2nd row.
* Addered <kbd>@</kbd> key to the 1st row, just to achieve a staggered layout (similar to physical keyboards)

#### de.qml
Apart from having arrow keys, the modified German keyboard is very close to the layout of a physical QWERTZ keyboard.
* Added arrow keys left and right next to the <kbd>Space</kbd> key.
* Moved <kbd>.</kbd> and <kbd>,</kbd> keys to the 3rd row. 
* Added <kbd>ß</kbd> key to the 1st row, which also results in a staggered layout (similar to physical keyboards)
* Also added <kbd>@</kbd> as "accent" of <kbd>Q</kbd>, so that holding the <kbd>Q</kbd> character allows to write the <kbd>@</kbd> sign without switching to symbol mode.

### Known issues:
* The SailfishOS user interface does not (yet?) seem to have proper support for <kbd>Tab</kbd> and <kbd>Backtab</kbd>, but other apps might have.
* The built-in browser allows tabbing forward through form input fields as expected. However, backtab also send the focus to the next input field.
