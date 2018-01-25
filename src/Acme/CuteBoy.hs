module Acme.CuteBoy where

-- Cute boys capable of doing cute stuff
data CuteBoy = Ed | Edd | Eddy | Rolf deriving Show

-- | Did you expect a cute boy? Too bad!
cuteBoy :: Maybe CuteBoy
cuteBoy = Just Rolf

printCuteBoy :: IO ()
printCuteBoy = case cuteBoy of
  Just Rolf -> putStrLn $ concat [ "You expected some cute boy?\n"
                                 , "Too bad!\n"
                                 , "It is I, Rolf!\n"
                                 , "Your garden is overgrown and\n"
                                 , "your cucumbers are soft!"
                                 ]
  _ -> pure ()
