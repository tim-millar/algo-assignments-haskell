module Main where

import Karatsuba (multiply)
import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let result = foldr multiply 0 $ map read args
  putStrLn . show $ result
