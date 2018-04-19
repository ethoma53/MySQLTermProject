SELECT a.appId, b.lastName, b.firstName, c.jobName, a.status, a.dateApplied, datediff(NOW(), a.dateApplied) as NumDaysInQueue
FROM cartproject.application as a
INNER JOIN cartproject.user as b
ON a.User_userId = b.userId
INNER JOIN cartproject.job as c
ON a.Job_jobId = c.jobId
WHERE (a.status LIKE ('%not opened%') OR a.status LIKE ('%pending%'))
AND datediff(NOW(), a.dateApplied) >= 30
AND a.User_userId NOT IN (SELECT User_userId 
						  FROM employee)
ORDER BY dateApplied;

