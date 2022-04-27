

fn x ((antes, elem, depois), pos)
                | pos < 0   = ((x:antes, elem,   depois), pos - 1)
                | pos == 0  = ((  antes, x   ,   depois), pos - 1)
                | otherwise = ((  antes, elem, x:depois), pos - 1)

splitAtFold xs pos = fst $ foldr fn (([], 0, []), length xs - pos - 1) xs
