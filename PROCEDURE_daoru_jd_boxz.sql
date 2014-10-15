USE `locoy`;
DROP procedure IF EXISTS `daoru_jd_boxz`;

DELIMITER $$
USE `locoy`$$
CREATE DEFINER=`root`@`%` PROCEDURE `daoru_jd_boxz`(IN jd_id_hc VARCHAR(255), boxz_id_hc VARCHAR(255), boxz_leibie_hc VARCHAR(255), boxz_xinghao_hc VARCHAR(255), boxz_xianjia_hc VARCHAR(255), jd_zuidijia_hc VARCHAR(255), boxz_stores_hc VARCHAR(255), jd_pinglunshu_hc VARCHAR(255), jd_pinglunshu_all_hc VARCHAR(255), jd_cities_hc VARCHAR(255), other_sku_hc VARCHAR(1024), jd_sl_riqi_hc DATE, jd_zdj_riqi_hc DATE, jd_boxz_riqi_hc DATE, jd_jintian_riqi_hc DATE)
BEGIN
/* 
CALL daoru_jd_boxz('[标签:京东货号]', '[标签:boxz货号]', '[标签:类别名字-boxz]', '[标签:型号-boxz]', '[标签:现价-boxz]', '[标签:最低价]', '[标签:商城有售]', '[标签:评论数-jd]', '[标签:评论数-总]', '[标签:有库存城市]', '[标签:相关商品]', '[标签:收录日期]', '[标签:最低价日期]', '[标签:采集日期]', '[系统时间转化:yyyy-MM-dd]') 
*/

/*
SET _hc = IF(_hc = '', NULL, _hc); hc是火车的意思
SET _hc = IF(_hc = '', NULL, CAST(_hc AS DECIMAL));
SET _hc = IF(_hc = '', NULL, CAST(_hc AS UNSIGNED));
SET _hc = IF(_hc = '', NULL, CAST(_hc AS DATE)); 
 OR  LIKE '%???%'
 OR  LIKE '%db:%' 某类采集中，如果没有采集相应的字段，就会导入[db:标签].
*/
SET jd_id_hc = IF(jd_id_hc = '', NULL, jd_id_hc);
SET boxz_id_hc = IF(boxz_id_hc = '', NULL, CAST(boxz_id_hc AS UNSIGNED));
SET boxz_leibie_hc = IF(boxz_leibie_hc = '', NULL, boxz_xianjia_hc);
SET boxz_xinghao_hc = IF(boxz_xinghao_hc = '', NULL, boxz_xianjia_hc);
SET boxz_xianjia_hc = IF(boxz_xianjia_hc = '', NULL, CAST(boxz_xianjia_hc AS DECIMAL));
SET jd_zuidijia_hc = IF(jd_zuidijia_hc = '', NULL, CAST(jd_zuidijia_hc AS DECIMAL));
SET boxz_stores_hc = IF(boxz_stores_hc = '', NULL, CAST(boxz_stores_hc AS UNSIGNED));
SET jd_pinglunshu_hc = IF(jd_pinglunshu_hc = '', NULL, CAST(jd_pinglunshu_hc AS UNSIGNED));
SET jd_pinglunshu_all_hc = IF(jd_pinglunshu_all_hc = '', NULL, CAST(jd_pinglunshu_all_hc AS UNSIGNED));
SET jd_cities_hc = IF(jd_cities_hc = '', NULL, jd_cities_hc);
SET other_sku_hc = IF(other_sku_hc = '', NULL, other_sku_hc);
SET jd_sl_riqi_hc = IF(jd_sl_riqi_hc = '', NULL, CAST(jd_sl_riqi_hc AS DATE)); 
SET jd_zdj_riqi_hc = IF(jd_zdj_riqi_hc = '', NULL, CAST(jd_zdj_riqi_hc AS DATE)); 
SET jd_boxz_riqi_hc = IF(jd_boxz_riqi_hc = '', NULL, CAST(jd_boxz_riqi_hc AS DATE)); 
SET jd_jintian_riqi_hc = IF(jd_jintian_riqi_hc = '', NULL, CAST(jd_jintian_riqi_hc AS DATE)); 

