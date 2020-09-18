# How to install apt packages by sed and xargs ?

``$ sed -e '/^#/d; /^$/d' TEXT-FILE | xargs -- sudo apt install``