{-# OPTIONS_GHC -fno-warn-orphans #-}

-- |
-- Module      : Gen.Orphans
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gen.Orphans where

import Gen.Prelude
import qualified Language.Haskell.Exts.Build as Build
import Language.Haskell.Exts.Syntax

instance Hashable l => Hashable (Name l)

instance IsString (Name ()) where
  fromString = Build.name

instance IsString (QName ()) where
  fromString = UnQual () . Build.name

instance IsString (QOp ()) where
  fromString = Build.op . Build.sym
