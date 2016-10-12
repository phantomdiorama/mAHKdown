#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Loop %0%  ; For each file dropped onto the script (or passed as a parameter).
{
    GivenPath := %A_Index%  ; Retrieve the next command line parameter.
    Loop %GivenPath%, 1
        LongPath = %A_LoopFileLongPath%
    MsgBox Rendering %LongPath%
    RunWait, %comspec% /c multimarkdown "%LongPath%" > out.html,, Hide
    Run, out.html
}