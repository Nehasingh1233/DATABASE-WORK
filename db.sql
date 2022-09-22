
 create table NA_department
 (
 dep_name varchar(36),
 dep_id char(3),
 primary key (dep_id)
 );
 
 create table NA_employee
 (
 emp_id char(3) Not Null,
 emo_name varchar(25),
 email varchar(25) default 'xyzz@gmail.com',
 phone_no int,
 salary int,
 primary key (emp_id),
 foreign key (emp_id) references NA_department(dep_id)
 );

create table NA_location(
house_num int primary key not null,
location varchar(20)unique,
landmark varchar(20) not null
);

insert into NA_department values('HR','abc');
insert into NA_department values('trainer','fgh');
insert into NA_department values('trainee','ghj');
select* from NA_department

insert into NA_employee values('abc','NEHA','neha@gmail.com',98765440,35000);
select* from NA_employee


insert into NA_location values(876,'banarasi','hgfd');
insert into NA_location values(376,'azamgarh','jkhr');
select * from NA_location

SELECT * FROM dlithe.dbo.S_HREMPLOYEES

SELECT *FROM dlithe.dbo.S_HREMPLOYEES
WHERE EMPLOYEE_ID =105

SELECT *FROM dlithe.dbo.S_HREMPLOYEES
Where DEPARTMENT_ID >=100

SELECT *FROM dlithe.dbo.S_HREMPLOYEES
Where EMPLOYEE_ID <=100

SELECT *FROM dlithe.dbo.S_HREMPLOYEES
Where EMPLOYEE_ID >100

SELECT *FROM dlithe.dbo.S_HREMPLOYEES
Where EMPLOYEE_ID<105

SELECT *FROM dlithe.dbo.S_HREMPLOYEES
Where EMPLOYEE_ID!=105

SELECT *FROM dlithe.dbo.S_HREMPLOYEES
Where FIRST_NAME ='Neena' or LAST_NAME  ='king'

SELECT *FROM dlithe.dbo.S_HREMPLOYEES
Where FIRST_NAME ='David' and LAST_NAME  ='Austin'

SELECT *FROM dlithe.dbo.S_HREMPLOYEES
where EMPLOYEE_ID BETWEEN 100 and 105

SELECT *FROM dlithe.dbo.S_HREMPLOYEES
Where FIRST_NAME like '%r';


SELECT *FROM dlithe.dbo.S_HREMPLOYEES
Where FIRST_NAME not like 'r%';

SELECT *FROM dlithe.dbo.S_HREMPLOYEES
Where DEPARTMENT_ID is null

SELECT *FROM dlithe.dbo.S_HREMPLOYEES
Where DEPARTMENT_ID is not null


SELECT *FROM dlithe.dbo.S_HREMPLOYEES


select top 5* from  dlithe.dbo.S_HREMPLOYEES



select upper(LAST_NAME) as lname,lower(FIRST_NAME)
from dlithe.dbo.S_HREMPLOYEES

select len(EMPLOYEE_ID)
from dlithe.dbo.S_HREMPLOYEES

select LTRIM(RTRIM (EMPLOYEE_ID))
from dlithe.dbo.S_HREMPLOYEES

select REPLACE('stevensingh','singh','@')
from dlithe.dbo.S_HREMPLOYEES

select concat(FIRST_NAME,LAST_NAME) AS FIRST_NAME
FROM dlithe.dbo.S_HREMPLOYEES

select case when department_id=60 THEN 'IT'
when department_id=70 THEN 'loan'
when department_id=80 THEN 'FINANCE'
when department_id=90 THEN 'tainer'
else 'OTHERS'
END AS dname,department_id
from dlithe.dbo.S_HREMPLOYEES


select substring('david king',1,10)as first_name
from dlithe.dbo.S_HREMPLOYEES

