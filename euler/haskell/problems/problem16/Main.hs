import Data.Char

main :: IO ()
main = print (sum numList)
  where num = show (2^1000)
        numList = map digitToInt num

