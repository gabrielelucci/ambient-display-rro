#!/bin/bash
#Automate the cration of zip for the plugin.
themeName=ADEnabler_General.zip
cd ./out
zip $themeName *.apk
mv $themeName ../bitsyko-plugin/app/src/main/assets/Files/

