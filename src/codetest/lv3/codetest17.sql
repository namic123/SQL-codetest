-- 프로그래머스 3레벨 - 오랜 기간 보호한 동물(2)
-- https://school.programmers.co.kr/learn/courses/30/lessons/59411
SELECT o.animal_id, o.name
FROM animal_outs o LEFT JOIN animal_ins i
ON o.animal_id = i.animal_id
ORDER BY TIMESTAMPDIFF(SECOND, i.datetime, o.datetime) DESC
    LIMIT 2;