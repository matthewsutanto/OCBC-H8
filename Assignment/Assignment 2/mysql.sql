CREATE DATABASE db_bank;
USE db_bank;
CREATE TABLE productlines(
	productLine VARCHAR(10) PRIMARY KEY,
	textDescription VARCHAR(50) NULL,
	htmlDescription VARCHAR(100) NULL,
	image VARCHAR(100) null
);

CREATE TABLE products(
	productCode VARCHAR(10) PRIMARY KEY,
	productName VARCHAR(20) NULL,
	productLine VARCHAR(10) NULL,
	productScale int NULL,
	productVendor VARCHAR(30) NULL,
	productDescription VARCHAR(100) NULL,
	quantityInStock INT NULL,
	buyPrice INT NULL,
	MSRP INT NULL,
	FOREIGN KEY (productLine) REFERENCES productlines(productLine)
);


CREATE TABLE offices(
	officeCode VARCHAR(10) PRIMARY KEY,
	city VARCHAR(20) NULL,
	phone VARCHAR(20) null,
	addressLine1 VARCHAR(50) NULL,
	addressLine2 VARCHAR(50) NULL,
	state VARCHAR(20) NULL,
	country VARCHAR(30) NULL,
	postalCode VARCHAR(20) NULL,
	territory VARCHAR(30) NULL
);

CREATE TABLE employees(
	employeeNumber VARCHAR(10) PRIMARY KEY,
	lastName VARCHAR(20) NULL,
	firstName VARCHAR(20) NULL,
	extension VARCHAR(10) NULL,
	email VARCHAR(50) NULL,
	officeCode VARCHAR(10) NULL,
	reportsTo VARCHAR(10) NULL,
	jobTitle VARCHAR(20) NULL,
	FOREIGN KEY (officeCode) REFERENCES offices(officeCode),
	FOREIGN KEY (reportsTo) REFERENCES employees(employeeNumber)
);

CREATE TABLE customers(
	customerNumber VARCHAR(10) PRIMARY KEY,
	customerName VARCHAR(40) NULL,
	contactLastName VARCHAR(20) NULL,
	contactFirstName VARCHAR(20) NULL,
	phone VARCHAR(20) NULL,
	addressLine1 VARCHAR(50) NULL,
	addressLine2 VARCHAR(50) NULL,
	city VARCHAR(20) NULL,
	state VARCHAR(20) NULL,
	postalCode VARCHAR(20) NULL,
	country VARCHAR(30) NULL,
	salesRepEmployeeNumber VARCHAR(10) NULL,
	creditLimit INT NULL,
	FOREIGN KEY (salesRepEmployeeNumber) REFERENCES employees(employeeNumber)
);

CREATE TABLE payments(
	customerNumber VARCHAR(10),
	checkNumber VARCHAR(10),
	paymentDate DATE NULL,
	amount INT NULL,
	PRIMARY KEY (customerNumber, checkNumber),
	FOREIGN KEY (customerNumber) REFERENCES customers(customerNumber)
);

CREATE TABLE orders(
	orderNumber VARCHAR(10) PRIMARY KEY,
	orderDate DATE NULL,
	requiredDate DATE NULL,
	shippedDate DATE NULL,
	status VARCHAR(10) NULL,
	comments VARCHAR(50) NULL,
	customerNumber VARCHAR(10) NULL,
	FOREIGN KEY (customerNumber) REFERENCES customers(customerNumber)
);

CREATE TABLE orderdetails(
	orderNumber VARCHAR(10),
	productCode VARCHAR(10),
	quantityOrdered INT NULL,
	priceEach INT NULL,
	orderLineNumber INT NULL,
	PRIMARY KEY (orderNumber, productCode),
	FOREIGN KEY (orderNumber) REFERENCES orders(orderNumber),
	FOREIGN KEY (productCode) REFERENCES products(productCode)
);

--Offices
INSERT INTO offices VALUES('000001','Bandung','022-540142','TCI Blok A Nomor 32', 'TCI Blok B Nomor 45', 'Jawa Barat', 'Indonesia', '42423', 'Jawa');
INSERT INTO offices VALUES('000002','Jakarta','021-540128','Jalan kemayoran nomor 2', 'Tanjung Duren Nomor 28', 'DKI Jakarta', 'Indonesia', '52622', 'Jawa');
INSERT INTO offices VALUES('000003','Surabaya','023-54257','Jalan Ahmad Yani nomor 61', 'Jalan Darmo nomor 8', 'Jawa Timur', 'Indonesia', '42341', 'Jawa');
INSERT INTO offices VALUES('000004','Semarang','024-43280','Jalan Citarum nomor 87', 'Jalan Dr. Cipto nomor 35', 'Jawa Tengah', 'Indonesia', '43215', 'Jawa');
INSERT INTO offices VALUES('000005','Makassar','027-43157','Jalan Sultan Hasanudin nomor 51', 'Jalan Bebas nomor 98', 'Sulawesi Selatan', 'Indonesia', '78941', 'Sulawesi');

