
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
DefaultDirName={pf}\{#ApplicationName}
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

Name: {group}\{#DocumentationFolder}\AdExplorer Help; Filename: {app}\AdExplorer.chm
Name: {group}\{#DocumentationFolder}\AdInsight Help; Filename: {app}\ADInsight.chm
Name: {group}\{#DocumentationFolder}\Autoruns Help; Filename: {app}\autoruns.chm
Name: {group}\{#DocumentationFolder}\DebugView Help; Filename: {app}\dbgview.chm
Name: {group}\{#DocumentationFolder}\Disk2vhd Help; Filename: {app}\Disk2vhd.chm
Name: {group}\{#DocumentationFolder}\Process Explorer Help; Filename: {app}\procexp.chm
Name: {group}\{#DocumentationFolder}\Process Monitor Help; Filename: {app}\procmon.chm
Name: {group}\{#DocumentationFolder}\PsTools Help; Filename: {app}\Pstools.chm
Name: {group}\{#DocumentationFolder}\RootkitRevealer Help; Filename: {app}\RootkitRevealer.chm
Name: {group}\{#DocumentationFolder}\TCPView Help (CHM); Filename: {app}\tcpview.chm
Name: {group}\{#DocumentationFolder}\TCPView Help (HLP); Filename: {app}\tcpview.hlp
Name: {group}\{#DocumentationFolder}\VMMap Help; Filename: {app}\Vmmap.chm

;; Sysinternals Suite utilities
Name: {group}\AccessEnum; Filename: {app}\AccessEnum.exe
Name: {group}\AdExplorer; Filename: {app}\ADExplorer.exe
Name: {group}\AdInsight; Filename: {app}\ADInsight.exe
Name: {group}\Autologon; Filename: {app}\Autologon.exe
Name: {group}\Autoruns; Filename: {app}\Autoruns.exe
Name: {group}\Autorunsc; Filename: {app}\autorunsc.exe
Name: {group}\BgInfo; Filename: {app}\Bginfo.exe
Name: {group}\CacheSet; Filename: {app}\Cacheset.exe
Name: {group}\DebugView; Filename: {app}\Dbgview.exe
Name: {group}\Desktops; Filename: {app}\Desktops.exe
Name: {group}\Disk2vhd; Filename: {app}\disk2vhd.exe
Name: {group}\DiskMon; Filename: {app}\Diskmon.exe
Name: {group}\DiskView; Filename: {app}\DiskView.exe
Name: {group}\LoadOrder; Filename: {app}\LoadOrd.exe
Name: {group}\PageDefrag; Filename: {app}\pagedfrg.exe
Name: {group}\PortMon; Filename: {app}\portmon.exe
Name: {group}\Process Explorer; Filename: {app}\procexp.exe
Name: {group}\Process Monitor; Filename: {app}\Procmon.exe
Name: {group}\RAMMap; Filename: {app}\RAMMap.exe
Name: {group}\RootkitRevealer; Filename: {app}\RootkitRevealer.exe
Name: {group}\ShareEnum; Filename: {app}\ShareEnum.exe
Name: {group}\ShellRunas; Filename: {app}\ShellRunas.exe
Name: {group}\TCPVcon; Filename: {app}\Tcpvcon.exe
Name: {group}\TCPView; Filename: {app}\Tcpview.exe
Name: {group}\VMMap; Filename: {app}\vmmap.exe
Name: {group}\WinObj; Filename: {app}\Winobj.exe
Name: {group}\ZoomIt; Filename: {app}\ZoomIt.exe

; Command-line-based utilities 
Name: {group}\{#CommandLineFolder}\AccessChk; Filename: {app}\accesschk.exe
Name: {group}\{#CommandLineFolder}\AdRestore; Filename: {app}\adrestore.exe
Name: {group}\{#CommandLineFolder}\ClockRes; Filename: {app}\Clockres.exe
Name: {group}\{#CommandLineFolder}\Contig; Filename: {app}\Contig.exe
Name: {group}\{#CommandLineFolder}\Coreinfo; Filename: {app}\Coreinfo.exe
Name: {group}\{#CommandLineFolder}\Ctrl2Cap; Filename: {app}\ctrl2cap.exe
Name: {group}\{#CommandLineFolder}\DiskExt; Filename: {app}\diskext.exe
Name: {group}\{#CommandLineFolder}\Disk Usage (DU); Filename: {app}\du.exe
Name: {group}\{#CommandLineFolder}\EFSDump; Filename: {app}\efsdump.exe
Name: {group}\{#CommandLineFolder}\FindLinks; Filename: {app}\FindLinks.exe
Name: {group}\{#CommandLineFolder}\Handle; Filename: {app}\handle.exe
Name: {group}\{#CommandLineFolder}\Hex2dec; Filename: {app}\hex2dec.exe
Name: {group}\{#CommandLineFolder}\Junction; Filename: {app}\junction.exe
Name: {group}\{#CommandLineFolder}\LDMDump; Filename: {app}\ldmdump.exe
Name: {group}\{#CommandLineFolder}\ListDLLs; Filename: {app}\Listdlls.exe
Name: {group}\{#CommandLineFolder}\LiveKd; Filename: {app}\livekd.exe
Name: {group}\{#CommandLineFolder}\LogonSessions; Filename: {app}\logonsessions.exe
Name: {group}\{#CommandLineFolder}\MoveFile; Filename: {app}\movefile.exe
Name: {group}\{#CommandLineFolder}\NTFSInfo; Filename: {app}\ntfsinfo.exe
Name: {group}\{#CommandLineFolder}\PendMoves; Filename: {app}\pendmoves.exe
Name: {group}\{#CommandLineFolder}\PipeList; Filename: {app}\pipelist.exe
Name: {group}\{#CommandLineFolder}\ProcDump; Filename: {app}\procdump.exe
; Removed in 2011-09-01 version
;Name: {group}\{#CommandLineFolder}\ProcFeatures; Filename: {app}\ProcFeatures.exe
Name: {group}\{#CommandLineFolder}\PsExec; Filename: {app}\PsExec.exe
Name: {group}\{#CommandLineFolder}\PsFile; Filename: {app}\psfile.exe
Name: {group}\{#CommandLineFolder}\PsGetSid; Filename: {app}\PsGetsid.exe
Name: {group}\{#CommandLineFolder}\PsInfo; Filename: {app}\PsInfo.exe
Name: {group}\{#CommandLineFolder}\psKill; Filename: {app}\pskill.exe
Name: {group}\{#CommandLineFolder}\PsList; Filename: {app}\PsList.exe
Name: {group}\{#CommandLineFolder}\PsLoggedOn; Filename: {app}\PsLoggedon.exe
Name: {group}\{#CommandLineFolder}\PsLogList; Filename: {app}\psloglist.exe
Name: {group}\{#CommandLineFolder}\PsPasswd; Filename: {app}\pspasswd.exe
Name: {group}\{#CommandLineFolder}\PsPing; Filename: {app}\psping.exe
Name: {group}\{#CommandLineFolder}\PsService; Filename: {app}\PsService.exe
Name: {group}\{#CommandLineFolder}\PsShutdown; Filename: {app}\psshutdown.exe
Name: {group}\{#CommandLineFolder}\PsSuspend; Filename: {app}\pssuspend.exe
Name: {group}\{#CommandLineFolder}\RegDelNull; Filename: {app}\RegDelNull.exe
Name: {group}\{#CommandLineFolder}\RegJump; Filename: {app}\regjump.exe
Name: {group}\{#CommandLineFolder}\Ru; Filename: {app}\ru.exe
Name: {group}\{#CommandLineFolder}\SDelete; Filename: {app}\sdelete.exe
Name: {group}\{#CommandLineFolder}\SigCheck; Filename: {app}\sigcheck.exe
Name: {group}\{#CommandLineFolder}\Streams; Filename: {app}\streams.exe
Name: {group}\{#CommandLineFolder}\Strings; Filename: {app}\strings.exe
Name: {group}\{#CommandLineFolder}\Sync; Filename: {app}\sync.exe
Name: {group}\{#CommandLineFolder}\Sysmon; Filename: {app}\Sysmon.exe
Name: {group}\{#CommandLineFolder}\Testlimit; Filename: {app}\Testlimit.exe
Name: {group}\{#CommandLineFolder}\Testlimit64; Filename: {app}\Testlimit64.exe
Name: {group}\{#CommandLineFolder}\Volumeid; Filename: {app}\Volumeid.exe
Name: {group}\{#CommandLineFolder}\WhoIs; Filename: {app}\whois.exe
