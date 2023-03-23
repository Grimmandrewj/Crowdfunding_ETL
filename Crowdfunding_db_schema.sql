DROP TABLE IF EXISTS contacts CASCADE;
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS subcategory CASCADE;
DROP TABLE IF EXISTS campaign CASCADE;

CREATE TABLE contacts (
	contact_id INT PRIMARY KEY, 
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(50) NOT NULL
);

CREATE TABLE category (
	category_id VARCHAR(10) PRIMARY KEY,
	category VARCHAR(30) NOT NULL
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) PRIMARY KEY,
	subcategory VARCHAR(30) NOT NULL
);

CREATE TABLE campaign (
	cf_id INT PRIMARY KEY,
	contact_id INT, 
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR(40) NOT NULL,
	description TEXT NOT NULL,
	goal FLOAT NOT NULL,
	pledge FLOAT NOT NULL,
	outcome VARCHAR(50) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(30) NOT NULL,
	currency VARCHAR(10) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);


SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;