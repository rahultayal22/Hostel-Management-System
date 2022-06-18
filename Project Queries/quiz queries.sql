
Select deptname,avg(salary) as AverageSalary
from Employee inner join Department
on Employee.deptid=Department.deptid
Group By Deptname;

With EmployeeCTE As
(
Select *,ROW_NUMBER() over(Partition By empid order by empid) as RowNumber
from Employee
)

Delete from EmployeeCTE where RowNumber >1

Select empname,deptname 
from Employee inner join Department
on Employee.deptid=Department.deptid
where Employee.DOB IN
(
Select MIN(DOB)from Employee
Group by deptid
)