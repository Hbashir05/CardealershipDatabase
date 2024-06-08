-- 1. Get all dealerships
select*from dealership;

-- 2. Find all vehicles from a specific dealership
select*from vehicles where vin in(select vin from inventory where dealership_id =1); 

-- 3. Find a car by VIN
select*from vehicles where vin = 8751;

-- 4. Find the dealership where a car is located by VIN
Select name from dealership where dealership_id = ( Select dealership_id from inventory where vin = 5637); 

-- 5. Find all dealerships that have a certain type of car
select*from dealership where dealership_id in(Select dealership_id from inventory where vin = (Select vin from vehicles where make = 'toyota' and model = 'Prius' and color = 'black'));

-- 6. Get all sales information for a dealership for a specific date range
Select*from sales_contracts where dealership_id = 2 and sales_date between '2024-01-01' and '2024-08-09'; 