create DATABASE University; 
create table Module(ModuleID varchar(7) NOT NULL PRIMARY KEY,
ModuleName varchar(8),
Credit int,
TutorID varchar(9),);
select * from module;
insert into Module VALUES('Art','Nano',9,'Jay');
select * from module;
insert into Module VALUES('CAS','Micro',9,'Sun');
insert into Module VALUES('MUN','Nano',6,'Jay');
insert into Module VALUES('HMI','Micro',7,'Sun'); 
insert into Module VALUES('LAN','Nano',5,'Sun');
select * from module;
create table Student(StudentID varchar(9) NOT NULL PRIMARY KEY, Name varchar (20) NOT NULL, 
Age int, 
address varchar (100), 
Sex varchar (1), Feestatus varchar (10)); 
select * from Student; 
insert into Student VALUES('LUNI','Johnny',23,'Cresington','M','PAID');
insert into Student VALUES('MANA','Jessica',25,'Mornington','F','PAID');
insert into Student VALUES('LUNB','Harry',22,'Ealing','M','PAID');
insert into Student VALUES('MANB','Lydia',23,'Newmorning','F','PAID');

create table Grade (ModuleID varchar (7) NOT NULL,
StudentID varchar (9), 
Grade int,
FOREIGN KEY (ModuleID) REFERENCES Module (ModuleID),
FOREIGN KEY (StudentID) REFERENCES Student(StudentID));


SELECT * FROM Grade;
insert into Grade VALUES('LUA','LUNI',23);
insert into Grade VALUES('MAN','MANA',25);
insert into Grade VALUES('LUN','LUNB',22);
insert into Grade VALUES('MAS','MANB',23);
SELECT * FROM Grade; 







