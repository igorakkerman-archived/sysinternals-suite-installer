# Windows Installer for Sysinternals Suite

## Usage
Download and run the Sysinternals Suite Installer:
https://github.com/igorakkerman/sysinternals-suite-installer/releases

## Functionality
The installer automatically downloads and extracts the latest Sysinternals Suite Zip archive from the Sysinternals web site:
https://download.sysinternals.com/files/SysinternalsSuite.zip

No manual steps are required.

## Acknowledgements
### Original installer by Andres Cabezas
This project is based on the great work of Andres Cabezas (Domador Software).
The last published version from Domador Software is from 2016.

https://www.domador.net/extras/sysinternals-suite-installer

### Inno Setup by Jordan Russell
The installer is built using the great Inno Setup by Jordan Russell.

https://jrsoftware.org/isinfo.php

### Inno Download Plugin by Mitrich Software
The latest Sysinternals Suite archive is downloaded using Inno Download Plugin by Mitrich Software. It is licensed under Zlib, the full license is included alongside the tool.

https://mitrichsoftware.wordpress.com/inno-setup-tools/inno-download-plugin

### Unzip functionality for Inno Setup by Rik and Jens A. Koch
The function for unzipping the Sysinternals Suite archive was published by Rik and Jens A. Koch.

https://stackoverflow.com/questions/32256432/how-to-execute-7zip-without-blocking-the-innosetup-ui

https://gist.github.com/jakoch/33ac13800c17eddb2dd4#file-unzip-iss

### 7-zip by Igor Pavlov
The bundled 7-zip tool `7za.exe` by Igor Pavlov is used to perform the actual Unzip operation. 7-zip is licensed under LGPL, the full license is included alongside the tool.

## Contributing
Please help to improve the installer by creating issues and submitting pull requests. Your support is highly appreciated.

## Disclaimer
This work helps to install the awesome Sysinternals tools, created by Mark Russinovich from Microsoft. Nevertheless, the code and executables provided in this repository are not related by any means to Mark Russinovich or Microsoft. No responsibility is taken for the tools from the Sysinternals Suite. Use them at your own risk.
