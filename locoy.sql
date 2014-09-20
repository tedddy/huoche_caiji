/* 下面的修改以locoy_140914.sql为基准 */  /*  */
SELECT * FROM; /* 故意在头一句放一个错误语句，阻止执行整页的语句 */
/* 模板 
ALTER TABLE `` ADD `` VARCHAR() DEFAULT NULL COMMENT '' AFTER ``;
ALTER TABLE `` ADD `` BOOL DEFAULT NULL COMMENT '' AFTER ``;

DELIMITER $$

CREATE DEFINER=`root`@`%` PROCEDURE ``()
BEGIN

END
*/

/* 加入内容是否导入成功程度的字段。f是flag的缩写 cgbz是成功标志的缩写。 */
ALTER TABLE `daoru_jd` ADD `f_cgbz` TINYINT(1) DEFAULT NULL COMMENT '成功标志' AFTER `jd_id`;

SELECT jd_id
FROM `daoru_jd`
WHERE `jd_leibie_id` in (11303);

/*生成采集网址http://list.jd.com/list.html?cat=670%2C686%2C690&sort=sort_totalsales15_desc&page=(*)*/
SELECT jd_data,`jd_leibie`,`jd_leibie_fys`, concat('http://list.jd.com/list.html?cat=',jd_leibie_id0,'%2C',jd_leibie_id1,'%2C',jd_leibie_id,'&sort=sort_totalsales15_desc&page=(*)') AS 'cjwz'
FROM `leibie`
WHERE jd_data > 0;


/*生成类别网址http://list.jd.com/list.html?cat=670%2C686%2C690&sort=sort_totalsales15_desc&page=1*/
SELECT (concat('http://list.jd.com/list.html?cat=',jd_leibie_id0,'%2C',jd_leibie_id1,'%2C',jd_leibie_id,'&sort=sort_totalsales15_desc&page=1')) AS ''
FROM `leibie`
WHERE jd_data > 0;

/* 修改字段的位置。！注意要有数据类型，要不然会出错。 */
ALTER TABLE `pinpai` MODIFY `jd_pinpai` VARCHAR( 32 ) AFTER `jd_pinpai_id`; 