select charindex('d','david')as sa
         from dlithe.dbo.S_HREMPLOYEES
         
        
         
         
  select* from dlithe.dbo.S_HREMPLOYEES
  select count(*) from dlithe.dbo.S_HREMPLOYEES
  
  select sum(salary) from dlithe.dbo.S_HREMPLOYEES
  
  select avg (salary) from dlithe.dbo.S_HREMPLOYEES  
  
  select max(salary),min(salary) from dlithe.dbo.S_HREMPLOYEES sh
  
  select count(1),DEPARTMENT_ID from dlithe.dbo.S_HREMPLOYEES sh
  where DEPARTMENT_ID is not null 
  Group by DEPARTMENT_ID 
  having count(1)>1
  order by DEPARTMENT_ID desc;
 
 
 SELECT * FROM (
 select DENSE_RANK()  OVER (PARTITION BY DEPARTMENT_ID  ORDER BY SALARY DESC) AS DRNK, SALARY,DEPARTMENT_ID
 FROM dlithe.dbo.S_HREMPLOYEES sh 
 WHERE DEPARTMENT_ID =90
 )x
 WHERE DRNK=2
 
 
 
 select sh.employee_id,sh2.department_id
 from dbo.S_HREMPLOYEES sh 
 inner join dlithe.dbo.S_HREMPLOYEES sh2
 on
 sh.department_id=sh2.department_id;

 select sh.employee_id,sh2.department_id
 from dbo.S_HREMPLOYEES sh 
 left join dlithe.dbo.S_HREMPLOYEES sh2
 on
 sh.department_id=sh2.department_id;

 select sh.employee_id,sh2.department_id
 from dbo.S_HREMPLOYEES sh 
 right join dlithe.dbo.S_HREMPLOYEES sh2
 on
 sh.department_id=sh2.department_id;

 select sh.employee_id,sh2.department_id
 from dbo.S_HREMPLOYEES sh 
 full join dlithe.dbo.S_HREMPLOYEES sh2
 on
 sh.department_id=sh2.department_id;

create table NA_person (
c_firstn varchar(20),
c_lastn  varchar(20),
c_id int not null,
c_phone int,
primary key(c_id)
)

insert into NA_person values('neha','singh',100,78654399);
insert into NA_person values('poja','singha',101,78655599);
insert into NA_person values('neh','thakur',102,786548889);
insert into NA_person values('akash','singh',103,786777399);
insert into NA_person values('pinka','singh',104,78651199);
insert into NA_person values('megha','singh',105,786541239);

select* from NA_person

create table NA_orders(
o_id int not null,
o_address varchar(20),
o_location varchar(20),
o_pin int,
o_quantity int,
o_name varchar(20),
foreign key (o_id) references NA_person(c_id)
);
insert into NA_orders values(100,'hhgffffhd','bangalore',547890,5,'cloth');
insert into NA_orders values(101,'nbhhhh','delhi',456783,5,'toys');
insert into NA_orders values(102,'haaaadd','bangalore',137890,2,'earrings');
insert into NA_orders values(103,'kjyygf',' mumbai',511890,4,'watch');
insert into NA_orders values(104,'assddffg','bhopal',478901,3,'sandal');
insert into NA_orders values(105,'gffffhd','varanasi',89000,1,'ring');
SELECT * from NA_orders


select * from NA_orders where o_id>=101;
select * from NA_orders where o_id<=101;
select * from NA_orders where o_id=101;
select * from NA_orders where o_id!=101;

select * from  NA_person where c_id=100 and c_firstn='neha'
select * from  NA_person where c_id=102 or c_firstn='neha'

select * from  NA_person where c_id is null;
select * from  NA_person where c_id is not null;

select * from  NA_person where c_firstn not like '%n%';
select * from  NA_person where c_firstn like '%n%';

select count(1),o_quantity from NA_orders group by o_quantity
having count(1)>1
order by o_quantity desc;

select * from(
select dense_rank() over( PARTITION BY o_id ORDER BY o_quantity asc) as o_quantity,o_id
from NA_orders where o_id =100
)x
where o_quantity=5;

