/*FIRST QUERY */
CREATE TABLE EMPLOYEE_TABLE1
(
EMPID int primary key,
Firstname varchar(50),
Lastname varchar(50),
Salary float,
Mobileno varchar(15),
)
INSERT INTO EMPLOYEE_TABLE1 VALUES(1,'VIJAY','MALIYA',20000,'8185818212')
INSERT INTO EMPLOYEE_TABLE1 VALUES(2,'PRANAY','MALIYA',20000,'8185818212')
INSERT INTO EMPLOYEE_TABLE1 VALUES(3,'SANJAY','MALIYA',20000,'8185818212')
INSERT INTO EMPLOYEE_TABLE1 VALUES(4,'AJAY','MALIYA',20000,'8185818212')
INSERT INTO EMPLOYEE_TABLE1 VALUES(5,'JAY','MALIYA',20000,'8185818212')
SELECT *FROM EMPLOYEE_TABLE1
/* SECOND QUERY */
ALTER TABLE EMPLOYEE_TABLE1 ADD AGE INT
UPDATE EMPLOYEE_TABLE1 SET AGE = '40' WHERE EMPID>0
SELECT *FROM EMPLOYEE_TABLE1
/*THIRD QUERY*/ 
UPDATE EMPLOYEE_TABLE1 SET Salary = '40000' WHERE Firstname = 'JAY'
UPDATE EMPLOYEE_TABLE1 SET Lastname = 'TRIPATI' WHERE ((EMPID>0 AND EMPID<4) OR (Firstname = 'VIJAY')) 
SELECT *FROM EMPLOYEE_TABLE1
/*FOURTH QUERY */

/*TABLE1*/
create table student(s_id int primary key, 
                      s_name varchar(20))

insert into student values(1, 'Jack')
insert into student values(2, 'Rithvik')
insert into student values(3, 'Jaspreet')
insert into student values(4, 'Praveen')
insert into student values(5, 'Bisa')
insert into student values(6, 'Suraj')

/*TABLE2*/
create table marks(school_id int primary key, s_id int, 
                       score int, status varchar(20));

insert into marks values(1004, 1, 23, 'fail');
insert into marks values(1008, 6, 95, 'pass');
insert into marks values(1012, 2, 97, 'pass');
insert into marks values(1016, 7, 67, 'pass'); 
insert into marks values(1020, 3, 100, 'pass');
insert into marks values(1025, 8, 73, 'pass');
insert into marks values(1030, 4, 88, 'pass');
insert into marks values(1035, 9,  13, 'fail');
insert into marks values(1040, 5,  16, 'fail');
insert into marks values(1050, 10, 53, 'pass');

/*TABLE3*/
create table details(address_city varchar(20), email_ID varchar(20), 
                      school_id int, accomplishments varchar(50));

insert into details values('Banglore',  'jsingh@geeks.com', 
                                1020, 'ACM ICPC selected');
insert into details values('Hyderabad', 'praveen@geeks.com', 
                                1030, 'Geek of the month');
insert into details values('Delhi',     'rithvik@geeks.com', 
                                    1012, 'IOI finalist');
insert into details values('Chennai',   'om@geeks.com', 
                                 1111, 'Geek of the year');
insert into details values('Banglore', ' suraj@geeks.com',
                                 1008, 'IMO finalist');
insert into details values('Mumbai',    'sasukeh@geeks.com',
                                  2211, 'Made a robot');
insert into details values('Ahmedabad', 'itachi@geeks.com',
                               1172, 'Code Jam finalist');
insert into details values('Jaipur',    'kumar@geeks.com',
                                   1972, 'KVPY finalist');
/*JOIN OPERATION */

select s_name, score, status, address_city, email_id,
accomplishments from student s inner join marks m on
s.s_id = m.s_id inner join details d on 
d.school_id = m.school_id;

/* FIFTH QUERY*/
EXEC sp_rename 'EMPLOYEE_TABLE1.[EMPID]','s_id','COLUMN'
SELECT *FROM EMPLOYEE_TABLE1 
SELECT Firstname,Lastname,s_name from EMPLOYEE_TABLE1 E  right outer join student s on E.s_id = s.s_id

/* SIXTH QUERY */
SELECT s_id,Salary from EMPLOYEE_TABLE1 GROUP BY Salary,s_id HAVING s_id>20000 ORDER BY s_id DESC;