--Employee
INSERT INTO employees(employeeNumber, lastName, firstName, extension, email, officeCode, jobTitle) VALUES('C000001', 'Ronaldo', 'Cristiano', 'tst', 'ronaldo@gmail.com', '000001', 'Manager');
INSERT INTO employees VALUES('C000002', 'Andi', 'Rudi', 'tst', 'rudi@gmail.com', '000001', 'C000001', 'Staff Keuangan');
INSERT INTO employees VALUES('C000003', 'Sutomo', 'Roni', 'tst', 'roni@gmail.com', '000001', 'C000001', 'Staff IT');
INSERT INTO employees VALUES('C000004', 'Vinales', 'Lorey', 'tst', 'lorey@gmail.com', '000001', 'C000001', 'Staf HRD');
INSERT INTO employees VALUES('C000005', 'Korpus', 'Wayne', 'tst', 'wayne@gmail.com', '000001', 'C000001', 'Staff Kasir');
INSERT INTO employees(employeeNumber, lastName, firstName, extension, email, officeCode, jobTitle) VALUES('C000006', 'Messi', 'Lionel', 'tst', 'messi@gmail.com', '000002', 'Manager');
INSERT INTO employees VALUES('C000007', 'Sudi', 'Anto', 'tst', 'anto@gmail.com', '000002', 'C000006', 'Staff Keuangan');
INSERT INTO employees VALUES('C000008', 'Rosero', 'Duban', 'tst', 'duban@gmail.com', '000002', 'C000006', 'Staff IT');
INSERT INTO employees VALUES('C000009', 'De', 'Roon', 'tst', 'roon@gmail.com', '000002', 'C000006', 'Staf HRD');
INSERT INTO employees VALUES('C000010', 'Rooney', 'Wayne', 'tst', 'rooney@gmail.com', '000002', 'C000006', 'Staff Kasir');

--Customers
INSERT INTO CUSTOMERS VALUES('B000001', 'Andi Setyo', 'Setyo', 'Andi', '083125315913', 'TCI blok H nomor 75', 'TKI blok K nomor 89', 'Bandung', 'Jawa Barat', '24123', 'Indonesia', 'C000005', 1000000);
INSERT INTO CUSTOMERS VALUES('B000002', 'Fabio Gorgolini', 'Gorgolini', 'Fabio', '08351571324', 'TCI blok L nomor 55', 'TKI blok O nomor 15', 'Bandung', 'Jawa Barat', '24123', 'Indonesia', 'C000005', 2000000);
INSERT INTO CUSTOMERS VALUES('B000003', 'Enea Bastia', 'Bastia', 'Enea', '083124312412', 'TCI blok O nomor 18', 'TKI blok G nomor 67', 'Bandung', 'Jawa Barat', '24123', 'Indonesia', 'C000005', 1500000);
INSERT INTO CUSTOMERS VALUES('B000004', 'Lorenzo Salvadori', 'Salvadori', 'Lorenzo', '085312018', 'TCI blok N nomor 31', 'TKI blok T nomor 76', 'Bandung', 'Jawa Barat', '24123', 'Indonesia', 'C000005', 2500000);
INSERT INTO CUSTOMERS VALUES('B000005', 'Remy Gardner', 'Gardner', 'Remy', '08431508510', 'TCI blok Y nomor 35', 'TKI blok X nomor 89', 'Bandung', 'Jawa Barat', '24123', 'Indonesia', 'C000005', 3500000);
INSERT INTO CUSTOMERS VALUES('B000006', 'Raul Fernandez', 'Fernandez', 'Raul', '0853120182', 'TCI blok W nomor 56', 'TKI blok D nomor 72', 'Bandung', 'Jawa Barat', '24123', 'Indonesia', 'C000010', 4000000);
INSERT INTO CUSTOMERS VALUES('B000007', 'Valentino Rossi', 'Rossi', 'Valentino', '084531541', 'TCI blok R nomor 12', 'TKI blok I nomor 05', 'Bandung', 'Jawa Barat', '24123', 'Indonesia', 'C000010', 5500000);
INSERT INTO CUSTOMERS VALUES('B000008', 'Roy Fernandez', 'Fernandez', 'Roy', '0843151225', 'TCI blok N nomor 35', 'TKI blok V nomor 78', 'Bandung', 'Jawa Barat', '24123', 'Indonesia', 'C000010', 6000000);
INSERT INTO CUSTOMERS VALUES('B000009', 'Jorge Lorenzo', 'Lorenzo', 'Jorge', '083431878532', 'TCI blok A nomor 45', 'TKI blok M nomor 07', 'Bandung', 'Jawa Barat', '24123', 'Indonesia', 'C000010', 6500000);
INSERT INTO CUSTOMERS VALUES('B000010', 'Paul Pogba', 'Pogba', 'Paul', '0884314252', 'TCI blok Z nomor 58', 'TKI blok T nomor 67', 'Bandung', 'Jawa Barat', '24123', 'Indonesia', 'C000010', 7000000);

