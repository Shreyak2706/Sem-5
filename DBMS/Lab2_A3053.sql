mysql> create database voting_2022;
Query OK, 1 row affected (0.01 sec)

mysql> use voting_2022;
Database changed

mysql> create table Voters_2022(Voting_id varchar(10) UNIQUE, Name char(20), Gen
der char(10), Age int NOT NULL, Region varchar(20));
Query OK, 0 rows affected (0.04 sec)


mysql> insert into Voters_2022 values("KSJ04773A", "Rahul Verma", "Male", 17, "Ravet");
Query OK, 1 row affected (0.02 sec)

mysql> insert into Voters_2022 values("SD947573L", "Neha Patil", "Female", 18, "Aundh");
Query OK, 1 row affected (0.03 sec)

mysql> insert into Voters_2022 values("WGD87363H", "Sakshi Thombre", "Female", 20, "Jalna");
Query OK, 1 row affected (0.02 sec)

mysql> select * from Voters_2022;
+-----------+----------------+--------+-----+--------+
| Voting_id | Name           | Gender | Age | Region |
+-----------+----------------+--------+-----+--------+
| KSJ04773A | Rahul Verma    | Male   |  17 | Ravet  |
| SD947573L | Neha Patil     | Female |  18 | Aundh  |
| WGD87363H | Sakshi Thombre | Female |  20 | Jalna  |
+-----------+----------------+--------+-----+--------+
3 rows in set (0.00 sec)

mysql> delete from Voters_2022 where Age=17;
Query OK, 1 row affected (0.02 sec)

mysql> select * from Voters_2022;
+-----------+----------------+--------+-----+--------+
| Voting_id | Name           | Gender | Age | Region |
+-----------+----------------+--------+-----+--------+
| SD947573L | Neha Patil     | Female |  18 | Aundh  |
| WGD87363H | Sakshi Thombre | Female |  20 | Jalna  |
+-----------+----------------+--------+-----+--------+
2 rows in set (0.00 sec)

mysql> insert into Voters_2022 values("WGD87363H", "Akshat Thawait", "Male", 20,
 "Nagpur");
ERROR 1062 (23000): Duplicate entry 'WGD87363H' for key 'Voters_2022.Voting_id'
mysql>  voters;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'voters' at line 1
mysql> create table Voters_2018(Voting_id varchar(10) UNIQUE, Name char(20), Gender char(10), Age int CHECK(Age>=18), Region varchar(20) DEFAULT("Shivaji Nagar"));
Query OK, 0 rows affected (0.04 sec)

mysql> insert into Voters_2022 values("JDJ3849JK0", "Akshat Thawait", "Male", 20
, "");
Query OK, 1 row affected (0.02 sec)

mysql> select * from Voters_2022;
+------------+----------------+--------+-----+--------+
| Voting_id  | Name           | Gender | Age | Region |
+------------+----------------+--------+-----+--------+
| SD947573L  | Neha Patil     | Female |  18 | Aundh  |
| WGD87363H  | Sakshi Thombre | Female |  20 | Jalna  |
| JDJ3849JK0 | Akshat Thawait | Male   |  20 |        |
+------------+----------------+--------+-----+--------+
3 rows in set (0.00 sec)

mysql> 
mysql> insert into Voters_2018 (Voting_id, Name, Gender, Age) values("JFJ9E475H" "Akshat Thawait", "Male", 20);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into Voters_2018 (Voting_id, Name, Gender, Age) values("JFJ9E475H", "Akshat Thawait", "Male", 20);
Query OK, 1 row affected (0.02 sec)

mysql> select * from Voters_2018;
+-----------+----------------+--------+------+---------------+
| Voting_id | Name           | Gender | Age  | Region        |
+-----------+----------------+--------+------+---------------+
| JFJ9E475H | Akshat Thawait | Male   |   20 | Shivaji Nagar |
+-----------+----------------+--------+------+---------------+
1 row in set (0.00 sec)

mysql> insert into Voters_2018 values("KDJFH3759", "Shweta Singh", "Female", 17, "Nagpur");
ERROR 3819 (HY000): Check constraint 'Voters_2018_chk_1' is violated.
mysql> insert into Voters_2022 values("GLO9495HD", "Raj Patel", "Male","Ravet");

ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into Voters_2022 (Voting_id, Name, Gender, Region) values("OFH74859", "Raj Patil", "Male", "Ravet");
ERROR 1364 (HY000): Field 'Age' doesn't have a default value
mysql> insert into Voters_2022 values("GLO9495HD", "Raj Patel", "Male","NULL","Ravet");
ERROR 1366 (HY000): Incorrect integer value: 'NULL' for column 'Age' at row 1
mysql> insert into Voters_2022 values("GLO9495HD", "Raj Patel", "Male",NULL,"Ravet");
ERROR 1048 (23000): Column 'Age' cannot be null
mysql> create table V(Voting_id varchar(10) UNIQUE, Name char(20), Gender char(10), Age int CHECK(Age>=18), Region varchar(20) DEFAULT("Shivaji Nagar"));
ubuntu@ubuntu-OptiPlex-5000:~$ mysql -u root -p;
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 20
Server version: 8.0.30-0ubuntu0.22.04.1 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use voting_2022;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> create table Voters_2017(Voting_id varchar(10) PRIMARY_KEY, Name char(20), Gender char(10), Age int CHECK(Age>=18), Region varchar(20) Default("Shivaji Nagar"));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'PRIMARY_KEY, Name char(20), Gender char(10), Age int CHECK(Age>=18), Region varc' at line 1
mysql> create table Voters_2017(Voting_id varchar(10) PRIMARY KEY, Name char(20), Gender char(10), Age int CHECK(Age>=18), Region varchar(20) Default("Shivaji Nagar"));
Query OK, 0 rows affected (0.04 sec)

mysql> select * from Voters_2017;
Empty set (0.01 sec)

mysql> Insert
