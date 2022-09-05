@echo off
echo "DOCS PUSH BAT"

::移动到需要自动提交的文件夹内
echo "1. Move to working directory"
C:
cd C:\Users\Administrator\Documents\logseq

echo "2. Start GitAutoCommit.ps1"
::执行powershell脚本，设置远程分支和本地分支，设置每隔一段时间执行一次，自动 push
PowerShell.exe -file Start-GitAutoCommit.ps1 -s origin -b master -i 300 -p

echo "Auto Commit Start"