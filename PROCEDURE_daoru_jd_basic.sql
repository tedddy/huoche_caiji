USE `locoy`;
DROP procedure IF EXISTS `daoru_jd_basic`;

DELIMITER $$
USE `locoy`$$
CREATE DEFINER=`root`@`%` PROCEDURE `daoru_jd_basic`(IN jd_id_hc VARCHAR(255), jd_jiancheng_hc VARCHAR(255), jd_xinghao_hc VARCHAR(255), jd_yanse_hc VARCHAR(255), jd_leibie_id_hc VARCHAR(255), jd_pinpai_id_hc VARCHAR(255), jd_mingcheng_hc VARCHAR(255), jd_shuxing_hc VARCHAR(25555), jd_leibie_id0_hc VARCHAR(255), jd_leibie_id1_hc VARCHAR(255), jd_tupian_hc VARCHAR(2555), jd_tupian_miaoshu_hc VARCHAR(2555), jd_jintian_riqi_hc DATE, jd_wangzhi_hc VARCHAR(255), jd_leibie_pinpai_hc VARCHAR(255), jd_zhongliang_hc VARCHAR(255), jd_leibie_hc VARCHAR(255), jd_pinpai_hc VARCHAR(255), jd_sj_riqi_hc VARCHAR(255), jd_dianpu_hc VARCHAR(255), jd_dianpu_id_hc VARCHAR(255), jd_caiji_id_hc VARCHAR(255), jd_shuxing_sj_hc VARCHAR(2555), jd_tupian_miaoshu2_hc VARCHAR(2558), jd_tlpp_hc VARCHAR(2555))
BEGIN

