#!/bin/sh

# copying automator workflow
echo "\ncopying Service ..."
cp -aR ./Service/Sort\ Alphabetically.workflow ~/Library/Services/

# copying source to the services folder
echo "\ncopying sorting script ..."
cp ./Source/sortheaders.py ~/Library/Services/

# add custom shortcut for XCode (^$s is ctrl+shift+S)
echo "\nAdding Sort Alphabetically option to the NSUserKeyEquivalents with shortcut..."
plistbuddy=/usr/libexec/plistbuddy  
file=~/Library/Preferences/com.apple.dt.Xcode.plist

$plistbuddy -c "Add :NSUserKeyEquivalents\":Sort Alphabetically\" string \"^\$s\"" $file

while true; do
    read -p "XCode need to be restarted after install. Close now? (y)es or (n)o: " yn
    case $yn in
        [Yy]* ) killall Xcode; exit;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
