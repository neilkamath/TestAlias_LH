{-# OPTIONS_GHC -fplugin=LiquidHaskell #-}
{-@ LIQUID "--reflection" @-}
{-@ LIQUID "--ple-local" @-}

module Main where

import ListSpecs
import StringSpecs

-- Type aliases in LiquidHaskell are predicates that define sets of values
-- They are written using the syntax: {-@ type Alias = {v:Type | predicate} @-}
-- where 'v' is a bound variable representing any value of that type

-- This will cause an error because LiquidHaskell doesn't support
-- qualifying type aliases. The following specification will be rejected:
-- "ListSpecs.INat is not in scope"
{-@ demoFunc :: [a] -> ListSpecs.INat @-}
demoFunc :: [a] -> Int
demoFunc = len

main :: IO ()
main = do
    putStrLn "Testing LiquidHaskell type alias qualification issue:"
    putStrLn $ "Length of [1,2,3]: " ++ show (demoFunc [1,2,3]) 