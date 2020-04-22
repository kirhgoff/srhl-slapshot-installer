!include "MUI.nsh"

; !define MUI_COMPONENTSPAGE_SMALLDESC ;No value
; !define MUI_UI "myUI.exe" ;Value
; !define MUI_INSTFILESPAGE_COLORS "FFFFFF 000000" ;Two colors

Outfile "rshl-slapshot-installer.exe"

InstallDirRegKey HKLM "SOFTWARE\Valve\Steam" InstallPath

; !define MUI_TEXT_DIRECTORY_TITLE "Select Steam folder location"

!define MUI_ABORTWARNING
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES

; Section "DetectSteamFolder"
	#ReadRegStr $0 HKLM "SOFTWARE\Valve\Steam" InstallPath
	#ReadRegStr $0 HKLM "SOFTWARE\Wow6432Node\Valve\Steam" InstallPath
	; !define MUI_DIRECTORYPAGE_VARIABLE $PluginsFolder
	; !insertmacro MUI_PAGE_DIRECTORY
	; MessageBox MB_OK "result: $INSTDIR"
; SectionEnd

# default section
Section 
	SetOutPath $INSTDIR/steamapps/common/Slapshot
	File test.nsi
SectionEnd