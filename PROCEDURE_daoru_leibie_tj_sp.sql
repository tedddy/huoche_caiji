-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE DEFINER=`root`@`%` PROCEDURE `daoru_leibie_tj_sp`(IN jd_leibie_id_hc VARCHAR(255), jd_leibie_zs_hc VARCHAR(255), jd_leibie_fys_hc VARCHAR(255), jd_flphb1_hc VARCHAR(255), jd_flphb2_hc VARCHAR(255), jd_flphb3_hc VARCHAR(255), jd_flphb4_hc VARCHAR(255), jd_flphb5_hc VARCHAR(255), jd_flphb6_hc VARCHAR(255), jd_flphb7_hc VARCHAR(255), jd_flphb8_hc VARCHAR(255), jd_jintian_riqi_hc DATE)
BEGIN

/* 
	CALL daoru_leibie_tj_sp('[标签:类别ID]', '[标签:商品总数]', '[标签:分页数]', '[标签:排行榜1]', '[标签:排行榜2]', '[标签:排行榜3]', '[标签:排行榜4]', '[标签:排行榜5]', '[标签:排行榜6]', '[标签:排行榜7]', '[标签:排行榜8]', '[系统时间转化:yyyy-MM-dd]') 
*/

/* 
	1. 采集的数据都先把数据类型设为 VARCHAR，再用CAST转化为相应的类型。
	2.#0 IN 参数（Parameter）名字和导入数据库的字段名应该不一样，在这里加上_hc(火车）
*/
SET jd_leibie_id_hc = IF(jd_leibie_id_hc = '', NULL, CAST(jd_leibie_id_hc AS UNSIGNED));
SET jd_leibie_zs_hc = IF(jd_leibie_zs_hc = '', NULL, CAST(jd_leibie_zs_hc AS UNSIGNED));
SET jd_leibie_fys_hc = IF(jd_leibie_fys_hc = '', NULL, CAST(jd_leibie_fys_hc AS UNSIGNED));
SET jd_flphb1_hc = IF(jd_flphb1_hc = 'jd_flphb1_hc', NULL, jd_flphb1_hc);
SET jd_flphb2_hc = IF(jd_flphb2_hc = 'jd_flphb2_hc', NULL, jd_flphb2_hc);
SET jd_flphb3_hc = IF(jd_flphb3_hc = 'jd_flphb3_hc', NULL, jd_flphb3_hc);
SET jd_flphb4_hc = IF(jd_flphb4_hc = 'jd_flphb4_hc', NULL, jd_flphb4_hc);
SET jd_flphb5_hc = IF(jd_flphb5_hc = 'jd_flphb5_hc', NULL, jd_flphb5_hc);
SET jd_flphb6_hc = IF(jd_flphb6_hc = 'jd_flphb6_hc', NULL, jd_flphb6_hc);
SET jd_flphb7_hc = IF(jd_flphb7_hc = 'jd_flphb7_hc', NULL, jd_flphb7_hc);
SET jd_flphb8_hc = IF(jd_flphb8_hc = 'jd_flphb8_hc', NULL, jd_flphb8_hc);
SET jd_jintian_riqi_hc = IF(jd_jintian_riqi_hc = '', NULL, jd_jintian_riqi_hc);/*这个不用CAST，因为导入的时候，数据类型就是DATE*/

INSERT INTO `leibie` (`jd_leibie_id`, `jd_leibie_zs`, `jd_leibie_fys`, jd_jintian_riqi) VALUES (jd_leibie_id_hc, jd_leibie_zs_hc, jd_leibie_fys_hc, jd_jintian_riqi_hc) 
ON DUPLICATE KEY UPDATE 	
	`jd_leibie_zs` = IF(jd_leibie_zs_hc IS NULL, `jd_leibie_zs`, jd_leibie_zs_hc),
	`jd_leibie_fys` = IF(jd_leibie_fys_hc IS NULL, `jd_leibie_fys`, jd_leibie_fys_hc),
	`jd_flphb1` = IF(jd_flphb1_hc IS NULL, `jd_flphb1`, jd_flphb1_hc),
	`jd_flphb2` = IF(jd_flphb2_hc IS NULL, `jd_flphb2`, jd_flphb2_hc),
	`jd_flphb3` = IF(jd_flphb3_hc IS NULL, `jd_flphb3`, jd_flphb3_hc),
	`jd_flphb4` = IF(jd_flphb4_hc IS NULL, `jd_flphb4`, jd_flphb4_hc),
	`jd_flphb5` = IF(jd_flphb5_hc IS NULL, `jd_flphb5`, jd_flphb5_hc),
	`jd_flphb6` = IF(jd_flphb6_hc IS NULL, `jd_flphb6`, jd_flphb6_hc),
	`jd_flphb7` = IF(jd_flphb7_hc IS NULL, `jd_flphb7`, jd_flphb7_hc),
	`jd_flphb8` = IF(jd_flphb8_hc IS NULL, `jd_flphb8`, jd_flphb8_hc),
	`jd_jintian_riqi` = IF(jd_jintian_riqi_hc IS NULL, `jd_jintian_riqi`, jd_jintian_riqi_hc);
END