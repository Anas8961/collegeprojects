/*-------------------DDL STATEMENTS WITH SOME SAMPLE DATA AND DML STATEMENTS-----------------*/

create table Client(
C_SSN NUMBER(12) Primary Key,
C_name VARCHAR2(20),
C_number NUMBER,
C_address VARCHAR2(20),
C_email VARCHAR2(40) unique
);

create table Payment_method(
C_SSN NUMBER(12) References Client,
Payment_method VARCHAR2(20),
constraint Payment_methodpk primary key(C_SSN,Payment_method)
);

create or replace trigger cname_correction before INSERT ON Client
for each row
begin
    :new.c_name := initcap(:new.c_name);
end;

insert into Client(C_SSN,C_name,C_number,C_adress,C_email) values (896225676768 ,'Lynn',01029495330,'Nasr city','a313@gmail.com');
insert into Client(C_SSN,C_name,C_number,C_adress,C_email) values (948375838636 ,'Taylor',01029495331,'Masr Al Jadidah','a321@gmail.com');
insert into Client(C_SSN,C_name,C_number,C_adress,C_email) values (875385532839 ,'Ollie',01029495332,'Sheraton','a322@gmail.com');
insert into Client(C_SSN,C_name,C_number,C_adress,C_email) values (239825936467 ,'ferguson',01029495333,'el Obour','a323@gmail.com');
insert into Client(C_SSN,C_name,C_number,C_adress,C_email) values (263294287373 ,'jose',01029495334,'El Shorouk','a331@gmail.com');
insert into Client(C_SSN,C_name,C_number,C_adress,C_email) values (979836682225 ,'Rogers',01029495335,'New Cairo','a332@gmail.com');
insert into Client(C_SSN,C_name,C_number,C_adress,C_email) values (264685396244 ,'Seth',01029495336,'Helwan','a33@.gmail.com');
insert into Client(C_SSN,C_name,C_number,C_adress,C_email) values (435325738254 ,'Kelly',01029495337,'6th October','a114@gmail.com');
insert into Client(C_SSN,C_name,C_number,C_adress,C_email) values (456232888977 ,'Nichole',01029495338,'Sheikh Zayed city','a115@gmail.com');
insert into Client(C_SSN,C_name,C_number,C_adress,C_email) values (358275756469 ,'Diaz',01029495339,'Giza','a116@gmail.com');
insert into Client(C_SSN,C_name,C_number,C_adress,C_email) values (544225676768 ,'michael',01077895330,'Nasr city','mickee3@gmail.com');
insert into Client(C_SSN,C_name,C_number,C_adress,C_email) values (978275838636 ,'francklen',01029555331,'nasr city','fara21@gmail.com');
insert into Client(C_SSN,C_name,C_number,C_adress,C_email) values (284685532839 ,'trevar',01067895332,'Sheraton','trev2@gmail.com');
insert into Client(C_SSN,C_name,C_number,C_adress,C_email) values (522825936467 ,'mohamed',01029782333,'el Obour','moooh23@gmail.com');
insert into Client(C_SSN,C_name,C_number,C_adress,C_email) values (263721287373 ,'joe',01029495334,'El Shorouk','joee343@gmail.com');
insert into Client(C_SSN,C_name,C_number,C_adress,C_email) values (943656682225 ,'marime',01029495335,'New Cairo','marrrr32@gmail.com');
insert into Client(C_SSN,C_name,C_number,C_adress,C_email) values (329685396244 ,'rawen',01029742136,'Helwan','raww3@.gmail.com');
insert into Client(C_SSN,C_name,C_number,C_adress,C_email) values (67325738254 ,'Kelly',01029495337,'6th October','kell4@gmail.com');
insert into Client(C_SSN,C_name,C_number,C_adress,C_email) values (896232888977 ,'Nichole',01029495338,'Sheikh Zayed city','ni5@gmail.com');
insert into Client(C_SSN,C_name,C_number,C_adress,C_email) values (238275756469 ,'Diaz',01029495339,'Giza','dia16@gmail.com');

create table vendor(
V_name Varchar(20) Primary key,
V_email varchar(20) unique,
V_number number
);

create table Addresses(
V_name varchar(20) References Vendor,
Addresses varchar(20),
constraint Addressespk primary key (V_name,Addresses)
);

