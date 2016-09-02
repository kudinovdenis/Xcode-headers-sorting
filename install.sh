#!/bin/sh

# killing the XCode
echo "killing the XCode ..."
killall Xcode

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

echo "\nDone!"