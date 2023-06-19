-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema PuzzCollectorDB
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `PuzzCollectorDB` ;

-- -----------------------------------------------------
-- Schema PuzzCollectorDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `PuzzCollectorDB` DEFAULT CHARACTER SET utf8 ;
USE `PuzzCollectorDB` ;

-- -----------------------------------------------------
-- Table `PuzzCollectorDB`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `PuzzCollectorDB`.`user` ;

CREATE TABLE IF NOT EXISTS `PuzzCollectorDB`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(25) NOT NULL,
  `password` VARCHAR(70) NOT NULL,
  `icon` VARCHAR(100) NULL,
  `admin` TINYINT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PuzzCollectorDB`.`puzzle`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `PuzzCollectorDB`.`puzzle` ;

CREATE TABLE IF NOT EXISTS `PuzzCollectorDB`.`puzzle` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(150) NOT NULL,
  `price` DOUBLE NOT NULL,
  `image` VARCHAR(100) NOT NULL,
  `type` INT NOT NULL,
  `brand` VARCHAR(45) NOT NULL,
  `links_path` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PuzzCollectorDB`.`communityEvent`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `PuzzCollectorDB`.`communityEvent` ;

CREATE TABLE IF NOT EXISTS `PuzzCollectorDB`.`communityEvent` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(90) NOT NULL,
  `content` VARCHAR(900) NOT NULL,
  `date_published` DATE NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`, `user_id`),
  INDEX `fk_communityEvent_user1_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_communityEvent_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `PuzzCollectorDB`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PuzzCollectorDB`.`mainEvent`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `PuzzCollectorDB`.`mainEvent` ;

CREATE TABLE IF NOT EXISTS `PuzzCollectorDB`.`mainEvent` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(90) NOT NULL,
  `content` VARCHAR(900) NOT NULL,
  `date_published` DATE NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`, `user_id`),
  INDEX `fk_mainEvent_user_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_mainEvent_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `PuzzCollectorDB`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PuzzCollectorDB`.`collection`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `PuzzCollectorDB`.`collection` ;

CREATE TABLE IF NOT EXISTS `PuzzCollectorDB`.`collection` (
  `user_id` INT NOT NULL,
  `puzzle_id` INT NOT NULL,
  `notes` VARCHAR(300) NOT NULL,
  PRIMARY KEY (`user_id`, `puzzle_id`),
  INDEX `fk_collection_puzzle1_idx` (`puzzle_id` ASC) VISIBLE,
  CONSTRAINT `fk_collection_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `PuzzCollectorDB`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_collection_puzzle1`
    FOREIGN KEY (`puzzle_id`)
    REFERENCES `PuzzCollectorDB`.`puzzle` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PuzzCollectorDB`.`wishlist`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `PuzzCollectorDB`.`wishlist` ;

CREATE TABLE IF NOT EXISTS `PuzzCollectorDB`.`wishlist` (
  `user_id` INT NOT NULL,
  `puzzle_id` INT NOT NULL,
  PRIMARY KEY (`user_id`, `puzzle_id`),
  INDEX `fk_wishlist_puzzle1_idx` (`puzzle_id` ASC) VISIBLE,
  CONSTRAINT `fk_wishlist_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `PuzzCollectorDB`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wishlist_puzzle1`
    FOREIGN KEY (`puzzle_id`)
    REFERENCES `PuzzCollectorDB`.`puzzle` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
