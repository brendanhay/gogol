{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveFoldable #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE ExtendedDefaultRules #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeApplications #-}

-- Module      : Gen.Types.Schema
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Types.Schema where

import Control.Applicative
import Control.Lens hiding ((.=))
import Control.Monad
import Data.Aeson hiding (Array, Bool, Object, String)
import qualified Data.Aeson as A
import Data.Aeson.TH
import Data.Aeson.Types (Parser)
import Data.Function (on)
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map
import Data.Maybe
import Data.Text (Text)
import qualified Data.Text as Text
import Data.Text.Manipulate
import Gen.TH
import Gen.Text
import Gen.Types.Help
import Gen.Types.Id
import Prelude hiding (Enum)

keyless :: Map Text a -> [a]
keyless = Map.elems

newtype Fix f = Fix (f (Fix f))

data Location
  = Query
  | Path
  deriving (Eq, Show)

deriveJSON options ''Location

newtype Ann = Ann {annRequired :: [Local]}
  deriving (Eq, Show, Monoid)

instance Semigroup Ann where
  a <> b = Ann (annRequired a <> annRequired b)

deriveJSON options ''Ann

data Info = Info
  { _iId :: Maybe Global,
    _iDescription :: Maybe Help,
    _iDefault :: Maybe Text,
    _iRequired :: Bool,
    _iPattern :: Maybe Text,
    _iMinimum :: Maybe Text,
    _iMaximum :: Maybe Text,
    _iRepeated :: Bool,
    _iAnnotations :: Ann
  }
  deriving (Show)

makeClassy ''Info

instance Eq Info where
  a == b =
    on (==) _iId a b
      && on (==) _iDefault a b
      && on (==) _iRequired a b
      && on (==) _iRepeated a b

instance FromJSON Info where
  parseJSON = withObject "info" $ \o ->
    Info
      <$> o .:? "id"
      <*> o .:? "description"
      <*> o .:? "default"
      <*> o .:? "required" .!= False
      <*> o .:? "pattern"
      <*> o .:? "minimum"
      <*> o .:? "maximum"
      <*> o .:? "repeated" .!= False
      <*> o .:? "annotations" .!= mempty

defaulted, required, parameter :: HasInfo a => a -> Bool
defaulted = isJust . view iDefault
required = view iRequired
parameter s = required s && not (defaulted s)

alternate :: Text -> Text
alternate = mappend "Core.Alt" . Text.toUpper

emptyInfo :: Info
emptyInfo =
  Info
    { _iId = Nothing,
      _iDescription = Nothing,
      _iDefault = Nothing,
      _iRequired = False,
      _iPattern = Nothing,
      _iMinimum = Nothing,
      _iMaximum = Nothing,
      _iRepeated = False,
      _iAnnotations = mempty
    }

requiredInfo :: Info
requiredInfo = setRequired emptyInfo

setRequired :: HasInfo a => a -> a
setRequired = iRequired .~ True

data Schema a
  = SAny Info Any
  | SRef Info Ref
  | SLit Info Lit
  | SEnm Info Enm
  | SArr Info (Arr a)
  | SObj Info (Obj a)
  deriving (Eq, Show)

instance FromJSON (Fix Schema) where
  parseJSON o = do
    i <- parseJSON o
    s <-
      SRef i <$> parseJSON o
        <|> SEnm i <$> parseJSON o
        <|> SArr i <$> parseJSON o
        <|> SObj i <$> parseJSON o
        <|> SLit i <$> parseJSON o
        <|> SAny i <$> parseJSON o
    pure (Fix s)

instance HasInfo (Schema a) where
  info = lens f (flip g)
    where
      f = \case
        SAny i _ -> i
        SRef i _ -> i
        SLit i _ -> i
        SEnm i _ -> i
        SArr i _ -> i
        SObj i _ -> i

      g i = \case
        SAny _ x -> SAny i x
        SRef _ x -> SRef i x
        SLit _ x -> SLit i x
        SEnm _ x -> SEnm i x
        SArr _ x -> SArr i x
        SObj _ x -> SObj i x

instance HasInfo (Fix Schema) where
  info = lens (\(Fix f) -> f ^. info) (\(Fix f) a -> Fix (f & info .~ a))

checkType :: Text -> A.Object -> Parser ()
checkType x o = do
  y <- o .: "type"

  unless (x == y) . fail . Text.unpack $
    "Schema type mismatch, expected " <> x <> ", but got " <> y
      <> "\n"
      <> Text.pack (show o)

data Any = Any
  deriving (Eq, Show)

instance FromJSON Any where
  parseJSON = withObject "any" (\o -> Any <$ checkType "any" o)

newtype Ref = Ref {ref :: Global}
  deriving (Eq, Show)

instance FromJSON Ref where
  parseJSON = withObject "ref" (\o -> fmap Ref (o .: "$ref"))

data Lit
  = -- Literal types.
    Bool
  | Text
  | Base64
  | Float Bool
  | Double Bool
  | UInt32 Bool
  | UInt64 Bool
  | Int32 Bool
  | Int64 Bool
  | Natural Bool
  | Time
  | Date
  | DateTime
  | GFieldMask
  | GDuration
  | -- Core types.
    RqBody
  | RsBody
  | JSONValue
  | Alt Text
  deriving (Eq, Show)

instance FromJSON Lit where
  parseJSON = withObject "literal" $ \o -> do
    format :: Maybe Text <- o .:? "format"

    (.:) @Text o "type" >>= \case
      "integer" -> integer format
      "number" -> number format
      "string" -> string format
      "boolean" -> pure Bool
      type' -> fail $ "failure parsing Lit: " ++ show (type', format)
    where
      integer = \case
        Just "uint32" -> pure (UInt32 False)
        Just "uint64" -> pure (UInt64 False)
        Just "int32" -> pure (Int32 False)
        Just "int64" -> pure (Int64 False)
        format -> fail $ "failure parsing Lit: (" ++ show ("number" :: Text, format)

      number = \case
        Just "float" -> pure (Float False)
        Just "double" -> pure (Double False)
        format -> fail $ "failure parsing Lit: " ++ show ("number" :: Text, format)

      string = \case
        Just "time" -> pure Time
        Just "date" -> pure Date
        Just "date-time" -> pure DateTime
        Just "google-datetime" -> pure DateTime
        Just "google-fieldmask" -> pure GFieldMask
        Just "google-duration" -> pure GDuration
        Just "float" -> pure (Float True)
        Just "double" -> pure (Double True)
        Just "byte" -> pure Base64
        Just "uint32" -> pure (UInt32 True)
        Just "uint64" -> pure (UInt64 True)
        Just "int32" -> pure (Int32 True)
        Just "int64" -> pure (Int64 True)
        Nothing -> pure Text
        format -> fail $ "failure parsing Lit: " ++ show ("string" :: Text, format)

