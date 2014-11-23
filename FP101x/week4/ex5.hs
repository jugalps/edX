import Ch5

sum100 = sum [x ^ 2 | x <- [1..100]]

nreplicate n a = [a | _ <- [1..n]]

pyths n = [(x, y, z) | x <- [1..n], y <- [1..n], z <- [1..n],
           x^2 + y ^2 == z^2]

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], isPerfect x]
             where isPerfect num = sum (init (factors num)) == num

ex4 = [(x, y) | x <- [1,2,3], y <- [4,5,6]]
ex4a = concat [[(x,y) | y <- [4,5,6]] | x <- [1,2,3]]

npositions x xs = find x (zip xs [0..n])
                  where n = length xs - 1


scalarproduct xs ys = sum [x * y | (x,y) <- xs `zip` ys]

xs = 1 : [x + 1 | x <- xs]

riffle xs ys = concat [[x,y] | (x,y) <- xs `zip` ys]

divides :: Int -> Int -> Bool
divides x y = x `mod` y == 0

divisors :: Int -> [Int]
divisors x = [d | d <- [1..x], x `divides` d]
