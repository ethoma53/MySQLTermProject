use cartProject;

SET GLOBAL event_scheduler = ON;

DELIMITER $$
CREATE PROCEDURE archiveApplications()
	BEGIN
		INSERT INTO archive
        SELECT * FROM application
        WHERE status = 'rejected' OR 'accepted';
        
        DELETE FROM application
        WHERE status = 'rejected' OR 'accepted';
	END $$
        

CREATE EVENT cartProject.archivec
ON SCHEDULE EVERY 3 DAY STARTS CURRENT_TIMESTAMP
+ INTERVAL 10 MINUTE
DO
	CALL archiveApplications();
    


