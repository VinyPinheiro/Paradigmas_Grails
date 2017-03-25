DROP DATABASE IF EXISTS carWash_db;
CREATE DATABASE carWash_db;

CREATE USER IF NOT EXISTS 'carWash@localhost' IDENTIFIED BY 'senh@1234';

GRANT ALL ON carWash_db.* TO 'carWash'@'localhost';