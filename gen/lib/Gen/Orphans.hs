{-# OPTIONS_GHC -fno-warn-orphans #-}

module Gen.Orphans where

import Data.Hashable
import Data.String
import Language.Haskell.Exts.Build
import Language.Haskell.Exts.Syntax

instance (Hashable l) => Hashable (Name l)

instance IsString (Name ()) where
  fromString = name

instance IsString (QName ()) where
  fromString = UnQual () . name

instance IsString (QOp ()) where
  fromString = op . sym
