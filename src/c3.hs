module C3 where

{- Scope
Yes
No
No
Yes
-}

area d = pi * (r * r)
  where r = d / 2

{- Syntax Errors -}

_ = (++) [1,2,3] [4,5,6] -- No
_ = "<3" ++ " Haskell" -- No
_ = concat ["<3", " Haskell"] -- Yes

{- Chapter Exercise -}

-- Reading Syntax

_ = concat[[1,2,3],[4,5,6]] -- Yes
_ = (++) [1,2,3] [4,5,6] -- No
_ = (++) "hello" "world" -- Yes
_ = ["hello" ++ " world"] -- No
_ = "hello" !! 4 -- No
_ = (!!) "hello" 4 -- Yes
_ = take 4 "lovely" -- No
_ = take 3 "awesome" -- Yes

-- Reading Syntax

readingSyntax = do {
  print (concat [[1 * 6], [2 * 6], [3 * 6]] == [6, 12, 18])
  ; print ("rain" ++ drop 2 "elbow" == "rainbow")
  ; print (10 * head [1,2,3] == 10)
  ; print ((take 3 "Julie") ++ (tail "yes") == "Jules")
  ; print ((concat [tail [1,2,3], tail [4,5,6], tail [7,8,9]]) == [2,3,5,6,8,9]) }

-- Building functions
bf0 x = tail x
bf0V = print $ (bf0 "Hello World") == "ello World"

bf1 x = x ++ "!"
bf1V = print $ (bf1 "Curry is awesome") == "Curry is awesome!"

bf2 x = [x !! 4]
bf2V = print $ (bf2 "Curry is awesome") == "y"

bf3 x = drop 9 (bf1 x)
bf3V = print $ (bf3 "Curry is awesome") == "awesome!"

thirdLetter :: String -> Char
thirdLetter x = x !! 2

letterIndex :: Int -> Char
letterIndex x = "Curry is awesome!" !! x

rvrs = concat[three, " ", two, " ", one]
  where
    whole = "Curry is awesome"
    one = take 5 whole
    two = take 2 $ drop 6 whole
    three = take 7 $ drop 9 whole