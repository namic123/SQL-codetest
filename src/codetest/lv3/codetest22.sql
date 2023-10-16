-- 프로그래머스 3레벨 - 조회수가 가장 많은 중고거래 게시판의 첨부파일 조회하기
-- https://school.programmers.co.kr/learn/courses/30/lessons/164671
SELECT CONCAT('/home/grep/src/',ugf.board_id,'/',ugf.file_id,ugf.file_name,ugf.file_ext)
    AS file_path
FROM used_goods_file ugf JOIN used_goods_board ugb
 ON ugf.board_id = ugb.board_id
WHERE ugb.views = (
    SELECT MAX(views)
    FROM used_goods_board
)
ORDER BY ugf.file_id DESC