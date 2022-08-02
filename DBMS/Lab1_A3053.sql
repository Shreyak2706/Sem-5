ubuntu@ubuntu-OptiPlex-5000:~$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 16
Server version: 8.0.30-0ubuntu0.22.04.1 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database couriers;
Query OK, 1 row affected (0.02 sec)

mysql> use couriers;
Database changed
mysql> create table dunzo(item_id int, item_name varchar(10), address varchar(50), delivery_status char(10));
Query OK, 0 rows affected (0.04 sec)

mysql> insert into dunzo values(1, "Donut(MOD)", "Chinchwadgaon", "Pending");
Query OK, 1 row affected (0.03 sec)

mysql> select * from dunzo;
+---------+------------+---------------+-----------------+
| item_id | item_name  | address       | delivery_status |
+---------+------------+---------------+-----------------+
|       1 | Donut(MOD) | Chinchwadgaon | Pending         |
+---------+------------+---------------+-----------------+
1 row in set (0.00 sec)

mysql> insert into dunzo values (2, "Clothing (H&M)", "Aundh", "Delivered");
ERROR 1406 (22001): Data too long for column 'item_name' at row 1
mysql> alter table dunzo modify item_id varchar(25);
Query OK, 1 row affected (0.06 sec)
Records: 1  Duplicates: 0  Warnings: 0

mysql> alter table dunzo modify item_name varchar(25);
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> insert into dunzo values (2, "Clothing (H&M)", "Aundh", "Delivered");
Query OK, 1 row affected (0.03 sec)

mysql> insert into dunzo values(3, "Shoes (Converse)", "Viman Nagar", "Delivered");
Query OK, 1 row affected (0.03 sec)

mysql> select * from dunzo;
+---------+------------------+---------------+-----------------+
| item_id | item_name        | address       | delivery_status |
+---------+------------------+---------------+-----------------+
| 1       | Donut(MOD)       | Chinchwadgaon | Pending         |
| 2       | Clothing (H&M)   | Aundh         | Delivered       |
| 3       | Shoes (Converse) | Viman Nagar   | Delivered       |
+---------+------------------+---------------+-----------------+
3 rows in set (0.00 sec)

mysql> alter table dunzo modify item_id varchar(25);
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> update dunzo set item_id = "MH00345" where item_id="1";
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update dunzo set item_id = "MH04500" where item_id="2";
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update dunzo set item_id = "MH87503" where item_id="3";
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from dunzo;
+---------+------------------+---------------+-----------------+
| item_id | item_name        | address       | delivery_status |
+---------+------------------+---------------+-----------------+
| MH00345 | Donut(MOD)       | Chinchwadgaon | Pending         |
| MH04500 | Clothing (H&M)   | Aundh         | Delivered       |
| MH87503 | Shoes (Converse) | Viman Nagar   | Delivered       |
+---------+------------------+---------------+-----------------+
3 rows in set (0.00 sec)

mysql> delete from dunzo where delivery_status="delivered";
Query OK, 2 rows affected (0.00 sec)

mysql> select * from dunzo;
+---------+------------+---------------+-----------------+
| item_id | item_name  | address       | delivery_status |
+---------+------------+---------------+-----------------+
| MH00345 | Donut(MOD) | Chinchwadgaon | Pending         |
+---------+------------+---------------+-----------------+
1 row in set (0.00 sec)
