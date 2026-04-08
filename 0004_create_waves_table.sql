USE wave_friend;

DROP TABLE IF EXISTS waves; 

CREATE TABLE waves(
    id INT NOT NULL AUTO_INCREMENT,
    sender_id INT NOT NULL,
    reciever_id INT NOT NULL, 
    wave_time CURRENT_TIMESTAMP NOT NULL
);