select r.o_id,p.c_id
 from NA_orders.r,NA_person.p
 right join NA_person
 on
 r.o_id=NA_p.c_id;

select upper(c_firstn) as fname,lower(c_lastn)as lname,len(c_phone),LTRIM(RTRIM(c_firstn))
from NA_person

select substring('nehasingh',1,10)as firstn
from NA_person

select charindex('a','neha')as 'e' from NA_person
select replace('neha singh','singh','@')
from NA_person

select concat (c_firstn,c_lastn)as c_firstn
from NA_person




delete from NA_orders;
select* from NA_orders;

delete from NA_orders
where o_id='100';

update NA_orders set o_quantity= '6'where o_id=100;

ALTER table NA_person add middlen varchar(20)
select* from NA_person

drop table NA_orders;
alter table NA_person drop column middlen;



select case when department_id=90
then 'IT'
when department_id=60
THEN 'HR'
when department_id=100 and SALARY >=4000 and FIRST_NAME ='david'
THEN 'FINACE'
ELSE 'OTHER'
END AS DNAME,DEPARTMENT_ID,salary,FIRST_NAME 
from dlithe.dbo.S_HREMPLOYEES



create table NA_student2(
s_name varchar(20),
s_id int,
s_age int,
s_mobile int
);


insert into NA_student2 values('neha',100,22,67896543)
insert into NA_student2 values('lavanya',101,23,8767811)
insert into NA_student2 values('shraeddha',102,22,7641200)
select* from NA_student2

create table NA_studentN1(
s_name varchar(20),
s_id int,
s_age int,
s_mobile int
);
select * from NA_studentN1




update NA_studentN 
set s_name='pooja'
where s_id=102
select * from NA_studentN

DELETE from NA_studentN 
where s_id=102

select *from NA_studentN 
         
         
TRUNCATE TABLE NA_studentN

select* from NA_studentN


drop table NA_studentN

select * from S_HREMPLOYEES sh 
CREATE TABLE NA_HEALTH
(
YEAR INT,
STATE VARCHAR(100),
HAI VARCHAR(100),
OPERATIVE_PROCEDURE VARCHAR(50),
FACILITY_1 VARCHAR(20),
FACILITY_NAME VARCHAR(50),
HOSPITAL_CATEGORY VARCHAR(50),
HOSPITAL_TYPE VARCHAR(50),
COUNTRY VARCHAR(50),
PROCEDURE_COUNT INT,
INFECTION_COUNT INT,
PREDICTED_INFECTION_COUNT INT,
SIR INT,
SIR_LOWER INT,
SIR_UPPER INT,
COMPARISION VARCHAR(50),
SIR_20 INT,
ON_TRACK VARCHAR(50),
NOTES VARCHAR(50)
)

INSERT INTO NA_HEALTH VALUES(2021,'CALIFORNIA','HEALTHCARE ASSOCIATION INFECTION','APPENDIX SURGERY','060000','ADVENTIST HEALTH','ACUTE','COMMUNITY','KERN',222,2,4,1,2,3,'SAME',7,'YES','SEE DATA DIC')
INSERT INTO NA_HEALTH VALUES(2022,'CALIFORNIA','HEALTHCARE ASSOCIATION INFECTION','CARDIAC SURGERY','060001','AHMC HEALTH','CRITICAL','COMMUNITY','LAKE',221,1,3,2,6,6,'SAME',8,'YES','SEE DATA DIC')


CREATE TABLE NA_HEALTH_NEW
(
YEAR INT,
STATE VARCHAR(100),
HAI VARCHAR(100),
OPERATIVE_PROCEDURE VARCHAR(50),
FACILITY_1 VARCHAR(20),
FACILITY_NAME VARCHAR(50),
HOSPITAL_CATEGORY VARCHAR(50),
HOSPITAL_TYPE VARCHAR(50),
COUNTRY VARCHAR(50),
PROCEDURE_COUNT INT,
INFECTION_COUNT INT,
PREDICTED_INFECTION_COUNT INT,
SIR INT,
SIR_LOWER INT,
SIR_UPPER INT,
COMPARISION VARCHAR(50),
SIR_20 INT,
ON_TRACK VARCHAR(50),
NOTES VARCHAR(50)
)




