module Karatsuba (multiply) where

multiply :: Integer -> Integer -> Integer
multiply x y =
  if (length . show) x == 1 || (length . show) y == 1
  then x * y
  else ac * 10^(2*halfDigitSize) + (adPlusBc * 10^halfDigitSize) + bd
  where
    minDigitSize = max (length . show $ x) (length . show $ y)
    halfDigitSize = minDigitSize `div` 2
    
    a = x `div` 10^halfDigitSize
    b = x `mod` 10^halfDigitSize
    c = y `div` 10^halfDigitSize
    d = y `mod` 10^halfDigitSize

    ac = multiply a c
    bd = multiply b d
    adPlusBc = (multiply (a+b) (c+d)) - ac - bd
