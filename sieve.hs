sieve :: [Int] -> [Int]
--
sieve [] = []
sieve (1:xs) = sieve xs  -- Remove 1.
sieve (x:xs) = x:(sieve [w | w <- xs, (w `mod` x) /= 0])

primeSums :: Int  -> [(Int, Int)]
--
primeSums n = [(x, y) | x <- sieve [2..n], y <- sieve [2..n], x+y == n]

candidate :: Int -> Int
candidate n 
    | primeSums n == [] = n
    | primeSums n /= [] = 0

--filter (/=0) (map candidate [4..40])
