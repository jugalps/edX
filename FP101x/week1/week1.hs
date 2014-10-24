sum [1..10]
take (double 2) [1, 2, 3, 4, 5, 6]


/*f [] = []
f (x:xs) = f ys ++ [x] + f zs
           where
            ys = [a | a <- xs, a <=x ]
            zs = [b | b <- xs, b > x]*/