create table NA_HEALTH1(
Years int,
State varchar(200),
HAI	varchar(200),
Operative_Procedure varchar(200),
Facility_ID int	,
Facility_Name varchar(200),
Hospital_Category_RiskAdjustment varchar(200),
Hospital_Type varchar(200),
County varchar(200),
Procedure_Count int,
Infection_Count int,
Predicted_Infection_Count float,
SIR float,	
SIR_CI_95_Lower_Limit float,
SIR_CI_95_Upper_Limit float,
Comparison varchar(200),	
SIR_2015 float,
OnTrack_Toward_2020_Goal varchar(200),
Notes varchar(200)
);
INSERT INTO NA_HEALTH1 VALUES(2017,'California','Healthcare Associated Infection Surgical Site Infections','STATE OF CALIFORNIA POOLED DATA Abdominal aortic aneurysm repair',NULL,NULL,NULL,NULL,NULL,515,2,3.502,0.57,0.1,1.89,'Same',1.07,'Yes',NULL)
INSERT INTO NA_HEALTH1 VALUES(2017,'California','Healthcare Associated Infection Surgical Site Infections','STATE OF CALIFORNIA POOLED DATA Appendix surgery',NULL,NULL,NULL,NULL,NULL,29595,116,113.323,1.02,0.85,1.22,'Same',0.98,'No',NULL)

create table NA_HEALTH100(
Years int,
State varchar(200),
HAI	varchar(200),
Operative_Procedure varchar(200),
Facility_ID int	,
Facility_Name varchar(200),
Hospital_Category_RiskAdjustment varchar(200),
Hospital_Type varchar(200),
County varchar(200),
Procedure_Count int,
Infection_Count int,
Predicted_Infection_Count float,
SIR float,	
SIR_CI_95_Lower_Limit float,
SIR_CI_95_Upper_Limit float,
Comparison varchar(200),	
SIR_2015 float,
OnTrack_Toward_2020_Goal varchar(200),
Notes varchar(200)
);
select * from NA_HEALTH100




create table NA_HEALTH123(
Years int,
State varchar(200),
HAI	varchar(200),
Operative_Procedure varchar(200),
Facility_ID int	,
Facility_Name varchar(200),
Hospital_Category_RiskAdjustment varchar(200),
Hospital_Type varchar(200),
County varchar(200),
Procedure_Count int,
Infection_Count int,
Predicted_Infection_Count float,
SIR float,	
SIR_CI_95_Lower_Limit float,
SIR_CI_95_Upper_Limit float,
Comparison varchar(200),	
SIR_2015 float,
OnTrack_Toward_2020_Goal varchar(200),
Notes varchar(200)
);


CREATE TABLE NA_SUPER_STORE_NEW1(
Row_ID int,
Order_ID int,	
Order_Date varchar(255),	
Ship_Date varchar(255),
Ship_Mode varchar(255),	
Customer_ID	varchar(255),
Customer_Name varchar(255),
Segment	varchar(255),
Country varchar(255),
City varchar(255),	
State	varchar(255),
Postal_Code varchar(255),
Region varchar(255),
Product_ID varchar(255),
Category varchar(255),
Sub_Category varchar(255),
Product_Name varchar(255),
Sales	FLOAT,
Quantity INT,
Discount FLOAT,	
Profit FLOAT
);





create table NA__employeeunion(
emp_name varchar(50),
emp_id int,
emp_phone varchar(50),
emp_location varchar(50),

);

select * from NA__employeeunion 

create table NA_employeeunional(
emp_name varchar(50),
emp_id int,
emp_phone varchar(50),
emp_location varchar(50),
);

insert into NA_employeeunional values('neha',50,'76854111','azamgarh');
insert into NA_employeeunional values('pinka',55,'7004111','vns');
insert into NA_employeeunional values('akash',60,'76850011','azam');
insert into NA_employeeunional values('pooja',65,'700854111','garhpur');

