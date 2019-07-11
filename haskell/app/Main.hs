module Main where

import System.Environment

import Fib

main :: IO ()
main = do
  args <- getArgs
  print $ fib $ read $ head args