/* 
CALL daoru_jd_basic('[标签:京东货号]', '[标签:商品简称]', '[标签:型号]', '[标签:颜色]', '[标签:类别ID]', '[标签:品牌ID]', '[标签:商品名称]', '[标签:商品属性]', '[标签:祖父类ID]', '[标签:父类ID]', '[标签:商品图片]', '[标签:图片-描述]', '[系统时间转化:yyyy-MM-dd]','[采集页网址]', '[标签:同类别品牌商品链接]', '[标签:商品毛重]', '[标签:类别名字]', '[标签:品牌名字]', '[标签:上架日期]', '[标签:店铺名字]', '[标签:店铺id]', '[标签:Id]', '[标签:商品属性-数据]', '[标签:图片-描述2]', '[标签:同类品牌]') 
*/
SET jd_id_hc = IF(jd_id_hc = '', NULL, jd_id_hc); 
SET jd_jiancheng_hc = IF(jd_jiancheng_hc = '' OR jd_jiancheng_hc LIKE '%db:%', NULL, jd_jiancheng_hc);
SET jd_xinghao_hc = IF(jd_xinghao_hc = '' OR jd_xinghao_hc LIKE '%db:%', NULL, jd_xinghao_hc);
SET jd_yanse_hc = IF(jd_yanse_hc = '' OR jd_yanse_hc LIKE '%db:%', NULL, jd_yanse_hc);
SET jd_leibie_id_hc = IF(jd_leibie_id_hc = '' OR jd_leibie_id_hc LIKE '%db:%', NULL, CAST(jd_leibie_id_hc AS UNSIGNED));
SET jd_pinpai_id_hc = IF(jd_pinpai_id_hc = '' OR jd_pinpai_id_hc LIKE '%db:%', NULL, CAST(jd_pinpai_id_hc AS UNSIGNED));
SET jd_mingcheng_hc = IF(jd_mingcheng_hc = ''  OR jd_mingcheng_hc LIKE '%db:%' OR jd_mingcheng_hc LIKE '%???%', NULL, jd_mingcheng_hc);
SET jd_shuxing_hc = IF(jd_shuxing_hc = ''  OR jd_shuxing_hc LIKE '%db:%' OR jd_shuxing_hc LIKE '%???%', NULL, jd_shuxing_hc);
SET jd_leibie_id0_hc = IF(jd_leibie_id0_hc = '' OR jd_leibie_id0_hc LIKE '%db:%', NULL, CAST(jd_leibie_id0_hc AS UNSIGNED));
SET jd_leibie_id1_hc = IF(jd_leibie_id1_hc = '' OR jd_leibie_id1_hc LIKE '%db:%', NULL, CAST(jd_leibie_id1_hc AS UNSIGNED));
SET jd_tupian_hc = IF(jd_tupian_hc = '' OR jd_tupian_hc LIKE '%???%' OR jd_tupian_hc LIKE '%db:%', NULL, jd_tupian_hc);
SET jd_tupian_miaoshu_hc = IF(jd_tupian_miaoshu_hc = '' OR jd_tupian_miaoshu_hc LIKE '%db:%' OR jd_tupian_miaoshu_hc LIKE '%???%', NULL, jd_tupian_miaoshu_hc);
SET jd_jintian_riqi_hc = IF(jd_jintian_riqi_hc = '' OR jd_jintian_riqi_hc LIKE '%db:%', NULL, jd_jintian_riqi_hc);/*这个不用CAST，因为导入的时候，数据类型就是DATE*/
SET jd_wangzhi_hc = IF(jd_wangzhi_hc = '' OR jd_wangzhi_hc LIKE '%db:%', NULL, jd_wangzhi_hc);
SET jd_leibie_pinpai_hc = IF(jd_leibie_pinpai_hc = '' OR jd_leibie_pinpai_hc LIKE '%db:%', NULL, jd_leibie_pinpai_hc);
SET jd_zhongliang_hc = IF(jd_zhongliang_hc = '' OR jd_zhongliang_hc LIKE '%db:%', NULL, CAST(jd_zhongliang_hc AS DECIMAL));
SET jd_leibie_hc = IF(jd_leibie_hc = '' OR jd_leibie_hc LIKE '%???%' OR jd_leibie_hc LIKE '%db:%', NULL, jd_leibie_hc);
SET jd_pinpai_hc = IF(jd_pinpai_hc = ''  OR jd_pinpai_hc LIKE '%db:%' OR jd_pinpai_hc LIKE '%db:%', NULL, jd_pinpai_hc);
SET jd_sj_riqi_hc = IF(jd_sj_riqi_hc = '' OR jd_sj_riqi_hc LIKE '%db:%', NULL, CAST(jd_sj_riqi_hc AS DATE));
SET jd_dianpu_hc = IF(jd_dianpu_hc = ''  OR jd_dianpu_hc LIKE '%db:%' OR jd_dianpu_hc LIKE '%db:%', NULL, jd_dianpu_hc);
SET jd_dianpu_id_hc = IF(jd_dianpu_id_hc = '' OR jd_dianpu_id_hc LIKE '%db:%', NULL, CAST(jd_dianpu_id_hc AS UNSIGNED));
SET jd_caiji_id_hc = IF(jd_caiji_id_hc = '' OR jd_caiji_id_hc LIKE '%db:%', NULL, CAST(jd_caiji_id_hc AS UNSIGNED));
SET jd_shuxing_sj_hc = IF(jd_shuxing_sj_hc = '' OR jd_shuxing_sj_hc LIKE '%???%' OR jd_shuxing_sj_hc LIKE '%db:%', NULL, jd_shuxing_sj_hc);
SET jd_tupian_miaoshu2_hc = IF(jd_tupian_miaoshu2_hc = '' OR jd_tupian_miaoshu2_hc LIKE '%???%' OR jd_tupian_miaoshu2_hc LIKE '%db:%', NULL, jd_tupian_miaoshu2_hc);
SET jd_tlpp_hc = IF(jd_tlpp_hc = '' OR jd_tlpp_hc LIKE '%???%' OR jd_tlpp_hc LIKE '%db:%', NULL, jd_tlpp_hc);

