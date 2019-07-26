
use world;

select Name from world.city where Name like "%a%";

select * from world.employee;

insert into world.employee values(101,"Haris",3433);
insert into world.employee values(102,"Ali",33432);
insert into world.employee values(103,"Anas",50000);
truncate world.employee;

insert into world.User values(1,'haris','123');

select * from world.user;


CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci


insert into pos.user values (11,1,"haris@gmail.com","Haris","Ali","12345");
update user set password = "$2a$10$EQ6Hd2xK2gVNLvU8EYahXu4OKRfsH1i9IO8ALmEqvyLD1jlQ1eiQ6";

insert into pos.user values (2,1,"ali@gmail.com","Ali","Khan","$2a$10$JmsS6PfzeXKjw1G1w8QKpuruKsCgyGXj6qcLtjR2MrVM1og8BjAyS");
delete from pos.user where id = 12;

truncate pos.user;
