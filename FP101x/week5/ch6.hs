import Prelude hiding ((*), even, odd)

factorial 0 = 1
factorial (n) = (n) * factorial (n - 1)

(*) :: Int -> Int -> Int
m * 0 = 0
m * n = m + (m * (n - 1))

insert :: Ord a => a -> [a] -> [a]
insert x [] = [x]
insert x (y : ys) | x <= y = x : y : ys
                  | otherwise = y : insert x ys

isort :: Ord a => [a] -> [a]
isort [] = []
isort (x : xs) = insert x (isort xs)

nzip :: [a] -> [b] -> [(a, b)]
nzip [] _ = []
nzip _ [] = []
nzip (x : xs) (y : ys) = (x , y) : nzip xs ys


ndrop :: Int -> [a] -> [a]
ndrop 0 xs = xs
ndrop (n) [] = []
ndrop (n) (_ : xs) = drop (n - 1) xs


fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 2) + fibonacci (n - 1)


qsort :: Ord a => [a ] -> [a]
qsort [] = []
qsort (x : xs) = qsort smaller ++ [x] ++ qsort larger
                 where
                    smaller = [a | a <- xs, a <= x ]
                    larger = [b | b <- xs, b > x ]

even :: Int -> Bool
even 0 = True
even n = odd (n - 1)

odd :: Int -> Bool
odd 0 = False
odd n = even (n - 1)

evens :: [a] -> [a]
evens [] = []
evens (x : xs) = x : odds xs

odds :: [a] -> [a]
odds [] = []
odds (_ : xs) = evens xs
