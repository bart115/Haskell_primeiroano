---1---
enumFromTo1 :: Int -> Int -> [Int]
enumFromTo1 start end 
    | start > end = []
    | otherwise = start : enumFromTo1 (start + 1) end
---2---
enumFromThenTo1 :: Int -> Int -> Int -> [Int]
enumFromThenTo1 start next end
    | start > end && next >= start || start < end && next < start = []
    | otherwise = start : enumFromThenTo1 next (2 * next - start) end
---3---
maismais :: [a] -> [a] -> [a]
maismais [] l = l
maismais (h:t) l = h : maismais t l 
---4---
excla :: [a] -> Int -> a
excla (h:_) 0 = h
excla (_:t) n = excla t (n-1)
---5---
reverse1 :: [a] -> [a]
reverse1 [] = []
reverse1w (h:t) = reverse1 t ++ [h]
---6---
take1 :: Int -> [a] -> [a]
take1 _ [] = []
take1 n (h:t) 
     |n <= 0 = []
     |otherwise = h : take1 (n-1) t
---7---
drop1 :: Int -> [a] -> [a]
drop1 _ [] = []
drop1 n (h:t)
      | n <= 0 = (h:t)
      | otherwise = drop1 (n-1) t
---8---
zip1 :: [a] -> [b] -> [(a,b)]
zip1 _ [] = []
zip1 [] _ = []
zip1 (a : b) (c : d) = (a,c) : zip1 b d 
---9---
replicate1 :: Int -> a -> [a]
replicate1 0 v = []
replicate1 n v = v : replicate1 (n-1) v 
---10---
intersperse1 :: a -> [a] -> [a]
intersperse1 n [] = []
intersperse1 n (h:t) = [h] ++ n : intersperse1 n t 
---11---
--rever--
group1 :: Eq a => [a] -> [[a]]
group1 [] = []
group1 [a] = [[a]]
group1 (h:t) | elem h (head r) = (h : (head r)) : tail r 
             |otherwise = [h] : r 
       where r = group1 t
---12--- 
concat1 :: [[a]] -> [a]  
concat1 [] = []
concat1 (h : t) = h ++ concat1 t  
---13---
inits :: [a] -> [[a]]
inits [] = [[]]
inits l = inits (init l) ++ [l]
---14---
tails :: [a] -> [[a]]
tails [] = [[]]
tails l =  [l] ++ tails (tail l)
---15---
heads :: [[a]] -> [a]
heads [[]] = []
heads ((x:y):t) = x : heads t
---16---
total :: [[a]] -> Int
total [] = 0 
total ((x:y):t) = (length (x:y)) + total t  
---17---
fun :: [(a,b,c)] -> [(a,c)] 
fun [] = []
fun ((x,y,z):t) = (x,z) : fun t 
---18---
cola :: [(String,b,c)] -> String
cola [] = ""
cola ((x,y,z):t) = x ++ cola t 
---19---
idade :: Int -> Int -> [(String,Int)] -> [String]
idade _ _ [] = []
idade a b ((x,y):t) |(a - y) >= b = x : idade a b t
                    |otherwise = idade a b t 
---20---
powerEnumFrom :: Int -> Int -> [Int]
powerEnumFrom n m = aux n m 0
aux n m expo = if expo < m then n^expo : aux n m (expo+1)
              else []
---21---
--rever 
isPrime :: Int -> Bool
isPrime n
    | n >= 2 = primeCheck n 2
    | otherwise = False

primeCheck :: Int -> Int -> Bool
primeCheck n m
    | m * m > n = True
    | mod n m == 0 = False
    | otherwise = primeCheck n (m + 1)

---22---
isPrefixOf :: Eq a => [a] -> [a] -> Bool
isPrefixOf [] _ = True
isPrefixOf _ [] = False
isPrefixOf (h:t) (h1:t1) = h == h1 && isPrefixOf t t1
---23---
isSuffixOf :: Eq a => [a] -> [a] -> Bool
isSuffixOf [] _ = True
isSuffixOf _ [] = False 
isSuffixOf l l1 = last l == last l1 && isSuffixOf (tail l) (tail l1)
---24---
--rever
isSubsequenceOf :: Eq a => [a] -> [a] -> Bool
isSubsequenceOf [] _ = True
isSubsequenceOf _ [] = False
isSubsequenceOf (h:t) (h1:t1) = h == h1 && isSubsequenceOf t t1 || isSubsequenceOf (h:t) t1
---25---
--para que serve o 0 em cima
elemIndices :: Eq a => a -> [a] -> [Int]
elemIndices x l = elemIndicesAux x l 0

elemIndicesAux :: Eq a => a -> [a] -> Int -> [Int]
elemIndicesAux _ [] _ = []
elemIndicesAux x (h:t) i -- a variável `i` indica-nos qual o índice do elemento da lista que estamos a consultar
    | x == h = i : elemIndicesAux x t (i+1)
    | otherwise = elemIndicesAux x t (i+1)
---26---
nub :: Eq a => [a] -> [a]
nub (h:t) | h == fst t = h : nub t  
          | h == fst t = _ : nub t
          | otherwise 