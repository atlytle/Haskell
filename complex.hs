data Complex a = Complex {
  re :: a,
  im :: a
} deriving (Eq, Show)

--cplus :: (Num a) => Complex a -> Complex a -> Complex a
--
--cplus z1 z2 = Complex (re z1 + re z2) (im z1 + im z2)

instance (Num a) => Num (Complex a) where
  (+) z1 z2 = Complex (re z1 + re z2) (im z1 + im z2)
  (*) z1 z2 = Complex (x1*x2 - y1*y2) (x1*y2 + x2*y1)
    where x1 = re z1
          x2 = re z2
          y1 = im z1
          y2 = im z2
--  abs :: (Floating a) => Complex a -> Complex a
  abs z = Complex (x*x + y*y) 0  -- sqrt needs typeclass Floating
    where x = re z
          y = im z

--magsq :: Complex -> Double
--
--magsq z = x*x + y*y
--    where x = re z
--          y = im z

--mag :: Complex -> Double
--
--mag z = (sqrt . magsq) z


