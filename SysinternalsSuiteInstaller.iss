
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

; TODO: fetch release date and use it as application version
; #define ApplicationVersion 

#define ApplicationPublisher "Sysinternals"
#define ApplicationURL "https://docs.microsoft.com/de-de/sysinternals/"

; Folder containing the Sysinternals Suite files
#define FilesFolder "SysinternalsSuite"

; Program group folder for help files, EULA, etc.
#define DocumentationFolder "Documentation"

; Program group folder for command-line utilities
#define CommandLineFolder "Command Line"

; Filenames for the compiled installer
#define InstallerBaseName "SysinternalsSuiteSetup"

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
; TODO: fetch release date and use it as application version
; AppVersion={#ApplicationVersion}
AppVerName={#ApplicationName}
AppPublisher={#ApplicationPublisher}

; Installer icon (if you'd like to provide one)
;SetupIconFile=.\SysinternalsSuite.ico

; Installer information
VersionInfoProductName={#ApplicationName}
; TODO: fetch release date and use it as application version
; VersionInfoVersion={#ApplicationVersion}

; Unzip script
; #include <./unzip/unzip.iss>
; Inno Download Plugin
#include <./inno-download-plugin/idp.iss>

; -------------------------------------------------------------------------------


[Files]

Source: ".\unzip\7za.exe"; DestDir: {tmp}; Flags: dontcopy
Source: "{tmp}\{#FilesFolder}\*";  DestDir: {app}; Flags: external;

; -------------------------------------------------------------------------------

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

;-------------------------------------------------------------------------------

[Code]

{
	Unzip Helper for executing 7zip without blocking the InnoSetup GUI

    ----

	The main procedure is the non-blocking Unzip().
	Your GUI will remain responsive during the unzip operation.

    Written by Rik and Jens A. Koch (@jakoch) on StackOverflow:
    http://stackoverflow.com/questions/32256432/how-to-execute-7zip-without-blocking-the-innosetup-ui

    ----

    Usage:

	1. Include this ISS with

	   // #include "..\some\where\unzip.iss"

	2. Add the unzip tool "7za.exe" to the [Files] section of your installer
	   and copy it to the temp folder during installation.

       // [Files]
       // Source: ..\some\where\7za.exe; DestDir: {tmp}; Flags: dontcopy

	3. Finally, extract your files using Unzip(source, target); in the [Code] section.
}

#IFDEF UNICODE
  #DEFINE AW "W"
#ELSE
  #DEFINE AW "A"
#ENDIF

// --- Start "ShellExecuteEx" Helper

const
  WAIT_TIMEOUT = $00000102;
  SEE_MASK_NOCLOSEPROCESS = $00000040;
  INFINITE = $FFFFFFFF;     { Infinite timeout }

type
  TShellExecuteInfo = record
    cbSize: DWORD;
    fMask: Cardinal;
    Wnd: HWND;
    lpVerb: string;
    lpFile: string;
    lpParameters: string;
    lpDirectory: string;
    nShow: Integer;
    hInstApp: THandle;
    lpIDList: DWORD;
    lpClass: string;
    hkeyClass: THandle;
    dwHotKey: DWORD;
    hMonitor: THandle;
    hProcess: THandle;
  end;

function ShellExecuteEx(var lpExecInfo: TShellExecuteInfo): BOOL;
  external 'ShellExecuteEx{#AW}@shell32.dll stdcall';
function WaitForSingleObject(hHandle: THandle; dwMilliseconds: DWORD): DWORD;
  external 'WaitForSingleObject@kernel32.dll stdcall';
function CloseHandle(hObject: THandle): BOOL; external 'CloseHandle@kernel32.dll stdcall';

// --- End "ShellExecuteEx" Helper

// --- Start "Application.ProcessMessage" Helper
{
   InnoSetup does not provide Application.ProcessMessage().
   This is "generic" code to recreate a "Application.ProcessMessages"-ish procedure,
   using the WinAPI function PeekMessage(), TranslateMessage() and DispatchMessage().
}
type
  TMsg = record
    hwnd: HWND;
    message: UINT;
    wParam: Longint;
    lParam: Longint;
    time: DWORD;
    pt: TPoint;
  end;

const
  PM_REMOVE = 1;

function PeekMessage(var lpMsg: TMsg; hWnd: HWND; wMsgFilterMin, wMsgFilterMax, wRemoveMsg: UINT): BOOL; external 'PeekMessageA@user32.dll stdcall';
function TranslateMessage(const lpMsg: TMsg): BOOL; external 'TranslateMessage@user32.dll stdcall';
function DispatchMessage(const lpMsg: TMsg): Longint; external 'DispatchMessageA@user32.dll stdcall';

procedure AppProcessMessage;
var
  Msg: TMsg;
begin
  while PeekMessage(Msg, WizardForm.Handle, 0, 0, PM_REMOVE) do begin
    TranslateMessage(Msg);
    DispatchMessage(Msg);
  end;
end;

// --- End "Application.ProcessMessage" Helper

procedure Unzip(source: String; targetdir: String);
var
  unzipTool, unzipParams : String; // path and param for the unzip tool
  ExecInfo: TShellExecuteInfo;     // info object for ShellExecuteEx()
begin
    // source and targetdir might contain {tmp} or {app} constant, so expand/resolve it to path names
    source := ExpandConstant(source);
    targetdir := ExpandConstant(targetdir);

    // prepare 7zip execution
    unzipTool := ExpandConstant('C:\Lokal\Project\sysinternals-suite-installer\unzip\7za.exe');
    unzipParams := ' x "' + source + '" -o"' + targetdir + '" -y';

    // prepare information about the application being executed by ShellExecuteEx()
    ExecInfo.cbSize := SizeOf(ExecInfo);
    ExecInfo.fMask := SEE_MASK_NOCLOSEPROCESS;
    ExecInfo.Wnd := 0;
    ExecInfo.lpFile := unzipTool;
    ExecInfo.lpParameters := unzipParams;
    ExecInfo.nShow := SW_HIDE;

    if not FileExists(unzipTool)
    then MsgBox('UnzipTool not found: ' + unzipTool, mbError, MB_OK)
    else if not FileExists(source)
    then MsgBox('File was not found while trying to unzip: ' + source, mbError, MB_OK)
    else begin

          {
             The unzip tool is executed via ShellExecuteEx()
             Then the installer uses a while loop with the condition
             WaitForSingleObject and a very minimal timeout
             to execute AppProcessMessage.

             AppProcessMessage is itself a helper function, because
             Innosetup does not provide Application.ProcessMessages().
             Its job is to be the message pump to the InnoSetup GUI.

             This trick makes the window responsive/dragable again,
             while the extraction is done in the background.
          }

          if ShellExecuteEx(ExecInfo) then
          begin
            while WaitForSingleObject(ExecInfo.hProcess, 100) = WAIT_TIMEOUT
            do begin
                AppProcessMessage;
                WizardForm.Refresh();
            end;
          CloseHandle(ExecInfo.hProcess);
          end;

    end;
end;


procedure InitializeWizard();
var
    DownloadUrl: Variant;
    ZipFilePath: Variant;
    AppFilesPath: Variant;
begin
    DownloadUrl := 'https://download.sysinternals.com/files/SysinternalsSuite.zip';
    ZipFilePath := ExpandConstant('{tmp}\SysinternalsSuite.zip'); 
    AppFilesPath := ExpandConstant('{tmp}\{#FilesFolder}');

    idpDownloadFile(DownloadUrl, ZipFilePath);

    UnZip(ZipFilePath, AppFilesPath);
end;
