-- 프로그래머스 3레벨- 조건별로 분류하여 주문상태 출력하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/131113
SELECT order_id, product_id, DATE_FORMAT(out_date, '%Y-%m-%d') AS out_date , CASE
 WHEN out_date IS NULL THEN '출고미정'
 WHEN DATE_FORMAT(out_date, '%m-%d') < '05-02' THEN '출고완료'
 ELSE '출고대기'
    END AS '출고여부'
FROM food_order
ORDER BY order_id;