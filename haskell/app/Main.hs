module Main where

import System.Environment
import System.TimeIt (timeItT)
import Text.Printf (printf)
import Control.Exception (evaluate)

import Fib

main :: IO ()
main = do
  args <- getArgs
  (time, result) <- timeItT $ evaluate $ fib (read $ args !! 0)
  printf "fib (%f): %d\n" time result
  (time2, result2) <- timeItT $ evaluate $ fib2 (read $ args !! 1)
  printf "fib2 (%f): %d\n" time2 result2
  (time3, result3) <- timeItT $ evaluate $ fib3 (read $ args !! 2)
  printf "fib3 (%f): %d\n" time3 result3
