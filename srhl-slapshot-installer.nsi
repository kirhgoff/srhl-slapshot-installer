!include "MUI.nsh"

Outfile "rshl-slapshot-installer.exe"

InstallDirRegKey HKLM "SOFTWARE\Valve\Steam" InstallPath

!define MUI_ICON ".\logo\srhl.ico"
Name "SHRL Slapshot Textures"
!define MUI_DIRECTORYPAGE_TEXT_TOP  "This installer is going to copy 5 texture files (all are PNG pictures) into your Slapshot installation folder to make it look like SRHL league game. Please could you help us to find your Steam folder? Don't worry, we will find the path to Slapshot folders from there."

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
