CREATE TABLE Farmers (
    farmer_id INT PRIMARY KEY,
    farmer_name VARCHAR(100),
    farmer_contact VARCHAR(20),
    farmer_location VARCHAR(255),
    farmer_description TEXT
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    product_description TEXT,
    product_price DECIMAL(10, 2),
    product_quantity INT,
    farmer_id INT,
    category VARCHAR(50), -- New column for product category
    FOREIGN KEY (farmer_id) REFERENCES Farmers(farmer_id)
);


CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_contact VARCHAR(20),
    customer_address VARCHAR(255)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    item_price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);



-- Inserting dummy data into Farmers table
INSERT INTO Farmers (farmer_name, farmer_contact, farmer_location, farmer_description) 
VALUES 
('Down to Earth Chelsea Farmers Market', '123-456-7890', 'Chelsea, New York', 'Organic produce directly sourced from local farmers'),
('Cadena Farms Cunningham Park Farmers Market', '987-654-3210', 'Cunningham Park, New York', 'Fresh fruits and vegetables from Cadena Farms'),
('Salle OrchardsMamaroneck Winter Farmers Market', '456-789-0123', 'Mamaroneck, New York', 'Winter produce and orchard fruits from Salle Orchards'),
('Sierra Nevada Cheese Co. McGolrick Park Farmers Market', '789-012-3456', 'McGolrick Park, New York', 'Artisanal cheeses from Sierra Nevada Cheese Co.'),
('The Farmers Marketplace Morningside Park Farmers Market', '012-345-6789', 'Morningside Park, New York', 'A variety of farm-fresh products available at The Farmers Marketplace'),
('Hudson Farmers Market', '234-567-8901', 'Hudson, New York', 'Local dairy and produce at Hudson Farmers Market'),
('Lake Placid Farmers Market', '567-890-1234', 'Lake Placid, New York', 'Scenic market offering fresh produce and artisanal goods'),
('Lakewood NY Farmers and Artisans Market', '890-123-4567', 'Lakewood, New York', 'Farmers and artisans come together to offer a diverse selection of goods'),
('Montour Falls Farmers Market', '345-678-9012', 'Montour Falls, New York', 'Community market featuring locally grown fruits and vegetables');



INSERT INTO Products (product_name, product_description, product_price, product_quantity, farmer_id, category) 
VALUES 
('Bell pepper', 'Fresh bell peppers', 1.98, 2, 1, 'Vegetables'),
('Banana', 'Ripe bananas', 7.95, 2, 2, 'Fruits'),
('Strawberry', 'Juicy strawberries', 7.95, 2, 3, 'Fruits'),
('Cheese’, ‘Fresh cheese', 9.99, 2, 8, ‘Dairy’),
('Apple', 'Fresh apples', 5.10, 2, 5, 'Fruits'),
('Green peas', 'Tender green peas', 4.26, 2, 6, 'Vegetables'),
('Tomato', 'Ripe tomatoes', 2.66, 2, 7, 'Vegetables'),
('Brocolli', 'Nutritious broccoli', 4.70, 2, 8, 'Vegetables'),
('Carrots', 'Crunchy carrots', 2.44, 2, 9, 'Vegetables'),
('Milk', 'Refreshing milk', 4.54, 2, 10, 'Dairy'),
('Chicken', 'Fresh broiler chicken', 31.99, 4, 11, 'Poultry'),
('Onion', 'Fresh onions', 4.88, NULL, 12, 'Vegetables'),
('Eggs', 'Farm-fresh eggs', 12, NULL, 13, 'Poultry');
