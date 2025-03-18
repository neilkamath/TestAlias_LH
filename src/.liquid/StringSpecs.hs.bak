{-# OPTIONS_GHC -fplugin=LiquidHaskell #-}
{-@ LIQUID "--reflection" @-}
{-@ LIQUID "--ple-local" @-}

module StringSpecs where

-- Define a type alias for non-negative integers (conflicting with ListSpecs)
{-@ type INat = {v:Int | v >= 0} @-}

-- Function to get string length
{-@ strLength :: String -> INat @-}
strLength :: String -> Int
strLength [] = 0
strLength (_:xs) = 1 + strLength xs