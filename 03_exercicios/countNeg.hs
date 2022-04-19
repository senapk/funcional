

countNeg :: (Ord a, Num a) => [a] -> Int
countNeg xs = length [x | x <- xs, x < 0]


-- countNeg xs = length $ (\x -> x < 0) isNeg xs


-- final 0 [] = []
-- final 3 [2,5,4,7,9,6] == [7,9,6]
-- final 2 [2,5,4,7,9,6] == [9,6]
-- final 1 [2,5,4,7,9,6] == [6]

length' :: Num p => [a] -> p
length' [] = 0
length' (x:xs) = 1 + length' xs 

soma [] = 0
soma (x:xs) = x + soma xs 

[4, 3, 1, 7, 8]

4 ou menor [3, 1, 7, 8]

4 ou 3 ou menor [1, 7, 8]
4 ou 3 ou 1 ou menor [7, 8]
4 ou 3 ou 1 ou 7 ou menor [8]



-- menor [x] = x
-- menor (x:xs) = min x $ menor xs

-- pertence y [] = False
-- pertence y (x:xs) = y == x || pertence y xs

contar y [] = 0
contar y (x:xs) = (if y == x then 1 else 0) + contar y xs


contar 4 [1,2,4,3,4,5,4]
0 + 0 + 1 + 0 + 1 + 0 + 1