newtype Enm = Enm {_eValues :: [(Text, Help)]}
  deriving (Eq, Show)

instance FromJSON Enm where
  parseJSON = withObject "enum" $ \o -> do
    checkType "string" o
    vs <- o .: "enum"
    ds <- o .: "enumDescriptions"
    pure $! Enm (zip vs (ds ++ repeat mempty))

newtype Arr a = Arr {_aItem :: a}
  deriving (Eq, Show)

instance FromJSON a => FromJSON (Arr a) where
  parseJSON = withObject "array" $ \o -> do
    checkType "array" o
    Arr <$> o .: "items"

data Obj a = Obj
  { _oAdditional :: Maybe a,
    _oProperties :: Map Local a
  }
  deriving (Eq, Show)

instance FromJSON a => FromJSON (Obj a) where
  parseJSON = withObject "object" $ \o -> do
    checkType "object" o
    Obj <$> o .:? "additionalProperties"
      <*> o .:? "properties" .!= mempty

data Param a = Param
  { _pLocation :: Location,
    _pParam :: a
  }
  deriving (Eq, Show, Functor, Foldable, Traversable)

makeLenses ''Param

instance FromJSON a => FromJSON (Param a) where
  parseJSON = withObject "param" $ \o ->
    Param
      <$> o .: "location"
      <*> parseJSON (A.Object o)

instance HasInfo a => HasInfo (Param a) where
  info = pParam . info

data MediaUpload = MediaUpload
  { _muAccept :: [Text],
    _muMaxSize :: Maybe Text,
    _muResumablePath :: Maybe Text,
    _muSimplePath :: Text
  }
  deriving (Eq, Show)

instance FromJSON MediaUpload where
  parseJSON = withObject "mediaUpload" $ \o ->
    MediaUpload
      <$> o .: "accept"
      <*> o .:? "maxSize"
      <*> (o .: "protocols" >>= (.:? "resumable") >>= maybe (pure Nothing) (.: "path"))
      <*> (o .: "protocols" >>= (.: "simple") >>= (.: "path"))

data Method a = Method
  { _mId :: Global,
    _mPath :: Text,
    _mHttpMethod :: Text,
    _mDescription :: Maybe Help,
    _mParameters :: Map Local (Param a),
    _mParameterOrder :: [Local],
    _mRequest :: Maybe Ref,
    _mResponse :: Maybe Ref,
    _mScopes :: [Text],
    _mSupportsMediaUpload :: Bool,
    _mSupportsMediaDownload :: Bool,
    _mMediaUpload :: Maybe MediaUpload,
    _mSupportsSubscription :: Bool
  }
  deriving (Eq, Show, Functor, Foldable, Traversable)

instance FromJSON a => FromJSON (Method a) where
  parseJSON = withObject "method" $ \o ->
    Method
      <$> o .: "id"
      <*> o .: "path"
      <*> o .: "httpMethod"
      <*> o .:? "description"
      <*> o .:? "parameters" .!= mempty
      <*> o .:? "parameterOrder" .!= mempty
      <*> o .:? "request"
      <*> o .:? "response"
      <*> o .:? "scopes" .!= mempty
      <*> o .:? "supportsMediaUpload" .!= False
      <*> o .:? "supportsMediaDownload" .!= False
      <*> o .:? "mediaUpload"
      <*> o .:? "supportsSubscription" .!= False