insert into vendor(V_name,V_email,V_number) values ('Chevrolet','a111@gmail.com',01029495310);
insert into vendor(V_name,V_email,V_number) values ('Kia','a112@gmailcom',01029495311);
insert into vendor(V_name,V_email,V_number) values ('Peugeot','a113@gmail.com',01029495312);
insert into vendor(V_name,V_email,V_number) values ('Hyundai','a121@gmail.com',01029495313);
insert into vendor(V_name,V_email,V_number) values ('Fiat','a122@gmail.com',01029495314);
insert into vendor(V_name,V_email,V_number) values ('Opel','a123@gmail.com',01029495315);
insert into vendor(V_name,V_email,V_number) values ('DS','a131@gmail.com',01029495316);
insert into vendor(V_name,V_email,V_number) values ('BYD','a132@gmail.com',01029495317);
insert into vendor(V_name,V_email,V_number) values ('Renault','a133@gmail.com',01029495318);
insert into vendor(V_name,V_email,V_number) values ('Toyota','a211@gmail.com',01029495319);
insert into vendor(V_name,V_email,V_number) values ('Porsche','posh@gmail.com',01005576246);
insert into vendor(V_name,V_email,V_number) values ('Suzuki','suz@gmail.com',01005576003);
insert into vendor(V_name,V_email,V_number) values ('Mercedes','merc@gmail.com',01005576113);
insert into vendor(V_name,V_email,V_number) values ('BMW','bmw@gmail.com',01005576683);
insert into vendor(V_name,V_email,V_number) values ('Nissan','nissan@gmail.com',01010386618);

create table warehouse(
w_name Varchar2(20) Primary Key,
w_address varchar2(50)
);

insert into warehouse values('b01','Nasr City');
insert into warehouse values('b02','El Obour');
insert into warehouse values('b03','Sheikh Zayed City');
insert into warehouse values('b04','Masr Al Jadidah');
insert into warehouse values('b05','Madinaty');
insert into warehouse values('b06','Future City');
insert into warehouse values('b07','Nasr City');
insert into warehouse values('b08','Madinaty');
insert into warehouse values('b09','Sheikh Zayed City');
insert into warehouse values('b10','Masr Al Jadidah');

create table Insurance_Company(
IC_ID varchar2(6) primary key,
IC_name varchar2(50) unique,
IC_email VARCHAR2(50) unique,
IC_number number
);

create sequence icid start with 1;

create or replace trigger Ic_generator BEFORE insert on Insurance_Company
for each row
begin 
:new.IC_ID := concat('IC',icid.nextval);
end;

insert into Insurance_Company(IC_name,IC_email,IC_number) values ('Misr Insurance','a212@gmail.com',01029495320);
insert into Insurance_Company(IC_name,IC_email,IC_number) values ('Misr Life Insurance Company','a213@gmail.com',01029495321);
insert into Insurance_Company(IC_name,IC_email,IC_number) values ('Allianz Life Egypt','a221@gmail.com',01029495322);
insert into Insurance_Company(IC_name,IC_email,IC_number) values ('Metlife Egypt','a222@gmail.com',01029495323);
insert into Insurance_Company(IC_name,IC_email,IC_number) values ('AXA Life Egypt','a223@gmail.com',01029495324);
insert into Insurance_Company(IC_name,IC_email,IC_number) values ('GIG Egypt','a231@gmail.com',01029495325);
insert into Insurance_Company(IC_name,IC_email,IC_number) values ('Bupa Egypt','a232@gmail.com',01029495326);
insert into Insurance_Company(IC_name,IC_email,IC_number) values ('AXA Insurance','a233@gmail.com',01029495327);
insert into Insurance_Company(IC_name,IC_email,IC_number) values ('Suez Canal Insurance','a311@gmail.com',01029495328);
insert into Insurance_Company(IC_name,IC_email,IC_number) values ('Allianz Insurance Egypt','a312@gmail.com',01029495329);

create table department(
d_id number primary key,
d_name varchar(15) unique not null,
d_address varchar(30)
);

create sequence did start with 10 INCREMENT BY 10;

create or replace trigger deptID_generator before INSERT ON department
for each row
begin
    :new.d_id := did.nextval;
    :new.d_name := upper(:new.d_name);
    :new.d_address := initcap(:new.d_address);
end;

insert into department (d_name,d_address) values ('hr','nasr city');
insert into department (d_name,d_address) values ('accounting','sheraton');
insert into department (d_name,d_address) values ('marketing','Masr Al Jadidah');
insert into department (d_name,d_address) values ('rd','Madinaty');
insert into department (d_name,d_address) values ('production','sheraton');

