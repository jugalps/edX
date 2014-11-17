-- List Comprehensions
-- [(x,y) | x <- [1,2,3], y <- [4,5]]

-- [(x,y) | x <- [1..3], y <- [x..3]]

-- concat :: [[a]] <- [a]
fconcat xss = [x | xs <- xss, x <- xs]

-- factors :: Int -> [Int]
ffactors n = [x | x <- [1..n], n `mod` x == 0]

-- prime :: Int -> Bool
prime n = ffactors n == [1, n]

-- primes :: Int -> [Int]
primes n = [x | x <- [2..n], prime x]

-- pairs :: [a] -> [(a, a)]
pairs xs = zip xs (tail xs)

-- sortec :: Ord a => [a] -> Bool
sorted xs =
  and [x <= y | (x,y) <- pairs xs]

-- positions :: Eq a => a -> [a] -> [Int]
positions x xs =
    [i | (x', i) <- zip xs [0..n], x == x']
    where n = length xs - 1
