{-# LANGUAGE FlexibleInstances #-}

{-# OPTIONS_GHC -fno-warn-orphans #-}

-- Module      : Gen.Orphans
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Orphans where

import           Data.Hashable
import           Data.String
import           Language.Haskell.Exts.Build
import           Language.Haskell.Exts.Syntax

instance Hashable l => Hashable (Name l)

instance IsString (Name ())  where fromString = name
instance IsString (QName ()) where fromString = UnQual () . name
instance IsString (QOp ())   where fromString = op . sym
