-- 프로그래머스 2레벨 가격이 제일 비싼 식품
SELECT product_id, product_name, product_cd, category, price
FROM food_product
ORDER BY price DESC
LIMIT 1;