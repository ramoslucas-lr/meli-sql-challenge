INSERT INTO users (is_seller, email, user_name, gender, user_address, birth_date, phone) VALUES
(TRUE, 'user_1@email.com', 'User 1', 'M', 'Rua A, 123', '1980-01-01', '123456789'),
(FALSE, 'user_2@email.com', 'User 2', 'F', 'Rua B, 456', '1990-06-15', '987654321'),
(TRUE, 'user_3@email.com', 'User 3', 'M', 'Rua C, 789', '1985-12-25', '555555555'),
(FALSE, 'user_4@email.com', 'User 4', 'F', 'Rua D, 101', '1995-07-28', '111111111'),
(TRUE, 'user_5@email.com', 'User 5', 'M', 'Rua E, 202', '1975-10-01', '999999999'),
(TRUE, 'user_6@email.com', 'User 6', 'M', 'Rua F, 202', CURRENT_DATE, '999999999'),
(TRUE, 'user_7@email.com', 'User 7','M','Rua G, 303', '1989-01-01','1122334455'),
(TRUE, 'user_8@email.com', 'User 8','F', 'Rua H, 404', '1990-02-02','2233445566'),
(TRUE, 'user_9@email.com','User 9', 'M', 'Rua I, 505', CURRENT_DATE,'3344556677');


INSERT INTO category (category_name, category_path) VALUES
('Tecnologia', '/Tecnologia'),
('Celulares', '/Tecnologia/Celulares');


INSERT INTO item (active, item_name, unit_price, seller_id, category_id) VALUES
(TRUE, 'Smartphone X', 1200.00, 9, 2),
(TRUE, 'Smartphone Y', 1500.00, 6, 2),
(TRUE, 'Smartphone Z', 2000.00, 6, 2),
(TRUE, 'Smartphone A', 2500.00, 1, 2),
(TRUE, 'Smartphone B', 3000.00, 6, 2),
(TRUE, 'Smartphone C', 3500.00, 3, 2);

INSERT INTO orders (item_quantity, order_amount, buyer_id, item_id, seller_id, created_at) VALUES
(1, 2500.00, 1, 1, 1, '2020-01-10 12:00:00'),
(1, 2000.00, 2, 2, 3, '2020-01-11 12:00:00'),
(1, 1200.00, 3, 3, 1, '2020-01-15 12:00:00'),
(2, 3000.00, 4, 4, 6, '2020-01-20 12:00:00'),
(1, 2000.00, 5, 5, 3, '2020-02-15 12:00:00'),
(1, 1200.00, 6, 6, 1, '2020-03-15 12:00:00'),
(1, 1200.00, 7, 1, 5, '2020-04-15 12:00:00'),
(1, 1200.00, 8, 1, 8, '2020-05-15 12:00:00'),
(1, 1200.00, 9, 2, 1, '2020-06-15 12:00:00'),
(2, 4000.00, 1, 2, 3, '2020-07-20 12:00:00'),
(1, 2500.00, 2, 3, 5, '2020-01-01 12:00:00'),
(2, 6000.00, 3, 3, 6, '2020-01-02 12:00:00'),
(1, 3500.00, 4, 4, 7, '2020-02-01 12:00:00'),
(2, 7000.00, 5, 4, 5, '2020-03-01 12:00:00'),
(1, 3000.00, 6, 5, 6, '2020-04-01 12:00:00'),
(1, 3500.00, 7, 5, 7, '2020-05-01 12:00:00');
