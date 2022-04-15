--Function add vehicle
----------------------------------------
CREATE OR REPLACE FUNCTION add_vehicle(
	_vehicle_id INTEGER,
	_make VARCHAR,
	_model VARCHAR,
	_vehicle_year VARCHAR,
	_milage NUMERIC,
	_for_sale VARCHAR)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO vehicle
	VALUES(_vehicle_id, _make, _model, _vehicle_year, _milage, _for_sale);
END;
$MAIN$
LANGUAGE plpgsql;
	
SELECT add_vehicle(3, 'kia', 'soul', '2015', 30000, 'yes')

SELECT*
FROM vehicle;
				   
--Function add customer
----------------------------------------				   
CREATE OR REPLACE FUNCTION add_customer(
	_customer_id INTEGER,
	_first_name VARCHAR,
	_last_name VARCHAR,
	_address VARCHAR,
	_billing_info VARCHAR)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO customer
	VALUES(_customer_id, _first_name, _last_name, _address, _billing_info);
END;
$MAIN$
LANGUAGE plpgsql;
	
SELECT add_customer(4,'Eren','Yeager','121 Main st,Chicago,IL','1010-2020-3030-4040 333 05/26') 

SELECT add_customer(5,'Armin','Arlet','120 Main St,Chicago,IL','2020-3030-4040-5050 010 10/24')

SELECT *
FROM customer;