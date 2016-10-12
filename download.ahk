#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

UrlDownloadToFile, https://github.com/fletcher/MultiMarkdown-5/releases/download/5.4.0/MultiMarkdown-Windows-32-Portable-5.4.0.zip, mmd.zip
MsgBox Multimarkdown has downloaded