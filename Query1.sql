create database mydatabase;
use mydatabase;
create table students(stud_id int primary key auto_increment, stud_name varchar(25), stud_dob date, stud_address varchar(50), stud_class int)auto_increment=1000;
insert into students set stud_name="Roy", stud_dob="2012-02-24", stud_address="kollam", stud_class=9;
insert into students(stud_name, stud_dob, stud_address, stud_class) values ("Ravi","2013-05-04","Kottayam",8);
insert into students (stud_name, stud_dob, stud_address, stud_class)
values
    ("Anu", "2011-06-15", "Kochi", 10),
    ("John", "2012-09-10", "Kottayam", 9),
    ("Meera", "2011-12-05", "Trivandrum", 10);
create table staffs(staff_id int primary key auto_increment, name varchar(30), gender enum("Male","Female","Other"), skills set("Java","Python","JavaScript","PHP","Dart","C++"));
insert into
 staffs(name, gender, skills)
values
    ("Anil","Male","Java,Python,PHP");
update students set stud_class=9  where  stud_name="Ravi";
delete from students where  stud_name="Ravi";
select stud_name,stud_dob from students where stud_name="roy";
select stud_name,stud_dob from students where binary stud_name="roy";
select stud_name,stud_dob from students where binary stud_name="Roy";
select stud_name,stud_dob from students limit 3;
select stud_name,stud_dob from students limit 1,3;
alter table students add marks int after stud_address;
alter table students add result enum("Pass","Fail");
update students set marks=423 where stud_id="1000";
update students set marks=231 where stud_id="1002";
update students set marks=183 where stud_id="1003";
update students set marks=463 where stud_id="1004";
update students set result="Pass" where marks>=250;
update students set result="Fail" where marks<250;