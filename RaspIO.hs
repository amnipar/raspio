module Main where

import System.Directory
import System.FilePath

isHigh :: FilePath -> IO (Bool)
isHigh f = do
  c <- readFile f
  if (head c) == '1' then return True
  else return False

main = do
  d <- getDirectoryContents "."
  print d
  h <- isHigh "test"
  print h
