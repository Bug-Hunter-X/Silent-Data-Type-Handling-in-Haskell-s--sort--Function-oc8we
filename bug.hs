```haskell
import Data.List (sort)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs
  print ys -- Output: [1,2,3,4,5]
  let zs = [5,4,3,2,1]
  let ws = sort zs
  print ws -- Output: [1,2,3,4,5]

  let nums1 = [1,2,3,4,5]
  let nums2 = [5,4,3,2,1]
  let sortedNums1 = sort nums1
  let sortedNums2 = sort nums2
  if sortedNums1 == sortedNums2
    then print "The lists are equal after sorting"
    else print "The lists are not equal after sorting"
```