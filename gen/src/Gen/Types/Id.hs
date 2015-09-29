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
    (
    -- * Property Prefixes
      Prefix (..)

    -- * Unique Identifiers
    , Global
    , Local

    , global
    , local

    , gid
    , lid

    , reference

    -- * Naming
    , aname
    , mname
    , dname
    , cname
    , bname
    , fname
    , lname
    , pname
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
import           GHC.Generics                 (Generic)
import           Language.Haskell.Exts.Build
import           Language.Haskell.Exts.Pretty (prettyPrint)
import           Language.Haskell.Exts.Syntax (Name)

aname :: Text -> Name
aname = name . Text.unpack . mappend "API" . upperHead . Text.replace "." ""

mname :: Text -> Global -> (Name, Global, Text)
mname abrv g =
    ( name   (Text.unpack n <> "API") -- Action service type alias.
    , Global (n <> "'")               -- Action data type.
    , Text.intercalate "." ns         -- Action namespace.
    )
  where
    n = mconcat (drop 1 ns)

    ns | CI.mk e == CI.mk x = e:xs
       | otherwise          = x:xs
      where
        e    = Text.replace "." "" abrv
        x:xs = map (upperAcronym . upperHead) $ Text.split (== '.') (global g)

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

dname, cname :: Global -> Name
dname = name . Text.unpack . upperHead . global
cname = name . Text.unpack . renameReserved . lowerHead . global

bname :: Prefix -> Text -> Name
bname (Prefix p) = name
    . Text.unpack
    . mappend (Text.toUpper p)
    . renameBranch

fname, lname, pname :: Prefix -> Local -> Name
fname = pre (Text.cons '_' . renameField)
lname = pre renameField
pname = pre (flip Text.snoc '_' . Text.cons 'p' . upperHead . renameField)

-- apretty :: Local -> Local -> Text
-- apretty p l = upperHead (local l) <> " " <> upperHead (local p)

pre :: (Text -> Text) -> Prefix -> Local -> Name
pre f (Prefix p) = name . Text.unpack . f . mappend p . upperHead . local

newtype Prefix = Prefix Text
    deriving (Show, Monoid)

newtype Global = Global { global :: Text }
    deriving (Eq, Ord, Show, Generic, Hashable, FromJSON, ToJSON, IsString)

instance TextKey Global where
    toKey   = Global
    fromKey = global

gid :: Format a (Global -> a)
gid = later (Build.fromText . global)

newtype Local = Local { local :: Text }
    deriving (Eq, Ord, Show, Generic, Hashable, FromJSON, ToJSON, IsString)

instance TextKey Local where
    toKey   = Local
    fromKey = local

lid :: Format a (Local -> a)
lid = later (Build.fromText . local)

reference :: Global -> Local -> Global
reference (Global g) (Local l) = Global (g <> "." <> l)
