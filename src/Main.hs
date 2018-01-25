module Main where

import Acme.CuteBoy

import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  if "-h" `elem` args || "--help" `elem` args
    then putStrLn help
    else printCuteBoy
  where
    help = concat [ "CuteBoy -- attempts to get a cute boy.\n"
                  , "\n"
                  , "Flags:\n"
                  , "-h,  --help    Prints this help menu\n"
                  , "\n"
                  , "Anything else  attempts to get a cute boy."
                  ]
