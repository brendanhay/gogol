{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE DeriveFoldable             #-}
{-# LANGUAGE DeriveFunctor              #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DeriveTraversable          #-}
{-# LANGUAGE ExtendedDefaultRules       #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE KindSignatures             #-}
{-# LANGUAGE LambdaCase                 #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TemplateHaskell            #-}

{-# OPTIONS_GHC -fno-warn-type-defaults #-}

-- Module      : Gen.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Types
    ( module Gen.Types
    , module Gen.Types.Map
    , module Gen.Types.NS
    ) where

import           Control.Applicative
import           Data.Aeson                hiding (Bool, String)
import           Data.Aeson.TH
import qualified Data.Attoparsec.Text      as A
import           Data.Bifunctor
import           Data.Char
import           Data.Function             (on)
import           Data.Hashable
import qualified Data.HashMap.Strict       as Map
import           Data.List                 (groupBy, nub, sort)
import           Data.List.NonEmpty        (NonEmpty (..), nonEmpty)
import qualified Data.List.NonEmpty        as NE
import           Data.Ord
import           Data.Semigroup            hiding (Sum)
import           Data.String
import           Data.Text                 (Text)
import qualified Data.Text                 as Text
import qualified Data.Text.Lazy            as LText
import qualified Data.Text.Lazy.Builder    as Build
import           Data.Text.Manipulate
import qualified Data.Text.Read            as Read
import qualified Filesystem.Path.CurrentOS as Path
import           Formatting
import           Gen.Text
import           Gen.Types.Map
import           Gen.Types.NS
import           GHC.Generics
import           GHC.TypeLits
import           Text.EDE                  (Template)

default (Text)

newtype Fix f = Fix (f (Fix f))

type Error    = LText.Text
type Rendered = LText.Text
type Path     = Path.FilePath

toTextIgnore :: Path -> Text
toTextIgnore = either id id . Path.toText

data Templates = Templates
    { cabalTemplate     :: Template
    , tocTemplate       :: Template
    , readmeTemplate    :: Template
    , operationTemplate :: Template
    , typesTemplate     :: Template
    }

newtype Version (v :: Symbol) = Version Text
    deriving (Eq, Show)

instance ToJSON (Version v) where
    toJSON (Version v) = toJSON v

fver :: Format a (Version v -> a)
fver = later (\(Version v) -> Build.fromText v)

type LibraryVer = Version "library"
type ClientVer  = Version "client"
type CoreVer    = Version "core"

data Versions = Versions
    { _libraryVersion :: LibraryVer
    , _clientVersion  :: ClientVer
    , _coreVersion    :: CoreVer
    } deriving (Show)

-- FIXME: need a more comprehensive 'vm_alpha' vs 'vm1.1' etc check.
data Spec = Spec
    { _specName    :: Text
    , _specPrefix  :: Text
    , _specVersion :: Text
    , _specPath    :: Path
    }

instance Eq Spec where
    (==) = on (==) _specPrefix

instance Ord Spec where
    compare a b =
           on compare _specPrefix a b
        <> on compare (Down . _specVersion) a b

specFromPath :: Path -> Spec
specFromPath x = Spec n p v x
  where
   -- FIXME:
   n = Text.init
     . Text.intercalate "/"
     . drop 2
     . dropWhile (/= "model")
     $ Text.split (== '/') p

   p = toTextIgnore (Path.parent (Path.parent x))
   v = toTextIgnore (Path.dirname x)

data Protocol = REST
    deriving (Eq, Show)

instance FromJSON Protocol where
    parseJSON = withText "protocol" $ \case
        "rest" -> pure REST
        e      -> fail $ "Unable to parse protocol from " ++ Text.unpack e

instance ToJSON Protocol where
    toJSON = toJSON . map toLower . show

data Location
    = Query
    | Path
      deriving (Eq, Show)

deriveJSON (js "") ''Location

data Info = Info
    { _infoDescription :: Maybe Text
    , _infoDefault     :: Maybe Text
    , _infoRequired    :: !Bool
    , _infoLocation    :: Maybe Location
    } deriving (Eq, Show)

instance FromJSON Info where
    parseJSON = withObject "info" $ \o -> Info
        <$> o .:? "description"
        <*> o .:? "default"
        <*> o .:? "required" .!= False
        <*> o .:? "location"

deriveToJSON (js "_info") ''Info

data Lit
    = Text
    | Bool
    | Int
    | Long
    | Nat
    | Time
      deriving (Eq, Show)

instance FromJSON Lit where
    parseJSON = withObject "literal" $ \o -> do
        n <- min =<< (o .:? "minimum" .!= "0")
        (o .: "format" <|> o .: "type") >>= \case
            -- Types
            "string"    -> pure Text
            "boolean"   -> pure Bool
            -- Formats
            "uint64"    -> pure (nat n Long)
            "int32"     -> pure (nat n Int)
            "date-time" -> pure Time
            e           -> fail $
                "Unable to parse Lit from " ++ Text.unpack e
      where
        min = either fail (pure . fst) . Read.decimal

        nat :: Int -> Lit -> Lit
        nat n | n > 0     = const Nat
              | otherwise = id

-- "pattern": "[A-Z]{3}",
-- "pattern": "[0-9a-zA-Z,]+",
-- "pattern": "[a-zA-Z]+==[a-zA-Z0-9_+-]+",
-- "minimum": "1"
-- "format": "date-time", "uint64", "int32",

deriveToJSON (js "") ''Lit

data Ref
    = Opaque [Text]
    | Direct Text
      deriving (Eq, Show, Generic)

instance Semigroup Ref where
    a <> b = case (a, b) of
        (Opaque xs, Opaque ys) -> Opaque (xs <> ys)
        (Opaque xs, Direct y)  -> Opaque (xs <> [y])
        (Direct x,  Opaque ys) -> Opaque (x : ys)
        (Direct x,  Direct y)  -> Opaque [x, y]

instance Hashable Ref

instance IsString Ref where
    fromString = Direct . fromString

instance FromJSON Ref where parseJSON = withText "ref" (pure . Direct)
instance ToJSON   Ref where toJSON    = toJSON . refToText

instance FromJSON a => FromJSON (Map Ref a) where
    parseJSON = fmap (Map.fromList . map (first Direct) . Map.toList) . parseJSON

instance ToJSON a => ToJSON (Map Ref a) where
    toJSON = toJSON . Map.fromList . map (first refToText) . Map.toList

refToText :: Ref -> Text
refToText = \case
    Opaque xs -> mconcat (map upperHead xs)
    Direct n  -> n

fref :: Format a (Ref -> a)
fref = later (Build.fromText . refToText)

data Schema a
    = Obj  Info (Map Ref a)
    | Arr  Info a
    | Enum Info [Text] [Text]
    | Lit  Info Lit
    | Ref  Ref
    | Any' -- String or Number
      deriving (Eq, Show, Functor, Foldable, Traversable)

instance FromJSON (Fix Schema) where
    parseJSON = withObject "schema" $ \o -> Fix <$> (ref o <|> schema o)
      where
        schema o = do
            i <- parseJSON (Object o)
            o .: "type" >>= \case
                "object" -> Obj i <$> o .: "properties"
                "array"  -> Arr i <$> o .: "items"
                "any"    -> pure Any'
                _        -> enum i o <|> Lit i <$> parseJSON (Object o)

        enum i o = Enum i <$> o .: "enum" <*> o .: "enumDescriptions"
        ref    o = Ref    <$> o .: "$ref"

deriveToJSON (js "") ''Schema

data Param = Param Location -- (Fix Schema)

instance FromJSON Param where
    parseJSON = withObject "parameter" $ \o ->
        Param <$> o .: "location" -- <*> parseJSON (Object o)

deriveToJSON (js "") ''Param

data Fun = Fun' Text Rendered Rendered

instance ToJSON Fun where
    toJSON (Fun' h s d) = object
        [ "help" .= h
        , "sig"  .= s
        , "decl" .= d
        ]

data Data
    = Sum  Text Rendered
    | Prod Rendered Fun [Fun]

instance ToJSON Data where
    toJSON = \case
        Sum  h d    -> object
            [ "type" .= "sum"
            , "decl" .= d
            , "help" .= h
            ]

        Prod d c ls -> object
            [ "type"   .= "prod"
            , "decl"   .= d
            , "ctor"   .= c
            , "lenses" .= ls
            ]

data Service a = Service
    { _svcLibrary           :: Text
    , _svcTitle             :: Text
    , _svcName              :: Text
    , _svcCanonicalName     :: Maybe Text
    , _svcDescription       :: Text
    , _svcRevision          :: Maybe Text
    , _svcVersion           :: Text
    , _svcOwnerName         :: Text
    , _svcOwnerDomain       :: Text
    , _svcPackagePath       :: Maybe Text
    , _svcDocumentationLink :: Text
    , _svcProtocol          :: Protocol
    , _svcBaseUrl           :: Text
    , _svcRootUrl           :: Text
    , _svcServicePath       :: Text
    , _svcBatchPath         :: Text
    , _svcAuth              :: Maybe Object
    , _svcParameters        :: Map Ref Param
    , _svcSchemas           :: Map Ref a
    , _svcResources         :: Object
    } deriving (Generic)

deriveFromJSON (js "_svc") ''Service

instance ToJSON (Service Data) where
    toJSON s = Object (x <> y)
      where
        Object x = genericToJSON (js "_svc") s
        Object y = object
            [ "exposedModules" .= exposedModules s
            ]

svcAbbrev :: Service a -> Text
svcAbbrev = renameAbbrev . _svcTitle

typeImports :: Service a -> [NS]
typeImports _ = ["Network.Google.Prelude"]

tocNS, typesNS :: Service a -> NS
tocNS s = NS ["Network", "Google", svcAbbrev s]
typesNS = (<> "Types") . tocNS

exposedModules :: Service a -> [NS]
exposedModules s = [tocNS s, typesNS s]

data Library = Library
    { _libName     :: Text
    , _libTitle    :: Text
    , _libVersions :: Versions
    , _libServices :: NonEmpty (Service Data)
    }

instance ToJSON Library where
    toJSON Library{..} = object
        [ "libraryName"      .= _libName
        , "libraryTitle"     .= _libTitle
        , "libraryVersion"   .= _libraryVersion _libVersions
        , "coreVersion"      .= _coreVersion    _libVersions
        , "clientVersion"    .= _clientVersion  _libVersions
        , "exposedModules"   .= concatMap exposedModules (NE.toList _libServices)
        ]
