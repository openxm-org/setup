Asir for iSH Shell/iOS
======================

* * *

This is a binary of [**Risa/Asir**](http://www.math.kobe-u.ac.jp/Asir/index.html) (version 20220911) for iOS.  
This binary was checked on iPadOS15.7(iPad Pro 12.9-inch gen5).

*   binary [asir\_ios.tar.gz](asir_ios.tar.gz) including fep(a frontend for asir) and PARI/GP(a computer algebra system for number theory).
*   screenshot on [iPad Pro 12.9-inch gen5](asir_on_iPad_pro.png)

Installation:

1.  Install [**iSH Shell**](https://apps.apple.com/us/app/ish-shell/id1436902243) to your iPhone or iPad through AppStore.
2.  Open **iSH** and update packages as follows:  
    \# apk update  
    \# apk upgrade  
    
3.  Execute the following on **iSH**:  
    \# wget https://openxm-org.github.io/setup/2024/ios/install.sh  
    \# sh install.sh  
    \# exit
4.  Re-open **iSH** and execute the following:  
    \# asir

Change Log:

2024/9/5

*   The web page was moved to GitHub Pages.

2022/09/20

*   Asir was updated to the version 20220911.
*   asir-contrib library was included.
*   gp, an interactive shell giving access to PARI library, was included.

2021/01/15

*   The URL of iSH Shell was changed from **TestFlight** to **AppStore**.
*   An install script 'setup.sh' was added.
*   Asir was updated to the version 20210111.

2020/06/01

*   iSH Shell was updated to build 68. Since this build, 'load("fctrtest");' can be processed without errors.

2020/03/20

*   The first release of Asir for iOS using iSH Shell TestFlight version.
