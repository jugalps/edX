import Prelude hiding ((^), (!!), concat, replicate, elem)

-- m ^ 0 = 1
-- m ^ n = m * m ^ (n - 1)

-- m ^ 0 = 1
-- m ^ n = m * (^) m (n - 1)

m ^ 0 = 1
m ^ n = m * m * m ^ (n - 2)

nand [] = False
nand (b : bs) = b || and bs

concat :: [[a]] -> [a]
concat [] = []
concat (xs : xss) = xs ++ concat xss

replicate :: (Num a, Ord a) => a -> a -> [a]
replicate 0 _ = []
replicate n x = x : replicate (n - 1) x

(!!) :: [a] -> Int -> a
(x : _) !! 0 = x
(_ : xs) !! n = xs !! (n - 1)


elem :: Eq a => a -> [a] -> Bool
elem _ [] = False
elem x (y : ys)
  | x == y = True
  | otherwise = elem x (y : ys)

merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x : xs) (y : ys) = if x <= y then x : merge xs (y : ys) else y : merge (x : xs) ys

halve :: [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs


msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge (msort ys) (msort zs)
           where (ys, zs) = halve xs
