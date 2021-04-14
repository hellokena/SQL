-- DISTINCT 안해도 정답 인정

SELECT DISTINCT CART_ID
FROM CART_PRODUCTS
WHERE NAME = 'YOGURT' AND CART_ID IN (SELECT CART_ID FROM CART_PRODUCTS WHERE NAME = 'MILK')
ORDER BY ID

-- NAME이 YOGURT 인것과 MILK 인것을 FROM에서 SELECT문으로 뽑아주고 WHERE절에서 CARD_ID로 JOIN한다
 SELECT DISTINCT A.CART_ID FROM 
 (SELECT CART_ID FROM CART_PRODUCTS WHERE NAME = 'YOGURT') as A, 
 (SELECT CART_ID FROM CART_PRODUCTS WHERE NAME = 'MILK') as B
 WHERE A.CART_ID = B.CART_ID