data Resource a = Resource
  { _rResources :: Map Local (Resource a),
    _rMethods :: [Method a]
  }
  deriving (Eq, Show, Functor, Foldable, Traversable)

instance FromJSON a => FromJSON (Resource a) where
  parseJSON = withObject "resource" $ \o ->
    Resource
      <$> o .:? "resources" .!= mempty
      <*> (o .:? "methods" .!= mempty <&> keyless)

newtype OAuth2 = OAuth2 {scopes :: Map Text Help}
  deriving (Eq, Show, ToJSON)

instance FromJSON OAuth2 where
  parseJSON = withObject "oauth2" $ \x -> do
    y <- x .: "oauth2"
    z <- y .: "scopes"
    OAuth2 <$> traverse (.: "description") z

data Label
  = Deprecated
  | LimitedAvailability
  | Labs
  deriving (Eq, Show)

instance FromJSON Label where
  parseJSON = withText "label" $ \t ->
    case t of
      "deprecated" -> pure Deprecated
      "limited_availability" -> pure LimitedAvailability
      "labs" -> pure Labs
      _ ->
        fail $
          Text.unpack ("Unable to parse Label from: " <> t)

instance ToJSON Label where
  toJSON =
    toJSON . \case
      Deprecated -> "Deprecated" :: Text
      LimitedAvailability -> "Limited Availability"
      Labs -> "Labs"

data Description a = Description
  { _dKind :: Text,
    _dDiscoveryVersion :: Text,
    _dId :: Text,
    _dName :: Text,
    _dVersion :: Text,
    _dRevision :: Maybe Text,
    _dTitle :: Text,
    _dDescription :: Help,
    _dIcons :: Map Text Text,
    _dDocumentationLink :: Text,
    _dLabels :: [Label],
    _dProtocol :: Text,
    _dBaseUrl :: Text,
    _dRootUrl :: Text,
    _dServicePath :: Text,
    _dBatchPath :: Text,
    _dParameters :: Map Local (Param a),
    _dAuth :: Maybe OAuth2,
    _dFeatures :: [Text],
    _dSchemas :: Map Global a,
    _dResources :: Map Global (Resource a),
    _dMethods :: [Method a]
  }
  deriving (Eq, Show)

makeClassy ''Description

instance FromJSON a => FromJSON (Description a) where
  parseJSON = withObject "description" $ \o ->
    Description
      <$> o .: "kind"
      <*> o .: "discoveryVersion"
      <*> o .: "id"
      <*> o .: "name"
      <*> o .: "version"
      <*> o .:? "revision"
      <*> o .: "title"
      <*> o .: "description"
      <*> o .: "icons"
      <*> o .: "documentationLink"
      <*> o .:? "labels" .!= mempty
      <*> o .: "protocol"
      <*> o .: "baseUrl"
      <*> o .: "rootUrl"
      <*> o .: "servicePath"
      <*> o .: "batchPath"
      <*> o .:? "parameters" .!= mempty
      <*> o .:? "auth"
      <*> o .:? "features" .!= mempty
      <*> o .:? "schemas" .!= mempty
      <*> o .:? "resources" .!= mempty
      <*> (o .:? "methods" .!= mempty <&> keyless)

data Service a = Service
  { _sLibrary :: Text,
    _sCanonicalName :: Text,
    _sOwnerName :: Text,
    _sOwnerDomain :: Text,
    _sPackagePath :: Maybe Text,
    _sDescription :: Description a
  }
  deriving (Eq, Show)

makeClassy ''Service

instance FromJSON a => FromJSON (Service a) where
  parseJSON = withObject "service" $ \o ->
    Service
      <$> (o .: "library" <&> renameLibrary)
      <*> (o .: "canonicalName" <&> upperHead . renameAbbrev)
      <*> o .: "ownerName"
      <*> o .: "ownerDomain"
      <*> o .:? "packagePath"
      <*> parseJSON (A.Object o)

instance HasDescription (Service a) a where
  description = sDescription

serviceName :: Service a -> String
serviceName = Text.unpack . (<> "Service") . toCamel . _sCanonicalName

scopeName :: Service a -> Text -> String
scopeName s k = Text.unpack . lowerHead $
  case breakParts k of
    [] -> _sCanonicalName s <> "AllScope"
    xs -> foldMap named xs <> "Scope"
  where
    breakParts =
      concatMap (Text.split split)
        . filter (not . ignore)
        . Text.split (== '/')

    split x =
      dot x
        || separator x

    ignore x =
      Text.null x
        || "auth" == x
        || Text.isPrefixOf "http" x
        || Text.isPrefixOf "www" x

    named x
      | x == lower = pascal
      | otherwise = upperHead (replaceAll x special)

    pascal = toPascal (_sCanonicalName s)
    lower = Text.toLower (_sCanonicalName s)

    special =
      [ ("only", "Only"),
        ("manage", "Manage"),
        ("devstorage", "Storage"),
        ("number", "Number"),
        ("^yt$", "youtube")
      ]
