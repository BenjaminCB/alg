module Dynamic where

recFibo :: Integral a => a -> a
recFibo n
    | n == 0 = 0
    | n == 1 = 1
    | otherwise = (recFibo (n - 1)) + (recFibo (n - 2))

dynamicFibo :: Int -> Integer
dynamicFibo 0 = 0
dynamicFibo 1 = 1
dynamicFibo n = go n [0, 1] where
    go 0 xs = xs!!n
    go n xs = go (n - 1) (xs ++ [ ( xs!!(length xs - 1) + xs!!(length xs - 2) ) ])

fibo :: Int -> Integer
fibo 0 = 0
fibo 1 = 1
fibo n = go 0 1 n where
    go a b 0 = a
    go a b n = go b (a + b) (n - 1)

fibs = 1 : scanl (+) 1 fibs
