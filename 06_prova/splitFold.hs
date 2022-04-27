

fn ((antes, elem, depois), pos) x
                | pos > 0   = ((antes ++ [x], elem, depois       ), pos - 1)
                | pos == 0  = ((antes       , x   , depois       ), pos - 1)
                | otherwise = ((antes       , elem, depois ++ [x]), pos - 1)

splitAtFold xs pos = fst $ foldl fn (([], 0, []), pos) xs
