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
where country.Name = "Pakistan";

select city.Population, country.Continent,country.IndepYear  from world.country 
left join city
on country.Code = city.CountryCode
where city.Name = "Rawalpindi";

