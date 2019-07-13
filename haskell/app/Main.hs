module Main where

import System.Environment

import Fib

main :: IO ()
main = do
  args <- getArgs
  print $ fib2 $ read $ head args
