INSERT INTO `daoru_jd` (`jd_id`, `jd_jiancheng`, `jd_xinghao`, `jd_sx_yanse`, `jd_yuanjia`, `jd_xianjia`, `jd_zuidijia`, `jd_zdj_riqi`, `jd_leibie_id`, `jd_pinpai_id`, `jd_pinglunshu`, `jd_haoping`, `jd_zhongping`, `jd_chaping`, `jd_shaidanshu`, `jd_mingcheng`, `jd_shuxing`, `jd_leibie_id0`, `jd_leibie_id1`, `jd_tupian`, `jd_tupian_yidong`, `jd_tupian_miaoshu`, `jd_boxz_riqi`, `jd_jintian_riqi`, `jd_wangzhi`, `jd_zoushitu`, `jd_leibie_pinpai`, `jd_zhongliang`, `jd_leibie`, `jd_pinpai`, `jd_sj_riqi`, `jd_dianpu`, `jd_dianpu_id`, `jd_caiji_id`, `jd_shuxing_sj`, `jd_tupian_miaoshu2`, `jd_mjyxhz`, `jd_tlpp`) VALUES ('[标签:京东货号]', '[标签:商品简称]', '[标签:型号]', '[标签:颜色]', '[标签:原价]', '[标签:现价]', '[标签:最低价]', '[标签:最低价日期]', '[标签:类别ID]', '[标签:品牌ID]', '[标签:评论数]', '[标签:好评数]', '[标签:中评数]', '[标签:差评数]', '[标签:晒单数]', '[标签:商品名称]', '[标签:商品属性]', '[标签:祖父类ID]', '[标签:父类ID]', '[标签:商品图片]', '[标签:图片-移动]', '[标签:图片-描述]', '[标签:采集日期]', '[系统时间转化:yyyy-MM-dd]','[采集页网址]','[标签:走势图]', '[标签:同类别品牌商品链接]', '[标签:商品毛重]', '[标签:类别名字]', '[标签:品牌名字]', '[标签:上架日期]', '[标签:店铺名字]', '[标签:店铺id]', '[标签:Id]', '[标签:商品属性-数据]', '[标签:图片-描述2]', '[标签:买家印象]', '[标签:同类品牌]') ON DUPLICATE KEY UPDATE `jd_jiancheng` = if(`jd_jiancheng` = NULL, `jd_jiancheng` = VALUES (`jd_jiancheng`), `jd_jiancheng`), `jd_xinghao` = if(`jd_xinghao` = NULL, `jd_xinghao`= VALUES (`jd_xinghao`), `jd_xinghao`), `jd_leibie_id` = if(`jd_leibie_id` = NULL, `jd_sx_yanse`= VALUES (`jd_sx_yanse`), `jd_leibie_id`), `jd_yuanjia`= VALUES (`jd_yuanjia`), `jd_xianjia`= VALUES (`jd_xianjia`), `jd_zuidijia`= VALUES (`jd_zuidijia`), `jd_zdj_riqi`= VALUES (`jd_zdj_riqi`), `jd_leibie_id` = if(`jd_leibie_id` = NULL, `jd_leibie_id`= VALUES (`jd_leibie_id`), `jd_leibie_id`), `jd_pinpai_id` = if(`jd_pinpai_id` = NULL, `jd_pinpai_id`= VALUES (`jd_pinpai_id`), `jd_pinpai_id`), `jd_pinglunshu`= VALUES (`jd_pinglunshu`), `jd_haoping`= VALUES (`jd_haoping`), `jd_zhongping`= VALUES (`jd_zhongping`), `jd_chaping`= VALUES (`jd_chaping`), `jd_shaidanshu`= VALUES (`jd_shaidanshu`), `jd_mingcheng` = if(`jd_mingcheng` = NULL, `jd_mingcheng`= VALUES (`jd_mingcheng`), `jd_mingcheng`), `jd_shuxing` = if(`jd_shuxing` = NULL, `jd_shuxing`= VALUES (`jd_shuxing`), `jd_shuxing`), `jd_leibie_id0` = if(`jd_leibie_id0` = NULL, `jd_leibie_id0`= VALUES (`jd_leibie_id0`), `jd_leibie_id0`), `jd_leibie_id1` = if(`jd_leibie_id1` = NULL, `jd_leibie_id1`= VALUES (`jd_leibie_id1`), `jd_leibie_id1`), `jd_tupian` = if(`jd_tupian` = NULL, `jd_tupian`= VALUES (`jd_tupian`), `jd_tupian`), `jd_tupian_yidong` = if(`jd_tupian_yidong` = NULL, `jd_tupian_yidong`= VALUES (`jd_tupian_yidong`), `jd_tupian_yidong`), `jd_tupian_miaoshu` = if(`jd_tupian_miaoshu` = NULL, `jd_tupian_miaoshu`= VALUES (`jd_tupian_miaoshu`), `jd_tupian_miaoshu`), `jd_boxz_riqi`= VALUES (`jd_boxz_riqi`), `jd_wangzhi` = if(`jd_wangzhi` = NULL, `jd_wangzhi`= VALUES (`jd_wangzhi`), `jd_wangzhi`), `jd_zoushitu` = if(`jd_zoushitu` = NULL, `jd_zoushitu`= VALUES (`jd_zoushitu`), `jd_zoushitu`), `jd_leibie_pinpai` = if(`jd_leibie_pinpai` = NULL, `jd_leibie_pinpai`= VALUES (`jd_leibie_pinpai`), `jd_leibie_pinpai`), `jd_zhongliang` = if(`jd_zhongliang` = NULL, `jd_zhongliang`= VALUES (`jd_zhongliang`), `jd_zhongliang`), `jd_leibie` = if(`jd_leibie` = NULL, `jd_leibie`= VALUES (`jd_leibie`), `jd_leibie`), `jd_pinpai` = if(`jd_pinpai` = NULL, `jd_pinpai`= VALUES (`jd_pinpai`), `jd_pinpai`), `jd_sj_riqi` = if(`jd_sj_riqi` = NULL, `jd_sj_riqi`= VALUES (`jd_sj_riqi`), `jd_sj_riqi`), `jd_dianpu` = if(`jd_dianpu` = NULL, `jd_dianpu`= VALUES (`jd_dianpu`), `jd_dianpu`), `jd_dianpu_id` = if(`jd_dianpu_id` = NULL, `jd_dianpu_id`= VALUES (`jd_dianpu_id`), `jd_dianpu_id`), `jd_shuxing_sj` = if(`jd_shuxing_sj` = NULL, `jd_shuxing_sj` = VALUES (`jd_shuxing_sj`), `jd_shuxing_sj`), `jd_tupian_miaoshu2` = if(`jd_tupian_miaoshu2` = NULL, `jd_tupian_miaoshu2`= VALUES (`jd_tupian_miaoshu2`), `jd_tupian_miaoshu2`), `jd_mjyxhz` = if(`jd_mjyxhz` = NULL, `jd_mjyxhz` = VALUES (`jd_mjyxhz`), `jd_mjyxhz`), `jd_tlpp` = if(`jd_tlpp` = NULL, `jd_tlpp` = VALUES (`jd_tlpp`), `jd_tlpp`);

