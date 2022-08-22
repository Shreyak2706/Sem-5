mysql> create database customerinfo;
Query OK, 1 row affected (0.02 sec)

mysql> create table orders;
ERROR 1046 (3D000): No database selected
mysql> use customerinfo;
Database changed
mysql> create table orders;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> create table orders(OrderID int primary key, CustomerID varchar(20), OrderDate DATE);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into orders values( 10308, "2", '2022-08-22');
Query OK, 1 row affected (0.01 sec)

mysql> insert into orders values( 10309, "37", '2022-08-23');
Query OK, 1 row affected (0.01 sec)

mysql> insert into orders values( 10310, "77", '2022-08-22');
Query OK, 1 row affected (0.02 sec)

mysql> insert into orders values( 10311, "28", '2022-08-24');
Query OK, 1 row affected (0.02 sec)

mysql> select * from customerinfo;
ERROR 1146 (42S02): Table 'customerinfo.customerinfo' doesn't exist
mysql> select * from orders;
+---------+------------+------------+
| OrderID | CustomerID | OrderDate  |
+---------+------------+------------+
|   10308 | 2          | 2022-08-22 |
|   10309 | 37         | 2022-08-23 |
|   10310 | 77         | 2022-08-22 |
|   10311 | 28         | 2022-08-24 |
+---------+------------+------------+
4 rows in set (0.00 sec)

mysql> create table customers(CustomerID int primary key, CustomerName varchar(30), ContactNo long, Country varchar (20));
Query OK, 0 rows affected (0.02 sec)

mysql> insert into customers values( 1, John Jacob, +256 374582827, Dubai);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Jacob, +256 374582827, Dubai)' at line 1
mysql> insert into customers values( 1, John Jacob, +256374582827, Dubai);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Jacob, +256374582827, Dubai)' at line 1
mysql> insert into customers values( 1, John Jacob, 374582827, Dubai);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Jacob, 374582827, Dubai)' at line 1
mysql> insert into customers values( 1, "John Jacob", 374582827, "Dubai");
Query OK, 1 row affected (0.00 sec)

mysql> insert into customers values( 2, "Riya Sharma", 938378292, "India");
Query OK, 1 row affected (0.03 sec)

mysql> insert into customers values( 3, "Anna Mary", 83752728, "USA");
Query OK, 1 row affected (0.02 sec)

mysql> insert into customers values( 4, "Mary Jane", 74848738, "Germany");
Query OK, 1 row affected (0.03 sec)

mysql> select * from customers;
+------------+--------------+-----------+---------+
| CustomerID | CustomerName | ContactNo | Country |
+------------+--------------+-----------+---------+
|          1 | John Jacob   | 374582827 | Dubai   |
|          2 | Riya Sharma  | 938378292 | India   |
|          3 | Anna Mary    | 83752728  | USA     |
|          4 | Mary Jane    | 74848738  | Germany |
+------------+--------------+-----------+---------+
4 rows in set (0.00 sec)

mysql> SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
    -> FROM Orders
    -> SELECT orders.OrderID, customers.CustomerName, orders.OrderDate
    -> FROM orders
    -> INNER JOIN customers ON orders.CustomerID=customers.CustomerID;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELECT orders.OrderID, customers.CustomerName, orders.OrderDate
FROM orders
INNE' at line 3
mysql> SELECT orders.OrderID, customers.CustomerName, orders.OrderDate
    -> FROM orders
    -> INNER JOIN customers ON orders.CustomerID=customers.CustomerID;
+---------+--------------+------------+
| OrderID | CustomerName | OrderDate  |
+---------+--------------+------------+
|   10308 | Riya Sharma  | 2022-08-22 |
+---------+--------------+------------+
1 row in set (0.00 sec)

mysql> 

