CREATE DATABASE office_database;
USE office_database;
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
	productScale VARCHAR(30) NULL,
	productVendor VARCHAR(30) NULL,
	productDescription VARCHAR(100) NULL,
	quantityInStock INT NULL,
	buyPrice INT NULL,
	MSRP VARCHAR(50) NULL,
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
	orderLineNumber VARCHAR(10) NULL,
	PRIMARY KEY (orderNumber, productCode),
	FOREIGN KEY (orderNumber) REFERENCES orders(orderNumber),
	FOREIGN KEY (productCode) REFERENCES products(productCode)
);