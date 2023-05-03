@ECHO OFF
::sync_work_files: Jorge Thompson (User:j.thompson; c:\users\j.thompson)

robocopy C:\Users\j.thompson e:\j.thompson\ /s /zb /copyall /xj /r:3 /W:5 /log+:C:\Users\admin\Documents\jthompson_sync_log\sync_work_files.txt
