pertence :: (Foldable t, Eq a) => a -> t a -> Bool
pertence a b = elem a b

main :: IO ()
main = do
    -- a <- readLn :: IO Int
    -- b <- readLn :: IO [Int]
    print $ pertence 1 [] == False
    print $ pertence 1 [3] == False
    print $ pertence 3 [4] == False
    print $ pertence 1 [3,7,4,2] == False
    print $ pertence 2 [3,7,4,2] == True
    print $ pertence 3 [3,7,4,2] == True
    print $ pertence 7 [3,7,4,2] == True
