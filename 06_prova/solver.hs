
splitAtFn xs pos = (take pos xs, xs !! pos, drop (pos + 1) xs)

-- swap [1..10] 2 4 = [1,2,5,4,3,6,7,8,9,10]
-- [1,2] 5 [4,3,6,7,8,9,10]    a ep1 resto
-- [1,2] 5 [4] 3 [6,7,8,9,10]  a ep1 b ep2 c
-- [1,2] 3 [4] 5 [6,7,8,9,10]
swap xs p1 p2 = inicio ++ [ep2] ++ meio ++ [ep1] ++ fim
    where (inicio, ep1, resto) = splitAtFn xs p1
          (meio, ep2, fim) = splitAtFn resto (p2 - p1 - 1)
