@ECHO OFF

REM 在Win7（非正宗中文版）上写bat文件的时候，如果有中文，并且要让github可读的话，要用windows自带的Notepad，并保存为ANSI编码。 注意：在github的GUI（windows for git）上中文显示有点问题。

for /f "delims=" %%a in ('wmic OS Get localdatetime  ^| find "."') do set "dt=%%a"
set "YYYY=%dt:~0,4%"
set "YY=%dt:~2,2%"
set "MM=%dt:~4,2%"
set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%"
set "Min=%dt:~10,2%"
set "Sec=%dt:~12,2%"

set datestamp=%YYYY%%MM%%DD%
set timestamp=%HH%%Min%%Sec%
set fullstamp=%YYYY%-%MM%-%DD%_%HH%-%Min%-%Sec%
echo datestamp: "%datestamp%"
echo timestamp: "%timestamp%"
echo fullstamp: "%fullstamp%"

REM !!! today = %YY%%MM%%DD% today和=之间如果有空格的话，是不行的。

SET today=%YY%%MM%%DD%

REM PAUSE

ECHO.

move "D:\快盘\ShuJuCaiJi\WangZhiHuiZong\bucai_*.txt" "D:\快盘\ShuJuCaiJi\WangZhiHuiZong\_存档"
del "D:\快盘\ShuJuCaiJi\WangZhiHuiZong\bucai.txt"

REM PAUSE

"C:\Program Files (x86)\MySQL\MySQL Workbench 6.1 CE\mysql" -u root -p8 -h 192.168.137.172 locoy -e "SELECT jd_wangzhi FROM `daoru_jd` WHERE `jd_jiancheng` IS NULL;" > "D:\快盘\ShuJuCaiJi\WangZhiHuiZong\bucai_%today%.txt"

REM PAUSE

MORE /E +1 "D:\快盘\ShuJuCaiJi\WangZhiHuiZong\bucai_%today%.txt" > "D:\快盘\ShuJuCaiJi\WangZhiHuiZong\bucai.txt"

REM PAUSE

ECHO.

REM ECHO %time%

REM PAUSE