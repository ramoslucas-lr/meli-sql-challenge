CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),
    is_seller BOOLEAN,
    email VARCHAR(255),
    user_name VARCHAR(255),
    gender VARCHAR(1),
    user_address VARCHAR(255),
    birth_date DATE,
    phone VARCHAR(20)
);


CREATE TABLE category (
    category_id SERIAL PRIMARY KEY,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),
    category_name VARCHAR(255),
    category_path VARCHAR(255)
);


CREATE TABLE item (
    item_id SERIAL PRIMARY KEY,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),
    active BOOLEAN,
    item_name VARCHAR(255),
    unit_price DECIMAL(10, 2),
    seller_id INT,
    category_id INT,
    FOREIGN KEY (seller_id) REFERENCES users(user_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id)
);


CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),
    item_quantity INT,
    order_amount DECIMAL(10, 2),
    buyer_id INT,
    item_id INT,
    FOREIGN KEY (buyer_id) REFERENCES users(user_id),
    FOREIGN KEY (item_id) REFERENCES item(item_id)
);

CREATE OR REPLACE FUNCTION update_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_users_updated_at
BEFORE UPDATE ON users
FOR EACH ROW
EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_category_updated_at
BEFORE UPDATE ON category
FOR EACH ROW
EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_item_updated_at
BEFORE UPDATE ON item
FOR EACH ROW
EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_orders_updated_at
BEFORE UPDATE ON orders
FOR EACH ROW
EXECUTE FUNCTION update_updated_at();


CREATE INDEX idx_users_is_seller ON users (is_seller);
CREATE INDEX idx_category_name ON category (category_name);
CREATE INDEX idx_item_seller_id ON item (seller_id);
CREATE INDEX idx_item_category_id ON item (category_id);
CREATE INDEX idx_item_active ON item (active);
CREATE INDEX idx_orders_buyer_id ON orders (buyer_id);
CREATE INDEX idx_orders_item_id ON orders (item_id);
CREATE INDEX idx_category_path ON category (category_path);