INSERT INTO `daoru_jd_basic` (`jd_id`, `jd_jiancheng`, `jd_xinghao`, `jd_yanse`, `jd_leibie_id`, `jd_pinpai_id`, `jd_mingcheng`, `jd_shuxing`, `jd_leibie_id0`, `jd_leibie_id1`, `jd_tupian`, `jd_tupian_miaoshu`, `jd_jintian_riqi`, `jd_wangzhi`, `jd_leibie_pinpai`, `jd_zhongliang`, `jd_leibie`, `jd_pinpai`, `jd_sj_riqi`, `jd_dianpu`, `jd_dianpu_id`, `jd_caiji_id`, `jd_shuxing_sj`, `jd_tupian_miaoshu2`, `jd_tlpp`) VALUES (jd_id_hc, jd_jiancheng_hc, jd_xinghao_hc, jd_yanse_hc, jd_leibie_id_hc, jd_pinpai_id_hc, jd_mingcheng_hc, jd_shuxing_hc, jd_leibie_id0_hc, jd_leibie_id1_hc, jd_tupian_hc, jd_tupian_miaoshu_hc, jd_jintian_riqi_hc, jd_wangzhi_hc, jd_leibie_pinpai_hc, jd_zhongliang_hc, jd_leibie_hc, jd_pinpai_hc, jd_sj_riqi_hc, jd_dianpu_hc, jd_dianpu_id_hc, jd_caiji_id_hc, jd_shuxing_sj_hc, jd_tupian_miaoshu2_hc, jd_tlpp_hc) 
ON DUPLICATE KEY UPDATE 
	`jd_jiancheng` = IF(jd_jiancheng_hc IS NULL, `jd_jiancheng`, jd_jiancheng_hc),
	`jd_xinghao` = IF(jd_xinghao_hc IS NULL, `jd_xinghao`, jd_xinghao_hc),
	`jd_leibie_id` = IF(jd_leibie_id_hc IS NULL, `jd_leibie_id`, jd_leibie_id_hc),
	`jd_pinpai_id` = IF(jd_pinpai_id_hc IS NULL, `jd_pinpai_id`, jd_pinpai_id_hc),
	`jd_mingcheng` = IF(jd_mingcheng_hc IS NULL, `jd_mingcheng`, jd_mingcheng_hc),
	`jd_shuxing` = IF(jd_shuxing_hc IS NULL, `jd_shuxing`, jd_shuxing_hc),
	`jd_leibie_id0` = IF(jd_leibie_id0_hc IS NULL, `jd_leibie_id0`, jd_leibie_id0_hc),
	`jd_leibie_id1` = IF(jd_leibie_id1_hc IS NULL, `jd_leibie_id1`, jd_leibie_id1_hc),
	`jd_tupian` = IF(jd_tupian_hc IS NULL, `jd_tupian`, jd_tupian_hc),
	`jd_tupian_miaoshu` = IF(jd_tupian_miaoshu_hc IS NULL, `jd_tupian_miaoshu`, jd_tupian_miaoshu_hc),
	`jd_jintian_riqi` = IF(jd_jintian_riqi_hc IS NULL, `jd_jintian_riqi`, jd_jintian_riqi_hc),
	`jd_wangzhi` = IF(jd_wangzhi_hc IS NULL, `jd_wangzhi`, jd_wangzhi_hc),
	`jd_leibie_pinpai` = IF(jd_leibie_pinpai_hc IS NULL, `jd_leibie_pinpai`, jd_leibie_pinpai_hc),
	`jd_zhongliang` = IF(jd_zhongliang_hc IS NULL, `jd_zhongliang`, jd_zhongliang_hc),
	`jd_leibie` = IF(jd_leibie_hc IS NULL, `jd_leibie`, jd_leibie_hc),
	`jd_pinpai` = IF(jd_pinpai_hc IS NULL, `jd_pinpai`, jd_pinpai_hc),
	`jd_sj_riqi` = IF(jd_sj_riqi_hc IS NULL, `jd_sj_riqi`, jd_sj_riqi_hc),
	`jd_dianpu` = IF(jd_dianpu_hc IS NULL, `jd_dianpu`, jd_dianpu_hc),
	`jd_dianpu_id` = IF(jd_dianpu_id_hc IS NULL, `jd_dianpu_id`, jd_dianpu_id_hc),
	`jd_caiji_id` = IF(jd_caiji_id_hc IS NULL, `jd_caiji_id`, jd_caiji_id_hc),
	`jd_shuxing_sj` = IF(jd_shuxing_sj_hc IS NULL, `jd_shuxing_sj`, jd_shuxing_sj_hc),
	`jd_tupian_miaoshu2` = IF(jd_tupian_miaoshu2_hc IS NULL, `jd_tupian_miaoshu2`, jd_tupian_miaoshu2_hc),
	`jd_tlpp` = IF(jd_tlpp_hc IS NULL, `jd_tlpp`, jd_tlpp_hc);
END$$

DELIMITER ;

