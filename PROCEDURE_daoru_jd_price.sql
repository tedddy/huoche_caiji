USE `locoy`;
DROP procedure IF EXISTS `daoru_jd_price`;

DELIMITER $$
USE `locoy`$$
CREATE DEFINER=`root`@`%` PROCEDURE `daoru_jd_price`(IN jd_id_hc VARCHAR(255), jd_xianjia_hc VARCHAR(255), jd_jintian_riqi_hc DATE)
BEGIN

/* 
CALL daoru_jd_price('[标签:京东货号]', '[标签:现价]', '[系统时间转化:yyyy-MM-dd]') 
*/

SET jd_id_hc = IF(jd_id_hc = '', NULL, jd_id_hc);
SET jd_xianjia_hc = IF(jd_xianjia_hc = '' OR jd_xianjia_hc LIKE '%db:%', NULL, CAST(jd_xianjia_hc AS DECIMAL));

INSERT INTO `daoru_jd_price` (`jd_id`, `jd_xianjia`, `jd_jintian_riqi`) VALUES (jd_id_hc, jd_xianjia_hc, jd_jintian_riqi_hc);

END$$

DELIMITER ;
