-- 프로그래머스 2레벨 - 동명 동물 수 찾기
SELECT name, COUNT(name) as count_name
FROM animal_ins
GROUP BY name
HAVING count_name > 1
ORDER BY name;