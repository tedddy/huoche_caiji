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

/* 加入内容是否导入成功的判断。f是flag的缩写 cgbz是成功标志的缩写。 */
ALTER TABLE `daoru_jd` ADD `f_cgbz` BOOL DEFAULT NULL COMMENT '成功标志' AFTER `jd_id`;

