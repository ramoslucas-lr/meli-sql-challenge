INSERT INTO users (is_seller, email, user_name, gender, user_address, birth_date, phone) VALUES
(TRUE, 'vendedor1@email.com', 'Vendedor 1', 'M', 'Rua A, 123', '1980-01-01', '123456789'),
(FALSE, 'comprador1@email.com', 'Comprador 1', 'F', 'Rua B, 456', '1990-06-15', '987654321'),
(TRUE, 'vendedor2@email.com', 'Vendedor 2', 'M', 'Rua C, 789', '1985-12-25', '555555555'),
(FALSE, 'comprador2@email.com', 'Comprador 2', 'F', 'Rua D, 101', '1995-07-28', '111111111'),
(TRUE, 'vendedor3@email.com', 'Vendedor 3', 'M', 'Rua E, 202', '1975-10-01', '999999999'),
(TRUE, 'vendedor4@email.com', 'Vendedor 4', 'M', 'Rua F, 202', '1987-03-25', '999999999'),
(TRUE, 'vendedor5@email.com', 'Vendedor 5','M','Rua G, 303', '1989-01-01','1122334455'),
(TRUE, 'vendedor6@email.com', 'Vendedor 6','F', 'Rua H, 404', '1990-02-02','2233445566'),
(TRUE,'vendedor7@email.com','vendedor 7', 'M', 'Rua I, 505', '1992-03-25','3344556677');

INSERT INTO category (category_name, category_path) VALUES
('Tecnologia', '/tecnologia'),
('Celulares e Telefones', '/tecnologia/celulares_telefones'),
('Celulares e Smartphones', '/tecnologia/celulares_telefones/celulares_smartphones');

INSERT INTO item (active, item_name, unit_price, seller_id, category_id) VALUES
(TRUE, 'Smartphone X', 1200.00, 1, 3),  
(TRUE, 'Smartphone Y', 1500.00, 4, 3),  
(TRUE, 'Smartphone Z', 2000.00, 4, 3),  
(TRUE,'Smartphone A', 2500,5,3),
(TRUE, 'Smartphone B', 3000, 6,3),
(TRUE, 'Smartphone C', 3500, 7,3);


INSERT INTO orders (item_quantity, order_amount, buyer_id, item_id, created_at) VALUES
(2, 3000.00 , 2 , 2 , '2020-01-10 12:00:00'),
(1, 2000, 2, 3, '2020-01-11 12:00:00');

INSERT INTO orders (item_quantity, order_amount, buyer_id, item_id, created_at) VALUES
(1, 1200.00, 4, 1, '2020-01-15 12:00:00'),
(2, 3000.00, 4, 3, '2020-01-20 12:00:00'),
(1, 2000.00, 2, 3, '2020-02-15 12:00:00'),
(1, 1200.00, 2, 1, '2020-03-15 12:00:00'),
(1, 1200.00, 4, 1, '2020-04-15 12:00:00'),
(1, 1200.00, 2, 1, '2020-05-15 12:00:00'),
(1, 1200.00, 4, 1, '2020-06-15 12:00:00'),
(2, 4000.00, 4, 3, '2020-07-20 12:00:00'),
(1,2500.00,4,4,'2020-01-01 12:00:00'),
(2,6000.00,2,5,'2020-01-02 12:00:00'),
(1,3500.00,2,6,'2020-02-01 12:00:00'),
(2,7000.00,2,4,'2020-03-01 12:00:00'),
(1,3000,4,5,'2020-04-01 12:00:00'),
(1,3500,4,6,'2020-05-01 12:00:00');
