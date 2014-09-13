-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

/*把jd_mjyxhz表中从jd_mjyxhz_01到jd_mjyxhz_10的数据插入到jd_mjyx*/
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
        INSERT INTO `jd_mjyx` (`jd_id`, `jd_mjyx_id`, `jd_mjyx_biaoqian`, `jd_mjyx_shuliang`) 
			(SELECT 
					`jd_id`,
					SUBSTRING_INDEX(`jd_mjyxhz_02`, '~', 1),
					REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_02`, '~', 2),
						CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_02`, '~', 1),
								'~'),
						''),
					REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_02`, '~', 3),
						CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_02`, '~', 2),
								'~'),
						'')
			FROM
					`jd_mjyxhz`)
			ON DUPLICATE KEY UPDATE 
					`jd_mjyx_shuliang`= (
											REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_02`, '~', 3),
												CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_02`, '~', 2),
														'~'),
												'')
										);
        INSERT INTO `jd_mjyx` (`jd_id`, `jd_mjyx_id`, `jd_mjyx_biaoqian`, `jd_mjyx_shuliang`) 
			(SELECT 
					`jd_id`,
					SUBSTRING_INDEX(`jd_mjyxhz_03`, '~', 1),
					REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_03`, '~', 2),
						CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_03`, '~', 1),
								'~'),
						''),
					REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_03`, '~', 3),
						CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_03`, '~', 2),
								'~'),
						'')
			FROM
					`jd_mjyxhz`)
			ON DUPLICATE KEY UPDATE 
					`jd_mjyx_shuliang`= (
											REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_03`, '~', 3),
												CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_03`, '~', 2),
														'~'),
												'')
										);
        INSERT INTO `jd_mjyx` (`jd_id`, `jd_mjyx_id`, `jd_mjyx_biaoqian`, `jd_mjyx_shuliang`) 
			(SELECT 
					`jd_id`,
					SUBSTRING_INDEX(`jd_mjyxhz_04`, '~', 1),
					REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_04`, '~', 2),
						CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_04`, '~', 1),
								'~'),
						''),
					REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_04`, '~', 3),
						CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_04`, '~', 2),
								'~'),
						'')
			FROM
					`jd_mjyxhz`)
			ON DUPLICATE KEY UPDATE 
					`jd_mjyx_shuliang`= (
											REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_04`, '~', 3),
												CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_04`, '~', 2),
														'~'),
												'')
										);
        INSERT INTO `jd_mjyx` (`jd_id`, `jd_mjyx_id`, `jd_mjyx_biaoqian`, `jd_mjyx_shuliang`) 
			(SELECT 
					`jd_id`,
					SUBSTRING_INDEX(`jd_mjyxhz_05`, '~', 1),
					REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_05`, '~', 2),
						CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_05`, '~', 1),
								'~'),
						''),
					REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_05`, '~', 3),
						CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_05`, '~', 2),
								'~'),
						'')
			FROM
					`jd_mjyxhz`)
			ON DUPLICATE KEY UPDATE 
					`jd_mjyx_shuliang`= (
											REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_05`, '~', 3),
												CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_05`, '~', 2),
														'~'),
												'')
										);
        INSERT INTO `jd_mjyx` (`jd_id`, `jd_mjyx_id`, `jd_mjyx_biaoqian`, `jd_mjyx_shuliang`) 
			(SELECT 
					`jd_id`,
					SUBSTRING_INDEX(`jd_mjyxhz_06`, '~', 1),
					REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_06`, '~', 2),
						CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_06`, '~', 1),
								'~'),
						''),
					REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_06`, '~', 3),
						CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_06`, '~', 2),
								'~'),
						'')
			FROM
					`jd_mjyxhz`)
			ON DUPLICATE KEY UPDATE 
					`jd_mjyx_shuliang`= (
											REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_06`, '~', 3),
												CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_06`, '~', 2),
														'~'),
												'')
										);
        INSERT INTO `jd_mjyx` (`jd_id`, `jd_mjyx_id`, `jd_mjyx_biaoqian`, `jd_mjyx_shuliang`) 
			(SELECT 
					`jd_id`,
					SUBSTRING_INDEX(`jd_mjyxhz_07`, '~', 1),
					REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_07`, '~', 2),
						CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_07`, '~', 1),
								'~'),
						''),
					REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_07`, '~', 3),
						CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_07`, '~', 2),
								'~'),
						'')
			FROM
					`jd_mjyxhz`)
			ON DUPLICATE KEY UPDATE 
					`jd_mjyx_shuliang`= (
											REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_07`, '~', 3),
												CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_07`, '~', 2),
														'~'),
												'')
										);
        INSERT INTO `jd_mjyx` (`jd_id`, `jd_mjyx_id`, `jd_mjyx_biaoqian`, `jd_mjyx_shuliang`) 
			(SELECT 
					`jd_id`,
					SUBSTRING_INDEX(`jd_mjyxhz_08`, '~', 1),
					REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_08`, '~', 2),
						CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_08`, '~', 1),
								'~'),
						''),
					REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_08`, '~', 3),
						CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_08`, '~', 2),
								'~'),
						'')
			FROM
					`jd_mjyxhz`)
			ON DUPLICATE KEY UPDATE 
					`jd_mjyx_shuliang`= (
											REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_08`, '~', 3),
												CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_08`, '~', 2),
														'~'),
												'')
										);
        INSERT INTO `jd_mjyx` (`jd_id`, `jd_mjyx_id`, `jd_mjyx_biaoqian`, `jd_mjyx_shuliang`) 
			(SELECT 
					`jd_id`,
					SUBSTRING_INDEX(`jd_mjyxhz_09`, '~', 1),
					REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_09`, '~', 2),
						CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_09`, '~', 1),
								'~'),
						''),
					REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_09`, '~', 3),
						CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_09`, '~', 2),
								'~'),
						'')
			FROM
					`jd_mjyxhz`)
			ON DUPLICATE KEY UPDATE 
					`jd_mjyx_shuliang`= (
											REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_09`, '~', 3),
												CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_09`, '~', 2),
														'~'),
												'')
										);
        INSERT INTO `jd_mjyx` (`jd_id`, `jd_mjyx_id`, `jd_mjyx_biaoqian`, `jd_mjyx_shuliang`) 
			(SELECT 
					`jd_id`,
					SUBSTRING_INDEX(`jd_mjyxhz_10`, '~', 1),
					REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_10`, '~', 2),
						CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_10`, '~', 1),
								'~'),
						''),
					REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_10`, '~', 3),
						CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_10`, '~', 2),
								'~'),
						'')
			FROM
					`jd_mjyxhz`)
			ON DUPLICATE KEY UPDATE 
					`jd_mjyx_shuliang`= (
											REPLACE(SUBSTRING_INDEX(`jd_mjyxhz_10`, '~', 3),
												CONCAT(SUBSTRING_INDEX(`jd_mjyxhz_10`, '~', 2),
														'~'),
												'')
										);										
END