--Payments
INSERT INTO PAYMENTS VALUES('B000001','P000001', '10-8-2021', 1000000);
INSERT INTO PAYMENTS VALUES('B000002','P000001', '10-15-2021', 1500000);
INSERT INTO PAYMENTS VALUES('B000003','P000001', '6-17-2021', 2000000);
INSERT INTO PAYMENTS VALUES('B000004','P000001', '6-15-2021', 2500000);
INSERT INTO PAYMENTS VALUES('B000005','P000001', '2-25-2021', 3000000);
INSERT INTO PAYMENTS VALUES('B000006','P000001', '1-18-2021', 3500000);
INSERT INTO PAYMENTS VALUES('B000007','P000001', '7-30-2021', 4000000);
INSERT INTO PAYMENTS VALUES('B000008','P000001', '2-22-2021', 4500000);
INSERT INTO PAYMENTS VALUES('B000009','P000001', '5-31-2021', 5000000);
INSERT INTO PAYMENTS VALUES('B000010','P000001', '4-29-2021', 5500000);

--orders
INSERT INTO ORDERS VALUES('O0000001', '10-8-2021', '10-11-2021', '10-9-2021', 'Active', '123', 'B000001');
INSERT INTO ORDERS VALUES('O0000002', '10-15-2021', '10-18-2021', '10-16-2021', 'Active', '456', 'B000002');
INSERT INTO ORDERS VALUES('O0000003', '6-17-2021', '6-20-2021', '6-18-2021', 'Finish', '789', 'B000003');
INSERT INTO ORDERS VALUES('O0000004', '6-15-2021', '6-18-2021', '6-16-2021', 'Finish', '012', 'B000004');
INSERT INTO ORDERS VALUES('O0000005', '2-25-2021', '2-28-2021', '2-26-2021', 'Finish', '345', 'B000005');
INSERT INTO ORDERS VALUES('O0000006', '1-18-2021', '1-21-2021', '1-19-2021', 'Active', '678', 'B000006');
INSERT INTO ORDERS VALUES('O0000007', '7-30-2021', '8-2-2021', '7-31-2021', 'Finish', '901', 'B000007');
INSERT INTO ORDERS VALUES('O0000008', '2-22-2021', '2-25-2021', '2-23-2021', 'Finish', '234', 'B000008');
INSERT INTO ORDERS VALUES('O0000009', '5-31-2021', '6-3-2021', '6-1-2021', 'Finish', '567', 'B000009');
INSERT INTO ORDERS VALUES('O0000010', '4-29-2021', '5-2-2021', '4-30-2021', 'Finish', '890', 'B000010');

--productline
INSERT INTO PRODUCTLINES VALUES('PO000001', 'Mobil', 'Ini Mobil', 'D:/Gambar/Mobil');
INSERT INTO PRODUCTLINES VALUES('PO000002', 'Motor', 'Ini Motor', 'D:/Gambar/Motor');
INSERT INTO PRODUCTLINES VALUES('PO000003', 'Sepeda', 'Ini Sepeda', 'D:/Gambar/Sepeda');
INSERT INTO PRODUCTLINES VALUES('PO000004', 'Mobil Listrik', 'Ini Mobil Listrik', 'D:/Gambar/MobilListrik');
INSERT INTO PRODUCTLINES VALUES('PO000005', 'Motor Listrik', 'Ini Motor Listrik', 'D:/Gambar/MotorListrik');

