
fib 1 = 1
fib 2 = 2
fib n = fib (n-1) + fib (n-2)

fib' n
    | n <= 2 = 1
    | otherwise = fib' (n-1) + fib' (n-2)
