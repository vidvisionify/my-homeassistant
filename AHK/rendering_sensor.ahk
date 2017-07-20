RenderCheck:
sleep 60000
if WinExist("ahk_class Premiere Pro") or WinExist("ahk_exe AfterFX.exe") or WinExist("ahk_exe Adobe Media Encoder.exe") 
{
    FileDelete, S:\Files\Autohotkey\Rendering.txt
    FileAppend, on, S:\Files\Autohotkey\Rendering.txt
    Goto, IdleCheck
}
else
{
    FileDelete, S:\Files\Autohotkey\Rendering.txt
    FileAppend, off, S:\Files\Autohotkey\Rendering.txt
    Goto, IdleCheck
}

IdleCheck:
FileDelete, S:\Files\Autohotkey\Idle.txt
FileAppend, %A_TimeIdlePhysical%, S:\Files\Autohotkey\Idle.txt
Goto, RenderCheck