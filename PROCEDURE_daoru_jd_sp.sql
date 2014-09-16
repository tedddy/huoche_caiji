-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

/* CALL daoru_jd_sp('[标签:京东货号]', '[标签:商品简称]', '[标签:型号]', '[标签:颜色]', '[标签:原价]', '[标签:现价]', '[标签:最低价]', '[标签:最低价日期]', '[标签:类别ID]', '[标签:品牌ID]', '[标签:评论数]', '[标签:好评数]', '[标签:中评数]', '[标签:差评数]', '[标签:晒单数]', '[标签:商品名称]', '[标签:商品属性]', '[标签:祖父类ID]', '[标签:父类ID]', '[标签:商品图片]', '[标签:图片-移动]', '[标签:图片-描述]', '[标签:采集日期]', '[系统时间转化:yyyy-MM-dd]','[采集页网址]','[标签:走势图]', '[标签:同类别品牌商品链接]', '[标签:商品毛重]', '[标签:类别名字]', '[标签:品牌名字]', '[标签:上架日期]', '[标签:店铺名字]', '[标签:店铺id]', '[标签:Id]', '[标签:商品属性-数据]', '[标签:图片-描述2]', '[标签:买家印象]', '[标签:同类品牌]') */

CREATE DEFINER=`root`@`%` PROCEDURE `daoru_jd_sp`(IN jd_id_hc VARCHAR(255), jd_jiancheng_hc VARCHAR(255), jd_xinghao_hc VARCHAR(255), jd_sx_yanse_hc VARCHAR(255), jd_yuanjia_hc VARCHAR(255), jd_xianjia_hc VARCHAR(255), jd_zuidijia_hc VARCHAR(255), jd_zdj_riqi_hc VARCHAR(255), jd_leibie_id_hc VARCHAR(255), jd_pinpai_id_hc VARCHAR(255), jd_pinglunshu_hc VARCHAR(255), jd_haoping_hc VARCHAR(255), jd_zhongping_hc VARCHAR(255), jd_chaping_hc VARCHAR(255), jd_shaidanshu_hc VARCHAR(255), jd_mingcheng_hc VARCHAR(255), jd_shuxing_hc VARCHAR(25555), jd_leibie_id0_hc VARCHAR(255), jd_leibie_id1_hc VARCHAR(255), jd_tupian_hc VARCHAR(2555), jd_tupian_yidong_hc VARCHAR(2555), jd_tupian_miaoshu_hc VARCHAR(2555), jd_boxz_riqi_hc VARCHAR(255), jd_jintian_riqi_hc DATE, jd_wangzhi_hc VARCHAR(255), jd_zoushitu_hc VARCHAR(255), jd_leibie_pinpai_hc VARCHAR(255), jd_zhongliang_hc VARCHAR(255), jd_leibie_hc VARCHAR(255), jd_pinpai_hc VARCHAR(255), jd_sj_riqi_hc VARCHAR(255), jd_dianpu_hc VARCHAR(255), jd_dianpu_id_hc VARCHAR(255), jd_caiji_id_hc VARCHAR(255), jd_shuxing_sj_hc VARCHAR(2555), jd_tupian_miaoshu2_hc VARCHAR(2558), jd_mjyxhz_hc VARCHAR(2555), jd_tlpp_hc VARCHAR(2555))
BEGIN

/* 1. 采集的数据都先把数据类型设为 VARCHAR，再用CAST转化为相应的类型。2. #0 [系统时间转化:yyyy-MM-dd]对应的字段要设为DATE（日期），因为采集器已经把它设为日期格式了。如果不设成日期，会出错。3. #0 IN 参数（Parameter）名字和导入数据库的字段名应该不一样，在这里加上_hc(火车）
*/

