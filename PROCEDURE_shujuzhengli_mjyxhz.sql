-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- 把汇总内容分开。示例：在字段里的内容是：内容1|内容|内容|内容|内容|。。。|内容10， 我们把由'|'分隔的10个子内容更新到十个字段中。
-- 用if( , , )函数是基于以下两个原因：1. REPLACE ( abcd, abcd|, '') = abcd，2. 在有些字段里，只有8个子内容。 	
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE DEFINER=`root`@`%` PROCEDURE `shujuzhengli_mjyxhz`()
BEGIN
        UPDATE `jd_mjyxhz` 
SET 
	`jd_mjyxhz_01` = SUBSTRING_INDEX( `jd_mjyxhz` , '|', 1 );
		UPDATE `jd_mjyxhz` 
SET 
    `jd_mjyxhz_02` = IF(REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 2),
            SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 1),
            '') LIKE '%|%',
        REPLACE(REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 2),
                SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 1),
                ''),
            '|',
            ''),
        REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 2),
            SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 1),
            ''));
		UPDATE `jd_mjyxhz` 
SET 
    `jd_mjyxhz_03` = IF(REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 3),
            SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 2),
            '') LIKE '%|%',
        REPLACE(REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 3),
                SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 2),
                ''),
            '|',
            ''),
        REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 3),
            SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 2),
            ''));
		UPDATE `jd_mjyxhz` 
SET 
    `jd_mjyxhz_04` = IF(REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 4),
            SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 3),
            '') LIKE '%|%',
        REPLACE(REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 4),
                SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 3),
                ''),
            '|',
            ''),
        REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 4),
            SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 3),
            ''));
		UPDATE `jd_mjyxhz` 
SET 
    `jd_mjyxhz_05` = IF(REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 5),
            SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 4),
            '') LIKE '%|%',
        REPLACE(REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 5),
                SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 4),
                ''),
            '|',
            ''),
        REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 5),
            SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 4),
            ''));
		UPDATE `jd_mjyxhz` 
SET 
    `jd_mjyxhz_06` = IF(REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 6),
            SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 5),
            '') LIKE '%|%',
        REPLACE(REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 6),
                SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 5),
                ''),
            '|',
            ''),
        REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 6),
            SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 5),
            ''));
		UPDATE `jd_mjyxhz` 
SET 
    `jd_mjyxhz_07` = IF(REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 7),
            SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 6),
            '') LIKE '%|%',
        REPLACE(REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 7),
                SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 6),
                ''),
            '|',
            ''),
        REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 7),
            SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 6),
            ''));
		UPDATE `jd_mjyxhz` 
SET 
    `jd_mjyxhz_08` = IF(REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 8),
            SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 7),
            '') LIKE '%|%',
        REPLACE(REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 8),
                SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 7),
                ''),
            '|',
            ''),
        REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 8),
            SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 7),
            ''));
		UPDATE `jd_mjyxhz` 
SET 
    `jd_mjyxhz_09` = IF(REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 9),
            SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 8),
            '') LIKE '%|%',
        REPLACE(REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 9),
                SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 8),
                ''),
            '|',
            ''),
        REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 9),
            SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 8),
            ''));
		UPDATE `jd_mjyxhz` 
SET 
    `jd_mjyxhz_10` = IF(REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 10),
            SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 9),
            '') LIKE '%|%',
        REPLACE(REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 10),
                SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 9),
                ''),
            '|',
            ''),
        REPLACE(SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 10),
            SUBSTRING_INDEX(`jd_mjyxhz`.`jd_mjyxhz`, '|', 9),
            ''));

END
