#!/bin/bash
themeName=ADEnabler_General.zip
cd ./out
zip $themeName *.apk
mv $themeName ../bitsyko-plugin/app/src/main/assets/Files/

