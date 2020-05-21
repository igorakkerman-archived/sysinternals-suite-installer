
;------------------------------------------------------------------------------

; Copyright (C) 2016 Domador Software S.R.L.
; Copyright (C) 2020 Igor Akkerman

; Permission is hereby granted, free of charge, to any person obtaining a copy
; of this software and associated documentation files (the "Software"), to deal
; in the Software without restriction, including without limitation the rights
; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
; copies of the Software, and to permit persons to whom the Software is
; furnished to do so, subject to the following conditions:

; The above copyright notice and this permission notice shall be included in
; all copies or substantial portions of the Software.

; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
; THE SOFTWARE.

;------------------------------------------------------------------------------

#define ApplicationName "Sysinternals Suite"

#define ApplicationVersion "1.0.0"

#define ApplicationPublisher "Sysinternals"
#define ApplicationURL "https://docs.microsoft.com/de-de/sysinternals/"

; Folder containing the Sysinternals Suite files
#define FilesFolder "SysinternalsSuite"

; Program group folder for help files, EULA, etc.
#define DocumentationFolder "Documentation"

; Program group folder for command-line utilities
#define CommandLineFolder "Command Line"

; Filenames for the compiled installer
#define InstallerBaseName ApplicationName + " Setup"
#define InstallerFullName InstallerBaseName + ".exe"

; Filename for the sourcecode
#define SourceFullName ApplicationName + "Installer.iss"

;-------------------------------------------------------------------------------

[Setup]
ArchitecturesInstallIn64BitMode=x64

OutputBaseFilename={#InstallerBaseName}

SourceDir=.
AppName={#ApplicationName}
DefaultDirName={autopf64}\{#ApplicationName}
DefaultGroupName={#ApplicationName}
OutputDir=.

; Control Panel information
AppPublisherURL={#ApplicationURL}
AppVersion={#ApplicationVersion}
AppVerName={#ApplicationName}
AppPublisher={#ApplicationPublisher}

; Installer icon (if you'd like to provide one)
;SetupIconFile=.\SysinternalsSuite.ico

; Installer information
VersionInfoProductName={#ApplicationName}
VersionInfoVersion={#ApplicationVersion}

;-------------------------------------------------------------------------------

[Files]
Source: "{src}\{#FilesFolder}\*";  DestDir: {app}; Flags: external;

;-------------------------------------------------------------------------------
[Icons]

;; Uninstall program
Name: {group}\Uninstall {#ApplicationName}; Filename: {uninstallexe}

;; Documentation

; Web page icon in program folder
Name: {group}\{#DocumentationFolder}\{#ApplicationName} Website; Filename: {#ApplicationURL}

; EULA and other documentation
Name: {group}\{#DocumentationFolder}\{#ApplicationName} License; Filename: {app}\Eula.txt
Name: {group}\{#DocumentationFolder}\{#ApplicationName} Readme; Filename: {app}\readme.txt
Name: {group}\{#DocumentationFolder}\PsTools Version; Filename: {app}\psversion.txt

; Help files
Name: {group}\{#DocumentationFolder}\DiskMon Help; Filename: {app}\DISKMON.HLP
Name: {group}\{#DocumentationFolder}\PageDefrag Help; Filename: {app}\pagedfrg.hlp
Name: {group}\{#DocumentationFolder}\PortMon Help; Filename: {app}\PORTMON.HLP
Name: {group}\{#DocumentationFolder}\WinObj Help; Filename: {app}\WINOBJ.HLP
Name: {group}\{#DocumentationFolder}\TCPView Help (HLP); Filename: {app}\TCPVIEW.hlp

Name: {group}\{#DocumentationFolder}\AdExplorer Help; Filename: {app}\AdExplorer.chm
Name: {group}\{#DocumentationFolder}\AdInsight Help; Filename: {app}\ADInsight.chm
Name: {group}\{#DocumentationFolder}\Autoruns Help; Filename: {app}\autoruns.chm
Name: {group}\{#DocumentationFolder}\DebugView Help; Filename: {app}\Dbgview.chm
Name: {group}\{#DocumentationFolder}\Disk2vhd Help; Filename: {app}\Disk2vhd.chm
Name: {group}\{#DocumentationFolder}\Process Explorer Help; Filename: {app}\procexp.chm
Name: {group}\{#DocumentationFolder}\Process Monitor Help; Filename: {app}\procmon.chm
Name: {group}\{#DocumentationFolder}\PsTools Help; Filename: {app}\Pstools.chm
Name: {group}\{#DocumentationFolder}\TCPView Help (CHM); Filename: {app}\tcpview.chm
Name: {group}\{#DocumentationFolder}\VMMap Help; Filename: {app}\Vmmap.chm

;; Sysinternals Suite utilities
Name: {group}\AccessEnum; Filename: {app}\AccessEnum.exe
Name: {group}\AdExplorer; Filename: {app}\ADExplorer.exe
Name: {group}\AdInsight; Filename: {app}\ADInsight.exe
Name: {group}\Autologon; Filename: {app}\Autologon.exe
Name: {group}\Autoruns; Filename: {app}\Autoruns64.exe
Name: {group}\BgInfo; Filename: {app}\Bginfo64.exe
Name: {group}\CacheSet; Filename: {app}\Cacheset.exe
Name: {group}\DebugView; Filename: {app}\Dbgview.exe
Name: {group}\Desktops; Filename: {app}\Desktops.exe
Name: {group}\Disk2vhd; Filename: {app}\disk2vhd.exe
Name: {group}\DiskMon; Filename: {app}\Diskmon.exe
Name: {group}\DiskView; Filename: {app}\DiskView.exe
Name: {group}\LoadOrder; Filename: {app}\LoadOrd64.exe
Name: {group}\PageDefrag; Filename: {app}\pagedfrg.exe
Name: {group}\PortMon; Filename: {app}\portmon.exe
Name: {group}\Process Explorer; Filename: {app}\procexp64.exe
Name: {group}\Process Monitor; Filename: {app}\Procmon64.exe
Name: {group}\RAMMap; Filename: {app}\RAMMap.exe
Name: {group}\ShareEnum; Filename: {app}\ShareEnum.exe
Name: {group}\ShellRunas; Filename: {app}\ShellRunas.exe
Name: {group}\TCPVcon; Filename: {app}\Tcpvcon.exe
Name: {group}\TCPView; Filename: {app}\Tcpview.exe
Name: {group}\VMMap; Filename: {app}\vmmap.exe
Name: {group}\WinObj; Filename: {app}\Winobj.exe
Name: {group}\ZoomIt; Filename: {app}\ZoomIt.exe