update `daoru_jd` set `jd_tupian_yidong`= NULL where `jd_tupian_yidong` like '%图片-移动%';
update `daoru_jd` set `jd_leibie`= NULL where `jd_leibie` like '%类别名字%';
update `daoru_jd` set `jd_pinpai`= NULL where `jd_pinpai` like '%品牌名字%';
update `daoru_jd` set `jd_dianpu`= NULL where `jd_dianpu` like '%店铺名字%';
update `daoru_jd` set `jd_dianpu_id`= NULL where `jd_dianpu_id` like '%店铺id%';
update `daoru_jd` set `jd_shuxing_sj`= NULL where `jd_shuxing_sj` like '%db:商品属性-数据%';
update `daoru_jd` set `jd_tupian_miaoshu2`= NULL where `jd_tupian_miaoshu2` like '%图片-描述2%';
update `daoru_jd` set `jd_mjyxhz`= NULL where `jd_mjyxhz` like '%买家印象%';
update `daoru_jd` set `jd_tlpp`= NULL where `jd_tlpp` like '%同类品牌%';

update `daoru_jd` set `jd_jiancheng` = NULL where `jd_jiancheng` = '';
update `daoru_jd` set `jd_xinghao` = NULL where `jd_xinghao` like '';
update `daoru_jd` set `jd_sx_yanse` = NULL where `jd_sx_yanse` like '';
update `daoru_jd` set `jd_mingcheng` = NULL where `jd_mingcheng` like '';
update `daoru_jd` set `jd_leibie` = NULL where `jd_leibie` like '';
update `daoru_jd` set `jd_pinpai` = NULL where `jd_pinpai` like '';
update `daoru_jd` set `jd_mjyxhz` = NULL where `jd_mjyxhz` like '' or `jd_mjyxhz` like '%???%';
update `daoru_jd` set `jd_shuxing` = NULL where `jd_shuxing` like '' or `jd_shuxing` like '%???%';
update `daoru_jd` set `jd_shuxing_sj` = NULL where `jd_shuxing_sj` like '' or `jd_shuxing_sj` like '%???%';
update `daoru_jd` set `jd_tupian` = NULL where `jd_tupian` like '';
update `daoru_jd` set `jd_tupian_yidong` = NULL where `jd_tupian_yidong` like '';
update `daoru_jd` set `jd_tupian_miaoshu` = NULL where `jd_tupian_miaoshu` like '';
update `daoru_jd` set `jd_tupian_miaoshu2` = NULL where `jd_tupian_miaoshu2` like '';
update `daoru_jd` set `jd_wangzhi` = NULL where `jd_wangzhi` like '';
update `daoru_jd` set `jd_zoushitu` = NULL where `jd_zoushitu` like '';
update `daoru_jd` set `jd_leibie_pinpai` = NULL where `jd_leibie_pinpai` like '';
update `daoru_jd` set `jd_tlpp` = NULL where `jd_tlpp` like '';
update `daoru_jd` set `jd_dianpu` = NULL where `jd_dianpu` like '';
update `daoru_jd` set `jd_dianpu_id` = NULL where `jd_dianpu_id` like '';

