import Data.List

double x = x + x

doubleSmall x = 
    if x > 100
    then x
    else x + x

boomBangs xs = [if x < 10 then "BOOM" else "BanG"| x <- xs, odd x]

firstThreeNums :: (Num a) => [a] -> [a]
--
firstThreeNums (x:y:z:_) = [x,y,z]
firstThreeNums _ = error "Probably length < 3"

tidySecond :: [a] -> Maybe a
--
tidySecond (_:x:_) = Just x
tidySecond _       = Nothing

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

seeNsay :: (Num a) => [a] -> [a]
-- 
seeNsay x = concat $ map (\w -> [fromIntegral $ length w, head w]) $ group x

f :: (a, b) -> a
f (a, b) = a

length' :: [a] -> Integer
--
length' [] = 0
length' (x:xs) = 1 + length' xs
