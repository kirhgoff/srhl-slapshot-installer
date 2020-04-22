!include "MUI.nsh"

Outfile "rshl-slapshot-installer.exe"

InstallDirRegKey HKLM "SOFTWARE\Valve\Steam" InstallPath

!define MUI_ABORTWARNING
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES

Section "Textures"
	SetOutPath $INSTDIR\steamapps\common\Slapshot\assets\textures
	File .\textures\blue_ice.png
	File .\textures\faceoff.png
	File .\textures\outdoor_crease.png
	File .\textures\outdoor_faceoff.png
SectionEnd

Section "Puck"
	SetOutPath $INSTDIR\steamapps\common\Slapshot\assets\models\puck
	File .\textures\puck.png
SectionEnd
