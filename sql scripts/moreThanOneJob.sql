use cartProject;

select Employee_empId, count(*) as NumJobs
from EmpJob as EmployeeJobs
group by Employee_empId;
