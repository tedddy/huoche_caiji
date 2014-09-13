-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

/*把jd_mjyxhz表中的数据插入到jd_mjyx*/
CREATE DEFINER=`root`@`%` PROCEDURE `shujuzhengli_mjyx`()
BEGIN
        INSERT INTO `jd_mjyx` (`jd_id`, `jd_mjyx_id`, `jd_mjyx_biaoqian`, `jd_mjyx_shuliang`) 
			(SELECT 
					`jd_id`,
					SUBSTRING_INDEX(`jd_mjyxhz_01`, '~', 1),
					REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_01`, '~', 2),
						CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_01`, '~', 1),
								'~'),
						''),
					REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_01`, '~', 3),
						CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_01`, '~', 2),
								'~'),
						'')
			FROM
					`jd_mjyxhz`)
			ON DUPLICATE KEY UPDATE 
					`jd_mjyx_shuliang`= (
											REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_01`, '~', 3),
												CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_01`, '~', 2),
														'~'),
												'')
										);
END