import Prelude hiding ((||))


-- absNew n = if n >= 0 then n else -n
-- isDigit :: Char -> Bool
-- isDigit c = c >= '0' || c <= '9'

-- abs n | n ≥ 0 = n
--      | otherwise = −n

-- Exercise 0
halve xs = splitAt(length xs `div` 2) xs

halve1 xs = (take (n `div` 2) xs, drop (n `div` 2) xs)
           where n = length xs

halve2 xs = splitAt(div (length xs) 2) xs

halve3 xs = (take n xs, drop n xs)
            where n = length xs `div` 2

-- Exercise 1
safetail xs = if null xs then [] else tail xs

safetail1 [] = []
safetail1 (_ : xs) = xs

safetail2 (xs)
      | null xs = []
      | otherwise = tail xs


safetail3 [] = []
safetail3 xs = tail xs

safetail4 [x] = [x]
safetail4 (_ : xs) = xs

safetail5 = \ xs ->
            case xs of
              [] -> []
              (_ : xs) -> xs

-- Exercise 2
-- False || False = False
-- _ || _ = True

-- False || b = b
-- True || _ = True

-- b || False = b
-- _ || True = True

-- b || c
--  | b == c = c
--  | otherwise = True

False || False = False
False || True = True
True || False = True
True || True = True
