DROP DATABASE IF EXISTS carWash_db;
CREATE DATABASE carWash_db;
drop user carWash@localhost;
flush privileges;

CREATE USER 'carWash'@'localhost' IDENTIFIED BY 'senh@1234';

GRANT ALL ON carWash_db.* TO 'carWash'@'localhost';