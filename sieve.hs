sieve :: [Int] -> [Int]
--
sieve [] = []
sieve (1:xs) = sieve xs  -- Remove 1.
sieve (x:xs) = x:(sieve [w | w <- xs, (w `mod` x) /= 0])

sums :: Int -> Int -> [(Int, Int)]
--
sums max n = [(x, y) | x <- [2..max], y <- [2..max], x+y == n]

--remove st x <- primes and y <- primes

--[x | x <- tuples, fst x <- primes, snd x <- primes]
