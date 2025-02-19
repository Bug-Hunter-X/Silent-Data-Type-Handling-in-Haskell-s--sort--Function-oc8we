```haskell
import Data.List (sort)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5 :: Int]
  let ys = sort xs
  print ys -- Output: [1,2,3,4,5]

  let zs = [5,4,3,2,1 :: Int]
  let ws = sort zs
  print ws -- Output: [1,2,3,4,5]

  --Handle heterogeneous lists using explicit type conversions or filtering
  let mixedList = [1, "a", 2, "b", 3]
  let nums = filter isNumber mixedList
  let sortedNums = sort (map (
    x -> read x :: Int
  ) (map show nums))
  print sortedNums  -- Output: [1,2,3]
  
  where
    isNumber x = case reads x :: [(Int, String)] of 
      [(n, "")] -> True
      _ -> False
```