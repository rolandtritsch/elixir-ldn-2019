module Main where

import System.Environment
import System.TimeIt (timeItT)
import Text.Printf (printf)
import Control.Exception (evaluate)

import Fib

main :: IO ()
main = do
  args <- getArgs
  case args of
    [n, n1, n2] -> run (map read args)
    _ -> printf "Usage: run n n1 n2"

run :: [Int] -> IO ()
run args = do
  (time, result) <- timeItT $ evaluate $ fib (args !! 0)
  printf "fib (%f): %d\n" time result
  (time2, result2) <- timeItT $ evaluate $ fib2 (args !! 1)
  printf "fib2 (%f): %d\n" time2 result2
  (time3, result3) <- timeItT $ evaluate $ fib3 (args !! 2)
  printf "fib3 (%f): %d\n" time3 result3
