

-- Paulo Gutiérrez Paris


-- Aquellas usadas para insertar, modificar y eliminar un Customer, Staff y Actor.

-- CUSTOMER ------------------------------------------------------

-- insert
insert into customer (
	store_id, first_name, last_name, email, address_id, activebool, active
) values (?, ?, ?, ?, ?, ?, ?);

-- update
update customer set 
	store_id = ?, 
	first_name = ?, 
	last_name = ?, 
	email = ?, 
	address_id = ?, 
	activebool = ?, 
	active = ?
where <condition> ;

-- delete 
delete from customer where <condition>;


-- STAFF --------------------------------------------------------------

-- insert
insert into staff (
	first_name, last_name, address_id, email, store_id, active, username, password, picture
) values (?, ?, ?, ?, ?, ?, ?, ?, ?);

-- update
update staff  set 
	first_name = ?, 
	last_name = ?, 
	address_id = ?, 
	email = ?, 
	store_id = ?, 
	active = ?,
	username = ?,
	password = ?,
	picture = ?
where <condition>;

-- delete 
delete from staff where <condition>;


-- ACTOR ----------------------------------------------------------

insert into actor (
	first_name, last_name
) values (?, ?);

-- update
update actor set 
	first_name = ?, 
	last_name = ?
where <condition>;

-- delete 
delete from actor where <condition>;




-- Listar todas las “rental” con los datos del “customer” dado un año y mes.

select * from rental 
inner join customer on rental.customer_id = customer.customer_id
where to_char(rental_date, 'YYYY') = '?' and to_char(rental_date, 'MM') = '?';





-- Listar Número, Fecha (payment_date) y Total (amount) de todas las “payment”.

select payment_id as numero, date(payment_date) as fecha, amount as total from payment
group by date(payment_date), payment_id
order by payment_id;




-- Listar todas las “film” del año 2006 que contengan un (rental_rate) mayor a 4.0.

select * from film
where release_year = 2006 and rental_rate > 4.00
order by film_id;




-- Realiza un Diccionario de datos que contenga el nombre de las tablas y columnas, si
-- éstas pueden ser nulas, y su tipo de dato correspondiente

select table_name, column_name, is_nullable, data_type from information_schema.columns
where table_schema = 'public';


















