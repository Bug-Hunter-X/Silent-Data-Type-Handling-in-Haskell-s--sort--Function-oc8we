# Silent Data Type Handling in Haskell's `sort` Function

This repository demonstrates a potential issue with Haskell's `Data.List.sort` function.  The function silently handles lists containing mixed data types without raising an error, which can lead to unexpected behavior and difficult-to-debug issues.

The `bug.hs` file provides examples illustrating this issue. The `bugSolution.hs` file suggests ways to mitigate the risk of such errors.

## Problem

The `sort` function in Haskell does not enforce type homogeneity in the input list. If a list contains elements of different types that cannot be directly compared (e.g., integers and strings), the behavior is undefined and might lead to unexpected results or runtime errors.  The function will compile without warnings, even though the behavior is not what most programmers would expect.

## Solution

The best approach is to ensure type homogeneity. Using explicit type annotations and employing functions such as `map` to transform heterogeneous lists into homogeneous lists can prevent unexpected issues.

This repository serves as a reminder to carefully manage data types and to perform thorough type checking before using functions like `sort` that implicitly assume certain ordering relations.