create table NA_employeeunional2(
emp_name varchar(50),
emp_id int,
emp_phone varchar(50),
emp_location varchar(50),
);

insert into NA_employeeunional2 values('ANITHA',50,'76854111','azamgarh');
insert into NA_employeeunional2 values('pinka',51,'70041211','vns');
insert into NA_employeeunional2 values('akash',52,'6850011','azam');
insert into NA_employeeunional2 values('pooja',53,'700854111','garhpur');

create table NA_employeeunional3(
emp_name varchar(50),
emp_id int,
emp_phone varchar(50),
emp_location varchar(50),
);

insert into NA_employeeunional3 values('neha',54,'76899991','azamgarh');
insert into NA_employeeunional3 values('shakti',55,'70888811','cal');
insert into NA_employeeunional3 values('akki',56,'766660011','madras');
insert into NA_employeeunional3 values('priya',57,'70055511','goa');

create table NA_employeeunional4(
emp_name varchar(50),
emp_id int,
emp_phone varchar(50),
emp_location varchar(50),
);

insert into NA_employeeunional4 values('rupa',58,'768533311','azam');
insert into NA_employeeunional4 values('pinky',59,'700411100','vns');
insert into NA_employeeunional4 values('ak',60,'11150011','azam');
insert into NA_employeeunional4 values('poo',661,'700800111','pur');

create table NA_result(
r_id int,
name varchar(255),
marks int
);
insert into NA_result values(1,'aman',70),(2,'ram',40),(3,'sita',50),(4,'gita',90);

create table NA_result1(
r_id int,
name varchar(255),
marks int
);
create table NA_result2(
r_id int,
name varchar(255),
marks int
);
select * from NA_result2
create table NA_result3(
r_id int,
name varchar(255),
marks int
);
select * from NA_result3





create table NA_SALEYRS(
s_year int,
s_item int,
s_name varchar(50)
);

insert into NA_SALEYRS values(2022,500,'washingmachine')
insert into NA_SALEYRS values(2021,400,'acmachine')
insert into NA_SALEYRS values(2020,100,'microwavee')
insert into NA_SALEYRS values(2022,50,'machine')
insert into NA_SALEYRS values(2021,300,'gas')

create table NA_SALEYRS_2022(
s_year int,
s_item int,
s_name varchar(50)
);

create table NA_SALEYRS_2021(
s_year int,
s_item int,
s_name varchar(50)
);

create table NA_SALEYRS_2020(
s_year int,
s_item int,
s_name varchar(50)
);


SELECT * from NA_SALEYRS_2021

CREATE TABLE NA_SUPER_STORE_st1(
Row_ID int,
Order_ID int,	
Order_Date varchar(255),	
Ship_Date varchar(255),
Ship_Mode varchar(50),
Customer_ID	varchar(255),
Customer_Name varchar(255),
Segment	varchar(255),
Country varchar(255),
City varchar(255),	
State	varchar(255),
Postal_Code varchar(255),
Region varchar(255),
Product_ID varchar(255),
Category varchar(255),
Sub_Category varchar(255),
Product_Name varchar(255),
Sales	FLOAT,
Quantity INT,
Discount FLOAT,	
Profit FLOAT
);

select * from NA_SUPER_STORE_st1

create table NA_STUDENT_NEW21(
s_name varchar(50),
s_id int,
s_age int,
s_mobile varchar(50)
);

select * from NA_STUDENT_NEW21

create table NA_store_details1(
Row_ID float,
Order_ID varchar(255),
Order_Date datetime,	
Ship_Date datetime,		
Ship_Mode varchar(255),		
Customer_ID	varchar(255),	
Customer_Name varchar(255),	
Segment varchar(255),	
Country varchar(255),	
City varchar(255),	
State varchar(255),	
Postal_Code float,
Region	varchar(255),
Product_ID varchar(255),	
Category varchar(255),	
Sub_Category varchar(255),		
Product_Name varchar(255),		
Sales	float,
Quantity float,
Discount float,
Profit float,
CM_Ship mode varchar(255),
CM_Customer name varchar(255),
CM_Segment varchar(255)
);
select * from NA_store_details

