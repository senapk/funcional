
soma x y = x + y

somaTodos xs = foldl soma 0 xs

somar_impares xs = foldl (\a y -> if odd y then a + y else a) 0 xs


menor xs = foldl (\a x -> if x<a then x else a) (head xs) xs

contido a xs = foldl achei False xs
    where achei res x = res || x == a

impares xs = foldl empacotar [] xs
    where empacotar acc x = if odd x then acc++[x] else acc  

achei (acc, y) x = if x == y then (acc + 1, y) else (acc, y)
contar xs y = foldl achei (0, y) xs


encontrar_repetido (acc, x) y = if x == y then (acc + 1, y) else (acc, y)
contar_iguais  (x:xs) = fst $ foldl encontrar_repetido (0, x) xs

e_primo z = foldl isDiv True [2.. z-1]
    where isDiv res val = res && z `mod` val /= 0