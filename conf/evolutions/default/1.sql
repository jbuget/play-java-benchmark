# Users schema

# --- !Ups

CREATE TABLE Product (
    id BIGINT(8) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price BIGINT(8) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO Product (name, price) VALUES ('Product 1', 340);
INSERT INTO Product (name, price) VALUES ('Product 2', 310);
INSERT INTO Product (name, price) VALUES ('Product 3', 410);
INSERT INTO Product (name, price) VALUES ('Product 4', 420);
INSERT INTO Product (name, price) VALUES ('Product 5', 480);
INSERT INTO Product (name, price) VALUES ('Product 6', 20);
INSERT INTO Product (name, price) VALUES ('Product 7', 60);
INSERT INTO Product (name, price) VALUES ('Product 8', 390);
INSERT INTO Product (name, price) VALUES ('Product 9', 290);
INSERT INTO Product (name, price) VALUES ('Product 10', 310);
INSERT INTO Product (name, price) VALUES ('Product 11', 60);
INSERT INTO Product (name, price) VALUES ('Product 12', 270);
INSERT INTO Product (name, price) VALUES ('Product 13', 180);
INSERT INTO Product (name, price) VALUES ('Product 14', 230);
INSERT INTO Product (name, price) VALUES ('Product 15', 220);
INSERT INTO Product (name, price) VALUES ('Product 16', 150);
INSERT INTO Product (name, price) VALUES ('Product 17', 220);
INSERT INTO Product (name, price) VALUES ('Product 18', 260);
INSERT INTO Product (name, price) VALUES ('Product 19', 330);
INSERT INTO Product (name, price) VALUES ('Product 20', 450);
INSERT INTO Product (name, price) VALUES ('Product 21', 150);
INSERT INTO Product (name, price) VALUES ('Product 22', 60);
INSERT INTO Product (name, price) VALUES ('Product 23', 240);
INSERT INTO Product (name, price) VALUES ('Product 24', 10);
INSERT INTO Product (name, price) VALUES ('Product 25', 110);
INSERT INTO Product (name, price) VALUES ('Product 26', 400);
INSERT INTO Product (name, price) VALUES ('Product 27', 390);
INSERT INTO Product (name, price) VALUES ('Product 28', 470);
INSERT INTO Product (name, price) VALUES ('Product 29', 160);
INSERT INTO Product (name, price) VALUES ('Product 30', 390);
INSERT INTO Product (name, price) VALUES ('Product 31', 130);
INSERT INTO Product (name, price) VALUES ('Product 32', 440);
INSERT INTO Product (name, price) VALUES ('Product 33', 290);
INSERT INTO Product (name, price) VALUES ('Product 34', 80);
INSERT INTO Product (name, price) VALUES ('Product 35', 260);
INSERT INTO Product (name, price) VALUES ('Product 36', 420);
INSERT INTO Product (name, price) VALUES ('Product 37', 410);
INSERT INTO Product (name, price) VALUES ('Product 38', 410);
INSERT INTO Product (name, price) VALUES ('Product 39', 60);
INSERT INTO Product (name, price) VALUES ('Product 40', 100);
INSERT INTO Product (name, price) VALUES ('Product 41', 160);
INSERT INTO Product (name, price) VALUES ('Product 42', 300);
INSERT INTO Product (name, price) VALUES ('Product 43', 370);
INSERT INTO Product (name, price) VALUES ('Product 44', 300);
INSERT INTO Product (name, price) VALUES ('Product 45', 30);
INSERT INTO Product (name, price) VALUES ('Product 46', 100);
INSERT INTO Product (name, price) VALUES ('Product 47', 430);
INSERT INTO Product (name, price) VALUES ('Product 48', 240);
INSERT INTO Product (name, price) VALUES ('Product 49', 170);
INSERT INTO Product (name, price) VALUES ('Product 50', 10);
INSERT INTO Product (name, price) VALUES ('Product 51', 50);
INSERT INTO Product (name, price) VALUES ('Product 52', 400);
INSERT INTO Product (name, price) VALUES ('Product 53', 130);
INSERT INTO Product (name, price) VALUES ('Product 54', 200);
INSERT INTO Product (name, price) VALUES ('Product 55', 330);
INSERT INTO Product (name, price) VALUES ('Product 56', 230);
INSERT INTO Product (name, price) VALUES ('Product 57', 360);
INSERT INTO Product (name, price) VALUES ('Product 58', 480);
INSERT INTO Product (name, price) VALUES ('Product 59', 230);
INSERT INTO Product (name, price) VALUES ('Product 60', 450);
INSERT INTO Product (name, price) VALUES ('Product 61', 110);
INSERT INTO Product (name, price) VALUES ('Product 62', 90);
INSERT INTO Product (name, price) VALUES ('Product 63', 360);
INSERT INTO Product (name, price) VALUES ('Product 64', 30);
INSERT INTO Product (name, price) VALUES ('Product 65', 160);
INSERT INTO Product (name, price) VALUES ('Product 66', 440);
INSERT INTO Product (name, price) VALUES ('Product 67', 110);
INSERT INTO Product (name, price) VALUES ('Product 68', 370);
INSERT INTO Product (name, price) VALUES ('Product 69', 170);
INSERT INTO Product (name, price) VALUES ('Product 70', 290);
INSERT INTO Product (name, price) VALUES ('Product 71', 130);
INSERT INTO Product (name, price) VALUES ('Product 72', 400);
INSERT INTO Product (name, price) VALUES ('Product 73', 40);
INSERT INTO Product (name, price) VALUES ('Product 74', 430);
INSERT INTO Product (name, price) VALUES ('Product 75', 340);
INSERT INTO Product (name, price) VALUES ('Product 76', 430);
INSERT INTO Product (name, price) VALUES ('Product 77', 330);
INSERT INTO Product (name, price) VALUES ('Product 78', 70);
INSERT INTO Product (name, price) VALUES ('Product 79', 180);
INSERT INTO Product (name, price) VALUES ('Product 80', 380);
INSERT INTO Product (name, price) VALUES ('Product 81', 360);
INSERT INTO Product (name, price) VALUES ('Product 82', 320);
INSERT INTO Product (name, price) VALUES ('Product 83', 240);
INSERT INTO Product (name, price) VALUES ('Product 84', 20);
INSERT INTO Product (name, price) VALUES ('Product 85', 440);
INSERT INTO Product (name, price) VALUES ('Product 86', 150);
INSERT INTO Product (name, price) VALUES ('Product 87', 340);
INSERT INTO Product (name, price) VALUES ('Product 88', 80);
INSERT INTO Product (name, price) VALUES ('Product 89', 370);
INSERT INTO Product (name, price) VALUES ('Product 90', 180);
INSERT INTO Product (name, price) VALUES ('Product 91', 390);
INSERT INTO Product (name, price) VALUES ('Product 92', 140);
INSERT INTO Product (name, price) VALUES ('Product 93', 20);
INSERT INTO Product (name, price) VALUES ('Product 94', 240);
INSERT INTO Product (name, price) VALUES ('Product 95', 60);
INSERT INTO Product (name, price) VALUES ('Product 96', 140);
INSERT INTO Product (name, price) VALUES ('Product 97', 450);
INSERT INTO Product (name, price) VALUES ('Product 98', 290);
INSERT INTO Product (name, price) VALUES ('Product 99', 300);
INSERT INTO Product (name, price) VALUES ('Product 100', 300);

# --- !Downs

DROP TABLE Product;