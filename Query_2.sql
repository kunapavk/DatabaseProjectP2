use accommodations;
select Lname, Employee_Num
from staff
where Employee_Num not in (select Manager_Employee_Num from residence_hall) and Job_Title = 'Hall Manager'