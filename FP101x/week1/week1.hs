sum [1..10]
take (double 2) [1, 2, 3, 4, 5, 6]

head [1,2,3,4,5]
tail [1,2,3,4,5]

[1,2,3,4,5] !! 2 //Not a constant time operation

take 3 [1,2,3,4,5]
drop 3 [1,2,3,4,5]
length [1,2,3,4,5]

[1,2,3] ++ [4,5]

sum [1,2,3,4,5]
product [1,2,3,4,5]
reverse [1,2,3,4,5]




/*f [] = []
f (x:xs) = f ys ++ [x] + f zs
           where
            ys = [a | a <- xs, a <=x ]
            zs = [b | b <- xs, b > x]*/
