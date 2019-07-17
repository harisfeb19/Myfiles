use world;

CREATE TABLE world.student(
ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
FirstName varchar(50),
LastName varchar(50),
sex varchar(1),
dob date,
email varchar(250) NOT NULL,
section varchar(100),
country varchar(100),
firstAttempt boolean,
subjects varchar(250),
UNIQUE(email)
);

select * from student;


insert into student values(1,"Haris","Ali","M","1995-02-19","haris@gmail.com","Graduate","Pakistan",1,"Computer");
truncate table student;
insert into student values(1,"Haris","Ali","M","1995-02-19","haris@gmail.com","Graduate","CANADA",1,"Computer");

insert into student values(2,"Fawad","Ghori","M","1995-02-19","fawad@gmail.com","Graduate","PAKISTAN",1,"Computer Science");

delete FROM student where ID = 1;

select * from student;

 insert into student values(1,"Haris","Ali","M","1995-02-19","haris@gmail.com","Graduate","Pakistan",1,"Computer Science");

 insert into student values(3,"Hamza","Ali","M","1995-02-19","hamza@gmail.com","Graduate","Pakistan",1,"Mathmatics");

create table world.employee(  
id int(10),  
name varchar(100),  
salary float  
);


insert into world.employee values(1,"Ali",55000);

