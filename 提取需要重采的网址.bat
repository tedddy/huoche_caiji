@ECHO OFF

REM ��Win7�����������İ棩��дbat�ļ���ʱ����������ģ�����Ҫ��github�ɶ��Ļ���Ҫ��windows�Դ���Notepad��������ΪANSI���롣 ע�⣺��github��GUI��windows for git����������ʾ�е����⡣

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

REM !!! today = %YY%%MM%%DD% today��=֮������пո�Ļ����ǲ��еġ�

SET today=%YY%%MM%%DD%

REM PAUSE

ECHO.

move "D:\����\ShuJuCaiJi\WangZhiHuiZong\bucai_*.txt" "D:\����\ShuJuCaiJi\WangZhiHuiZong\_�浵"
del "D:\����\ShuJuCaiJi\WangZhiHuiZong\bucai.txt"

REM PAUSE

"C:\Program Files (x86)\MySQL\MySQL Workbench 6.1 CE\mysql" -u root -p8 -h 192.168.137.172 locoy -e "SELECT jd_wangzhi FROM `daoru_jd` WHERE `jd_jiancheng` IS NULL;" > "D:\����\ShuJuCaiJi\WangZhiHuiZong\bucai_%today%.txt"

REM PAUSE

MORE /E +1 "D:\����\ShuJuCaiJi\WangZhiHuiZong\bucai_%today%.txt" > "D:\����\ShuJuCaiJi\WangZhiHuiZong\bucai.txt"

REM PAUSE

ECHO.

REM ECHO %time%

REM PAUSE