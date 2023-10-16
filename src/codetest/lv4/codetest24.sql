-- 프로그래머스 4레벨 - 식품분류별 가장 비싼 식품의 정보 조회하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/131116
SELECT fp1.category, fp1.price AS max_price, fp1.product_name
FROM food_product fp1 JOIN
     (SELECT category, MAX(price) p
      FROM food_product
      GROUP BY category
     )fp2 ON fp1.category = fp2.category AND fp1.price = fp2.p
WHERE fp1.category IN ('식용유','과자','국','김치')
ORDER BY price DESC