-- https://stackoverflow.com/questions/1138928/mysql-set-current-date-in-a-datetime-field-on-insert
-- need to alter database hireDate default values for mechanic, driver, it tables to: CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

DELIMITER $$
CREATE TRIGGER acceptedStatusUpdate
AFTER UPDATE ON cartproject.application
FOR EACH ROW
BEGIN
	declare maxEmpId INT;
    set maxEmpId = (SELECT max(empId) from employee) + 1;
	IF new.status LIKE '%accepted%'
	THEN		
		
        IF old.User_userId NOT IN (SELECT User_userID from employee)
        THEN
			-- add to employee table
			INSERT INTO cartproject.employee(empId, User_userID, hireDate)
			VALUES(maxEmpId, old.User_userId, NOW());
		END IF;
        
        -- add to empjob table
        INSERT INTO cartproject.empjob
        VALUES((SELECT empId FROM cartproject.employee WHERE User_userId = old.User_userId),
				old.Job_jobId);
		
        -- add to mechanic table
        IF old.Job_jobId = 1
        THEN
			INSERT INTO cartproject.mechanic(EmpJob_Employee_empId, EmpJob_Job_jobId, certified, positionLength)
			VALUES((SELECT empId FROM cartproject.employee WHERE User_userId = old.User_userId),
					1, 0, 0);
		END IF;
        
        -- add to driver table
        IF old.Job_jobId = 2
		THEN
			INSERT INTO cartproject.driver(EmpJob_Employee_empId, EmpJob_Job_jobId, positionLength)
			VALUES((SELECT empId FROM cartproject.employee WHERE User_userId = old.User_userId),
					2, 0);
		END IF;
        
		-- add to it table
        IF old.Job_jobId = 3
		THEN
			INSERT INTO cartproject.it(EmpJob_Employee_empId, EmpJob_Job_jobId, positionLength)
			VALUES((SELECT empId FROM cartproject.employee WHERE User_userId = old.User_userId),
					3, 0);
		END IF;
        
    END IF;
    
END $$
    

    
    
