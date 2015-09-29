{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase                 #-}
{-# LANGUAGE OverloadedStrings          #-}

-- Module      : Gen.Types.Id
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Types.Id
    ( Prefix (..)
    , Global
    , Local
    , gid
    , lid
    , reference
    ) where

import           Control.Applicative
import           Control.Lens                 hiding (pre, (.=))
import           Data.Aeson                   hiding (Bool, String)
import           Data.Aeson.TH
import qualified Data.Attoparsec.Text         as A
import           Data.Bifunctor
import qualified Data.CaseInsensitive         as CI
import           Data.Char
import           Data.Function                (on)
import           Data.Hashable
import qualified Data.HashMap.Strict          as Map
import           Data.List.NonEmpty           (NonEmpty (..))
import qualified Data.List.NonEmpty           as NE
import           Data.Maybe
import           Data.Ord
import           Data.Semigroup               hiding (Sum)
import           Data.String
import           Data.Text                    (Text)
import qualified Data.Text                    as Text
import qualified Data.Text.Lazy               as LText
import qualified Data.Text.Lazy.Builder       as Build
import           Data.Text.Manipulate
import           Formatting
import           Gen.Orphans                  ()
import           Gen.Text
import           Gen.Types.Map
import           GHC.Generics
import           Language.Haskell.Exts.Build
import           Language.Haskell.Exts.Pretty (prettyPrint)
import           Language.Haskell.Exts.Syntax (Name)

-- vname :: Text -> Text -> (Name, Id, [Text])
-- vname abrv r = (dname (g (n <> "API")), g (n <> "'"), ns)
--   where
--     g = Free . Global
--     n = mconcat (drop 1 ns)

--     ns | CI.mk e == CI.mk x = e:xs
--        | otherwise          = x:xs
--       where
--         e    = Text.replace "." "" abrv
--         x:xs = map (upperAcronym . upperHead) $ Text.split (== '.') r

-- dname, cname :: Id -> Name
-- dname = name . Text.unpack . upperHead . idToText
-- cname = name . Text.unpack . renameReserved . lowerHead . idToText

-- bname :: Pre -> Text -> Name
-- bname (Pre p) = name
--     . Text.unpack
--     . mappend (Text.toUpper p)
--     . renameBranch

-- fname, lname, pname :: Pre -> Local -> Name
-- fname = pre (Text.cons '_' . renameField)
-- lname = pre renameField
-- pname = pre (flip Text.snoc '_' . Text.cons 'p' . upperHead . renameField)

-- apretty :: Local -> Local -> Text
-- apretty p l = upperHead (local l) <> " " <> upperHead (local p)

-- pre :: (Text -> Text) -> Pre -> Local -> Name
-- pre f (Pre p) = name . Text.unpack . f . mappend p . upperHead . local

newtype Prefix = Prefix Text
    deriving (Show, Monoid)


newtype Global = Global { global :: Text }
    deriving (Eq, Show, Generic, Hashable, FromJSON, ToJSON, IsString)

instance TextKey Global where
    toKey   = Global
    fromKey = global

gid :: Format a (Global -> a)
gid = later (Build.fromText . global)

newtype Local = Local { local :: Text }
    deriving (Eq, Show, Generic, Hashable, FromJSON, ToJSON, IsString)

instance TextKey Local where
    toKey   = Local
    fromKey = local

lid :: Format a (Local -> a)
lid = later (Build.fromText . local)

reference :: Global -> Local -> Global
reference (Global g) (Local l) = Global (g <> "." <> l)
