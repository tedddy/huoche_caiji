USE `locoy`;
DROP procedure IF EXISTS `daoru_jd_comment`;

DELIMITER $$
USE `locoy`$$
CREATE DEFINER=`root`@`%` PROCEDURE `daoru_jd_comment`(IN jd_id_hc VARCHAR(255), jd_pinglunshu_hc VARCHAR(255), jd_haoping_hc VARCHAR(255), jd_zhongping_hc VARCHAR(255), jd_chaping_hc VARCHAR(255), jd_shaidanshu_hc VARCHAR(255), jd_mjyxhz_hc VARCHAR(2555), jd_jintian_riqi_hc DATE)
BEGIN

/* 
CALL daoru_jd_comment('[标签:京东货号]', '[标签:评论数]', '[标签:好评数]', '[标签:中评数]', '[标签:差评数]', '[标签:晒单数]', '[标签:买家印象]', '[系统时间转化:yyyy-MM-dd]') 
*/

SET jd_id_hc = IF(jd_id_hc = '', NULL, jd_id_hc);
SET jd_pinglunshu_hc = IF(jd_pinglunshu_hc = '' OR jd_pinglunshu_hc LIKE '%db:%', NULL, CAST(jd_pinglunshu_hc AS UNSIGNED));
SET jd_haoping_hc = IF(jd_haoping_hc = '' OR jd_haoping_hc LIKE '%db:%', NULL, CAST(jd_haoping_hc AS UNSIGNED));
SET jd_zhongping_hc = IF(jd_zhongping_hc = '' OR jd_zhongping_hc LIKE '%db:%', NULL, CAST(jd_zhongping_hc AS UNSIGNED));
SET jd_chaping_hc = IF(jd_chaping_hc = '' OR jd_chaping_hc LIKE '%db:%', NULL, CAST(jd_chaping_hc AS UNSIGNED));
SET jd_shaidanshu_hc = IF(jd_shaidanshu_hc = '' OR jd_shaidanshu_hc LIKE '%db:%', NULL, CAST(jd_shaidanshu_hc AS UNSIGNED));
SET jd_mjyxhz_hc = IF(jd_mjyxhz_hc = '' OR jd_mjyxhz_hc LIKE '%???%' OR jd_mjyxhz_hc LIKE '%db:%', NULL, jd_mjyxhz_hc);

INSERT INTO `daoru_jd_comment` (`jd_id`, `jd_pinglunshu`, `jd_haoping`, `jd_zhongping`, `jd_chaping`, `jd_shaidanshu`, jd_mjyxhz, `jd_jintian_riqi`) VALUES (jd_id_hc, jd_pinglunshu_hc, jd_haoping_hc, jd_zhongping_hc, jd_chaping_hc, jd_shaidanshu_hc, jd_mjyxhz_hc, jd_jintian_riqi_hc)
ON DUPLICATE KEY UPDATE
	`jd_pinglunshu` = IF(jd_pinglunshu_hc IS NULL, `jd_pinglunshu`, jd_pinglunshu_hc),
	`jd_haoping` = IF(jd_haoping_hc IS NULL, `jd_haoping`, jd_haoping_hc),
	`jd_zhongping` = IF(jd_zhongping_hc IS NULL, `jd_zhongping`, jd_zhongping_hc),
	`jd_chaping` = IF(jd_chaping_hc IS NULL, `jd_chaping`, jd_chaping_hc), 
	`jd_shaidanshu` = IF(jd_shaidanshu_hc IS NULL, `jd_shaidanshu`, jd_shaidanshu_hc),
	`jd_mjyxhz` = IF(jd_mjyxhz_hc IS NULL, `jd_mjyxhz`, jd_mjyxhz_hc);

END$$

DELIMITER ;
