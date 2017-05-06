#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

Loop %0%
{
    GivenPath := %A_Index%
    Loop %GivenPath%, 1
        LongPath = %A_LoopFileLongPath%
    MsgBox Rendering %LongPath%
    RunWait, %comspec% /c pandoc -s "%LongPath%" -o %A_Desktop%/out.html,, Hide
    Run, %A_Desktop%/out.html
}