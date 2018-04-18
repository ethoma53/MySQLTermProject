SELECT a.appId, b.lastName, b.FirstName, c.jobName, a.status, a.dateApplied
FROM cartproject.application as a
INNER JOIN cartproject.user as b
ON a.User_userId = b.userId
INNER JOIN cartproject.job as c
ON a.Job_jobId = c.jobId
WHERE a.status IN ('not opened ', ' pending ')
ORDER BY dateApplied;
