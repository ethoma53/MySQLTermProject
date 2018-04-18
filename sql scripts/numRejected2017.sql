use cartProject;

SELECT COUNT(*)
FROM
	(SELECT DISTINCT userId
	FROM archive
	WHERE status LIKE '%rejected%'
	AND decisionDate > 2017-01-01) AS archive;