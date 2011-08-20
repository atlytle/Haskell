nsquared_divisors n = [x | x <- [2..n-1], n*n `mod` x == 0]

divisors n = (length $ nsquared_divisors n) + 2

main = print $ length $ takeWhile (<500) (map divisors [1..])
