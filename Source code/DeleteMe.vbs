WScript.Sleep 500

Dim fso, MyFile
Set fso = CreateObject("Scripting.FileSystemObject")
Set MyFile = fso.GetFile("SMM_WE_KEYS.exe")
MyFile.Delete

'Delete the currently executing script
Dim objFSO    'Create a File System Object
Set objFSO = CreateObject("Scripting.FileSystemObject")
objFSO.DeleteFile WScript.ScriptFullName
Set objFSO = Nothing