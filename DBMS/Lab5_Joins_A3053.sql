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
mysql> insert into customers values(77, "Rahul Verma", 74848738, "India");
Query OK, 1 row affected (0.03 sec)

mysql> insert into customers values(28, "Kate R.", 63774747, "London");
Query OK, 1 row affected (0.02 sec)

mysql> select * from customers;
+------------+--------------+-----------+---------+
| CustomerID | CustomerName | ContactNo | Country |
+------------+--------------+-----------+---------+
|          1 | John Jacob   | 374582827 | Dubai   |
|          2 | Riya Sharma  | 938378292 | India   |
|          3 | Anna Mary    | 83752728  | USA     |
|          4 | Mary Jane    | 74848738  | Germany |
|         28 | Kate R.      | 63774747  | London  |
|         77 | Rahul Verma  | 74848738  | India   |
+------------+--------------+-----------+---------+
6 rows in set (0.00 sec)

mysql> SELECT customers.CustomerName, customers.ContactNo, orders.OrderID
    -> FROM customers
    -> LEFT JOIN orders ON customers.CustomerID = orders.CustomerID
    -> ORDER BY customers.CustomerName;
+--------------+-----------+---------+
| CustomerName | ContactNo | OrderID |
+--------------+-----------+---------+
| Anna Mary    | 83752728  |    NULL |
| John Jacob   | 374582827 |    NULL |
| Kate R.      | 63774747  |   10311 |
| Mary Jane    | 74848738  |    NULL |
| Rahul Verma  | 74848738  |   10310 |
| Riya Sharma  | 938378292 |   10308 |
+--------------+-----------+---------+
6 rows in set (0.02 sec)

mysql> 
mysql> insert into customers values(77, "Rahul Verma", 74848738, "India");
Query OK, 1 row affected (0.03 sec)

mysql> insert into customers values(28, "Kate R.", 63774747, "London");
Query OK, 1 row affected (0.02 sec)

mysql> select * from customers;
+------------+--------------+-----------+---------+
| CustomerID | CustomerName | ContactNo | Country |
+------------+--------------+-----------+---------+
|          1 | John Jacob   | 374582827 | Dubai   |
|          2 | Riya Sharma  | 938378292 | India   |
|          3 | Anna Mary    | 83752728  | USA     |
|          4 | Mary Jane    | 74848738  | Germany |
|         28 | Kate R.      | 63774747  | London  |
|         77 | Rahul Verma  | 74848738  | India   |
+------------+--------------+-----------+---------+
6 rows in set (0.00 sec)

mysql> SELECT customers.CustomerName, customers.ContactNo, orders.OrderID
    -> FROM customers
    -> LEFT JOIN orders ON customers.CustomerID = orders.CustomerID
    -> ORDER BY customers.CustomerName;
+--------------+-----------+---------+
| CustomerName | ContactNo | OrderID |
+--------------+-----------+---------+
| Anna Mary    | 83752728  |    NULL |
| John Jacob   | 374582827 |    NULL |
| Kate R.      | 63774747  |   10311 |
| Mary Jane    | 74848738  |    NULL |
| Rahul Verma  | 74848738  |   10310 |
| Riya Sharma  | 938378292 |   10308 |
+--------------+-----------+---------+
6 rows in set (0.02 sec)

mysql> 
mysql> insert into customers values(77, "Rahul Verma", 74848738, "India");
Query OK, 1 row affected (0.03 sec)

mysql> insert into customers values(28, "Kate R.", 63774747, "London");
Query OK, 1 row affected (0.02 sec)

mysql> select * from customers;
+------------+--------------+-----------+---------+
| CustomerID | CustomerName | ContactNo | Country |
+------------+--------------+-----------+---------+
|          1 | John Jacob   | 374582827 | Dubai   |
|          2 | Riya Sharma  | 938378292 | India   |
|          3 | Anna Mary    | 83752728  | USA     |
|          4 | Mary Jane    | 74848738  | Germany |
|         28 | Kate R.      | 63774747  | London  |
|         77 | Rahul Verma  | 74848738  | India   |
+------------+--------------+-----------+---------+
6 rows in set (0.00 sec)

mysql> SELECT customers.CustomerName, customers.ContactNo, orders.OrderID
    -> FROM customers
    -> LEFT JOIN orders ON customers.CustomerID = orders.CustomerID
    -> ORDER BY customers.CustomerName;
+--------------+-----------+---------+
| CustomerName | ContactNo | OrderID |
+--------------+-----------+---------+
| Anna Mary    | 83752728  |    NULL |
| John Jacob   | 374582827 |    NULL |
| Kate R.      | 63774747  |   10311 |
| Mary Jane    | 74848738  |    NULL |
| Rahul Verma  | 74848738  |   10310 |
| Riya Sharma  | 938378292 |   10308 |
+--------------+-----------+---------+
6 rows in set (0.02 sec)

mysql> 