create table employee  (
e_ssn number(12) primary key,
e_name varchar(17) ,
e_address varchar(36),
e_email varchar(23) unique,
salary number(7),
e_number number(11),
D_id number References department not null
);

create or replace trigger empname_correction before INSERT ON employee
for each row
begin
    :new.e_name := upper(:new.e_name);
    :new.e_address := initcap(:new.e_address);
end;

insert into employee values (012377893456,'ali','nasr city','youssefsdr3@yahoo.com',10000,01001109871,'10'); 
insert into employee values (012509893456,'youssef','sheraton','fghy1q32@yahoo.com',10000,01010334567,'20'); 
insert into employee values (567377893456,'hassan','madienty','hassenyu45@gmail.com',10000,01001119078,'30'); 
insert into employee values (234377899432,'samer','nasr city','samdr34@yahoo.com',10000,01008954078,'40'); 
insert into employee values (012377886546,'omar','tagmoa','omehy1q399@gmail.com',10000,011103119078,'50'); 
insert into employee values (342370893456,'mazen','sharoa','mazenyu4@gmail.com',500,01003254078,'20');
insert into employee values (012377893458,'mostafa','nasr city','moertr348@yahoo.com',5000,01001109071,'10');
insert into employee values (785377893456,'anas','sheraton','anay1q36@yahoo.com',6000,01012344567,'40');
insert into employee values (012377893784,'ahmed','madienty','medyu45@gmail.com',2500,01034519078,'10');
insert into employee values (892377893456,'ali','nasr city','alisdr12@yahoo.com',1000,01001785871,'50');
insert into employee values (012377893458,'mostafa','nasr city','moertr348@yahoo.com',5000,01001109071,'10');
insert into employee values (078905563456,'yassin','nasr city','yasso45@yahoo.com',8500,01023309871,'40');
insert into employee values (098769893456,'hatem','madienty','tommytommy32@yahoo.com',3500,01099994567,'10'); 
insert into employee values (012787893456,'mariam','madienty','mar45@gmail.com',4700,01001123378,'20');
insert into employee values (234448899432,'moatez','sheraton','mooo34@yahoo.com',7800,01008357078,'20'); 
insert into employee values (002370893456,'yasser','tagmoa','yaserrr894@gmail.com',2400,01003259098,'40');
insert into employee values (012312343458,'mostafa','nasr city','mos48@yahoo.com',9000,01009999071,'30');
insert into employee values (547377893456,'youssef ','sheraton','joe2022@yahoo.com',7500,01009874509,'10');
insert into employee values (660377893456,'anas','nasr city','anas785@yahoo.com',4400,01001235871,'50');
insert into employee values (12509877936,'rawan','Sheraton','Trawan2020@yahoo.com',9500,1010334567,'20');
insert into employee values (349870893456,'khaled','new cairo','khaleoddd4@gmail.com',7400,01007779098,'40');
insert into employee values (891212343458,'mamdouh','new cairo','mamdoou88@yahoo.com',6600,01077699071,'30');
insert into employee values (127677893456,'ahmed','sheraton','ahmmm37@yahoo.com',4500,01009432509,'10');
insert into employee values (307677893784,'tamer','madienty','tamora668@gmail.com',2900,0103333945,'20');
insert into employee values (653277893456,'salma','nasr city','salomaa92@yahoo.com',8400,01007895871,'50');

UPDATE employee SET salary=4000 where e_ssn=891212343458;

alter table department add (
e_ssn number references employee
);

update department set e_ssn=012377893456 where d_id=10;
update department set e_ssn=012509893456 where d_id=20;
update department set e_ssn=567377893456 where d_id=30;
update department set e_ssn=234377899432 where d_id=40;
update department set e_ssn=012377886546 where d_id=50;

ALTER TABLE department
ADD CONSTRAINT essnn CHECK(e_ssn IS NOT NULL);

create table supplyorder (
    so_serialnumber varchar2(6) primary key,
    so_price number,
    so_date date,
    v_name VARCHAR2(20) REFERENCES vendor not null,
    e_ssn number(12) REFERENCES employee not null
);

create sequence so_id start with 1;

create or replace trigger so_generator 
before insert on supplyorder
for each row
begin
    :new.so_serialnumber := concat('SOX',so_id.nextval);
