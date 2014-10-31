import Prelude hiding ((&&))

-- True && True = True
-- _ && _ = False

--a && b = if a
--          then
--            if b
--              then True
--            else False
--          else
--            False

a && b = if b then a else False

mult = \ x -> (\ y -> (\ z -> x * y * z))

remove n xs = take n xs ++ drop (n + 1) xs

funct :: Int -> [a] -> [a]
funct x xs = take (x + 1) xs ++ drop x xs

e3 x = x * 2

e4 (x, y) = x

e5 (x, y, z) = z

e6 x y = x * y

e7 (x, y) = (y, x)

e8 x y = (y, x)

e9 [x, y] = (x, True)

e10 (x, y) = [x, y]

e13 x y = x + y * y

e15 xs ys = (head xs, head ys)
