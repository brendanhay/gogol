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
import           Data.Foldable                (foldMap)
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
aname = name . Text.unpack . (<> "API") . upperHead . Text.replace "." ""

mname :: Text -> Global -> (Name, Global, Text)
mname abrv (Global g) =
    ( aname (mconcat n)       -- Action service type alias.
    , Global (n <> ["'"])     -- Action data type.
    , Text.intercalate "." ns -- Action namespace.
    )
  where
    n = drop 1 (map (upperHead . upperAcronym) ns)

    ns | CI.mk e == CI.mk x = e:xs
       | otherwise          = x:xs
      where
        e    = Text.replace "." "" abrv
        x:xs = g

dname, cname :: Global -> Name
dname = name . Text.unpack . toPascal . global
cname = name . Text.unpack . renameReserved . toCamel . global

bname :: Prefix -> Text -> Name
bname (Prefix p) = name
    . Text.unpack
    . mappend (Text.toUpper p)
    . renameBranch

fname, lname, pname :: Prefix -> Local -> Name
fname = pre (Text.cons '_' . renameField)
lname = pre renameField
pname = pre (flip Text.snoc '_' . Text.cons 'p' . upperHead . renameField)

pre :: (Text -> Text) -> Prefix -> Local -> Name
pre f (Prefix p) = name . Text.unpack . f . mappend p . upperHead . local

newtype Prefix = Prefix Text
    deriving (Show, Monoid)

newtype Global = Global [Text]
    deriving (Eq, Ord, Show, Generic, Hashable)

instance IsString Global where
    fromString = mkGlobal . fromString

instance FromJSON Global where
    parseJSON = withText "global" (pure . mkGlobal)

instance ToJSON Global where
    toJSON = toJSON . global

instance TextKey Global where
    toKey = mkGlobal

gid :: Format a (Global -> a)
gid = later (Build.fromText . global)

newtype Local = Local { local :: Text }
    deriving (Eq, Ord, Show, Generic, Hashable, FromJSON, ToJSON, IsString)

instance TextKey Local where
    toKey = Local

lid :: Format a (Local -> a)
lid = later (Build.fromText . local)

mkGlobal :: Text -> Global
mkGlobal = Global . Text.split (== '.')

global :: Global -> Text
global (Global g) = foldMap (upperAcronym . upperHead) g

reference :: Global -> Local -> Global
reference (Global g) (Local l) = Global (g <> Text.split (== '.') l)