/*
SET  = IF( = '', NULL, );
SET  = IF( = '', NULL, CAST( AS DECIMAL));
SET  = IF( = '', NULL, CAST( AS UNSIGNED));
SET  = IF( = '', NULL, CAST( AS DATE)); 
 OR  LIKE '%???%'
 OR  LIKE '%db:%' 某类采集中，如果没有采集相应的字段，就会导入[db:标签].
*/
SET jd_id_hc = IF(jd_id_hc = '', NULL, jd_id_hc);
SET jd_jiancheng_hc = IF(jd_jiancheng_hc = '', NULL, jd_jiancheng_hc);
SET jd_xinghao_hc = IF(jd_xinghao_hc = '', NULL, jd_xinghao_hc);
SET jd_sx_yanse_hc = IF(jd_sx_yanse_hc = '', NULL, jd_sx_yanse_hc);
SET jd_yuanjia_hc = IF(jd_yuanjia_hc = '', NULL, CAST(jd_yuanjia_hc AS DECIMAL));
SET jd_xianjia_hc = IF(jd_xianjia_hc = '', NULL, CAST(jd_xianjia_hc AS DECIMAL));
SET jd_zuidijia_hc = IF(jd_zuidijia_hc = '', NULL, CAST(jd_zuidijia_hc AS DECIMAL));
SET jd_zdj_riqi_hc = IF(jd_zdj_riqi_hc = '', NULL, CAST(jd_zdj_riqi_hc AS DATE));
SET jd_leibie_id_hc = IF(jd_leibie_id_hc = '', NULL, CAST(jd_leibie_id_hc AS UNSIGNED));
SET jd_pinpai_id_hc = IF(jd_pinpai_id_hc = '', NULL, CAST(jd_pinpai_id_hc AS UNSIGNED));
SET jd_pinglunshu_hc = IF(jd_pinglunshu_hc = '', NULL, CAST(jd_pinglunshu_hc AS UNSIGNED));
SET jd_haoping_hc = IF(jd_haoping_hc = '', NULL, CAST(jd_haoping_hc AS UNSIGNED));
SET jd_zhongping_hc = IF(jd_zhongping_hc = '', NULL, CAST(jd_zhongping_hc AS UNSIGNED));
SET jd_chaping_hc = IF(jd_chaping_hc = '', NULL, CAST(jd_chaping_hc AS UNSIGNED));
SET jd_shaidanshu_hc = IF(jd_shaidanshu_hc = '', NULL, CAST(jd_shaidanshu_hc AS UNSIGNED));
SET jd_mingcheng_hc = IF(jd_mingcheng_hc = '' OR jd_mingcheng_hc LIKE '%???%', NULL, jd_mingcheng_hc);
SET jd_shuxing_hc = IF(jd_shuxing_hc = '' OR jd_shuxing_hc LIKE '%???%', NULL, jd_shuxing_hc);
SET jd_leibie_id0_hc = IF(jd_leibie_id0_hc = '', NULL, CAST(jd_leibie_id0_hc AS UNSIGNED));
SET jd_leibie_id1_hc = IF(jd_leibie_id1_hc = '', NULL, CAST(jd_leibie_id1_hc AS UNSIGNED));
SET jd_tupian_hc = IF(jd_tupian_hc = '' OR jd_tupian_hc LIKE '%???%', NULL, jd_tupian_hc);
SET jd_tupian_yidong_hc = IF(jd_tupian_yidong_hc = '' OR jd_tupian_yidong_hc LIKE '%???%' OR jd_tupian_yidong_hc LIKE '%db:%', NULL, jd_tupian_yidong_hc);
SET jd_tupian_miaoshu_hc = IF(jd_tupian_miaoshu_hc = '' OR jd_tupian_miaoshu_hc LIKE '%???%', NULL, jd_tupian_miaoshu_hc);
SET jd_boxz_riqi_hc = IF(jd_boxz_riqi_hc = '', NULL, CAST(jd_boxz_riqi_hc AS DATE));
SET jd_jintian_riqi_hc = IF(jd_jintian_riqi_hc = '', NULL, jd_jintian_riqi_hc);/*这个不用CAST，因为导入的时候，数据类型就是DATE*/
SET jd_wangzhi_hc = IF(jd_wangzhi_hc = '', NULL, jd_wangzhi_hc);
SET jd_zoushitu_hc = IF(jd_zoushitu_hc = '', NULL, jd_zoushitu_hc);
SET jd_leibie_pinpai_hc = IF(jd_leibie_pinpai_hc = '', NULL, jd_leibie_pinpai_hc);
SET jd_zhongliang_hc = IF(jd_zhongliang_hc = '', NULL, CAST(jd_zhongliang_hc AS DECIMAL));
SET jd_leibie_hc = IF(jd_leibie_hc = '' OR jd_leibie_hc LIKE '%db:%', NULL, jd_leibie_hc);
SET jd_pinpai_hc = IF(jd_pinpai_hc = '' OR jd_pinpai_hc LIKE '%db:%', NULL, jd_pinpai_hc);
SET jd_sj_riqi_hc = IF(jd_sj_riqi_hc = '', NULL, CAST(jd_sj_riqi_hc AS DATE));
SET jd_dianpu_hc = IF(jd_dianpu_hc = '' OR jd_dianpu_hc LIKE '%db:%', NULL, jd_dianpu_hc);
SET jd_dianpu_id_hc = IF(jd_dianpu_id_hc = '' OR jd_dianpu_id_hc LIKE '%db:%', NULL, CAST(jd_dianpu_id_hc AS UNSIGNED));
SET jd_caiji_id_hc = IF(jd_caiji_id_hc = '', NULL, CAST(jd_caiji_id_hc AS UNSIGNED));
SET jd_shuxing_sj_hc = IF(jd_shuxing_sj_hc = '' OR jd_shuxing_sj_hc LIKE '%???%' OR jd_shuxing_sj_hc LIKE '%db:%', NULL, jd_shuxing_sj_hc);
SET jd_tupian_miaoshu2_hc = IF(jd_tupian_miaoshu2_hc = '' OR jd_tupian_miaoshu2_hc LIKE '%???%' OR jd_tupian_miaoshu2_hc LIKE '%db:%', NULL, jd_tupian_miaoshu2_hc);
SET jd_mjyxhz_hc = IF(jd_mjyxhz_hc = '' OR jd_mjyxhz_hc LIKE '%???%' OR jd_mjyxhz_hc LIKE '%db:%', NULL, jd_mjyxhz_hc);
SET jd_tlpp_hc = IF(jd_tlpp_hc = '' OR jd_tlpp_hc LIKE '%???%' OR jd_tlpp_hc LIKE '%db:%', NULL, jd_tlpp_hc);

