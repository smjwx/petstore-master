INSERT INTO category(title) VALUES ('FISH');
INSERT INTO category(title) VALUES ('DOGS');
INSERT INTO category(title) VALUES ('REPTILES');
INSERT INTO category(title) VALUES ('CATS');
INSERT INTO category(title) VALUES ('BIRDS');

INSERT INTO products(category_id, title, pic, info, price, quantity, sales) VALUES (1,'Angelfish','/images/fish1.gif','Salt Water fish from Australia', 6.0, 10, 0);
INSERT INTO products(category_id, title, pic, info, price, quantity, sales) VALUES (1,'Tiger Shark','/images/fish4.gif','Salt Water fish from Australia', 7.0, 23, 3);
INSERT INTO products(category_id, title, pic, info, price, quantity, sales) VALUES (1, 'Koi','/images/fish3.gif','Fresh Water fish from Japan', 6.0, 10, 0);
INSERT INTO products(category_id, title, pic, info, price, quantity, sales) VALUES (1, 'Goldfish','/images/fish2.gif','Fresh Water fish from China', 6.0, 10, 0);
INSERT INTO products(category_id, title, pic, info, price, quantity, sales) VALUES (2,'Bulldog','/images/dog2.gif','Friendly dog from England', 6.0, 10, 0);
INSERT INTO products(category_id, title, pic, info, price, quantity, sales) VALUES (2,'Poodle','/images/dog6.gif','Cute dog from France', 6.0, 10, 0);
INSERT INTO products(category_id, title, pic, info, price, quantity, sales) VALUES (2, 'Dalmation','/images/dog5.gif','Great dog for a Fire Station', 6.0, 10, 0);
INSERT INTO products(category_id, title, pic, info, price, quantity, sales) VALUES (2, 'Golden Retriever','/images/dog1.gif','Great family dog', 6.0, 10, 0);
INSERT INTO products(category_id, title, pic, info, price, quantity, sales) VALUES (2, 'Labrador Retriever','/images/dog5.gif','Great hunting dog', 6.0, 10, 0);
INSERT INTO products(category_id, title, pic, info, price, quantity, sales) VALUES (2, 'Chihuahua','/images/dog4.gif','Great companion dog', 6.0, 10, 0);
INSERT INTO products(category_id, title, pic, info, price, quantity, sales) VALUES (3,'Rattlesnake','/images/snake1.gif','Doubles as a watch dog', 6.0, 10, 0);
INSERT INTO products(category_id, title, pic, info, price, quantity, sales) VALUES (3,'Iguana','/images/lizard1.gif','Friendly green friend', 6.0, 10, 0);
INSERT INTO products(category_id, title, pic, info, price, quantity, sales) VALUES (4,'Manx','/images/cat2.gif','Great for reducing mouse populations', 6.0, 10, 0);
INSERT INTO products(category_id, title, pic, info, price, quantity, sales) VALUES (4,'Persian','/images/cat1.gif','Friendly house cat, doubles as a princess', 6.0, 10, 0);
INSERT INTO products(category_id, title, pic, info, price, quantity, sales) VALUES (5,'Amazon Parrot','/images/bird2.gif','Great companion for up to 75 years', 6.0, 10, 0);
INSERT INTO products(category_id, title, pic, info, price, quantity, sales) VALUES (5,'Finch','/images/bird1.gif','Great stress reliever', 6.0, 10, 0);


create view v_product_category as
 select p.id, p.title, price, info, quantity, sales, pic, c.title c_title
 from products p, category c
 where c.id = category_id ;
 
 select * from v_product_category where c_title='fish';


select * from products where title like '%dog%' or info like '%dog%';