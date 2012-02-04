sieve :: [Int] -> [Int]
--
sieve [] = []
sieve (1:xs) = sieve xs  -- Remove 1.
sieve (x:xs) = x:(sieve [w | w <- xs, (w `mod` x) /= 0])


--"impossible problem"

primeSums :: Int  -> [(Int, Int)]
--
primeSums n = [(x, y) | x <- primes, y <- primes, x+y == n]
    where primes = sieve [2..n]

discIntegers :: [Int] -> Int -> (Int,[Int])
--
discIntegers slist p = (p, [s | s <- slist, (s*s - 4*p) `elem` squares, s/=(p+1)])
    where 
        squares = [s*s | s <- [2..(maximum slist)]]

n=40
mrS = [s | s <- [4..n], primeSums s == []]
mrP = [x | x <- map (discIntegers mrS) [4..n*n], length (snd x) == 1]