--products
INSERT INTO PRODUCTS VALUES('P000001', 'Mobil Brio', 'PO000001', 20, 'Honda', 'Ini mobil Honda Brio', 200, 200000000, 195000000);
INSERT INTO PRODUCTS VALUES('P000002', 'Mobil Calya', 'PO000001', 30, 'Toyota', 'Ini mobil Honda Toyota', 200, 190000000, 185000000);
INSERT INTO PRODUCTS VALUES('P000003', 'Motor MX King', 'PO000002', 35, 'Yamaha', 'Ini motor Yamaha MX King', 300, 24000000, 23500000);
INSERT INTO PRODUCTS VALUES('P000004', 'Motor Mio', 'PO000002', 40, 'Yamaha', 'Ini motor Yamaha Mio', 300, 16000000, 15000000);
INSERT INTO PRODUCTS VALUES('P000005', 'Sepeda Polygon Sports X', 'PO000003', 50, 'Polygon', 'Ini sepeda Polygon Sports X', 200, 3000000, 2700000);
INSERT INTO PRODUCTS VALUES('P000006', 'Sepeda BMX 200', 'PO000003', 50, 'Wimcycle', 'Ini sepeda BMX 300', 200, 2000000, 1900000);
INSERT INTO PRODUCTS VALUES('P000007', 'Motor Vario Listrik', 'PO000004', 50, 'Honda', 'Ini motor Honda Vario Listrik', 300, 25000000, 24000000);
INSERT INTO PRODUCTS VALUES('P000008', 'Motor Mio Listrik', 'PO000004', 50, 'Yamaha', 'Ini motor Yamaha Mio Listrik', 300, 20000000, 19000000);
INSERT INTO PRODUCTS VALUES('P000009', 'Mobil Kona', 'PO000005', 50, 'Hyundai', 'Ini mobil Hyundai Kona', 300, 500000000, 450000000);
INSERT INTO PRODUCTS VALUES('P000010', 'Mobil Tesla X', 'PO000005', 50, 'Tesla', 'Ini mobil Tesla X', 300, 1000000000, 1000000000);

--orderdetails
INSERT INTO ORDERDETAILS VALUES('O0000001', 'P000001', 20, 200000000, 1);
INSERT INTO ORDERDETAILS VALUES('O0000001', 'P000002', 30, 190000000, 2);
INSERT INTO ORDERDETAILS VALUES('O0000002', 'P000003', 40, 24000000, 3);
INSERT INTO ORDERDETAILS VALUES('O0000002', 'P000004', 50, 16000000, 4);
INSERT INTO ORDERDETAILS VALUES('O0000003', 'P000005', 60, 3000000, 5);
INSERT INTO ORDERDETAILS VALUES('O0000003', 'P000006', 70, 2000000, 6);
INSERT INTO ORDERDETAILS VALUES('O0000004', 'P000007', 40, 25000000, 7);
INSERT INTO ORDERDETAILS VALUES('O0000004', 'P000008', 50, 20000000, 8);
INSERT INTO ORDERDETAILS VALUES('O0000005', 'P000009', 20, 500000000, 9);
INSERT INTO ORDERDETAILS VALUES('O0000005', 'P000010', 10, 1000000000, 10);

INSERT INTO ORDERDETAILS VALUES('O0000006', 'P000001', 15, 200000000, 1);
INSERT INTO ORDERDETAILS VALUES('O0000006', 'P000002', 25, 190000000, 2);
INSERT INTO ORDERDETAILS VALUES('O0000007', 'P000003', 35, 24000000, 3);
INSERT INTO ORDERDETAILS VALUES('O0000007', 'P000004', 45, 16000000, 4);
INSERT INTO ORDERDETAILS VALUES('O0000008', 'P000005', 55, 3000000, 5);
INSERT INTO ORDERDETAILS VALUES('O0000008', 'P000006', 65, 2000000, 6);
INSERT INTO ORDERDETAILS VALUES('O0000009', 'P000007', 35, 25000000, 7);
INSERT INTO ORDERDETAILS VALUES('O0000009', 'P000008', 45, 20000000, 8);
INSERT INTO ORDERDETAILS VALUES('O0000010', 'P000009', 15, 500000000, 9);
INSERT INTO ORDERDETAILS VALUES('O0000010', 'P000010', 5, 1000000000, 10);

SELECT p.productName, SUM(o.quantityOrdered) AS quantityordered FROM products p INNER JOIN orderdetails o ON p.productCode = o.productCode GROUP BY p.productCode, p.productName ORDER BY quantityOrdered ASC;
SELECT c.customerName, p.productName ,od.quantityOrdered FROM customers c INNER JOIN orders o ON c.customerNumber = o.customerNumber INNER JOIN orderdetails od ON o.orderNumber = od.orderNumber INNER JOIN products p ON p.productCode = od.productCode;
SELECT c.customerName, e.lastName AS employeeName, o.city FROM customers c INNER JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber INNER JOIN offices o ON e.officeCode = o.officeCode;
SELECT pl.textDescription, SUM(o.quantityOrdered) AS qtySale FROM productlines pl INNER JOIN products p ON pl.productLine = p.productLine INNER JOIN orderdetails o ON p.productCode = o.productCode GROUP BY pl.productLine, pl.textDescription ORDER BY qtySale DESC;
SELECT c.customerName, p.amount FROM customers c INNER JOIN payments p ON c.customerNumber = p.customerNumber ORDER BY p.amount ASC;