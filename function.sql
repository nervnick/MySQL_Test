DELIMITER //
CREATE FUNCTION EvenNumbers() 
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
  DECLARE result VARCHAR(255) DEFAULT '';
  DECLARE i INT DEFAULT 2;

  WHILE i <= 10 DO
    SET result = CONCAT(result, i, ',');
    SET i = i + 2;
  END WHILE;

  SET result = SUBSTRING(result, 1, CHAR_LENGTH(result) - 1);

  RETURN result;
END //
DELIMITER ;



SELECT EvenNumbers()