end;

insert into supplyorder(so_price,so_date,v_name,e_ssn) VALUES (370000,'10-oct-2010','Hyundai',12509893456);
insert into supplyorder(so_price,so_date,v_name,e_ssn) VALUES (325000,'6-oct-2011','Toyota',567377893456);
insert into supplyorder(so_price,so_date,v_name,e_ssn) VALUES (1750000,'2-dec-2015','Mercedes',892377893456);
insert into supplyorder(so_price,so_date,v_name,e_ssn) VALUES (135000,'1-jan-2009','Nissan',12377886546);
insert into supplyorder(so_price,so_date,v_name,e_ssn) VALUES (1780000,'19-aug-2012','Porsche',12509893456);
insert into supplyorder(so_price,so_date,v_name,e_ssn) VALUES (165000,'25-feb-2020','Suzuki',342370893456);
insert into supplyorder(so_price,so_date,v_name,e_ssn) VALUES (317000,'7-nov-2017','Hyundai',234448899432);
insert into supplyorder(so_price,so_date,v_name,e_ssn) VALUES (1470000,'14-april-2021','Mercedes',892377893456);
insert into supplyorder(so_price,so_date,v_name,e_ssn) VALUES (1180000,'27-sep-2022','BMW',567377893456);
insert into supplyorder(so_price,so_date,v_name,e_ssn) VALUES (410000,'21-march-2016','Toyota',307677893784);
insert into supplyorder(so_price,so_date,v_name,e_ssn) VALUES (870000,'11-dec-2018','Hyundai',12787893456);
insert into supplyorder(so_price,so_date,v_name,e_ssn) VALUES (2570000,'7-jan-2021','Mercedes',12509877936);
insert into supplyorder(so_price,so_date,v_name,e_ssn) VALUES (500000,'2-oct-2010','Suzuki',342370893456);

create table product (
VIN Varchar(17) Primary Key,
brand  Varchar(20),
model varchar2(20),
modelyear  decimal(4),
color  Varchar(10),
p_price  decimal,
W_name  Varchar(20) References warehouse,
IC_ID  Varchar(6) References Insurance_company,
I_price decimal,
I_percentage number,
I_Days number,
I_Sdate date,
so_serialnumber varchar2(6) references supplyorder not null
);

create or replace trigger product_correction before INSERT ON product
for each row
begin
    :new.brand := initcap(:new.brand);
    :new.model := initcap(:new.model);
end;

