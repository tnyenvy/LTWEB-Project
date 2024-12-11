-- 1. Tạo mới cơ sở dữ liệu

USE LAPTRINHWEB;
GO

-- 2. Tạo bảng role
CREATE TABLE role (
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(50) NOT NULL UNIQUE
);
GO

-- 3. Thêm dữ liệu vào bảng role
INSERT INTO role (name)
VALUES ('Admin'), ('Vendor'), ('Customer'), ('User');
GO

-- 4. Tạo bảng user
CREATE TABLE users (
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(255) NOT NULL,
    email NVARCHAR(255) UNIQUE,
    password NVARCHAR(255),
    phoneNumber NVARCHAR(20),
    address NVARCHAR(255),
    role_id INT,
    status NVARCHAR(50), -- Active, Disabled, etc.
    created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (role_id) REFERENCES role(id)
);
GO

-- 5. Tạo bảng store_location
CREATE TABLE store_location (
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(255) NOT NULL,
    address NVARCHAR(255),
    phoneNumber NVARCHAR(20),
    email NVARCHAR(255) UNIQUE,
    password NVARCHAR(255),
    is_closed BIT DEFAULT 0 
);
GO

-- 6. Tạo bảng products
CREATE TABLE products (
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(255) NOT NULL,
    quantity INT,
    note NVARCHAR(MAX),
    type NVARCHAR(50),
    price DECIMAL(10, 2),
    tag NVARCHAR(255),
    hide BIT DEFAULT 0,
    image NVARCHAR(255),
    sid INT, -- Foreign key tới store_location
    vendor_id INT, -- Foreign key tới user (vendor)
    admin_id INT, -- Foreign key tới user (admin)
    FOREIGN KEY (sid) REFERENCES store_location(id),
    FOREIGN KEY (vendor_id) REFERENCES users(id),
    FOREIGN KEY (admin_id) REFERENCES users(id)
);
GO

-- 7. Tạo bảng customer (bây giờ liên kết với user)
CREATE TABLE customer (
    id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT, -- Foreign key tới user
    disable BIT DEFAULT 0,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
GO

-- 8. Tạo bảng orders
CREATE TABLE orders (
    id INT PRIMARY KEY IDENTITY(1,1),
    cid INT, -- Foreign key tới customer
    create_date DATE,
    process NVARCHAR(50),
    sid INT, -- Foreign key tới store_location
    ship_add NVARCHAR(255),
    cname NVARCHAR(255),
    cphoneNumber NVARCHAR(20),
    FOREIGN KEY (cid) REFERENCES customer(id),
    FOREIGN KEY (sid) REFERENCES store_location(id)
);
GO

-- 9. Tạo bảng order_detail
CREATE TABLE order_detail (
    oid INT, -- Foreign key tới orders
    pid INT, -- Foreign key tới products
    quantity INT,
    note NVARCHAR(MAX),
    price DECIMAL(10, 2),
    PRIMARY KEY (oid, pid),
    FOREIGN KEY (oid) REFERENCES orders(id),
    FOREIGN KEY (pid) REFERENCES products(id)
);
GO

-- 10. Tạo bảng import_good
CREATE TABLE import_good (
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(255) NOT NULL,
    address NVARCHAR(255),
    phoneNumber NVARCHAR(20),
    create_date DATE,
    process NVARCHAR(50),
    sid INT, -- Foreign key tới store_location
    FOREIGN KEY (sid) REFERENCES store_location(id)
);
GO

-- 11. Tạo bảng import_good_detail
CREATE TABLE import_good_detail (
    igid INT, -- Foreign key tới import_good
    pid INT,  -- Foreign key tới products
    quantity INT,
    price DECIMAL(10, 2),
    note NVARCHAR(MAX),
    PRIMARY KEY (igid, pid),
    FOREIGN KEY (igid) REFERENCES import_good(id),
    FOREIGN KEY (pid) REFERENCES products(id)
);