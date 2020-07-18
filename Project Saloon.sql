drop table transaction;
drop table appointment;
drop table customer;
drop table bills;
drop table service;
drop table employee;

create table customer(
	customerID number(5) ,
	customerName varchar(10),
	customerAddress varchar(12),
	contactNum varchar(15),
 	age number(3),
 	payments number(6),
 	primary key (customerID)
);
create table appointment(
	appointmentID number(10),
	customerID number(5),
	appointmentDate date,
	primary key (appointmentID),
	foreign key (customerID) references customer (customerID) on delete cascade
);
create table bills(
	bill_id number(6),
	customerID number(5),
	bill_amount number(5),
	primary key (bill_id),
	foreign key (customerID) references customer (customerID) on delete cascade
);

 create table transaction(
 	transaction_ID number(15) not null,
 	customerID number(5) ,
 	bill_id number(5) ,
 	transactionDate date,
	primary key (transaction_ID),
 	foreign key (customerID) REFERENCES customer (customerID) ON DELETE CASCADE,
 	FOREIGN KEY (bill_id) REFERENCES bills (bill_id) ON DELETE CASCADE
 	);

 create table service(
 	servcie_id number(10) not null,
 	hair_cut varchar(20),
 	quantity number(5),
 	transaction_ID number(15),
 	primary key(servcie_id),
 	foreign key (transaction_ID) references transaction (transaction_ID) on delete cascade
 	);

 create table employee(
 	employee_id number(5),
 	customerID number(5),
 	employeeName varchar(15),
 	phoneNumber varchar(15),
 	address varchar(15),
 	salary number(6),
 	job_title varchar(30),
 	primary key (employee_id),
 	foreign key (customerID) references customer (customerID) on delete cascade
 	);

 	insert into customer values(1001,'Siam','Bhola','01757904360',21,7000);
	insert into customer values(1002,'Najua','Cumilla','01638223200',20,3500);
	insert into customer values(1003,'Shaykat','Dhaka','01771654965',22,7600);
	insert into customer values(1004,'Billal','Chattogram','01788385530',23,6090);
	insert into customer values(1005,'Borsha','Gazipur','01920231299',23,10050);
	insert into customer values(1006,'Raka','Feni','01889876103',24,1500);
	insert into customer values(1007,'Zayan','London','442072343456',32,12360);
	insert into customer values(1008,'Jackson','Italy','00393282853',36,5000);
	insert into customer values(1009,'Hilton','Paris','00331400008',44,9990);
	
	insert into appointment values(90001,1001,'20-OCT-2019');
	insert into appointment values(90002,1002,'15-NOV-2019');
	insert into appointment values(90003,1003,'21-JUL-2018');
	insert into appointment values(90004,1004,'1-JAN-2018');
	insert into appointment values(90005,1005,'25-May-2020');
	insert into appointment values(90006,1006,'25-Sep-2020');
	insert into appointment values(90007,1007,'21-FEB-2020');
	insert into appointment values(90008,1008,'19-May-2019');
    insert into appointment values(90009,1009,'27-March-2018');

	insert into bills values (575,1001,7000);
	insert into bills values (576,1002,3500);
	insert into bills values (577,1003,7600);
	insert into bills values (578,1004,6090);
	insert into bills values (579,1005,10050);
	insert into bills values (580,1006,1500);
	insert into bills values (581,1007,12360);
	insert into bills values (582,1008,5000);
	insert into bills values (583,1009,9990);	

	insert into transaction values (444,1001,575,'20-OCT-2019');
	insert into transaction values (555,1002,576,'15-NOV-2019');
	insert into transaction values (666,1003,577,'1-JUL-2018');
	insert into transaction values (777,1004,578,'1-JAN-2018');
	insert into transaction values (888,1005,579,'25-May-2020');
	insert into transaction values (999,1006,580,'25-Sep-2020');
	insert into transaction values (111,1007,581,'21-FEB-2020');
	insert into transaction values (222,1008,582,'19-May-2019');
	insert into transaction values (333,1009,583,'27-March-2018');

	insert into service values (5500,'Low Fade',1,444);
	insert into service values (5501,'Taper Fade',1,555);
	insert into service values (5502,'Afro Frade',1,666);
	insert into service values (5503,'Modern Quiff',1,777);
	insert into service values (5504,'Pompadour Fade',1,888);	

	insert into employee values (900,1001,'Karim','971-585-76','Dubai',20000,'Low Fade Specialist');
	insert into employee values (901,1002,'Rahim','61-455-70 ','Australia',25000,'Taper Fade Specialist');
	insert into employee values (902,1003,'Ibnat','90-5595-6939','Turkey',30000,'Afro Fade Specialist');
	insert into employee values (903,1004,'Zivan','1-555-118','USA',35000,'Modern Quiff Specialist');
	insert into employee values (904,1005,'Sohan','01711166648','Netrokona',26000,'Pompadour Fade Specialist');
	insert into employee values (905,1005,'Mizan','01711166790','Manikganj',29000,'Modern Pomp Specialist');
