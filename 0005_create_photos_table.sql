USE wave_friend;

DROP TABLE IF EXISTS photos; 

CREATE TABLE photos(
    id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    path VARCHAR(500) NOT NULL,
    PRIMARY KEY (id),
CONSTRAINT fk_photos_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE
);
    