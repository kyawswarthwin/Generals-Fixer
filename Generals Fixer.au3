#NoTrayIcon
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=Icon.ico
#AutoIt3Wrapper_Outfile=Release\Generals Fixer.exe
#AutoIt3Wrapper_Res_Description=Generals Fixer
#AutoIt3Wrapper_Res_Fileversion=1.0.0.0
#AutoIt3Wrapper_Res_LegalCopyright=Copyright © 2014 Kyaw Swar Thwin
#AutoIt3Wrapper_Res_Language=1033
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <MsgBoxConstants.au3>

Global Const $sAppName = "Generals Fixer"
Global Const $sAppVersion = "1.0"
Global Const $sAppPublisher = "Kyaw Swar Thwin"

Global $sTitle = $sAppName

If MsgBox(BitOR($MB_YESNO, $MB_APPLMODAL), $sTitle, "This Program Is Developed By " & $sAppPublisher & ". He Developed This Program For His Lovely Wife Sandar Myint Aung's LAN Gaming Center." & @CRLF & @CRLF & "Are You Sure You Want To Do This?") = $IDYES Then
	DirCreate(@MyDocumentsDir & "\" & "Command and Conquer Generals Data")
	FileInstall("Command and Conquer Generals Data\Options.ini", @MyDocumentsDir & "\" & "Command and Conquer Generals Data\Options.ini")
	DirCreate(@MyDocumentsDir & "\" & "Command and Conquer Generals Zero Hour Data")
	FileInstall("Command and Conquer Generals Zero Hour Data\Options.ini", @MyDocumentsDir & "\" & "Command and Conquer Generals Zero Hour Data\Options.ini")
EndIf
