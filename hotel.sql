
create database hotel ;
use hotel ;
create table Room (
Room_id INT NOT NULL PRIMARY KEY  ,
Room_Type varchar(50) NULL ,
folor_Room int null ,
Room_Price int NULL 
);
select *from Room ;

create table Clients (
Clients_id int not null primary key ,
Clients_Name varchar(50) null ,
Clients_Phone int null ,
Clients_Address varchar(50) null ,
Room_id int not null
);
select *from clients ;


create table employee (
employee_id INT NOT NULL PRIMARY KEY ,
employee_name varchar(50) null , 
employee_Phone int null ,
Clients_id int not null ,
Room_id int not null ,
foreign key  (Room_id) References Room (Room_id) ,
foreign key  (Clients_id ) References Clients (Clients_id ) 
);

select * from employee ;

 
insert into Room(Room_id, Room_type, folor_Room, Room_price)
values(224,'double room',1,250 );

insert into Room(Room_id, Room_type, folor_Room, Room_price)
values(225,'single room',2,150 );

insert into Room(Room_id, Room_type, folor_Room, Room_price)
values(226,'suite room',3,200 );

insert into Room(Room_id, Room_type, folor_Room, Room_price)
values(227,'suite room',4,300 );

insert into Room(Room_id, Room_type, folor_Room, Room_price)
values(228,'duplex suite',5,450 );

select *from Room;

insert into Clients(Clients_id, Clients_Name, clients_phone, Clients_Address, Room_id)
values(444,'Manar mohamed',01015203040,'fowa',224 );

insert into Clients(Clients_id, Clients_Name, clients_phone, Clients_Address, Room_id)
values(445,'mohamed ahmed',01015161819,'qulain',225 );

insert into Clients(Clients_id, Clients_Name, clients_phone, Clients_Address, Room_id)
values(446,'ibrahiem mohaned',01015121416,'bila',226 );

insert into Clients(Clients_id, Clients_Name, clients_phone, Clients_Address, Room_id)
values(447,'Elsead mohamed',01000151211,'elhamool',227 );

insert into Clients(Clients_id, Clients_Name, clients_phone, Clients_Address, Room_id)
values(448,'Mai ibrahim',01000151211,'sedia salem',228 );

SELECT *FROM clients ;

insert into employee(employee_id, employee_name, employee_phone, Clients_id,Room_id) 
values(1415,'mostafa ahmed', 01015451911,444,224);

insert into employee(employee_id, employee_name, employee_phone, Clients_id,Room_id) 
values(1416,'kamal mousa', 01016541912,445,225);

insert into employee(employee_id, employee_name, employee_phone, Clients_id,Room_id) 
values(1417,'atef ismail', 01227631913,446,226);

insert into employee(employee_id, employee_name, employee_phone, Clients_id,Room_id) 
values(1418,'ahmed emad', 01538911914,447,227);
 
insert into employee(employee_id, employee_name, employee_phone, Clients_id,Room_id) 
values(1419,'anas mahmoud', 01149151912,448,228);
select *from employee;


 select * from Room where Room_id  in ( select distinct Clients_id from Clients);
 
 select * from Room where Room_id not in (select distinct employee_id from employee) ;

  select * from Clients where Clients_id not in ( select distinct employee_id from employee);

 select COUNT(Clients_id) as Count_Clients  from Clients group by Clients_id ;

select COUNT(Room_id) as Count_Room  from Room group by Room_id ;

update Clients
set Clients_Name = 'Ahmed elmasaly' 
where Clients_id = 444 ;
 
update Clients
set clients_phone = 01267379312
where Clients_Name = 'Ahmed Saad' ;

update employee
set employee_phone = 01015451911 
where employee_id = 1415 ;

update employee
set  employee_name = 'anas mahmoud' 
where employee_id = 1418 ;

update employee 
set employee_phone = 01549101915 
where employee_id = 1419 ;

delete from employee
where employee_id = 1418 ;

delete from employee
where employee_id = 1417 ;

delete from employee
where employee_id = 1416 ;

delete from Room
where Room_id = 225 ;

delete from Room
where Room_id = 227 ;




