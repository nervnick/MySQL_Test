DELIMITER //
CREATE PROCEDURE FormatSeconds(IN seconds INT)
BEGIN
  DECLARE days INT;
  DECLARE hours INT;
  DECLARE minutes INT;

  SET days = seconds DIV (24 * 60 * 60);
  SET seconds = seconds MOD (24 * 60 * 60);
  SET hours = seconds DIV (60 * 60);
  SET seconds = seconds MOD (60 * 60);
  SET minutes = seconds DIV 60;
  SET seconds = seconds MOD 60;

  SELECT CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', seconds, ' seconds') AS formatted_time;
END //
DELIMITER ;



CALL FormatSeconds(1000)
