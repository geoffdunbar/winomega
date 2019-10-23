Name "Omega For Windows"
OutFile "WinOmega.exe"

RequestExecutionLevel user

LicenseText "You must agree to this license before installing."
LicenseData "..\lib\license.txt"

ComponentText "Choose your Installation Options." "Options:"

InstallDir "$LOCALAPPDATA\WinOmega"
InstallDirRegKey HKCU "SOFTWARE\Merry Prankster Games\WinOmega" ""
DirText "Select the directory to install Omega For Windows in:"

Page license
Page components
Page directory
Page instfiles

Section
  SetOutPath "$INSTDIR"
  File "c:\dev\build\winomega\output\Release\winomega.exe"
  File "readme.txt"
  
  CreateDirectory "$INSTDIR\omegalib"
  SetOutPath "$INSTDIR\omegalib"
  File "..\lib\*.*"

  CreateDirectory "$SMPROGRAMS\WinOmega"
  CreateShortCut "$SMPROGRAMS\WinOmega\WinOmega.lnk" "$INSTDIR\winomega.exe"

  WriteRegStr HKCU "SOFTWARE\Merry Prankster Games\WinOmega" "" $INSTDIR
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\WinOmega" "DisplayName" "WinOmega (remove only)"
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\WinOmega" "Publisher" "Merry Prankster Games"
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Uninstall\WinOmega" "UninstallString" '"$INSTDIR\uninst.exe"'

  WriteUninstaller "$INSTDIR\uninst.exe"
SectionEnd

Section "View Readme on completion"
  ExecWait "notepad.exe $INSTDIR\readme.txt"
SectionEnd

UninstallText "This will uninstall Omega For Windows from your system"

Section Uninstall
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\winomega.exe"
  Delete "$INSTDIR\readme.txt"
  
  Delete "$INSTDIR\omegalib\*.*"
  RMDIR "$INSTDIR\omegalib"

  Delete "$SMPROGRAMS\WinOmega\*.lnk"
  RMDir "$SMPROGRAMS\WinOmega"

  DeleteRegKey HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\WinOmega"
  DeleteRegKey HKCU "SOFTWARE\Merry Prankster Games\WinOmega"

  RMDir "$INSTDIR"
SectionEnd
