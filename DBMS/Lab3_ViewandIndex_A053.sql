ubuntu@ubuntu-OptiPlex-5000:~$ mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.30-0ubuntu0.22.04.1 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use couriers;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> create view delivery as select item_id, delivery_status from dunzo;
Query OK, 0 rows affected (0.03 sec)

mysql> select * from dunzo;
+---------+------------+---------------+-----------------+
| item_id | item_name  | address       | delivery_status |
+---------+------------+---------------+-----------------+
| MH00345 | Donut(MOD) | Chinchwadgaon | Pending         |
+---------+------------+---------------+-----------------+
1 row in set (0.03 sec)

mysql> select * from delivery;
+---------+-----------------+
| item_id | delivery_status |
+---------+-----------------+
| MH00345 | Pending         |
+---------+-----------------+
1 row in set (0.00 sec)
mysql> drop view delivery;
Query OK, 0 rows affected (0.02 sec)
mysql> select * from delivery;
ERROR 1146 (42S02): Table 'couriers.delivery' doesn't exist
