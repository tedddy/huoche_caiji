USE `locoy`;
DROP procedure IF EXISTS `daoru_jd_leibie`;

DELIMITER $$
USE `locoy`$$
CREATE DEFINER=`root`@`%` PROCEDURE `daoru_jd_leibie`()
BEGIN

INSERT INTO `leibie` ( `jd_leibie_id` , `jd_leibie`, `jd_leibie_id1`, `jd_leibie_id0` ) 
	(SELECT DISTINCT
			`daoru_jd`.`jd_leibie_id`, 
			`daoru_jd`.`jd_leibie`,
			`daoru_jd`.`jd_leibie_id1`,
			`daoru_jd`.`jd_leibie_id0` 
	FROM
			`daoru_jd`
	WHERE
			`daoru_jd`.`jd_leibie_id` IS NOT NULL AND
			`daoru_jd`.`jd_leibie` IS NOT NULL AND
			`daoru_jd`.`jd_leibie_id1` IS NOT NULL AND
			`daoru_jd`.`jd_leibie_id0` IS NOT NULL
	)
	ON DUPLICATE KEY UPDATE 
			`jd_leibie`= `daoru_jd`.`jd_leibie`;

END $$

DELIMITER ;