INSERT INTO `daoru_jd_boxz` (`jd_id`,`boxz_id`,`boxz_leibie`,`boxz_xinghao`,`boxz_xianjia`,`jd_zuidijia`,`boxz_stores`,`jd_pinglunshu`,`jd_pinglunshu_all`,`jd_cities`,`other_sku`,`jd_sl_riqi`,`jd_zdj_riqi`,`jd_boxz_riqi`,`jd_jintian_riqi`
) VALUES (jd_id_hc, boxz_id_hc, boxz_leibie_hc, boxz_xinghao_hc, boxz_xianjia_hc, jd_zuidijia_hc, boxz_stores_hc, jd_pinglunshu_hc, jd_pinglunshu_all_hc, jd_cities_hc, other_sku_hc, jd_sl_riqi_hc, jd_zdj_riqi_hc, jd_boxz_riqi_hc, jd_jintian_riqi_hc)
ON DUPLICATE KEY UPDATE 
	`boxz_id` = IF(boxz_id_hc IS NULL, `boxz_id`, boxz_id_hc),
	`boxz_leibie` = IF(boxz_leibie_hc IS NULL, `boxz_leibie`, boxz_leibie_hc),
	`boxz_xinghao` = IF(boxz_xinghao_hc IS NULL, `boxz_xinghao`, boxz_xinghao_hc),
	`boxz_xianjia` = IF(boxz_xianjia_hc IS NULL, `boxz_xianjia`, boxz_xianjia_hc), 
	`jd_zuidijia` = IF(jd_zuidijia_hc IS NULL, `jd_zuidijia`, jd_zuidijia_hc),
	`boxz_stores` = IF(boxz_stores_hc IS NULL, `boxz_stores`, boxz_stores_hc),
	`jd_pinglunshu` = IF(jd_pinglunshu_hc IS NULL, `jd_pinglunshu`, jd_pinglunshu_hc),
	`jd_pinglunshu_all` = IF(jd_pinglunshu_all_hc IS NULL, `jd_pinglunshu_all`, jd_pinglunshu_all_hc), 
	`jd_cities` = IF(jd_cities_hc IS NULL, `jd_cities_hc`, jd_cities_hc),
	`other_sku` = IF(other_sku_hc IS NULL, `other_sku`, other_sku_hc),
	`jd_sl_riqi` = IF(jd_sl_riqi_hc IS NULL, `jd_sl_riqi`, jd_sl_riqi_hc),
	`jd_zdj_riqi` = IF(jd_zdj_riqi_hc IS NULL, `jd_zdj_riqi`, jd_zdj_riqi_hc),
	`jd_boxz_riqi` = IF(jd_boxz_riqi_hc IS NULL, `jd_boxz_riqi`, jd_boxz_riqi_hc),
	`jd_jintian_riqi` = IF(jd_jintian_riqi_hc IS NULL, `jd_jintian_riqi`, jd_jintian_riqi_hc);
	
INSERT INTO `daoru_jd_boxz_day` (`jd_id`,`boxz_id`,`boxz_xianjia`,`jd_pinglunshu`,`jd_pinglunshu_all`,`jd_cities`,`jd_boxz_riqi`,`jd_jintian_riqi`
) VALUES (jd_id_hc, boxz_id_hc, boxz_xianjia_hc, jd_pinglunshu_hc, jd_pinglunshu_all_hc, jd_cities_hc, jd_boxz_riqi_hc, jd_jintian_riqi_hc)ON DUPLICATE KEY UPDATE 
	`boxz_id` = IF(boxz_id_hc IS NULL, `boxz_id`, boxz_id_hc),
	`boxz_xianjia` = IF(boxz_xianjia_hc IS NULL, `boxz_xianjia`, boxz_xianjia_hc),
	`jd_pinglunshu` = IF(jd_pinglunshu_hc IS NULL, `jd_pinglunshu`, jd_pinglunshu_hc),
	`jd_pinglunshu_all` = IF(jd_pinglunshu_all_hc IS NULL, `jd_pinglunshu_all`, jd_pinglunshu_all_hc), 
	`jd_cities` = IF(jd_cities_hc IS NULL, `jd_cities_hc`, jd_cities_hc),
	`jd_boxz_riqi` = IF(jd_boxz_riqi_hc IS NULL, `jd_boxz_riqi`, jd_boxz_riqi_hc);

END$$

DELIMITER ;

