@echo off
color a
echo �s�W�ϥΪ̩M�[�J�s�յ{�� �s�@�H:�f�ǩ�
echo=
set /p z=�ƶq:
set /p b=�W��:
echo �O�o�Y���Ů涷�[�޸�
set /p f=�s��:
FOR /L %%a IN (1,1,9) DO net user  %b%0%%a Skills39 /add
FOR /L %%a IN (10,1,%z%) DO net user  %b%%%a Skills39 /add
net localgroup %f% /add
FOR /L %%a IN (1,1,9) DO net localgroup %f% %b%0%%a /add
FOR /L %%a IN (10,1,%z%) DO net localgroup %f% %b%%%a /add
pause 
