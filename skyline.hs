data Building = Building {
  getL :: Int,
  getH :: Int,
  getR :: Int
} deriving (Show)

data Line = Line {
  getX :: Int,
  getY :: Int
} deriving (Show)

type City = [Building]
type Skyline = [Line]

--sliceCity :: Int -> City -> City
  -- list comprehension
--tallestBuilding :: City -> Int
  -- max height
--createSkyline :: City -> Skyline
  -- list comprehension
--compressSkyline :: Skyline -> Skyline

