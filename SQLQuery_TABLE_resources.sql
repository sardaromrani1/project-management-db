-- Table: resources

CREATE TABLE resources(
	resource_id INT PRIMARY KEY IDENTITY(1, 1),
	resource_name VARCHAR(255) NOT NULL,
	role VARCHAR(50),
	hourly_rate DECIMAL(10, 2) DEFAULT 0.00,
	department VARCHAR(100),
	skillset VARCHAR(255),
	weekly_capacity DECIMAL(10, 2) DEFAULT 40.99	-- added field for resource management
);