CREATE TABLE [NA_STORE_DESTINATION] (
    [Row ID] float,
    [Order ID] varchar(255),
    [Order Date] datetime,
    [Ship Date] datetime,
    [Ship Mode] varchar(255),
    [Customer ID] varchar(255),
    [Customer Name] varchar(255),
    [Segment] varchar(255),
    [Country] varchar(255),
    [City] varchar(255),
    [State] varchar(255),
    [Postal Code] float,
    [Region] varchar(255),
    [Product ID] varchar(255),
    [Category] varchar(255),
    [Sub-Category] varchar(255),
    [Product Name] varchar(255),
    [Sales] float,
    [Quantity] float,
    [Discount] float,
    [Profit] float,
    [CM_Ship Mode] nvarchar(255),
    [CM_Customer Name] nvarchar(255),
    [CM_Segment] nvarchar(255)
);

select * from NA_STORE_DESTINATION

create table NA_employ(
employee_id int,
FIRST_NAME varchar(50),
LAST_NAME varchar(50),
EMAIL varchar(50),
);


select * from NA_employ

create table NA_EMPLOYEESS13(
emp_id int primary key ,
emp_name varchar(20),
emp_zipcode varchar(20),
add_id int 
);
INSERT into NA_EMPLOYEESS13 values(100,'A','2345',1);
INSERT into NA_EMPLOYEESS13 values(101,'B','2789',2);
INSERT into NA_EMPLOYEESS13 values(102,'C','0877',3);
INSERT into NA_EMPLOYEESS13 values(104,'D','1115',4);
INSERT into NA_EMPLOYEESS13 values(105,'E','1135',5);
SELECT * FROM NA_EMPLOYEESS13

create table NA_address13(
add_id int primary key,
add_city varchar(20),
add_country varchar(20)
)

INSERT into NA_address13 values(1,'azam','up');
INSERT into NA_address13 values(2,'xyz','us');
INSERT into NA_address13 values(3,'bxc','australia');
INSERT into NA_address13 values(4,'arm','mp');
SELECT * FROM NA_address13

SELECT emp.emp_id,emp.emp_name,emp.emp_zipcode
from NA_EMPLOYEESS13 AS emp
INNER JOIN  NA_address13 as re 
ON emp.add_id=re.add_id

SELECT emp.emp_id,emp.emp_name,emp.emp_zipcode
from NA_EMPLOYEESS13 AS emp
left outer join  NA_address13 as re 
ON emp.add_id=re.add_id


SELECT emp.emp_id,emp.emp_name,emp.emp_zipcode
from NA_EMPLOYEESS13 AS emp
right join  NA_address13 as re 
ON emp.add_id=re.add_id

SELECT emp.emp_id,emp.emp_name,emp.emp_zipcode
from NA_EMPLOYEESS13 AS emp , NA_address13 as re 



create table NA_department001(
dep_id int primary key,
dep_name varchar(20) not null,
)
insert into NA_department001 values(1,'it') 
insert into NA_department001 values(2,'acc')
insert into NA_department001 values(3,'hr')

create table NA_EMPLOYEES001(
emp_id int primary key ,
emp_name varchar(20),
emp_phone varchar(20),
emp_age int  check(emp_age>=18),
emp_address varchar(20) default 'not provided'
);

insert into NA_EMPLOYEES001 values (100,'x','56778766',18,'not provided')
insert into NA_EMPLOYEES001 values (101,'y','1111766',19,'not provided')
insert into NA_EMPLOYEES001 values (102,'c','3338766',20,'not provided')

select * from  NA_department001

alter table  NA_department001 ADD CONSTRAINT fk_emp_id FOREIGN KEY (dep_id)
references NA_department001(dep_id)













