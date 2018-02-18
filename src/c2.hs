module C2 where

{- Comprehension Check -}

-- The let seems unneeded for the repl.

-- let half x = x / 2

-- let square x = x * x

circleArea r = pi * (r * r)

{- Heal the Sick -}

-- let area x = 3.14 * (x * x)

-- let double x = x * 2

x = 7
y = 10
f = x + y

{- A Head Code -}

-- let x = 5 in x
-- 5

--let x = 5 in x * x
-- 25

--let x = 5; y = 6 in x * y
-- 30

--let x = 3; y = 1000 in x + 3
-- 6

letToWhere1 = x * 3 + y
  where
    x = 3
    y = 1000

letToWhere2 = x * 5
  where
    y = 10
    x = 10 * 5 + y

letToWhere3 = z / x + y
  where
    x = 7
    y = negate x
    z = y * 10

{- Chapter Exercise -}

-- Parenthisization

_ = 2 + 2 * 3 - 1
_ = (2 + (2 * 3)) - 1

_ = (^) 10 $ 1 + 1
_ = (^) 10 (1 + 1)

_ = 2 ^ 2 * 4 ^ 5 + 1
_ = ((2 ^ 2) * (4 ^ 5)) + 1

-- Equivalent Expressions

_ = 1 + 1
_ = 2
-- 2

_ = 10 ^ 2
_ = 10 + 9 * 10
-- 100

_ = 100 `div` 3
_ = 100 / 3
-- 33; 33.33..

_ = 2 * 5 + 18
_ = 2 * (5 + 18)
-- 28; 46

-- More fun with functions
waxOn = let z = 7; y = z + 8; x = y ^ 2 in x * 5
-- 1125

_ = 10 + waxOn
-- 1135

_ = (+10) waxOn
-- 1135

_ = (-) 15 waxOn
-- -1110

_ = (-) waxOn 15
-- 1110

triple x = x * 3
_ = triple waxOn
-- 3375

waxOn2 = x * 5
  where
    z = 7
    y = z + 8
    x = y ^ 2

_ = waxOn2 == waxOn
-- True

waxOff x = triple x
_ = waxOff waxOn
-- 3375

_ = waxOff 10
-- 30

_ = waxOff (-50)
-- -150
