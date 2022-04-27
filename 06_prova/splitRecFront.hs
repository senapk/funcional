splitAtRec' [] pos ind result = result
splitAtRec' (x:xs) pos ind result
            | ind < pos  = splitAtRec' xs pos (ind + 1) (antes ++ [x], elem, depois)
            | pos == ind = splitAtRec' xs pos (ind + 1) (antes, x, depois)
            | otherwise  = splitAtRec' xs pos (ind + 1) (antes, elem, depois ++ [x])
            where (antes, elem, depois) = result

splitAtRec xs pos = splitAtRec' xs pos 0 ([], 0, [])