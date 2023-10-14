-- 프로그래머스 2레벨 - DATETIME에서 DATE로 형 변환
SELECT animal_id, name, DATE_FORMAT(DATETIME, '%Y-%m-%d') AS '날짜'
FROM animal_ins
ORDER BY animal_id;