/*  */

/*查询不成功的采集。注意：`jd_jiancheng` = NULL是错误的*/
SELECT *
FROM `daoru_jd`
WHERE `jd_jiancheng` IS NULL;

/*查询采集日期不成功的采集。*/
SELECT *
FROM `daoru_jd`
WHERE `jd_sj_riqi` <> 0000-00-00;

/* However, if the MySQL client software is installed on the remote machine, you can instead use a client command such as mysql -e "SELECT ..." > file_name to generate the file on the client host.  */
/* 去掉第一行（表头） */
mysql -u root -p8 -h 192.168.137.172 locoy -e "SELECT jd_wangzhi FROM `daoru_jd` WHERE `jd_jiancheng` IS NULL;" > "D:\快盘\ShuJuCaiJi\WangZhiHuiZong\bucai_temp.txt"
MORE /E +1 "D:\快盘\ShuJuCaiJi\WangZhiHuiZong\bucai_temp.txt" > "D:\快盘\ShuJuCaiJi\WangZhiHuiZong\bucai_jd.txt"