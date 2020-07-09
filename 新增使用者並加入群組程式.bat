@echo off
color a
echo 新增使用者和加入群組程式 製作人:呂學易
echo=
set /p z=數量:
set /p b=名稱:
echo 記得若有空格須加引號
set /p f=群組:
FOR /L %%a IN (1,1,9) DO net user  %b%0%%a Skills39 /add
FOR /L %%a IN (10,1,%z%) DO net user  %b%%%a Skills39 /add
net localgroup %f% /add
FOR /L %%a IN (1,1,9) DO net localgroup %f% %b%0%%a /add
FOR /L %%a IN (10,1,%z%) DO net localgroup %f% %b%%%a /add
pause 
