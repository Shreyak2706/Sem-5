mysql> create database office;
Query OK, 1 row affected (0.01 sec)

mysql> use office
Database changed
mysql> create table employees(EmpID int primary key, EmpName varchar(20), EmpAge
 int, City varchar(20), Income long);
Query OK, 0 rows affected (0.05 sec)

mysql> insert into employees values(101, "Peter", 32, "Newyork", '200000');
Query OK, 1 row affected (0.03 sec)

mysql> insert into employees values(102, "Mark", 32, "California", '300000');
Query OK, 1 row affected (0.03 sec)

mysql> insert into employees values(103, "Donald", 40, "Arizona", '10000000');
Query OK, 1 row affected (0.01 sec)

mysql> insert into employees values(104, "Obama", 35, "Florida", '25000');
Query OK, 1 row affected (0.01 sec)

mysql> select * from employees;
+-------+---------+--------+------------+----------+
| EmpID | EmpName | EmpAge | City       | Income   |
+-------+---------+--------+------------+----------+
|   101 | Peter   |     32 | Newyork    | 200000   |
|   102 | Mark    |     32 | California | 300000   |
|   103 | Donald  |     40 | Arizona    | 10000000 |
|   104 | Obama   |     35 | Florida    | 25000    |
+-------+---------+--------+------------+----------+
4 rows in set (0.00 sec)

mysql> select * from employees
    -> where EmpID IN(select EmpID from employees
    -> where Income > 350000);
+-------+---------+--------+---------+----------+
| EmpID | EmpName | EmpAge | City    | Income   |
+-------+---------+--------+---------+----------+
|   103 | Donald  |     40 | Arizona | 10000000 |
+-------+---------+--------+---------+----------+
1 row in set (0.00 sec)

mysql> select * from employees where EmpID IN(select EmpID from employees where
Income > 35000);
+-------+---------+--------+------------+----------+
| EmpID | EmpName | EmpAge | City       | Income   |
+-------+---------+--------+------------+----------+
|   101 | Peter   |     32 | Newyork    | 200000   |
|   102 | Mark    |     32 | California | 300000   |
|   103 | Donald  |     40 | Arizona    | 10000000 |
+-------+---------+--------+------------+----------+
3 rows in set (0.00 sec)

mysql> select * from employees where EmpID IN(select EmpID from employees where
Income < 35000);
+-------+---------+--------+---------+--------+
| EmpID | EmpName | EmpAge | City    | Income |
+-------+---------+--------+---------+--------+
|   104 | Obama   |     35 | Florida | 25000  |
+-------+---------+--------+---------+--------+
1 row in set (0.00 sec)

mysql> select
mysql> select EmpName, EmpAge from employees where EmpAge IN(select EmpAge from employees where EmpAge = 32);
+---------+--------+
| EmpName | EmpAge |
+---------+--------+
| Peter   |     32 |
| Mark    |     32 |
+---------+--------+
2 rows in set (0.00 sec)

