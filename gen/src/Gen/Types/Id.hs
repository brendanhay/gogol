{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase                 #-}

-- Module      : Gen.Types.Id
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Types.Id where
    -- ( Id
    -- , Pre (..)

    -- -- * Conversion
    -- , idToText
    -- , idFromText
    -- , direct

    -- -- * Formatting
    -- , fid
    -- , ref
    -- , pre

    -- -- * Syntax
    -- , aname
    -- , mname
    -- , dname
    -- , cname
    -- , fname
    -- , lname
    -- , pname
    -- ) where

import           Control.Applicative
import           Control.Lens                 hiding (pre, (.=))
import           Data.Aeson                   hiding (Bool, String)
import           Data.Aeson.TH
import qualified Data.Attoparsec.Text         as A
import           Data.Bifunctor
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
import           Gen.Text
import           Gen.Types.Map
import           GHC.Generics
import           Language.Haskell.Exts.Build
import           Language.Haskell.Exts.Syntax (Name)

aname :: Id -> Name
aname = name . Text.unpack . upperHead . idToText

mname :: Id -> Local -> Name
mname x y = aname $ mkProp x y

dname, cname :: Id -> Name
dname = name . Text.unpack . upperHead . idToText
cname = name . Text.unpack . renameReserved . lowerHead . idToText

bname :: Pre -> Text -> Name
bname (Pre p) = name
    . Text.unpack
    . mappend (Text.toUpper p)
    . renameBranch

fname, lname, pname :: Pre -> Local -> Name
fname = pre (Text.cons '_' . renameField)
lname = pre renameField
pname = pre (flip Text.snoc '_' . Text.cons 'p' . upperHead)

pre :: (Text -> Text) -> Pre -> Local -> Name
pre f (Pre p) = name . Text.unpack . f . mappend p . upperHead . local

newtype Global = Global { global :: Text }
    deriving (Eq, Show, Generic, Hashable, FromJSON, ToJSON, IsString)

instance FromJSON a => FromJSON (Map Global a) where
    parseJSON = fmap (fromMap Global) . parseJSON

instance ToJSON a => ToJSON (Map Global a) where
    toJSON = toJSON . toMap global

gid :: Format a (Global -> a)
gid = later (Build.fromText . global)

newtype Local = Local { local :: Text }
    deriving (Eq, Show, Generic, Hashable, FromJSON, ToJSON, IsString)

instance FromJSON a => FromJSON (Map Local a) where
    parseJSON = fmap (fromMap Local) . parseJSON

instance ToJSON a => ToJSON (Map Local a) where
    toJSON = toJSON . toMap local

lid :: Format a (Local -> a)
lid = later (Build.fromText . local)

data Id
    = Free  Global
    | Bound Global (NonEmpty Local)
      deriving (Eq, Show, Generic)

instance Hashable Id

instance IsString Id where
    fromString = Free . Global . fromString

instance FromJSON a => FromJSON (Map Id a) where
    parseJSON = fmap (fromMap (Free . Global)) . parseJSON

instance ToJSON a => ToJSON (Map Id a) where
    toJSON = toJSON . toMap idToText

newtype Pre = Pre Text
    deriving (Show, Monoid)

mkId :: Global -> [Local] -> Id
mkId g = \case
    []   -> Free  g
    x:xs -> Bound g (x :| xs)

mkProp :: Id -> Local -> Id
mkProp n x =
    case n of
        Free  g    -> Bound g (x :| [])
        Bound g xs -> Bound g (NE.cons x xs)

revProp :: Id -> Local
revProp = \case
    Free  g    -> Local (global g)
    Bound _ xs -> let x :| _ = NE.reverse xs in x

idToText :: Id -> Text
idToText = renameReserved . upperHead . \case
    Free  g    -> global g
    Bound g ls -> mconcat (global g : map (upperHead . local) (NE.toList ls))

fid :: Format a (Id -> a)
fid = later (Build.fromText . idToText)

fromMap :: (Eq a, Hashable a) => (Text -> a) -> Map Text b -> Map a b
fromMap f = Map.fromList . map (first f) . Map.toList

toMap :: (a -> Text) -> Map a b -> Map Text b
toMap f = Map.fromList . map (first f) . Map.toList
