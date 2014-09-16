USE `locoy`;
DROP procedure IF EXISTS `daoru_jd_pinpai`;

DELIMITER $$
USE `locoy`$$
CREATE DEFINER=`root`@`%` PROCEDURE `daoru_jd_pinpai`()
BEGIN

INSERT INTO `pinpai` ( `jd_pinpai_id` , `jd_pinpai`, `jd_pinpai_id1`, `jd_pinpai_id0` ) 
	(SELECT DISTINCT
			`daoru_jd`.`jd_pinpai_id`, 
			`daoru_jd`.`jd_pinpai`,
			`daoru_jd`.`jd_pinpai_id1`,
			`daoru_jd`.`jd_pinpai_id0` 
	FROM
			`daoru_jd`
	WHERE
			`daoru_jd`.`jd_pinpai_id` IS NOT NULL
	)
	ON DUPLICATE KEY UPDATE 
			`jd_pinpai`= `daoru_jd`.`jd_pinpai`;

END$$

DELIMITER ;