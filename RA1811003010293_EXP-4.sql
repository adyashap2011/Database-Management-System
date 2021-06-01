REM   Script: Session 04
REM   Constraints

create table IT ( empID number(10) not null primary key ,empname varchar(30), age number (3), gender varchar(10));

insert into IT values (1000,'ADYASHA',21,'F');

insert into IT values (1001,'ANUSHA',23,'F');

insert into IT values (1002,'ANISH',25,'M');

insert into IT values (1003,'SATWIK',26,'M');

insert into IT values (1004,'NIKITA',24,'F');

insert into IT values (1005,'RAHUL',28,'M');

insert into IT values (1006,'KHUSHI',29,'F');

insert into IT values (1007,'SHAHBAZ',31,'M');

insert into IT values (1008,'YUDHAJEET',30,'M');

insert into IT values (1009,'AAYUSH',32,'M');

select * from IT;

create table SOFTWARE ( empID number(10) not null primary key ,name varchar(30), age number (3), gender varchar(10))  ;

insert into SOFTWARE values(1011,'Rohit',33,'M');

insert into SOFTWARE values(1012,'Ritika',35,'F');

insert into SOFTWARE values(1013,'Shantanu',29,'M');

insert into SOFTWARE values(1010,'Isha',27,'F');

insert into SOFTWARE values(1014,'Sanket',29,'M');

insert into SOFTWARE values(1015,'Shiba',37,'M');

insert into SOFTWARE values(1015,'Rizul',30,'F');

insert into SOFTWARE values(1016,'Rizul',30,'F');

insert into SOFTWARE values(1017,'Abhishek',34,'M');

insert into SOFTWARE values(1017,'Abhishek',34,'M');

insert into SOFTWARE values(1018,'Tanya',29,'F');

insert into SOFTWARE values(1019,'Mayank',27,'M');

create table IT_salary(empid number(25) references IT(empid), salary number(10));

insert into IT_salary values(1000, 50000);

insert into IT_salary values(1001, 60000);

insert into IT_salary values(1002, 65000);

insert into IT_salary values(1003, 80000);

insert into IT_salary values(1004, 100000);

insert into IT_salary values(1005, 250000);

insert into IT_salary values(1006, 25000);

insert into IT_salary values(1007, 30000);

insert into IT_salary values(1008, 46000);

insert into IT_salary values(1009, 47000);

select * from IT;

select * from IT_salary;

create table SOFTWARE_salary (empid number(10) references SOFTWARE(empid), salary number(30) CONSTRAINT SOFTWARE_sal CHECK (salary>=10000 AND salary<=500000));

insert into SOFTWARE_salary values(1010,11000);

insert into SOFTWARE_salary values(1011,40000);

insert into SOFTWARE_salary values(1012,90000);

insert into SOFTWARE_salary values(1013,86000);

insert into SOFTWARE_salary values(1014,460000);

insert into SOFTWARE_salary values(1015,60000);

insert into SOFTWARE_salary values(1018,68000);

insert into SOFTWARE_salary values(1019,70000);

select * from SOFTWARE;

select * from SOFTWARE_salary;

insert into SOFTWARE_salary values(1016,45000);

insert into SOFTWARE_salary values(1017,270000);

select * from SOFTWARE_salary;

alter table SOFTWARE_salary drop constraint  SOFTWARE_sal;

insert into SOFTWARE_salary values(1019,800000);

select * from SOFWARE_salary;

select * from SOFTWARE_salary;

alter table IT_salary add constraint IT_sal PRIMARY KEY (empid);

desc IT_salary


alter table IT_salary disable constraint IT_sal;

desc IT_salary


alter table IT_salary enable constraint IT_sal;

desc IT_salary