insert into product (VIN,brand,model,modelyear,color,p_price,so_serialnumber,W_name,IC_ID,I_price,I_percentage,I_Days,I_Sdate) values ('JH4KA3170LC006787','hyundai','tucson',2006,'red',455000,'SOX21','b01','IC1',16000,100,1095,'20-oct-2014');
insert into product (VIN,brand,model,modelyear,color,p_price,so_serialnumber,W_name,IC_ID,I_price,I_percentage,I_Days,I_Sdate) values ('1GNDT13W3W2249640','toyota','corolla',2010,'blue',385000,'SOX22','b02','IC2',9400,70,1095,'17-march-2012');
insert into product(VIN,brand,model,modelyear,color,p_price,so_serialnumber,W_name,IC_ID,I_price,I_percentage,I_Days,I_Sdate) values ('JH4DB1550LS000111','mercedes','E210',2014,'purple ',1953000,'SOX23','b01','IC4',76000,95,1095,'3-feb-2016');
insert into product (VIN,brand,model,modelyear,color,p_price,so_serialnumber,W_name,IC_ID,I_price,I_percentage,I_Days,I_Sdate) values ('1NPTXUEXX8N766170','nissan','sunny',2008,'white',164000,'SOX24','b03','IC8',5400,85,1095,'5-aug-2010');
insert into product (VIN,brand,model,modelyear,color,p_price,so_serialnumber,W_name,IC_ID,I_price,I_percentage,I_Days,I_Sdate) values ('JH4DA3350GS005185','porsche','cayman',2012,'black',2000000,'SOX25','b02','IC3',80000,100,1095,'6-dec-2013');
insert into product (VIN,brand,model,modelyear,color,p_price,so_serialnumber,W_name,IC_ID,I_price,I_percentage,I_Days,I_Sdate) values ('JH4DC2380SS000012','suzuki','S presso',2019,'green',230000,'SOX26','b04','IC10',4600,55,1095,'5-jan-2020');
insert into product (VIN,brand,model,modelyear,color,p_price,so_serialnumber,W_name,IC_ID,I_price,I_percentage,I_Days,I_Sdate) values ('1G1BU51H2HX113345','hyundai','elantra HD',2016,'yellow',360000,'SOX27','b03','IC5',9000,60,1095,'7-jul-2018');
insert into product (VIN,brand,model,modelyear,color,p_price,so_serialnumber,W_name,IC_ID,I_price,I_percentage,I_Days,I_Sdate) values ('WBAAM3349YFP79879','mercedes','CLA202',2021,'white',1600000,'SOX28','b04','IC9',650000,100,1095,'4-march-2021');
insert into product (VIN,brand,model,modelyear,color,p_price,so_serialnumber,W_name,IC_ID,I_price,I_percentage,I_Days,I_Sdate) values ('2G1WD57C491198247','bmw','m850',2022,'white',1300000,'SOX29','b02','IC6',50000,100,1095,'2-dec-2022');
insert into product (VIN,brand,model,modelyear,color,p_price,so_serialnumber,W_name,IC_ID,I_price,I_percentage,I_Days,I_Sdate) values ('1FDWE35SX5HA40825','toyota','fortuner',2015,'red',485000,'SOX30','b04','IC7',8200,80,1095,'4-jan-2017');
insert into product (VIN,brand,model,modelyear,color,p_price,so_serialnumber,W_name) values ('2HNYD18664AS61045','hyundai','tucson',2017,'white',600000,'SOX31','b02');
insert into product (VIN,brand,model,modelyear,color,p_price,so_serialnumber,W_name) values ('5J8TB3H50DL001826','hyundai','elantra HD',2016,'black',360000,'SOX31','b01');
insert into product (VIN,brand,model,modelyear,color,p_price,so_serialnumber,W_name) values ('JH4NA2161VT800005','mercedes','c180',2020,'red',1360000,'SOX32','b07');
insert into product (VIN,brand,model,modelyear,color,p_price,so_serialnumber,W_name) values ('5J8TB4H36EL815498','mercedes','CLA200',2020,'blue',1600000,'SOX32','b05');
insert into product (VIN,brand,model,modelyear,color,p_price,so_serialnumber,W_name) values ('JH4KA96502C000111','suzuki','swift',2007,'green',250000,'S0X33','b03');
insert into product (VIN,brand,model,modelyear,color,p_price,so_serialnumber,W_name) values ('2HNYD28807H000948','suzuki','baleno',2006,'yellow',250000,'S0X33','b04');

create table clientorder  (
co_serialnumber varchar2(6) primary key,
co_details varchar(10), /*rent or full*/
co_date date,
co_price number,
e_ssn number(12) References employee ,
c_ssn number(12) References client ,
vin varchar2(17) References product
);

create sequence co_id start with 1;

create or replace trigger co_generator 
before insert on clientorder
for each row
begin
    :new.co_serialnumber := concat('COX',co_id.nextval);
end;

create or replace trigger calc_co_price 
BEFORE insert
on clientorder
for each row
declare
    carprice number;
    insuranceprice number;
begin

    select p_price
    into carprice
    from product p
    where :new.vin = p.vin;
    
    select I_price
    into insuranceprice
    from product p
    where :new.vin = p.vin;
    if insuranceprice > 0 then
        :new.co_price := (carprice+insuranceprice);
    else
        :new.co_price := (carprice);
    end if;
end;

create or replace trigger co_valdation
before insert
on clientorder
for each row
declare
    recordcount number;
    usr_exp exception;
begin
    select count(*)
    into recordcount
    from clientorder co
    where :new.vin = co.vin and co.co_details = 'Full';
    
    if recordcount > 0 then
        raise usr_exp;
    end if;
end;

