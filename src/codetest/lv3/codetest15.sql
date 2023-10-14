-- 프로그래머스 3레벨 - 카테고리 별 도서 판매량 집계하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/59044
SELECT b.category, SUM(bs.sales) as total_sales
FROM book b LEFT JOIN book_sales bs
ON b.book_id = bs.book_id
WHERE bs.sales_date BETWEEN '2022-01-01' AND '2022-01-31'
GROUP BY b.category
ORDER BY b.category;