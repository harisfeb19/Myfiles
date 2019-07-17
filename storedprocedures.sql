DELIMITER //
CREATE PROCEDURE country_hos
(IN con CHAR(20))
BEGIN
  SELECT Name, HeadOfState FROM Country
  WHERE Continent = con;
END //
DELIMITER ;
commit;
Call country_hos("Europe");

Delimiter //
Create procedure HeadOfStateName
(In HOS char(25))
begin 
	 SELECT HeadOfState from country 
     where Name = HOS;
end //



