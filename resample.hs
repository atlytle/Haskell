-- central value: meas dat
-- jackknife values: map meas jkSample dat

cYcle :: Int -> [a] -> [a]
--
cYcle n xs = back ++ front
 where (front, back) = splitAt n xs

cYcle' :: [a] -> Int -> [a]
--
cYcle' xs n = back ++ front
 where (front, back) = splitAt n xs

jkSample :: [a] -> [[a]]
--
jkSample xs = map (take (n-1)) $ map (cYcle' xs) [0..(n-1)]
 where n = length xs

jkSigma :: (Floating a) => a -> [a] -> a
--
jkSigma ave sample = (sum [(x - ave)**2 | x <- sample])*(1-1/n)
 where n = fromIntegral $ length sample

--bootstrap
