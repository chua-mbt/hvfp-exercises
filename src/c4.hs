module C3 where

{- Mood Swing -}

data Mood = Blah | Woot deriving Show

-- Mood

-- Blah, Woot

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood Woot = Blah