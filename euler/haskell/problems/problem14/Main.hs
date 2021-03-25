import Numbers.Series
import Data.List
import Data.Function (on)

-- Which starting number, under one million, produces the longest chain?

main :: IO ()
main = print solution

solution :: Int
solution = fst $ maximumBy (compare `on` snd) $ map (\x -> (x, collatz x)) [1..1000000]
