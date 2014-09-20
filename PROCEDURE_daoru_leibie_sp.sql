-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

/* CALL daoru_leibie_sp('[标签:类别ID]', '[标签:类别名字]', '[标签:祖父类ID]', '[标签:父类ID]', '[标签:类别网址]', [采集页网址], [系统时间转化:yyyy-MM-dd]) */

CREATE DEFINER=`root`@`%` PROCEDURE `daoru_leibie_sp`(IN jd_leibie_id_hc VARCHAR(255), jd_leibie_hc VARCHAR(255), jd_leibie_id0_hc VARCHAR(255), jd_leibie_id1_hc VARCHAR(255), PageUrl_hc VARCHAR(255), jd_jintian_riqi_hc DATE)
BEGIN

/* 1. 采集的数据都先把数据类型设为 VARCHAR，再用CAST转化为相应的类型。2.#0 IN 参数（Parameter）名字和导入数据库的字段名应该不一样，在这里加上_hc(火车）
*/
SET jd_leibie_id_hc = IF(jd_leibie_id_hc = '', NULL, CAST(jd_leibie_id_hc AS UNSIGNED));
SET jd_leibie_id0_hc = IF(jd_leibie_id0_hc = '', NULL, CAST(jd_leibie_id0_hc AS UNSIGNED));
SET jd_leibie_id1_hc = IF(jd_leibie_id1_hc = '', NULL, CAST(jd_leibie_id1_hc AS UNSIGNED));
SET jd_leibie_hc = IF(jd_leibie_hc = '' OR jd_leibie_hc LIKE '%???%' OR jd_leibie_hc LIKE '%db:%', NULL, jd_leibie_hc);
SET PageUrl_hc = IF(PageUrl_hc = '' OR PageUrl_hc LIKE '%???%' OR PageUrl_hc LIKE '%db:%', NULL, PageUrl_hc);
SET jd_jintian_riqi_hc = IF(jd_jintian_riqi_hc = '', NULL, jd_jintian_riqi_hc);/*这个不用CAST，因为导入的时候，数据类型就是DATE*/

INSERT INTO `leibie` (`jd_leibie_id`, `jd_leibie_id0`, `jd_leibie_id1`, `jd_leibie`, PageUrl, jd_jintian_riqi) VALUES (jd_leibie_id_hc, jd_leibie_id0_hc, jd_leibie_id1_hc, jd_leibie_hc, PageUrl_hc, jd_jintian_riqi_hc) 
ON DUPLICATE KEY UPDATE 
	`jd_leibie_id1` = IF(jd_leibie_id1_hc IS NULL, `jd_leibie_id1`, jd_leibie_id0_hc),
	`jd_leibie_id0` = IF(jd_leibie_id0_hc IS NULL, `jd_leibie_id0`, jd_leibie_id0_hc),
	`jd_leibie` = IF(jd_leibie_hc IS NULL, `jd_leibie`, jd_leibie_hc);
END