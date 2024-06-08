

DROP DATABASE IF EXISTS cardealerships;

Create Database IF NOT exists cardealerships;

Use cardealerships;

Create Table `dealership` (
`dealership_id` INT NOT NUll Auto_Increment,
`name` varchar(50),
`address` varchar(50),
`phone` varchar(12),
Primary Key (`dealership_id`)
);

Create Table `vehicles`(
`vin` INT NOT NULL,
`model` varchar(50),
`make` varchar(50),
`color` varchar(50),
`sold` Bool,
primary key (`vin`)
);

Create Table `inventory`(
`dealership_id` int,
`vin` int
);

Create Table `sales_contracts`(
`sales_id` INT NOT NULL auto_increment,
`vin` int,
`dealership_id` int,
`sales_date` date,
primary key (`sales_id`),
foreign key (`vin`)references vehicles(vin),
foreign key (`dealership_id`) references dealership(dealership_id)
);

-- Truncate all data
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE dealership;
TRUNCATE TABLE vehicles;
TRUNCATE TABLE sales_contracts;
SET FOREIGN_KEY_CHECKS = 1;
TRUNCATE TABLE inventory;

-- Makes data for the tables
insert into dealership values(1, 'Grease Monkeys', '566 Jungle Ave.', '549-349-5430');
insert into dealership values(2, 'J & D Mechanics', '368 Honey Rd.', '972-864-1038');

insert into vehicles values(8751, 'Cona', 'Hyundai', 'Red', false);
insert into vehicles values(5637, 'Prius', 'Toyota', 'Black', true);

insert into inventory values(1, 8751);
insert into inventory values(2, 5637);

insert into sales_contracts values(1, 5637, 1, '2024-06-08');





