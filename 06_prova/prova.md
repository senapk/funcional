## operacoes em lista
splitAt [1,2,3,4,5,6,7] 2 = ([1,2],3,[4,5,6,7])
splitAt xs pos = (take pos xs, xs !! 2, drop (pos + 1) xs)

## fold

## recursão
