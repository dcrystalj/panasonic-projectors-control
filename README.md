This repo is for panasonic projectors so you don't need remotes to open or close wireless projectors. In my I was using 2 same projectors remotely. Here is olso Project.ahk script which can be compiled using AutoHotkey. It is used to automatically click on panasonic buttons.

python scripts requires ```python 3```. Also look at requirements.txt


### NOTES:
* make sure powerpoint presentation named:  `pesmi.pps` are placed at desktop
* create shortcut for stat-projectors.py and turn-off-projectors.py and place them in C:/programData/microsoft/windows/start menu/programs/
* for each shortcut create custom key shortcut using `right click > properties > ALT + CTRL + V` for example. Shortcut works after restart
* in task scheduler create task to automatically open Project.exe at login so you can run it as admin.
* place `start-projectors.py` and `wireless manager 6.4` shorctus to autorun folder so it starts at login.
