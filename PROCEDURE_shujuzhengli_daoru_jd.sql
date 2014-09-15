-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE DEFINER=`root`@`%` PROCEDURE `shujuzhengli_daoru_jd`()
BEGIN
update `daoru_jd` 
set 
    f_cgbz = 1
where
    `jd_jiancheng` is not null AND
	`jd_xinghao` is not null AND
	`jd_mingcheng` is not null AND
	`jd_mjyxhz` is not null AND 
	`jd_shuxing_sj` is not null AND
	`jd_wangzhi` is not null AND 
	`jd_zoushitu` is not null AND 
	`jd_tlpp` is not null AND
	`jd_zhongliang` is not null AND `jd_zhongliang` <> 0.00 AND
	`jd_yuanjia` is not null AND `jd_yuanjia` <> 0.00 AND
	`jd_xianjia` is not null AND `jd_xianjia` <> 0.00 AND
	`jd_zuidijia` is not null AND `jd_zuidijia` <> 0.00 AND
	`jd_leibie` is not null AND  `jd_leibie`  <> 0 AND
	`jd_pinpai_id` is not null AND  `jd_pinpai_id`  <> 0 AND
	`jd_pinglunshu` is not null AND  `jd_pinglunshu`  <> 0 AND
	`jd_haoping` is not null AND  `jd_haoping`  <> 0 AND
	`jd_zhongping` is not null AND  `jd_zhongping`  <> 0 AND
	`jd_chaping` is not null AND  `jd_chaping`  <> 0 AND
	`jd_shaidanshu` is not null AND  `jd_shaidanshu`  <> 0 AND
	`jd_leibie_id0` is not null AND  `jd_leibie_id0`  <> 0 AND
	`jd_leibie_id1` is not null AND  `jd_leibie_id1`  <> 0
	;
END