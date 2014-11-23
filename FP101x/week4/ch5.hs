module Ch5 where
import Data.Char

-- [(x, y) | x <- [1,2,3], y <- [4,5]]
-- [(x, y) | x <- [1..3], y <- [x..3]]

nconcat ::  [[a]] -> [a]
nconcat xss = [x | xs <- xss, x <- xs]

nfirsts :: [(a, b)] -> [a]
nfirsts ps = [x | (x, _) <- ps]

nlengths :: [a] -> Int
nlengths xs = sum [1 | _ <- xs]

nfactors :: Int -> [Int]
nfactors n = [x | x <- [1..n], n `mod` x == 0]

nprime :: Int -> Bool
nprime n = nfactors n == [1, n]

nprimes :: Int -> [Int]
nprimes n = [x | x <- [2..n], nprime x]

find :: Eq a => a -> [(a,b)] -> [b]
find k t = [v | (k', v) <- t, k == k']

pairs :: [a] -> [(a, a)]
pairs xs = zip xs (tail xs)

sorted :: Ord a => [a] -> Bool
sorted xs = and [x <= y | (x, y) <- pairs xs]

positions :: Eq a => a -> [a] -> [Int]
positions x xs = [i | (x', i) <- zip xs [0..n], x == x']
                 where n = length xs - 1

nlowers :: String -> Int
nlowers xs = length [x | x <- xs, isLower x]

ncount :: Char -> String -> Int
ncount x xs = length [x' | x' <- xs, x == x']
