# ambient-display-rro (AKA "a RRO experiment")
Enable _Ambient Display_ on any supported device running Android > 6.0 using Runtime Resource Overlays!


If you don't know what is RRO, you should read [this](https://github.com/deadman96385/RRO-WIKI/wiki/About-RRO).
Basically it is a native and powerful theme engine, originally developed by Sony and included in AOSP code. It swaps out the resources of the targeted Android package with the ones specified. But wait... What are resources?
According to [Google](http://developer.android.com/guide/topics/resources/index.html): 
>It takes more than just code to build a great app. Resources are the additional files and static content that your code uses, such as bitmaps, layout definitions, user interface strings, animation instructions, and more.

So, RRO allows you to tweak the static content of an app. In this case, we change the value of some flags and strings and contained in SystemUI.apk and Framework-res.apk in order to (hopefully) enable the _Ambient Display_ feature implemented in Andoroid stock builds.

Supported devices: Nexus 5.

### Requirements:
* Android 6.0 "Marshmallow" (Stock build)
* RRO support (Android 6.0 should have it, but for example, GPE edition for HTC One M8 doesn't support RRO)
* Device should have a proper implementation of (_DozeService.java_)[https://android.googlesource.com/platform/frameworks/base/+/777f5b2/packages/SystemUI/src/com/android/systemui/doze/DozeService.java] in SystemUI
* Root (busybox optional if you want to install via Layers Manager)

Even if all of the requirements are met, it is not guaranteed to work. 
I only tested it on my Nexus 5 running stock Android 6.0 and it's working flawlessly. However, it's pretty safe to test it, if you encounter any problem (bootloops, force closes) just delete any apk in /system/vendor/overlay.
Keep in mind that this is a very experimental workaround, there are probably better and cleaner ways to achieve this, consider this a RRO features experiment. 

## How to install
To install our "theme" we need to copy the apks of the overlays in /system/vendor/ovelay. There are several ways of doing it.
### Easy way
Download the apks (./out) and copy them to /system/vendor/overlay using any file manager that allows writing in /system partition. Reboot and you're done, you should see a the Ambient Display toggle in Settings>Display. 
### Easiest way
First, install Layers Manager app from Play Store. Then build (./bitsyko-plugin) or download the plugin app and install it to device. Open Layers Manager, select the plugin and install every available overlay. Reboot. BOOM, Done.

## Project Structure

### ./bitsyko-plugin
This is the Android Studio project of the plugin component of Layers Manager by Bitsyko Development team. Basically this is a tool that automates the copying of the overlays in /system/vendor/overlay. [Read more](https://github.com/BitSyko/LayersThemePlugin_Example/wiki/How-to-make-a-Plugin-Overlay)

### ./rro
Here we have the Android Studio projects of the overlays. Priority defined in manifest should be >240.

### ./out
Folder containing the actual packaged overlays.