INSERT INTO `daoru_jd_temp` (`jd_id`, `jd_jiancheng`, `jd_xinghao`, `jd_sx_yanse`, `jd_yuanjia`, `jd_xianjia`, `jd_zuidijia`, `jd_zdj_riqi`, `jd_leibie_id`, `jd_pinpai_id`, `jd_pinglunshu`, `jd_haoping`, `jd_zhongping`, `jd_chaping`, `jd_shaidanshu`, `jd_mingcheng`, `jd_shuxing`, `jd_leibie_id0`, `jd_leibie_id1`, `jd_tupian`, `jd_tupian_yidong`, `jd_tupian_miaoshu`, `jd_boxz_riqi`, `jd_jintian_riqi`, `jd_wangzhi`, `jd_zoushitu`, `jd_leibie_pinpai`, `jd_zhongliang`, `jd_leibie`, `jd_pinpai`, `jd_sj_riqi`, `jd_dianpu`, `jd_dianpu_id`, `jd_caiji_id`, `jd_shuxing_sj`, `jd_tupian_miaoshu2`, `jd_mjyxhz`, `jd_tlpp`) VALUES (jd_id_hc, jd_jiancheng_hc, jd_xinghao_hc, jd_sx_yanse_hc, jd_yuanjia_hc, jd_xianjia_hc, jd_zuidijia_hc, jd_zdj_riqi_hc, jd_leibie_id_hc, jd_pinpai_id_hc, jd_pinglunshu_hc, jd_haoping_hc, jd_zhongping_hc, jd_chaping_hc, jd_shaidanshu_hc, jd_mingcheng_hc, jd_shuxing_hc, jd_leibie_id0_hc, jd_leibie_id1_hc, jd_tupian_hc, jd_tupian_yidong_hc, jd_tupian_miaoshu_hc, jd_boxz_riqi_hc, jd_jintian_riqi_hc, jd_wangzhi_hc, jd_zoushitu_hc, jd_leibie_pinpai_hc, jd_zhongliang_hc, jd_leibie_hc, jd_pinpai_hc, jd_sj_riqi_hc, jd_dianpu_hc, jd_dianpu_id_hc, jd_caiji_id_hc, jd_shuxing_sj_hc, jd_tupian_miaoshu2_hc, jd_mjyxhz_hc, jd_tlpp_hc) 
ON DUPLICATE KEY UPDATE 
	`jd_jiancheng` = IF(jd_jiancheng_hc IS NULL, `jd_jiancheng`, jd_jiancheng_hc),
	`jd_xinghao` = IF(jd_xinghao IS NULL, `jd_xinghao`, jd_xinghao_hc),
	`jd_yuanjia` = IF(jd_yuanjia IS NULL, `jd_yuanjia`, jd_yuanjia_hc),
	`jd_xianjia` = IF(jd_xianjia IS NULL, `jd_xianjia`, jd_xianjia_hc),
	`jd_zuidijia` = IF(jd_zuidijia IS NULL, `jd_zuidijia`, jd_zuidijia_hc),
	`jd_zdj_riqi` = IF(jd_zdj_riqi IS NULL, `jd_zdj_riqi`, jd_zdj_riqi_hc),
	`jd_leibie_id` = IF(jd_leibie_id IS NULL, `jd_leibie_id`, jd_leibie_id_hc),
	`jd_pinpai_id` = IF(jd_pinpai_id IS NULL, `jd_pinpai_id`, jd_pinpai_id_hc),
	`jd_pinglunshu` = IF(jd_pinglunshu IS NULL, `jd_pinglunshu`, jd_pinglunshu_hc),
	`jd_haoping` = IF(jd_haoping IS NULL, `jd_haoping`, jd_haoping_hc),
	`jd_zhongping` = IF(jd_zhongping IS NULL, `jd_zhongping`, jd_zhongping_hc),
	`jd_chaping` = IF(jd_chaping IS NULL, `jd_chaping`, jd_chaping_hc),
	`jd_shaidanshu` = IF(jd_shaidanshu IS NULL, `jd_shaidanshu`, jd_shaidanshu_hc),
	`jd_mingcheng` = IF(jd_mingcheng IS NULL, `jd_mingcheng`, jd_mingcheng_hc),
	`jd_shuxing` = IF(jd_shuxing IS NULL, `jd_shuxing`, jd_shuxing_hc),
	`jd_leibie_id0` = IF(jd_leibie_id0 IS NULL, `jd_leibie_id0`, jd_leibie_id0_hc),
	`jd_leibie_id1` = IF(jd_leibie_id1 IS NULL, `jd_leibie_id1`, jd_leibie_id1_hc),
	`jd_tupian` = IF(jd_tupian IS NULL, `jd_tupian`, jd_tupian_hc),
	`jd_tupian_yidong` = IF(jd_tupian_yidong IS NULL, `jd_tupian_yidong`, jd_tupian_yidong_hc),
	`jd_tupian_miaoshu` = IF(jd_tupian_miaoshu IS NULL, `jd_tupian_miaoshu`, jd_tupian_miaoshu_hc),
	`jd_boxz_riqi` = IF(jd_boxz_riqi IS NULL, `jd_boxz_riqi`, jd_boxz_riqi_hc),
	`jd_jintian_riqi` = IF(jd_jintian_riqi IS NULL, `jd_jintian_riqi`, jd_jintian_riqi_hc),
	`jd_wangzhi` = IF(jd_wangzhi IS NULL, `jd_wangzhi`, jd_wangzhi_hc),
	`jd_zoushitu` = IF(jd_zoushitu IS NULL, `jd_zoushitu`, jd_zoushitu_hc),
	`jd_leibie_pinpai` = IF(jd_leibie_pinpai IS NULL, `jd_leibie_pinpai`, jd_leibie_pinpai_hc),
	`jd_zhongliang` = IF(jd_zhongliang IS NULL, `jd_zhongliang`, jd_zhongliang_hc),
	`jd_leibie` = IF(jd_leibie IS NULL, `jd_leibie`, jd_leibie_hc),
	`jd_pinpai` = IF(jd_pinpai IS NULL, `jd_pinpai`, jd_pinpai_hc),
	`jd_sj_riqi` = IF(jd_sj_riqi IS NULL, `jd_sj_riqi`, jd_sj_riqi_hc),
	`jd_dianpu` = IF(jd_dianpu IS NULL, `jd_dianpu`, jd_dianpu_hc),
	`jd_dianpu_id` = IF(jd_dianpu_id IS NULL, `jd_dianpu_id`, jd_dianpu_id_hc),
	`jd_caiji_id` = IF(jd_caiji_id IS NULL, `jd_caiji_id`, jd_caiji_id_hc),
	`jd_shuxing_sj` = IF(jd_shuxing_sj IS NULL, `jd_shuxing_sj`, jd_shuxing_sj_hc),
	`jd_tupian_miaoshu2` = IF(jd_tupian_miaoshu2 IS NULL, `jd_tupian_miaoshu2`, jd_tupian_miaoshu2_hc),
	`jd_mjyxhz` = IF(jd_mjyxhz IS NULL, `jd_mjyxhz`, jd_mjyxhz_hc),
	`jd_tlpp` = IF(jd_tlpp IS NULL, `jd_tlpp`, jd_tlpp_hc);
END


/* 用三个字段测试
USE `locoy`;
DROP procedure IF EXISTS `daoru_jd_sp`;

DELIMITER $$
USE `locoy`$$

CREATE DEFINER=`root`@`%` PROCEDURE `daoru_jd_sp`(IN jd_id VARCHAR(11), jd_jiancheng VARCHAR(255), jd_mingcheng VARCHAR(255))
BEGIN
INSERT INTO `daoru_jd_temp` (`jd_id`, `jd_jiancheng`, `jd_mingcheng`) VALUES (jd_id, jd_jiancheng, jd_mingcheng) ON DUPLICATE KEY UPDATE `jd_jiancheng` = jd_jiancheng;
END$$

DELIMITER ;
*/

