-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------

DELIMITER $$
USE `locoy`$$
CREATE DEFINER=`root`@`%` PROCEDURE `daoru_jd_sp`(IN jd_id VARCHAR(11), jd_jiancheng VARCHAR(255), jd_mingcheng VARCHAR(255))
BEGIN
/*用三个字段测试*/
INSERT INTO `daoru_jd_temp` (`jd_id`, `jd_jiancheng`, `jd_mingcheng`) VALUES (jd_id, jd_jiancheng, jd_mingcheng) ON DUPLICATE KEY UPDATE `jd_jiancheng` = jd_jiancheng;
END$$

DELIMITER ;
