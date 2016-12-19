module Main where

import Karatsuba (multiply)
import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let result = foldr multiply 1 $ (map (\s -> read s :: Integer)) args
  putStrLn . show $ result