insert into clientorder (C_ssn,VIN,co_details,co_date,e_ssn) values (978275838636,'1NPTXUEXX8N766170','Full',To_date('05/08/2010','dd/mm/yyyy'),'567377893456');
insert into clientorder (C_ssn,VIN,co_details,co_date,e_ssn) values (948375838636,'1GNDT13W3W2249640','Full',To_date('17/03/2012','dd/mm/yyyy'),'567377893456');
insert into clientorder (C_ssn,VIN,co_details,co_date,e_ssn) values (875385532839,'JH4DB1550LS000111','Full',To_date('03/02/2016','dd/mm/yyyy'),'12312343458');
insert into clientorder (C_ssn,VIN,co_details,co_date,e_ssn) values (239825936467,'JH4DA3350GS005185','Full',To_date('06/12/2013','dd/mm/yyyy'),'12312343458');
insert into clientorder (C_ssn,VIN,co_details,co_date,e_ssn) values (263294287373,'JH4DC2380SS000012','Full',To_date('05/01/2020','dd/mm/yyyy'),'891212343458');
insert into clientorder (C_ssn,VIN,co_details,co_date,e_ssn) values (979836682225,'2HNYD18664AS61045','Full',To_date('03/02/2019','dd/mm/yyyy'),'891212343458');
insert into clientorder (C_ssn,VIN,co_details,co_date,e_ssn) values (264685396244,'JH4KA3170LC006787','Full',To_date('20/10/2014','dd/mm/yyyy'),'891212343458');
insert into clientorder (C_ssn,VIN,co_details,co_date,e_ssn) values (435325738254,'2G1WD57C491198247','Full',To_date('02/12/2022','dd/mm/yyyy'),'891212343458');
insert into clientorder (C_ssn,VIN,co_details,co_date,e_ssn) values (456232888977,'1FDWE35SX5HA40825','Full',To_date('04/01/2017','dd/mm/yyyy'),'12312343458');
insert into clientorder (C_ssn,VIN,co_details,co_date,e_ssn) values (358275756469,'1G1BU51H2HX113345','Full',To_date('14/07/2018','dd/mm/yyyy'),'567377893456');
insert into clientorder (C_ssn,VIN,co_details,co_date,e_ssn) values (544225676768,'WBAAM3349YFP79879','Full',To_date('04/03/2021','dd/mm/yyyy'),'891212343458');






/*--------------------Complex Queries--------------------*/

/*Most Sold brands ranked*/
select p.brand,count(co.co_serialnumber) as number_sold
from clientorder co inner join product p
on co.vin=p.vin
where co.co_details='Full' 
group by p.brand
order by count(co.co_serialnumber) desc;

/*Most sold colors*/
select p.color,count(co.co_serialnumber) as number_sold
from clientorder co inner join product p
on co.vin=p.vin
where co.co_details='Full' 
group by p.color
order by count(co.co_serialnumber) desc;

/*Average number of orders per employee*/
create or replace function AvgOrderPerEmp 
return number
is
v_avgOrders number;
pragma autonomous_transaction;
begin
    
    select avg(count(co_serialnumber))
    into v_avgorders
    from clientorder
    group by e_ssn;
    
    return v_avgOrders;
end;

/*Average salary of employees excluding managers of departments*/
create or replace function AvgSalary 
return number
is
V_avgsalary number;
pragma autonomous_transaction;
begin
    
    select avg(salary)
    into v_avgsalary
    from employee e
    where not exists (
        select *
        from department d
        where e.e_ssn = d.e_ssn
    );
    
    return v_avgsalary;
end;

/*
Employees who need promotion
Employees with less than avg salary and made more than avg no of orders/emp 
*/
select e.e_ssn,e.e_name,e.e_email,e.salary,count(co.co_serialnumber) as orders_made
from employee e inner join clientorder co
on e.e_ssn = co.e_ssn
where salary < AvgSalary 
group by e.e_ssn,e.e_name,e.e_email,e.salary
having count(co.co_serialnumber) > AvgOrderPerEmp;


/*Number of clients per each city*/
select lower(c_address) as City,count(co_serialnumber) as Clients
from client c inner join clientorder co
on c.c_ssn = co.c_ssn
group by lower(c_address);

/*Clients who bought cars and have exired insurance*/
/*cannot use true/false in select statements so we return varchar*/
create or replace function checkExpiry(P_Idate date,P_days number)
return varchar2
is
V_calcdate date;
begin
    v_calcdate := p_idate + p_days;
    if v_calcdate > sysdate then
        return 'false';
    else
        return 'true';
    end if;
end;

select c.c_name,c.c_email,p.brand||' '||p.model||' '||p.modelyear as car, p.i_sdate, p.i_sdate + p.i_days as Expiry
from client c 
inner join clientorder co
on c.c_ssn = co.c_ssn
inner join product p 
on co.vin = p.vin
where checkExpiry(p.i_sdate,p.i_days) = 'true' and p.i_days>0;


