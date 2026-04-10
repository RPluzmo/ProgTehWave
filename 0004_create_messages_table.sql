USE wave_friend;

DROP TABLE IF EXISTS messages; 

CREATE TABLE messages(
    id INT NOT NULL AUTO_INCREMENT,
    bond_id INT NOT NULL,
    sender_id INT NOT NULL,
    text VARCHAR(40) NOT NULL,
    sent_at CURRENT_TIMESTAMP NOT NULL,
    is_read BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (id),
    CONSTRAINT fk_messages_bond FOREIGN KEY (bond_id) REFERENCES bonds(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_messages_sender FOREIGN KEY (sender_id) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE
);