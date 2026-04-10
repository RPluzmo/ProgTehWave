USE wave_friend;

DROP TABLE IF EXISTS waves; 

CREATE TABLE waves(
    id INT NOT NULL AUTO_INCREMENT,
    sender_id INT NOT NULL,
    reciever_id INT NOT NULL, 
    wave_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP 
    PRIMARY KEY (id),
    CONSTRAINT fk_waves_sender FOREIGN KEY (sender_id) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_waves_receiver FOREIGN KEY (receiver_id) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE
);