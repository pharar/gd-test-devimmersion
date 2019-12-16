-- User  Creation
CREATE USER 'dbuser'@'localhost' IDENTIFIED WITH mysql_native_password AS 's75PnmBtkn7L';
GRANT USAGE ON *.* TO 'dbuser'@'localhost' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
-- DB Creation and permissions granting
CREATE DATABASE IF NOT EXISTS `dbuser`;
GRANT ALL PRIVILEGES ON `dbuser`.* TO 'dbuser'@'localhost';

-- Tables generation
-- #########
-- ACCOUNTS
-- #########
CREATE TABLE `dbuser`.`accounts` ( 
    `id` BIGINT NOT NULL AUTO_INCREMENT , 
    `account` INT UNSIGNED NOT NULL , PRIMARY KEY (`id`), UNIQUE `account` (`account`)
) ENGINE = InnoDB COMMENT = 'Account list';

ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account` (`account`);

ALTER TABLE `accounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

INSERT INTO `accounts` (`id`, `account`) VALUES
(1, 23416),
(4, 31038),
(3, 65275),
(2, 82352);

-- #########
-- BALANCES
-- #########
CREATE TABLE `dbuser`.`balances` (
  `id` bigint(20) NOT NULL,
  `acctId` bigint(11) NOT NULL,
  `balance` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Balances of the accounts';

ALTER TABLE `balances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account` (`acctId`);

ALTER TABLE `balances`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

ALTER TABLE `balances`
  ADD CONSTRAINT `balances_ibfk_1` FOREIGN KEY (`acctId`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

INSERT INTO `balances` (`id`, `acctId`, `balance`) VALUES
(1, 1, 2051.52),
(2, 2, -124.44),
(3, 3, 3.55),
(4, 4, -51.22);
