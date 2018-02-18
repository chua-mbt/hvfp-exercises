module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

sayHello :: String -> IO ()
sayHello x =
  putStrLn ("Hello," ++ x ++ "!")