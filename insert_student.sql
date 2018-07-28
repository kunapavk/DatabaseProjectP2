use accommodations;
insert into student
values
-- Turner, 3 Bedroom Suite
(12345670, 2, 'Vivek', 'Kunapareddy', '1997-12-04', 'M', 'G','indian','placed',121,45,'Da','Cincinnati','OH',45220,3), -- Turner -- Suite (3 Bedroom, with Michael)
(12345673, 2, 'Michael', 'Keenan', '1996-09-26', 'M', 'U','american','placed',120,45,'Da','Cincinnati','OH',45220,3), -- Turner -- Suite (3 Bedroom, with Vivek) 

-- Scioto, 5 Bedroom Suite
(12345672, 3, 'Joe', 'Hirschfeld', '1996-08-07', 'M', 'U','american','placed',407,321,'Baker','Cincinnati','OH',45220,5), -- Scioto -- Suite (5 Bedroom, with Zack)
(12345674, 2, 'Zack', 'Steck', '1996-11-26', 'M', 'G','american','placed',408,321,'Baker','Cincinnati','OH',45220,5), -- Scioto -- Suite (5 Bedroom, with Joe)
(12345679, 2, 'Gob', 'Bluthe', '1996-11-27', 'M', 'G','american','placed',406,321,'Baker','Cincinnati','OH',45220,4), -- Scioto -- Suite (5 Bedroom)
(12345680, 3, 'Tobias', 'Funke', '1997-09-27', 'M', 'G','american','placed',405,321,'Baker','Cincinnati','OH',45220,5), -- Scioto -- Suite (5 Bedroom)
(12345681, 4, 'Lindsay', 'Bluthe', '1995-09-30', 'F', 'G','american','placed',404,321,'Baker','Cincinnati','OH',45220,5), -- Scioto -- Suite (5 Bedroom)

-- Singles
(12345675, 4, 'Michael', 'King', '1997-01-04', 'M', 'G','american','placed',300,365,'Street','Cincinnati','OH',45220,3), -- Dabney
(12345676, 3, 'Riley', 'Jackson', '1997-06-17', 'M', 'U','american','placed',204,56,'Searching','Cincinnati','OH',45220,3), -- Daniels
(12345677, 3, 'Evan', 'Shearer', '1997-02-24', 'M', 'U','indian','placed',101,32,'Ravine','Cincinnati','OH',45220,3), -- Calhoun

-- Unplaced
(12345671, 2, 'Kyle', 'Cullion', '1996-10-14', 'M', 'U','american','waiting',null,32,'Ravine','Cincinnati','OH',45220,3), -- Calhoun
(12345678, 4, 'Bobby', 'Tables', '1997-02-24', 'M', 'U','korean','waiting',null,300,'Baker','Cincinnati','OH',45220,1) -- Stratford

-- Calhoun		22266666	4565553215	32	Ravine		Cincinnati	OH	45220
-- Dabney		0			1112223333	365	Street		Cincinnati	OH	45220
-- Daniels		11122222	9876543211	56	Searching	Cincinnati	OH	45220
-- Scioto		55555		1231234444	321	Baker		Cincinnati	OH	45220
-- Stratford	33399999	6667778888	300	Baker		Cincinnati	OH	45220
-- Turner		33388888	1234567899	45	Da			Cincinnati	OH	45220