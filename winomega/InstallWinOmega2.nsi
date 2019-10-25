Name "Omega For Windows"
OutFile "c:\dev\build\winomega\WinOmega.exe"

LicenseText "You must agree to this license before installing."
LicenseData "..\lib\license.txt"

ComponentText "Choose your Installation Options." "Options:"

InstallDir "c:\WinOmega"
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

  DeleteRegKey HKCU "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\WinOmega"
  DeleteRegKey HKCU "SOFTWARE\Merry Prankster Games\WinOmega"

  RMDir "$INSTDIR"
SectionEnd
