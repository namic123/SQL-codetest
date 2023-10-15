-- 프로그래머스 3레벨 - 조건에 맞는 사용자 정보 조회하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/164670
SELECT DISTINCT ugu.user_id, ugu.nickname,
CONCAT(ugu.city,' ',ugu.street_address1,' ',ugu.street_address2) AS '전체주소',
CONCAT(SUBSTRING(ugu.tlno from 1 for 3),'-',SUBSTRING(ugu.tlno from 4 for 4),'-',SUBSTRING(ugu.tlno from 8 for 4)) AS '전화번호'
FROM used_goods_user ugu JOIN used_goods_board ugb
ON ugu.user_id = ugb.writer_id
GROUP BY ugb.writer_id
HAVING COUNT(ugb.writer_id) > 2
ORDER BY ugu.user_id DESC;