SELECT * FROM world.country;

select Name, Language
from world.country
inner join world.countrylanguage 	
on country.Code = countrylanguage.CountryCode
having countrylanguage.language = "Urdu";


select SurfaceArea,IndepYear,Population 
from world.country
where Name = 'Pakistan';
	
select count(*) from world.city;

select city.Name, country.Continent,country.IndepYear  from world.country 
left join city
on country.Code = city.CountryCode
where country.Name = "Pakistan";sss

select city.Population, country.Name,country.Continent,country.IndepYear, countrylanguage.Language
from world.country 
inner join city on country.Code = city.CountryCode 
inner join countrylanguage
on countrylanguage.CountryCode = city.CountryCode
where city.Name = "Karachi";


select countrylanguage.Language from world.countrylanguage 
inner join city on city.CountryCode = countrylanguage.CountryCode
where city.Name = "Lahore";

CREATE TABLE products (
    prd_id     INT(10) NOT NULL AUTO_INCREMENT,
    prd_name   VARCHAR(150),
    prd_price  FLOAT,
    PRIMARY KEY (prd_id)
);

CREATE TABLE orders (
    ord_id		INT(10) NOT NULL AUTO_INCREMENT,
    ord_date	DATETIME DEFAULT CURRENT_TIMESTAMP,
    prd_id		INT(10) NOT NULL,
    prd_price   FLOAT,
    PRIMARY KEY (ord_id)
);

INSERT INTO products (prd_name, prd_price) VALUES ('Product 1', 1199.95);
INSERT INTO products (prd_name, prd_price) VALUES ('Product 2', 11.95);


SELECT * FROM products;

SELECT ifnull( (SELECT products.prd_name FROM products WHERE prd_id = 123 LIMIT 1) ,'not found');

(SELECT products.prd_name FROM products WHERE prd_id = 123) 
UNION 
(SELECT 'Not found')
LIMIT 1;

select ifnull((select Name from world.country where Name = "sdhfj"),'Not Found');

SELECT Name, Population FROM city                                            
WHERE Population = (SELECT Max(Population) FROM city);

SELECT Name, Population FROM city                                            
WHERE Population = (SELECT MIN(Population) FROM city);

SELECT District, SUM(Population) FROM city
 WHERE District = 'New York' GROUP BY District;
 
 SELECT Name,HeadOfState from country where Name = "pakistan";
 
 Update country set HeadofState = "Imran Khan" where Name = "Pakistan";
 
 Call HeadOfStateName("Brazil");
 
 
CREATE TABLE toptencities engine=MEMORY SELECT * FROM city LIMIT 10;

select * from toptencities;

use world;
select name, Population from city 
order by Population desc limit 1;

DELETE FROM toptencities WHERE ID IN (2, 4, 6);

truncate city2;
Insert into city2 SELECT * FROM city LIMIT 10;



