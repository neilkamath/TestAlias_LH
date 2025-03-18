{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module PackageInfo_liquid_haskell_test (
    name,
    version,
    synopsis,
    copyright,
    homepage,
  ) where

import Data.Version (Version(..))
import Prelude

name :: String
name = "liquid_haskell_test"
version :: Version
version = Version [0,1,0,0] []

synopsis :: String
synopsis = "Testing LiquidHaskell Type Aliases"
copyright :: String
copyright = ""
homepage :: String
homepage = ""
