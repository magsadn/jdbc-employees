--CREATE TABLE EMPLOYEES
create table employees
(
    id      integer not null
        primary key,
    name    varchar(30),
    surname varchar(30),
    email   varchar(30),
    phone   varchar(30),
    address varchar(30),
    dept_id integer
        constraint emp_dept_id_fk
            references departments
);

--CREATE TABLE DEPARTMENTS
create table departments
(
    dept_id integer not null
        primary key,
    name    varchar(30),
    phone   varchar(30)
);

--SELECT EXAMPLE
select * from employees;
select * from employees where id=?;

--INSERT EXAMPLE:
insert into employees values (?,'_____','_____','___@_._','+____________','_____',?);

--DELETE EXAMPLE
delete from employees where id=?;

--UPDATE EXAMPLE
update employees set name=?,surname=?,email=?,phone=?,address=?,dept_id=? where id=?;
