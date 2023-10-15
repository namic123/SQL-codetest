-- 프로그래머스 3레벨 - 대여 기록이 존재하는 자동차 리스트 구하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/157341
SELECT DISTINCT rh.car_id
FROM car_rental_company_rental_history rh
         LEFT JOIN car_rental_company_car c
                   ON rh.car_id = c.car_id
WHERE (DATE_FORMAT(start_date, '%m-%d') BETWEEN '10-01' AND '10-31')
  AND c.car_type = '세단'
ORDER BY car_id DESC;