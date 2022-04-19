


-- 3 [1,2,3,4,5,6]
-- 2 [2,3,4,5,6]
-- 1 [3,4,5,6]
-- 0 [4,5,6]
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

at' :: (Eq t, Num t) => [p] -> t -> p
at' (x:xs) ind
    | ind == 0 = x
    | otherwise = at' xs (ind - 1)

at xs ind = at' xs $ mod ind $ length xs
        
main = do
    print $ at [1..10] 0
    print $ at [1..10] 9
    print $ at [1..10] (-1) -- 9
    print $ at [1..10] (11) -- 10
    
-- at xs ind = if ind > 0
--                 then at' xs ind
--                 else at' (reverse xs) (-ind + 1)


-- main = do
--     print $ at [1..10] 0
--     print $ at [1..10] 9

-- pegar o indice dessa posicao
-- at [1..10] 0 == 1
-- at [1..10] 4 == 5

-- tratar os negativos
-- at [1..10] (-1]) == 10
-- at [1..10] (-2) == 9

-- fazer os loop
-- at [1..10] 11) == 1
-- at [1..10] 12) == 2
