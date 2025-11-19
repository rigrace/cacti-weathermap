/*FORWARD*/
use cacti;
DROP TABLE IF EXISTS `weathermap_config`;
CREATE TABLE `weathermap_config`. (
    `id` INT UNSIGNED NOT NULL , 
    `map_id` INT UNSIGNED NOT NULL , 
    `filename` varchar(255),
    `line` varchar(1024),
    PRIMARY KEY (`id`), 
    INDEX `i_wm_map_id` (`map_id`)
) ENGINE = InnoDB; 

/* ROLLBACK
use cacti;
DROP TABLE IF EXISTS `weathermap_config`;
*/
