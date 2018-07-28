use accommodations;
insert into lease
values
-- Turner, 3 Bedroom Suite
(1, 12345670, 1, 1, 'Turner', '2017-09-01','2018-04-28',2,3), -- Vivek in Turner Suite 1
(2, 12345673, 1, 2, 'Turner', '2017-09-01','2018-04-28',2,3), -- Michael in Turner Suite 1

-- Scioto, 5 Bedroom Suite
(3, 12345672, 2, 5, 'Scioto', '2017-09-01','2018-04-28',2,5),
(4, 12345674, 2, 4, 'Scioto', '2017-09-01','2018-04-28',2,5),
(5, 12345679, 2, 6, 'Scioto', '2017-09-01','2018-04-28',2,4),
(6, 12345680, 2, 7, 'Scioto', '2017-09-01','2018-04-28',2,5),
(7, 12345681, 2, 8, 'Scioto', '2017-09-01','2018-04-28',2,5),

-- Single rooms
(8, 12345675, null, 9, 'Dabney', '2017-09-01','2018-04-28',2,3),
(9, 12345676, null, 10, 'Daniels', '2017-09-01','2018-04-28',2,3),
(10, 12345677, null, 11, 'Calhoun', '2017-09-01','2018-04-28',2,3)

-- (Lease_Num, MNumber, Suite_UID, Room_UID, Residence_Hall_Name, Move_In, Move_Out, Duration, Academic_Year)

-- 12345671	2	Kyle	Cullion	1996-10-14	M	U	american	waiting		32	Ravine	Cincinnati	OH	45220	3
-- 12345674	2	Zack	Steck	1996-11-26	M	G	american	placed	408	321	Baker	Cincinnati	OH	45220	5
-- 12345675	4	Michael	King	1997-01-04	M	G	american	placed	300	365	Street	Cincinnati	OH	45220	3
-- 12345676	3	Riley	Jackson	1997-06-17	M	U	american	placed	204	56	Searching	Cincinnati	OH	45220	3
-- 12345677	3	Evan	Shearer	1997-02-24	M	U	indian	placed	101	32	Ravine	Cincinnati	OH	45220	3
-- 12345678	4	Bobby	Tables	1997-02-24	M	U	korean	waiting		300	Baker	Cincinnati	OH	45220	1
															