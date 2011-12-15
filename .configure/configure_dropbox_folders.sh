#!/bin/bash
#Make sure dropbox is installed

mkdir $HOME/Dropboxes


echo ACS
HOME=$HOME/Dropboxes/dropbox-acs /Applications/Dropbox.app/Contents/MacOS/Dropbox
echo Kurt
HOME=$HOME/Dropboxes/dropbox-kurt /Applications/Dropbox.app/Contents/MacOS/Dropbox
echo Muldowney
HOME=$HOME/Dropboxes/dropbox-muldowneyfound /Applications/Dropbox.app/Contents/MacOS/Dropbox
echo Rudy Ind
HOME=$HOME/Dropboxes/dropbox-rudyind /Applications/Dropbox.app/Contents/MacOS/Dropbox
echo School
HOME=$HOME/Dropboxes/dropbox-school /Applications/Dropbox.app/Contents/MacOS/Dropbox

#defaults write loginwindow AutoLaunchedApplicationDictionary -array-add '<dict><key>Hide</key><false/><key>Path</key><string>$HOME/.login_items/DropboxACSStarter</string></dict>'