/*	
	采集完后导入数据库时，如果导入语句中的某个标签没有在采集规则里，写入数据库的值为标签名。下面的语句使这些值为 NULL。
	update `daoru_jd` set ``= NULL where `` like '%%';
*/

/*	
	采集程序中如果采集内容为空，缺省字符串为''。采集完成后，修改这类值为 NULL。
	如果数据类型是char
		update `daoru_jd` set `` = NULL where `` like '' or `` like '%???%';
	如果数据类型是decimal
		update `daoru_jd` set `` = NULL where `` like '' = 0.00; 
		update `daoru_jd` set `jd_zhongliang` = NULL where `jd_zhongliang` = 0.00;
		update `daoru_jd` set `jd_xianjia` = NULL where `jd_xianjia` = 0.00;
		update `daoru_jd` set `jd_zuidijia` = NULL where `jd_zuidijia` = 0.00;
	问题：发布数据到数据库daoru_jd_xbsm_172失败  - Nested transactions are not supported.MySql.Data.MySqlClient.MySqlTransaction BeginTransaction(System.Data.IsolationLevel)Id:164 - 970676

	如果数据类型是int
	update `daoru_jd` set `` = NULL where `` like '' = 0; 发布数据到数据库daoru_jd_xbsm_172失败  - Nested transactions are not supported.MySql.Data.MySqlClient.MySqlTransaction BeginTransaction(System.Data.IsolationLevel)Id:164 - 970676
*/

/*	
	！！！一条语句不能有换行。
*/