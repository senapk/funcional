


splitAtRec [] pos = ([], 0, [])
splitAtRec (x:xs) pos
            | pos > 0   = (x:antes, elem, depois)
            | pos == 0  = (antes, x, depois)
            | otherwise = (antes, elem, x:depois)
            where (antes, elem, depois) = splitAtRec xs (pos - 1)

