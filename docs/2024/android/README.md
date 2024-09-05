Asir for Android
================

* * *

**Arm 64bit version**

This is a binary of [Risa/Asir](http://www.math.kobe-u.ac.jp/Asir/index.html) (version 20240806) for Android (**Arm 64bit**).  
This binary was checked on Android 12(Microsoft Surface Duo 2) and Android 14(Google Pixel 6a).

*   binary [asir\_aarch64.tar.gz](asir_aarch64.tar.gz) and PARI/GP(a computer algebra system for number theory).
*   screenshot on [Google Pixel](asir_on_pixel3a.png)

Installation:  

1.  Install [Termux](https://play.google.com/store/apps/details?id=com.termux) to your Android device through Google Play.
2.  Execute the following on Termux:  
    $ curl -O https://openxm-org.github.io/setup/2024/android/install.sh  
    $ sh install.sh  
    $ exit
3.  Re-open Termux and execute the following:  
    $ asir

Change Log:

2024/9/5

*   Asir was updated to the version 20240806.
*   The functionality of the frontend fep has been integrated into Asir.
*   The Google Play version of Termux has been reinstated.
*   The web page was moved to GitHub Pages.

2022/10/10

*   This binary does not need the environment variable LD\_LIBRARY\_PATH because it has the DT\_RUNPATH attribute. We can check it by the following command:  
    $ objdump -x asir | grep RUNPATH  
    **On Android 7 or higher, DT\_RUNPATH is used instead of LD\_LIBRARY\_PATH.** (cf. [Termux is not FHS compliant](https://wiki.termux.com/wiki/Differences_from_Linux))

2022/9/27

*   Asir was updated to the version 20220911.
*   asir-contrib library was included.

2022/9/5

*   The official version of Termux was changed from **Google Play** to **F-Droid**.
*   Asir was updated to the version 20220403.
*   An install script 'setup.sh' was added.
*   gp, an interactive shell giving access to PARI library, was included.

2019/12/22

*   Asir was updated to the version 20191212.
