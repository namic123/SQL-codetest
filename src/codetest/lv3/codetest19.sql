-- 프로그래머스 3레벨 - 조건에 맞는 사용자와 총 거래금액 조회하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/164668
SELECT b.writer_id, u.nickname, SUM(b.price) AS total_sales
FROM used_goods_board b LEFT JOIN used_goods_user u
ON b.writer_id = u.user_id
WHERE b.status = 'DONE'
GROUP BY b.writer_id
HAVING total_sales >= 700000
ORDER BY total_sales;