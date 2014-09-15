@ECHO OFF
REM 指定天数
@echo off
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

PAUSE

ECHO.

REM move "D:\快盘\ShuJuCaiJi\WangZhiHuiZong\bucai_*.txt" "D:\快盘\ShuJuCaiJi\WangZhiHuiZong\_存档"
REM del "D:\快盘\ShuJuCaiJi\WangZhiHuiZong\bucai.txt"

PAUSE

"C:\Program Files (x86)\MySQL\MySQL Workbench 6.1 CE\mysql" -u root -p8 -h 192.168.137.172 locoy -e "SELECT jd_wangzhi FROM `daoru_jd` WHERE `jd_jiancheng` IS NULL;" > "D:\快盘\ShuJuCaiJi\WangZhiHuiZong\bucai_%today%.txt"

PAUSE

REM MORE /E +1 "D:\快盘\ShuJuCaiJi\WangZhiHuiZong\bucai_%today%.txt" > "D:\快盘\ShuJuCaiJi\WangZhiHuiZong\bucai.txt"

REM PAUSE

ECHO.

REM ECHO %time%

REM PAUSE
