Set vcxsrvShell = CreateObject("WScript.Shell" ) 
vcxsrvShell.Run """C:\Program Files\VcXsrv\vcxsrv.exe"" -nodecoration -screen 0 1920x1040@0"	
Set vcxsrvShell = Nothing 

Set wslShell = CreateObject("WScript.Shell" ) 
wslShell.Run "bash -c ""/home/suchaHassle/.scripts/wlaunch""", 0
Set wslShell = Nothing

