-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

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

END