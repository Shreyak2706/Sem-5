create table Borrower(Roll_no int, Name varchar(20), DateofIssue date, NameofBook varchar(20), Status varchar(10));

create table fines(Roll_no int, Sys_date date, Fine int);

insert into Borrower values(1, 'Sam', '03/08/2022', 'TOC', 'I'); 
insert into Borrower values(2, 'Joe', '11/10/2022', 'DBMS', 'R'); 
insert into Borrower values(3, 'Mary', '12/02/2022', 'OOPS', 'R'); 
insert into Borrower values(4, 'Lilly', '01/05/2022', 'CNS', 'I'); 
insert into Borrower values(5, 'Jay', '06/05/2022', 'TOC', 'I'); 
insert into Borrower values(6, 'Ross', '09/10/2022', 'SPOS', 'R'); 
insert into Borrower values(7, 'Rachel', '12/08/2022', 'FDS', 'I'); 

select * from Borrower;

ROLL_NO	NAME	DATEOFISSUE	NAMEOFBOOK	STATUS
1	Sam	03/08/2002	TOC	i
7	Rachel	12/08/2022	FDS	I
2	Joe	11/10/2022	DBMS	R
1	Sam	03/08/2022	TOC	I
2	Joe	11/10/2022	DBMS	R
3	Mary	12/02/2022	OOPS	R
4	Lilly	01/05/2022	CNS	I
5	Jay	06/05/2022	TOC	I
6	Ross	09/10/2022	SPOS	R
7	Rachel	12/08/2022	FDS	I
1	Sam	03/08/2022	TOC	I
7	Rachel	12/08/2022	FDS	I
7	Rachel	12/08/2022	FDS	I
13 rows returned in 0.00 seconds	        	Download
