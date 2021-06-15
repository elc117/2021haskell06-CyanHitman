--Gabriel da Silva França

--1
ends :: [Int] -> [Int]
ends [] = []
ends x = head x : [last x]

--2
deduzame :: [Integer] -> [Integer]
deduzame [] = []
deduzame (x:xs) = (2 * x) : deduzame xs

--3
deduzame2 :: [Integer] -> [Integer]
deduzame2 [] = []
deduzame2 (x:xs) = if x > 2
  then x : deduzame2 xs
  else deduzame2 xs

--4
geraTabela :: Int -> [(Int,Int)]
geraTabela 0 = []
geraTabela n = (n, n^2) : geraTabela (n-1) 

--5
contido :: Char -> String -> Bool
contido c "" = False
contido c (x:xs)
  | c == x = True
  | otherwise = c `contido` xs

--6
translate :: [(Float, Float)] -> [(Float, Float)]
translate [] = []
translate ((f,g): xs) = (f+2, g+2) : translate xs

--7
countLongs :: [String] -> Int
countLongs [] = 0
countLongs (x:xs) = if length x > 5 then 1 + countLongs xs else countLongs xs

--8
onlyLongs :: [String] -> [String]
onlyLongs [] = [] 
onlyLongs (x:xs) = if length x > 5 then x : onlyLongs xs else onlyLongs xs

