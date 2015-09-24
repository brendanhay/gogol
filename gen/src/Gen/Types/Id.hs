{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE LambdaCase        #-}

-- Module      : Gen.Types.Id
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Types.Id
    ( Id

    -- * Conversion
    , idToText
    , idFromText

    -- * Formatting
    , fid
    , ref

    -- * Syntax
    , aname
    , dname
    , cname
    , fname
    , lname
    , pname
    ) where

import           Control.Applicative
import           Control.Lens                 hiding ((.=))
import           Data.Aeson                   hiding (Bool, String)
import           Data.Aeson.TH
import qualified Data.Attoparsec.Text         as A
import           Data.Bifunctor
import           Data.Char
import           Data.Function                (on)
import           Data.Hashable
import qualified Data.HashMap.Strict          as Map
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
import           Gen.Text
import           Gen.Types.Map
import           GHC.Generics
import           Language.Haskell.Exts.Build
import           Language.Haskell.Exts.Syntax (Name)

aname, dname, cname, fname, lname, pname :: Id -> Name
aname = name . ref upperHead
dname = name . ref upperHead
cname = name . ref (renameReserved . lowerHead)
fname = name . ref (Text.cons '_' . lowerHead)
lname = name . ref lowerHead
pname = name . ref (flip Text.snoc '_' . Text.cons 'p' . upperHead)

ref :: (Text -> Text) -> Id -> String
ref f = Text.unpack . f . idToText

data Id
    = Opaque [Text]
    | Direct Text
      deriving (Eq, Show, Generic)

instance Semigroup Id where
    a <> b = case (a, b) of
        (Opaque xs, Opaque ys) -> Opaque (xs <> ys)
        (Opaque xs, Direct y)  -> Opaque (xs <> [y])
        (Direct x,  Opaque ys) -> Opaque (x : ys)
        (Direct x,  Direct y)  -> Opaque [x, y]

instance IsString Id where
    fromString = idFromText . fromString

instance Hashable Id

instance FromJSON Id where parseJSON = withText "id" (pure . idFromText)
instance ToJSON   Id where toJSON    = toJSON . idToText

instance FromJSON a => FromJSON (Map Id a) where
    parseJSON o = Map.fromList . map (first idFromText) . Map.toList
        <$> parseJSON o

instance ToJSON a => ToJSON (Map Id a) where
    toJSON = toJSON . Map.fromList . map (first idToText) . Map.toList

idToText :: Id -> Text
idToText = \case
    Opaque xs -> mconcat (map upperHead xs)
    Direct n  -> n

idFromText :: Text -> Id
idFromText = Direct . renameReserved

fid :: Format a (Id -> a)
fid = later (Build.fromText . idToText)
