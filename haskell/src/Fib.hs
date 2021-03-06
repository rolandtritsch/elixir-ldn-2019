module Fib where

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

fib2 :: Int -> Integer
fib2 n = go n (0, 1) where
  go 0 (a, _) = a
  go n (a, b) = go (n - 1) (b, a + b)

fib3 :: Int -> Integer
fib3 n = fibs !! n where
  fibs = 0 : 1 : next fibs where
    next (a : t@(b:_)) = (a + b) : next t
