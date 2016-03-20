{-# LANGUAGE FlexibleInstances #-}

{-# OPTIONS_GHC -fno-warn-orphans #-}

-- Module      : Gen.Orphans
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Orphans where

import           Data.Aeson
import           Data.Aeson.Types
import           Data.Bifunctor
import           Data.Hashable
import qualified Data.HashMap.Strict          as Map
import           Data.String
import qualified Data.Text                    as Text
import           Language.Haskell.Exts.Build
import           Language.Haskell.Exts.Pretty
import           Language.Haskell.Exts.Syntax

instance Hashable Name

instance IsString Name  where fromString = name
instance IsString QName where fromString = UnQual . name
instance IsString QOp   where fromString = op . sym

instance ToJSON a => ToJSON (Map.HashMap Name a) where
    toJSON = toJSON
        . Map.fromList
        . map (first (Text.pack . prettyPrint))
        . Map.toList
