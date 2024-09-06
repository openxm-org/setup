# Asir for Windows
* * *

- [This(./asir_win64_2024.09.04.msi) is an installer (msi)] of [**Risa/Asir**](http://www.math.kobe-u.ac.jp/OpenXM) (version 20220904) for Windows. 

- After installation, execute 
```
import("names.rr");
asir_contrib_update(|update=4);
```
to download ox_pari.exe and other ox servers to AppData.

- This is a native windows version, but it is more unstable than the linux version. A native windows version may not be provided in the future. We recommend using the linux version on wsl/Windows. 
The linux version can be easily built from source codes. See [**github.com/openxm-org**](https://github.com/openxm-org/OpenXM)



