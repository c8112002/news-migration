
-- +migrate Up
CREATE TABLE IF NOT EXISTS `sites` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `url` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE,
  UNIQUE INDEX `url_UNIQUE` (`url` ASC) VISIBLE)
ENGINE = InnoDB;

-- +migrate Down
DROP TABLE `sites`;