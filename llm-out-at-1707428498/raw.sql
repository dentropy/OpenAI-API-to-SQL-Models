CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

CREATE TABLE Addresses (
    address_id INT PRIMARY KEY,
    customer_id INT,
    address_line1 VARCHAR(100),
    address_line2 VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    unit_price DECIMAL(10, 2)
);

CREATE TABLE OrderDetails (
    order_id INT,
    product_id INT,
    quantity INT,
    total_price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
-- Insert data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '555-123-4567');

-- Insert data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) VALUES
(1, 1, '123 Main St', 'New York', 'NY', '10001'),
(2, 2, '456 Elm St', 'Los Angeles', 'CA', '90001');

-- Insert data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(1, 1, '2022-01-15', 100.00),
(2, 2, '2022-01-20', 150.00);

-- Insert data into Products table
INSERT INTO Products (product_id, product_name, unit_price) VALUES
(1, 'Widget A', 20.00),
(2, 'Widget B', 30.00);

-- Insert data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) VALUES
(1, 1, 2, 40.00),
(1, 2, 1, 30.00),
(2, 2, 3, 90.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) VALUES
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', '111-222-3333'),
(4, 'Emily', 'Davis', 'emily.davis@example.com', '444-555-6666');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) VALUES
(3, 3, '789 Oak St', 'Chicago', 'IL', '60601'),
(4, 4, '101 Pine St', 'San Francisco', 'CA', '94101');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(3, 3, '2022-02-10', 75.00),
(4, 4, '2022-02-15', 200.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) VALUES
(3, 'Widget C', 25.00),
(4, 'Widget D', 40.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) VALUES
(3, 3, 3, 75.00),
(4, 4, 5, 200.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) VALUES
(5, 'Sarah', 'Wilson', `sarah.wilson@example.com', '777-888-9999'),
(6, 'Kevin', 'Lee', 'kevin.lee@example.com', '666-555-4444');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) VALUES
(5, 5, '222 Maple St', 'Boston', 'MA', '02101'),
(6, 6, '333 Cedar St', 'Seattle', 'WA', '98101');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(5, 5, '2022-03-05', 120.00),
(6, 6, '2022-03-10', 90.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) VALUES
(5, 'Widget E', 15.00),
(6, 'Widget F', 35.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) VALUES
(5, 5, 4, 60.00),
(5, 6, 2, 70.00),
(6, 6, 3, 105.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) VALUES
(7, 'Amanda', 'Brown', 'amanda.brown@example.com', '999-888-7777'),
(8, 'Robert', 'Garcia', 'robert.garcia@example.com', '333-222-1111');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) VALUES
(7, 7, '456 Oak St', 'Austin', 'TX', '78701'),
(8, 8, '789 Pine St', 'Denver', 'CO', '80201');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(7, 7, '2022-04-15', 80.00),
(8, 8, '2022-04-20', 150.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) VALUES
(7, 'Widget G', 28.00),
(8, 'Widget H', 42.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) VALUES
(7, 7, 3, 84.00),
(8, 8, 4, 168.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) VALUES
(9, 'Michelle', 'Rodriguez', 'michelle.rodriguez@example.com', '111-222-3333'),
(10, 'Chris', 'Thompson', 'chris.thompson@example.com', '444-555-6666');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) VALUES
(9, 9, '101 Elm St', 'Philadelphia', 'PA', '19101'),
(10, 10, '202 Cedar St', 'Phoenix', 'AZ', '85001');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(9, 9, '2022-05-10', 120.00),
(10, 10, '2022-05-15', 200.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) VALUES
(9, 'Widget I', 25.00),
(10, 'Widget J', 35.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) VALUES
(9, 9, 4, 100.00),
(10, 10, 3, 105.00),
(10, 9, 2, 50.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) VALUES
(11, 'David', 'Wilson', 'david.wilson@example.com', '777-666-5555'),
(12, 'Stephanie', 'Martinez', `stephanie.martinez@example.com', '666-777-8888');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) VALUES
(11, 11, '300 Main St', 'Miami', 'FL', '33101'),
(12, 12, '400 High St', 'Portland', 'OR', '97201');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(11, 11, '2022-06-01', 90.00),
(12, 12, '2022-06-05', 180.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) VALUES
(11, 'Widget K', 20.00),
(12, 'Widget L', 40.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) VALUES
(11, 11, 3, 60.00),
(11, 12, 2, 80.00),
(12, 12, 4, 160.00),
(12, 11, 1, 20.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) VALUES
(13, 'Laura', 'Garcia', 'laura.garcia@example.com', '999-888-7777'),
(14, 'Daniel', 'Kim', 'daniel.kim@example.com', '111-222-3333');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) VALUES
(13, 13, '500 Oak St', 'Austin', 'TX', '78701'),
(14, 14, '600 Pine St', 'Seattle', 'WA', '98101');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(13, 13, '2022-07-10', 80.00),
(14, 14, '2022-07-15', 150.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) VALUES
(13, 'Widget M', 28.00),
(14, 'Widget N', 42.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) VALUES
(13, 13, 3, 84.00),
(14, 14, 4, 168.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) VALUES
(15, 'Angela', 'Baker', 'angela.baker@example.com', '123-456-7890'),
(16, 'Timothy', 'Adams', 'timothy.adams@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) VALUES
(15, 15, '123 Maple St', 'Chicago', 'IL', '60601'),
(16, 16, '456 Elm St', 'Los Angeles', 'CA', '90001');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(15, 15, '2022-08-01', 100.00),
(16, 16, '2022-08-05', 150.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) VALUES
(15, 'Widget X', 25.00),
(16, 'Widget Y', 35.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) VALUES
(15, 15, 4, 100.00),
(16, 16, 3, 105.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) VALUES
(17, 'Maria', 'Chen', 'maria.chen@example.com', '777-888-9999'),
(18, 'Gregory', 'Nguyen', 'gregory.nguyen@example.com', '666-555-4444');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) VALUES
(17, 17, '222 Oak St', 'Boston', 'MA', '02101'),
(18, 18, '333 Cedar St', 'Seattle', 'WA', '98101');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(17, 17, '2022-09-01', 120.00),
(18, 18, '2022-09-15', 200.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) VALUES
(17, 'Widget Z', 15.00),
(18, 'Widget W', 35.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) VALUES
(17, 17, 4, 60.00),
(18, 18, 5, 175.00),
(18, 17, 2, 30.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) VALUES
(19, 'Sophia', 'Liu', `sophia.liu@example.com', '111-222-3333'),
(20, 'Adam', 'Wong', 'adam.wong@example.com', '444-555-6666');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) VALUES
(19, 19, '101 Elm St', 'Philadelphia', 'PA', '19101'),
(20, 20, '202 Cedar St', 'Phoenix', 'AZ', '85001');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(19, 19, '2022-10-01', 90.00),
(20, 20, '2022-10-05', 180.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) VALUES
(19, 'Widget Alpha', 20.00),
(20, 'Widget Beta', 40.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) VALUES
(19, 19, 3, 60.00),
(19, 20, 2, 80.00),
(20, 20, 4, 160.00),
(20, 19, 1, 20.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) VALUES
(21, 'Olivia', 'Gonzalez', 'olivia.gonzalez@example.com', '123-456-7890'),
(22, 'Ethan', 'Parker', 'ethan.parker@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) VALUES
(21, 21, '123 Maple St', 'Chicago', 'IL', '60601'),
(22, 22, '456 Elm St', 'Los Angeles', 'CA', '90001');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(21, 21, '2022-11-01', 130.00),
(22, 22, '2022-11-05', 190.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) VALUES
(21, 'Widget One', 25.00),
(22, 'Widget Two', 35.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) VALUES
(21, 21, 3, 75.00),
(21, 22, 2, 70.00),
(22, 22, 4, 140.00),
(22, 21, 3, 75.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) VALUES
(23, 'Natalie', 'Hernandez', 'natalie.hernandez@example.com', '333-444-5555'),
(24, 'Brandon', 'Lopez', 'brandon.lopez@example.com', '666-777-8888');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) VALUES
(23, 23, '789 Oak St', 'Austin', 'TX', '78701'),
(24, 24, '101 Pine St', 'San Francisco', 'CA', '94101');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(23, 23, '2022-12-01', 170.00),
(24, 24, '2022-12-15', 210.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) VALUES
(23, 'Widget Three', 30.00),
(24, 'Widget Four', 40.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) VALUES
(23, 23, 4, 120.00),
(23, 24, 2, 80.00),
(24, 24, 5, 200.00),
(24, 23, 3, 90.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) VALUES
(25, 'Rachel', 'Ramirez', 'rachel.ramirez@example.com', '123-456-7890'),
(26, 'Nicholas', 'Garcia', 'nicholas.garcia@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) VALUES
(25, 25, '123 Main St', 'Chicago', 'IL', '60601'),
(26, 26, '456 Elm St', 'Los Angeles', 'CA', '90001');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(25, 25, '2023-01-01', 150.00),
(26, 26, '2023-01-15', 190.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) VALUES
(25, 'Widget Five', 25.00),
(26, 'Widget Six', 35.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) VALUES
(25, 25, 3, 75.00),
(25, 26, 2, 70.00),
(26, 26, 4, 140.00),
(26, 25, 3, 75.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) VALUES
(27, 'Hannah', 'Martinez', 'hannah.martinez@example.com', '333-444-5555'),
(28, 'Tyler', 'Nguyen', 'tyler.nguyen@example.com', '666-777-8888');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) VALUES
(27, 27, '789 Oak St', 'Austin', 'TX', '78701'),
(28, 28, '101 Pine St', 'San Francisco', 'CA', '94101');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(27, 27, '2023-02-01', 170.00),
(28, 28, '2023-02-15', 210.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) VALUES
(27, 'Widget Seven', 30.00),
(28, 'Widget Eight', 40.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) VALUES
(27, 27, 4, 120.00),
(27, 28, 2, 80.00),
(28, 28, 5, 200.00),
(28, 27, 3, 90.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) VALUES
(29, 'Grace', 'Kim', 'grace.kim@example.com', '123-456-7890'),
(30, 'William', 'Brown', 'william.brown@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) VALUES
(29, 29, '123 Main St', 'Chicago', 'IL', '60601'),
(30, 30, '456 Elm St', 'Los Angeles', 'CA', '90001');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(29, 29, '2023-03-01', 150.00),
(30, 30, '2023-03-15', 190.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) VALUES
(29, 'Widget Nine', 25.00),
(30, 'Widget Ten', 35.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) VALUES
(29, 29, 3, 75.00),
(29, 30, 2, 70.00),
(30, 30, 4, 140.00),
(30, 29, 3, 75.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(31, 'Lillian', 'Garcia', 'lillian.garcia@example.com', '123-456-7890'),
(32, 'Samuel', 'Rodriguez', `samuel.rodriguez@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(31, 31, '123 Main St', 'Chicago', 'IL', '60601'),
(32, 32, '456 Elm St', 'Los Angeles', 'CA', '90001');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(31, 31, '2023-04-01', 150.00),
(32, 32, '2023-04-15', 190.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(31, 'Widget Eleven', 25.00),
(32, 'Widget Twelve', 35.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(31, 31, 3, 75.00),
(31, 32, 2, 70.00),
(32, 32, 4, 140.00),
(32, 31, 3, 75.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(33, 'Avery', 'Cooper', 'avery.cooper@example.com', '123-456-7890'),
(34, 'Evelyn', 'Flores', 'evelyn.flores@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(33, 33, '123 Main St', 'Chicago', 'IL', '60601'),
(34, 34, '456 Elm St', 'Los Angeles', 'CA', '90001');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(33, 33, '2023-05-01', 150.00),
(34, 34, '2023-05-15', 190.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(33, 'Widget Thirteen', 25.00),
(34, 'Widget Fourteen', 35.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(33, 33, 3, 75.00),
(33, 34, 2, 70.00),
(34, 34, 4, 140.00),
(34, 33, 3, 75.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(35, 'Mia', 'Rivera', 'mia.rivera@example.com', '123-456-7890'),
(36, 'Nathan', 'Long', 'nathan.long@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(35, 35, '123 Oak St', 'Miami', 'FL', '33101'),
(36, 36, '456 Cedar St', 'Orlando', 'FL', '32801');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(35, 35, '2023-06-01', 160.00),
(36, 36, '2023-06-15', 200.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(35, 'Widget Fifteen', 30.00),
(36, 'Widget Sixteen', 40.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(35, 35, 3, 90.00),
(35, 36, 2, 80.00),
(36, 36, 4, 160.00),
(36, 35, 3, 90.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(39, 'Samantha', 'Carter', `samantha.carter@example.com', '123-456-7890'),
(40, 'Daniel', 'Jackson', 'daniel.jackson@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(39, 39, '123 River St', 'Denver', 'CO', '80201'),
(40, 40, '456 Mountain St', 'Colorado Springs', 'CO', '80901');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(39, 39, '2023-08-01', 190.00),
(40, 40, '2023-08-15', 230.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(39, 'Widget Nineteen', 40.00),
(40, 'Widget Twenty', 50.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(39, 39, 3, 120.00),
(39, 40, 2, 100.00),
(40, 40, 4, 200.00),
(40, 39, 3, 120.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(41, 'Sophie', 'Baker', `sophie.baker@example.com', '123-456-7890'),
(42, 'Thomas', 'Gonzalez', 'thomas.gonzalez@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(41, 41, '123 Oak St', 'Orlando', 'FL', '32801'),
(42, 42, '456 Pine St', 'Tampa', 'FL', '33601');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(41, 41, '2023-09-01', 200.00),
(42, 42, '2023-09-15', 240.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(41, 'Widget Twenty One', 45.00),
(42, 'Widget Twenty Two', 55.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(41, 41, 3, 135.00),
(41, 42, 2, 110.00),
(42, 42, 4, 220.00),
(42, 41, 3, 135.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(43, 'David', 'Smith', 'david.smith@example.com', '123-456-7890'),
(44, 'Emma', 'Johnson', 'emma.johnson@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(43, 43, '123 Forest St', 'Seattle', 'WA', '98101'),
(44, 44, '456 Lake St', 'Portland', 'OR', '97201');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(43, 43, '2023-10-01', 260.00),
(44, 44, '2023-10-15', 290.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(43, 'Widget Twenty Three', 50.00),
(44, 'Widget Twenty Four', 60.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(43, 43, 3, 150.00),
(43, 44, 2, 120.00),
(44, 44, 4, 240.00),
(44, 43, 3, 150.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(45, 'Isabella', 'Martinez', 'isabella.martinez@example.com', '123-456-7890'),
(46, 'Anthony', 'Davis', 'anthony.davis@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(45, 45, '123 Green St', 'Denver', 'CO', '80201'),
(46, 46, '456 Red St', 'Colorado Springs', 'CO', '80901');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(45, 45, '2023-11-01', 270.00),
(46, 46, '2023-11-15', 300.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(45, 'Widget Twenty Five', 65.00),
(46, 'Widget Twenty Six', 70.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(45, 45, 3, 195.00),
(45, 46, 2, 140.00),
(46, 46, 4, 280.00),
(46, 45, 3, 195.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(47, 'Aiden', 'Garcia', 'aiden.garcia@example.com', '123-456-7890'),
(48, 'Sofia', 'Chen', `sofia.chen@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(47, 47, '123 Hill St', 'San Francisco', 'CA', '94101'),
(48, 48, '456 Lake St', 'Los Angeles', 'CA', '90001');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(47, 47, '2023-12-01', 190.00),
(48, 48, '2023-12-15', 230.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(47, 'Widget Twenty Seven', 45.00),
(48, 'Widget Twenty Eight', 55.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(47, 47, 3, 135.00),
(47, 48, 2, 110.00),
(48, 48, 4, 220.00),
(48, 47, 3, 135.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(49, 'Madison', 'Wang', 'madison.wang@example.com', '123-456-7890'),
(50, 'Jack', 'Liu', 'jack.liu@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(49, 49, '123 Elm St', 'Atlanta', 'GA', '30301'),
(50, 50, '456 Pine St', 'Miami', 'FL', '33101');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(49, 49, '2024-01-01', 150.00),
(50, 50, '2024-01-15', 190.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(49, 'Widget Twenty Nine', 35.00),
(50, 'Widget Thirty', 40.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(49, 49, 3, 105.00),
(49, 50, 2, 80.00),
(50, 50, 4, 160.00),
(50, 49, 3, 105.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(51, 'Harper', 'Nguyen', 'harper.nguyen@example.com', '123-456-7890'),
(52, 'Evelyn', 'Gonzales', 'evelyn.gonzales@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(51, 51, '123 Oak St', 'Seattle', 'WA', '98101'),
(52, 52, '456 Pine St', 'Portland', 'OR', '97201');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(51, 51, '2024-02-01', 200.00),
(52, 52, '2024-02-15', 240.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(51, 'Widget Thirty One', 40.00),
(52, 'Widget Thirty Two', 45.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(51, 51, 3, 120.00),
(51, 52, 2, 90.00),
(52, 52, 4, 180.00),
(52, 51, 3, 120.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(53, 'Avery', 'Rivera', 'avery.rivera@example.com', '123-456-7890'),
(54, 'Mila', 'Scott', 'mila.scott@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(53, 53, '123 Elm St', 'Los Angeles', 'CA', '90001'),
(54, 54, '456 Oak St', 'San Francisco', 'CA', '94101');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(53, 53, '2024-03-01', 180.00),
(54, 54, '2024-03-15', 220.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(53, 'Widget Thirty Three', 35.00),
(54, 'Widget Thirty Four', 40.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(53, 53, 3, 105.00),
(53, 54, 2, 80.00),
(54, 54, 4, 160.00),
(54, 53, 3, 105.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(55, 'Theodore', 'Perez', 'theodore.perez@example.com', '123-456-7890'),
(56, 'Agnes', 'Torres', 'agnes.torres@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(55, 55, '123 Maple St', 'Chicago', 'IL', '60601'),
(56, 56, '456 Oak St', 'Los Angeles', 'CA', '90001');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(55, 55, '2024-04-01', 130.00),
(56, 56, '2024-04-15', 170.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(55, 'Widget Thirty Five', 25.00),
(56, 'Widget Thirty Six', 30.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(55, 55, 3, 75.00),
(55, 56, 2, 60.00),
(56, 56, 4, 120.00),
(56, 55, 3, 90.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(57, 'Harper', 'Nguyen', 'harper.nguyen@example.com', '123-456-7890'),
(58, 'Scarlett', 'Gonzalez', `scarlett.gonzalez@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(57, 57, '123 Sunny St', 'Los Angeles', 'CA', '90001'),
(58, 58, '456 Mountain St', 'Denver', 'CO', '80201');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(57, 57, '2023-06-03', 175.00),
(58, 58, '2023-06-07', 230.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(57, 'Beach Umbrella', 27.00),
(58, 'Hiking Boots', 78.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(57, 57, 2, 54.00),
(57, 58, 1, 78.00),
(58, 58, 1, 78.00),
(58, 57, 3, 81.00);
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(59, 'Ruby', 'Hernandez', 'ruby.hernandez@example.com', '123-456-7890'),
(60, 'Leo', 'Lopez', 'leo.lopez@example.com', '555-123-4567');

INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(59, 59, '123 Elm St', 'Los Angeles', 'CA', '90001'),
(60, 60, '456 Oak St', 'San Francisco', 'CA', '94101');

INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(59, 59, '2023-06-03', 100.00),
(60, 60, '2023-06-07', 120.00);

INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(59, 'Sunglasses', 50.00),
(60, 'Beach Towel', 30.00);

INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(59, 59, 2, 100.00),
(60, 60, 4, 120.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(61, 'Isaac', 'Ramirez', 'isaac.ramirez@example.com', '123-456-7890'),
(62, 'Elena', 'Diaz', 'elena.diaz@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(61, 61, '123 Oak St', 'Los Angeles', 'CA', '90001'),
(62, 62, '456 Pine St', 'San Francisco', 'CA', '94101');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(61, 61, '2024-05-01', 150.00),
(62, 62, '2024-05-15', 200.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(61, 'Surfboard', 120.00),
(62, 'Sunscreen', 15.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(61, 61, 1, 120.00),
(61, 62, 2, 30.00),
(62, 62, 3, 45.00),
(62, 61, 1, 120.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(63, 'Alice', 'Torres', 'alice.torres@example.com', '123-456-7890'),
(64, 'Victor', 'Cruz', 'victor.cruz@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(63, 63, '123 Palm Ave', 'Miami', 'FL', '33101'),
(64, 64, '456 Ocean Dr', 'Key West', 'FL', '33040');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(63, 63, '2024-06-01', 300.00),
(64, 64, '2024-06-15', 400.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(63, 'Snorkel Gear Set', 150.00),
(64, 'Beach Chair', 50.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(63, 63, 2, 300.00),
(64, 64, 4, 200.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(65, 'Nora', 'Hughes', 'nora.hughes@example.com', '123-456-7890'),
(66, 'Theo', 'Bryant', 'theo.bryant@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(65, 65, '123 Main St', 'Seattle', 'WA', '98101'),
(66, 66, '456 Elm St', 'Portland', 'OR', '97201');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(65, 65, '2024-07-01', 200.00),
(66, 66, '2024-07-15', 150.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(65, 'Kayak', 300.00),
(66, 'Fishing Rod', 75.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(65, 65, 1, 300.00),
(65, 66, 2, 150.00),
(66, 66, 1, 75.00),
(66, 65, 3, 900.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(67, 'Aria', 'Sanchez', 'aria.sanchez@example.com', '123-456-7890'),
(68, 'Liam', 'Wright', 'liam.wright@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(67, 67, '123 Oak St', 'Los Angeles', 'CA', '90001'),
(68, 68, '456 Elm St', 'San Francisco', 'CA', '94101');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(67, 67, '2024-08-01', 120.00),
(68, 68, '2024-08-15', 200.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(67, 'Picnic Basket', 40.00),
(68, 'Portable Grill', 100.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(67, 67, 2, 80.00),
(67, 68, 1, 100.00),
(68, 68, 1, 100.00),
(68, 67, 3, 120.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(69, 'Ava', 'Garcia', 'ava.garcia@example.com', '123-456-7890'),
(70, 'Logan', 'Martinez', 'logan.martinez@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(69, 69, '123 Elm St', 'Miami', 'FL', '33101'),
(70, 70, '456 Oak St', 'Orlando', 'FL', '32801');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(69, 69, '2024-09-01', 150.00),
(70, 70, '2024-09-15', 180.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(69, 'Beach Chair', 30.00),
(70, 'Beach Umbrella', 40.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(69, 69, 4, 120.00),
(69, 70, 3, 120.00),
(70, 70, 2, 80.00),
(70, 69, 3, 90.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(71, 'Mila', 'Thompson', 'mila.thompson@example.com', '123-456-7890'),
(72, 'Hudson', 'Perez', 'hudson.perez@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(71, 71, '123 Main St', 'Seattle', 'WA', '98101'),
(72, 72, '456 Elm St', 'Portland', 'OR', '97201');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(71, 71, '2024-10-01', 250.00),
(72, 72, '2024-10-15', 180.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(71, 'Hiking Boots', 100.00),
(72, 'Backpack', 80.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(71, 71, 2, 200.00),
(71, 72, 2, 160.00),
(72, 72, 1, 120.00),
(72, 71, 2, 200.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(73, 'Evelyn', 'Lopez', 'evelyn.lopez@example.com', '123-456-7890'),
(74, 'Dominic', 'Morgan', 'dominic.morgan@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(73, 73, '123 Pine St', 'Los Angeles', 'CA', '90001'),
(74, 74, '456 Cedar St', 'San Francisco', 'CA', '94101');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(73, 73, '2024-11-01', 150.00),
(74, 74, '2024-11-15', 200.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(73, 'Tent', 100.00),
(74, 'Sleeping Bag', 80.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(73, 73, 1, 100.00),
(73, 74, 2, 160.00),
(74, 74, 1, 80.00),
(74, 73, 1, 100.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(75, 'Madeline', 'Lee', 'madeline.lee@example.com', '123-456-7890'),
(76, 'Gavin', 'Wong', 'gavin.wong@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(75, 75, '123 Oak St', 'New York', 'NY', '10001'),
(76, 76, '456 Elm St', 'Boston', 'MA', '02201');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(75, 75, '2025-01-01', 250.00),
(76, 76, '2025-01-15', 180.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(75, 'Portable Grill', 100.00),
(76, 'Hiking Boots', 80.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(75, 75, 2, 200.00),
(75, 76, 2, 160.00),
(76, 76, 1, 80.00),
(76, 75, 2, 200.00);
-- Insert more data into Customers table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number) 
VALUES
(77, 'Joseph', 'Jones', 'joseph.jones@example.com', '123-456-7890'),
(78, 'Mary', 'Brown', 'mary.brown@example.com', '555-123-4567');

-- Insert more data into Addresses table
INSERT INTO Addresses (address_id, customer_id, address_line1, city, state, postal_code) 
VALUES
(77, 77, '123 Oak St', 'Los Angeles', 'CA', '90001'),
(78, 78, '456 Elm St', 'San Francisco', 'CA', '94101');

-- Insert more data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) 
VALUES
(77, 77, '2025-02-01', 150.00),
(78, 78, '2025-02-15', 200.00);

-- Insert more data into Products table
INSERT INTO Products (product_id, product_name, unit_price) 
VALUES
(77, 'Tent', 100.00),
(78, 'Sleeping Bag', 50.00);

-- Insert more data into OrderDetails table
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price) 
VALUES
(77, 77, 1, 100.00),
(77, 78, 3, 150.00),
(78, 78, 2, 100.00),
(78, 77, 1, 100.00);
