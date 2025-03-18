{-# OPTIONS_GHC -fplugin=LiquidHaskell #-}
{-@ LIQUID "--reflection" @-}
{-@ LIQUID "--ple-local" @-}

module ListSpecs where

-- Define a type alias for non-negative integers
{-@ type Pos = {v:Int | v >= 0} @-}

-- Function to get length of a list
{-@ len :: [a] -> Pos @-}
len :: [a] -> Int
len [] = 0
len (_:xs) = 1 + len xs