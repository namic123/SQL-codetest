-- 프로그래머스 2레벨 -중성화 여부 파악하기
SELECT animal_id, name, CASE
WHEN sex_upon_intake
IN (
    SELECT sex_upon_intake
    FROM animal_ins
    WHERE sex_upon_intake
    LIKE '%Neutered%' OR sex_upon_intake LIKE '%Spayed%'
    ) THEN 'O'
ELSE 'X'
    END AS '중성화'
FROM animal_ins
ORDER BY animal_id;