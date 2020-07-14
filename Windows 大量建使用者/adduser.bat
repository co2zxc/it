FOR /L %i IN (1,1,9) DO net user user0%%i P@sswOrd /add
FOR /L %i IN (10,1,50) DO net user user%%i P@sswOrd /add