mysql> SELECT customers.CustomerName, customers.ContactNo, orders.OrderID
    -> FROM customers
    -> RIGHT JOIN orders ON customers.CustomerID = orders.CustomerID
    -> ORDER BY customers.CustomerName;
+--------------+-----------+---------+
| CustomerName | ContactNo | OrderID |
+--------------+-----------+---------+
| NULL         | NULL      |   10309 |
| Kate R.      | 63774747  |   10311 |
| Rahul Verma  | 74848738  |   10310 |
| Riya Sharma  | 938378292 |   10308 |
+--------------+-----------+---------+
4 rows in set (0.00 sec)

mysql> 
mysql> SELECT customers.CustomerName, orders.OrderID
    -> FROM customers
    -> CROSS JOIN orders;
+--------------+---------+
| CustomerName | OrderID |
+--------------+---------+
| John Jacob   |   10311 |
| John Jacob   |   10310 |
| John Jacob   |   10309 |
| John Jacob   |   10308 |
| Riya Sharma  |   10311 |
| Riya Sharma  |   10310 |
| Riya Sharma  |   10309 |
| Riya Sharma  |   10308 |
| Anna Mary    |   10311 |
| Anna Mary    |   10310 |
| Anna Mary    |   10309 |
| Anna Mary    |   10308 |
| Mary Jane    |   10311 |
| Mary Jane    |   10310 |
| Mary Jane    |   10309 |
| Mary Jane    |   10308 |
| Kate R.      |   10311 |
| Kate R.      |   10310 |
| Kate R.      |   10309 |
| Kate R.      |   10308 |
| Rahul Verma  |   10311 |
| Rahul Verma  |   10310 |
| Rahul Verma  |   10309 |
| Rahul Verma  |   10308 |
+--------------+---------+
24 rows in set (0.00 sec)

mysql> SELECT customers.CustomerName, orders.OrderDate FROM customers CROSS JOIN orders;
+--------------+------------+
| CustomerName | OrderDate  |
+--------------+------------+
| John Jacob   | 2022-08-24 |
| John Jacob   | 2022-08-22 |
| John Jacob   | 2022-08-23 |
| John Jacob   | 2022-08-22 |
| Riya Sharma  | 2022-08-24 |
| Riya Sharma  | 2022-08-22 |
| Riya Sharma  | 2022-08-23 |
| Riya Sharma  | 2022-08-22 |
| Anna Mary    | 2022-08-24 |
| Anna Mary    | 2022-08-22 |
| Anna Mary    | 2022-08-23 |
| Anna Mary    | 2022-08-22 |
| Mary Jane    | 2022-08-24 |
| Mary Jane    | 2022-08-22 |
| Mary Jane    | 2022-08-23 |
| Mary Jane    | 2022-08-22 |
| Kate R.      | 2022-08-24 |
| Kate R.      | 2022-08-22 |
| Kate R.      | 2022-08-23 |
| Kate R.      | 2022-08-22 |
| Rahul Verma  | 2022-08-24 |
| Rahul Verma  | 2022-08-22 |
| Rahul Verma  | 2022-08-23 |
| Rahul Verma  | 2022-08-22 |
+--------------+------------+
24 rows in set (0.00 sec)

mysql> SELECT customers.Country, orders.OrderID FROM customers CROSS JOIN orders;
+---------+---------+
| Country | OrderID |
+---------+---------+
| Dubai   |   10311 |
| Dubai   |   10310 |
| Dubai   |   10309 |
| Dubai   |   10308 |
| India   |   10311 |
| India   |   10310 |
| India   |   10309 |
| India   |   10308 |
| USA     |   10311 |
| USA     |   10310 |
| USA     |   10309 |
| USA     |   10308 |
| Germany |   10311 |
| Germany |   10310 |
| Germany |   10309 |
| Germany |   10308 |
| London  |   10311 |
| London  |   10310 |
| London  |   10309 |
| London  |   10308 |
| India   |   10311 |
| India   |   10310 |
| India   |   10309 |
| India   |   10308 |
+---------+---------+
24 rows in set (0.00 sec)

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

mysql> select * from customers;
+------------+--------------+-----------+---------+
| CustomerID | CustomerName | ContactNo | Country |
+------------+--------------+-----------+---------+
|          1 | John Jacob   | 374582827 | Dubai   |
|          2 | Riya Sharma  | 938378292 | India   |
|          3 | Anna Mary    | 83752728  | USA     |
|          4 | Mary Jane    | 74848738  | Germany |
|         28 | Kate R.      | 63774747  | London  |
|         77 | Rahul Verma  | 74848738  | India   |
+------------+--------------+-----------+---------+
6 rows in set (0.00 sec)

mysql> SELECT customers.CustomerName, orders.OrderID
    -> FROM customers
    -> CROSS JOIN orders
    -> WHERE customers.CustomerID=orders.CustomerID;
+--------------+---------+
| CustomerName | OrderID |
+--------------+---------+
| Riya Sharma  |   10308 |
| Rahul Verma  |   10310 |
| Kate R.      |   10311 |
+--------------+---------+
3 rows in set (0.00 sec)






