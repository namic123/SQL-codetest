-- 프로그래머스 3레벨 - 있었는데요 없었습니다.
-- https://school.programmers.co.kr/learn/courses/30/lessons/59043
SELECT i.animal_id, i.name
FROM animal_ins i JOIN animal_outs o
ON i.animal_id = o.animal_id
WHERE i.datetime > o.datetime
ORDER BY i.datetime;