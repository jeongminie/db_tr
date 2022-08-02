SELECT * FROM `user` u 
WHERE 1=1 
-- AND name LIKE '%5'
-- AND name LIKE 'a%'
AND name LIKE '%dm%';

SELECT * FROM `user` u 
WHERE 1=1
-- AND userSeq > 5
-- AND userSeq >=5
AND userSeq BETWEEN 1 and 7;

SELECT * FROM `user` u 
WHERE 1=1
AND userId IS NULL;