data Complex = Complex {
  re :: Double,
  im :: Double
} deriving (Eq, Show)

magsq :: Complex -> Double
--
magsq z = x*x + y*y
    where x = re z
          y = im z

mag :: Complex -> Double
--
mag z = (sqrt . magsq) z

--add :: Complex -> Complex -> Complex
--
add z1 z2 = Complex (re z1 + re z2) (im z1 + im z2)

mult :: Complex -> Complex -> Complex
--
mult z1 z2 = Complex (x1*x2 - y1*y2) (x1*y2 + x2*y1)
  where x1 = re z1
        x2 = re z2
        y1 = im z1
        y2 = im z2

mandelbrot :: Complex -> Complex -> Complex
--
mandelbrot c z = add (mult z z) c  --should overload +, *

-- First attempt:
iterate' :: (Complex -> Complex) -> Complex -> [Complex]
--
iterate' rule z = [z'] ++ iterate rule z'
    where z' = rule z

-- Like the actual iterate:
iterate'' :: (Complex -> Complex) -> Complex -> [Complex]
--
iterate'' rule z = z:iterate'' rule (rule z)

orbitLength :: Int -> Complex -> Int
--
orbitLength max c = length $ take max $ takeWhile (\x -> magsq x < 4) orbit
    where orbit = iterate'' (mandelbrot c) (Complex 0 0)

display :: Bool -> Char
--
display False = ' '  -- use guards?
display True = '*'

