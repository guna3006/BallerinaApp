USE `temp_db`;
DROP TABLE IF EXISTS `emails`;
CREATE TABLE `emails`(
    `address` VARCHAR(300) NOT NULL,
    `staff_id` VARCHAR(300) NOT NULL,
    PRIMARY KEY (`staff_id`)
    );

INSERT INTO `emails` (`address`,`staff_id`) VALUES 
('guna@me.com','S003'),
('suha@me.com','S002'),
('thiya@me.com','S001');



