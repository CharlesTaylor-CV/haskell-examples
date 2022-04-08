module Main where

import Data.List (foldl')

allTrue :: [Bool]
allTrue = True : allTrue

main :: IO ()
main = do
  let
    bools :: [Bool]
    bools = False : allTrue

  putStrLn "Both foldr & foldl' compile"
  putStrLn "foldr terminates"
  print $ foldr (&&) True bools

  putStrLn "foldl' will hang forever on an infinite list"
  print $ foldl' (&&) True bools
