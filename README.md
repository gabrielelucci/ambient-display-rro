# ambient-display-rro
Enable Ambient Display on any supported device running Android > 6.0 using Runtime Resource Overlay.
Tested on Nexus 5. Keep in mind that this is a very experimental workaround. 

Requirements:
-Android 6.0 "Marshmallow"
-RRO support (Android 6.0 should have it, but for example, GPE edition for HTC One M8 doesn't support RRO)
-Device should have a proper implementation of _DozeService.java_ in SystemUI
-Root (busybox optional if you want to use Layers Manager)

Even if all of the requirements are met, it is not guaranteed to work. I only tested it on my Nexus 5 running stock Android 6.0

## Project Structure

### ./bitsyko-plugin
This is the Android Studio project of the plugin component of Layers Manager by Bitsyko Development team. Basically this is a tool that automates the copying of the overlays in /system/vendor/overlay.

### ./rro
Here we have the Android Studio projects of the overlays. 

### ./out
Folder containing the actual compiled archives of the overlays.

