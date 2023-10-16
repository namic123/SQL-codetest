-- 프로그래머스 4레벨 - 보호소에서 중성화한 동물
-- https://school.programmers.co.kr/learn/courses/30/lessons/59045
SELECT i.animal_id, i.animal_type, i.name
FROM animal_ins i JOIN animal_outs o
                       ON i.Animal_id = o.Animal_id
WHERE i.sex_upon_intake LIKE '%Intact%'
  AND o.sex_upon_outcome NOT LIKE'%Intact%'
ORDER BY i.animal_id;