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
    -- * Properties
      Prefix (..)
    , Suffix (..)

    -- * Unique Identifiers
    , Global
    , Local

    , global
    , local
    , localise

    , gid
    , lid

    , reference

    -- * Naming
    , aname
    , mname
    , dname
    , dstr
    , cname
    , bname
    , fname
    , fstr
    , lname
    , pname
    ) where

import           Data.Aeson                   hiding (Bool, String)
import qualified Data.CaseInsensitive         as CI
import           Data.Hashable
import           Data.Semigroup               hiding (Sum)
import           Data.String
import           Data.Text                    (Text)
import qualified Data.Text                    as Text
import qualified Data.Text.Lazy.Builder       as Build
import           Data.Text.Manipulate
import           Formatting
import           Gen.Orphans                  ()
import           Gen.Text
import           Gen.Types.Map
import           GHC.Generics                 (Generic)
import           Language.Haskell.Exts.Build
import           Language.Haskell.Exts.Syntax (Exp, Name)

aname :: Text -> Name
aname = name . Text.unpack . (<> "API") . upperHead . Text.replace "." ""

mname :: Text -> Suffix -> Global -> (Name, Global, Text)
mname abrv (Suffix suf) (Global g) =
    ( name . Text.unpack $ mconcat n <> suf -- Action service type alias.
    , Global (n <> ["'"])                   -- Action data type.
    , Text.intercalate "." ns               -- Action namespace.
    )
  where
    n = drop 1 ns

    ns | CI.mk e == CI.mk x = e:xs
       | otherwise          = x:xs
      where
        e    = Text.replace "." "" abrv
        x:xs = map (upperAcronym . toPascal) g

dname, cname :: Global -> Name
dname = name . Text.unpack . upperHead . global
cname = name . Text.unpack . renameReserved . lowerHead . lowerFirstAcronym . global

bname :: Prefix -> Text -> Name
bname (Prefix p) = name
    . Text.unpack
    . mappend (Text.toUpper p)
    . renameBranch

fname, lname, pname :: Prefix -> Local -> Name
fname = pre (Text.cons '_' . renameField)
lname = pre renameField
pname = pre (flip Text.snoc '_' . Text.cons 'p' . upperHead . renameField)

dstr :: Global -> Exp
dstr = strE . Text.unpack . toPascal . global

fstr :: Local -> Exp
fstr = strE . Text.unpack . local

pre :: (Text -> Text) -> Prefix -> Local -> Name
pre f (Prefix p) = name . Text.unpack . f . mappend p . upperHead . local

newtype Suffix = Suffix Text
    deriving (Show, IsString)

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

localise :: Global -> Local
localise = Local . global
