-- table에서 고양이와 개의 수를 각각 세는 문제
-- (고양이->개)

SELECT ANIMAL_TYPE, COUNT(ANIMAL_TYPE)
FROM ANIMAL_INS
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE
