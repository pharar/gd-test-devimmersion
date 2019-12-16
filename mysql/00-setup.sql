-- User  Creation
CREATE USER 'dbuser'@'localhost' IDENTIFIED WITH mysql_native_password AS 's75PnmBtkn7L';
GRANT USAGE ON *.* TO 'dbuser'@'localhost' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
-- DB Creation and permissions granting
CREATE DATABASE IF NOT EXISTS `dbuser`;
GRANT ALL PRIVILEGES ON `dbuser`.* TO 'dbuser'@'localhost';

-- Tables creation
CREATE TABLE `dbuser`.`accounts` ( 
    `id` BIGINT NOT NULL AUTO_INCREMENT , 
    `account` INT UNSIGNED NOT NULL , PRIMARY KEY (`id`), UNIQUE `account` (`account`)
) ENGINE = InnoDB COMMENT = 'Account list';

CREATE TABLE `balance` (
  `id` bigint(20) NOT NULL,
  `acctId` bigint(11) NOT NULL,
  `balance` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Balance of the accounts';

-- Foreign key restrictions
ALTER TABLE `balance`
  ADD CONSTRAINT `balance_ibfk_1` FOREIGN KEY (`acctId`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;