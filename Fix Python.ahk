#Requires AutoHotkey v2.0

if not FileExist("python.exe")
   ExitApp


; Step 0. Download the embedded zip from:
; https://www.python.org/downloads/windows/

; Step 1. 
Download('https://bootstrap.pypa.io/get-pip.py', 'get-pip.py')

; Step 2. 
Run('python.exe get-pip.py')
; This will create the Lib and Scripts folders.

; Step 3.
; Uncomment the import site.
Loop Files, "python*._pth" {
   Text := FileRead(A_LoopFilePath)
   Text := StrReplace(Text, "#import site", "import site")
   FileDelete A_LoopFilePath
   while FileExist(A_LoopFilePath)
      Sleep 10
   FileAppend(Text, A_LoopFilePath, "`n")
}

; Step 4. 
; Create the pip cmd shortcut.
if FileExist("pip.cmd")
   FileDelete("pip.cmd")

FileAppend("
(
@echo off
.\Scripts\pip.exe %*
)", "pip.cmd", "`n")



if FileExist("python.exe")
   FileDelete(A_ScriptFullPath)