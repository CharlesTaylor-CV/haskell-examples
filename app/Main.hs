module Main where

import Data.List (foldl')

allTrue :: [Bool]
allTrue = True : allTrue

main :: IO ()
main = do
  let
    bools :: [Bool]
    bools = False : allTrue

  putStrLn "This example compiles and terminates"
  print $ foldr (&&) True bools

  putStrLn "This example compiles but will hang forever"
  print $ foldl' (&&) True bools
