{-# LANGUAGE TemplateHaskell #-}

-- |
-- Module      : Gen.Types.Schema
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gen.Types.Schema where

import qualified Control.Lens as Lens
import qualified Data.Aeson as Aeson
import qualified Data.Aeson.TH as Aeson.TH
import qualified Data.Aeson.Types as Aeson.Types
import qualified Data.Function as Function
import qualified Data.HashMap.Strict as HashMap
import qualified Data.Text as Text
import Gen.Prelude
import Gen.TH
import Gen.Text
import Gen.Types.Help
import Gen.Types.Id

-- Monomorphise the hashmap key for convenient JSON decoding.
keyless :: FromJSON a => HashMap Text a -> [a]
keyless = HashMap.elems

newtype Fix f = Fix (f (Fix f))

data Location
  = Query
  | Path
  deriving (Eq, Show)

$(Aeson.TH.deriveJSON options ''Location)

newtype Ann = Ann {annRequired :: [Local]}
  deriving (Eq, Show, Monoid)

instance Semigroup Ann where
  a <> b = Ann (annRequired a <> annRequired b)

$(Aeson.TH.deriveJSON options ''Ann)

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

$(Lens.makeClassy ''Info)

instance Eq Info where
  a == b =
    Function.on (==) _iId a b
      && Function.on (==) _iDefault a b
      && Function.on (==) _iRequired a b
      && Function.on (==) _iRepeated a b

instance FromJSON Info where
  parseJSON =
    Aeson.withObject "info" $ \o ->
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
defaulted = isJust . Lens.view iDefault
required = Lens.view iRequired
parameter s = required s && not (defaulted s)

alternate :: Text -> Text
alternate = mappend "Alt" . Text.toUpper

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
    i <- Aeson.parseJSON o
    s <-
      SRef i <$> Aeson.parseJSON o
        <|> SEnm i <$> Aeson.parseJSON o
        <|> SArr i <$> Aeson.parseJSON o
        <|> SObj i <$> Aeson.parseJSON o
        <|> SLit i <$> Aeson.parseJSON o
        <|> SAny i <$> Aeson.parseJSON o
    pure (Fix s)

instance HasInfo (Schema a) where
  info = Lens.lens f (flip g)
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
  info = Lens.lens (\(Fix f) -> f ^. info) (\(Fix f) a -> Fix (f & info .~ a))

checkType :: Text -> Aeson.Object -> Aeson.Types.Parser ()
checkType x o = do
  y <- o .: "type"

  unless (x == y) . fail . Text.unpack $
    "Schema type mismatch, expected " <> x <> ", but got " <> y
      <> "\n"
      <> Text.pack (show o)

data Any = Any
  deriving (Eq, Show)

instance FromJSON Any where
  parseJSON = Aeson.withObject "Any" (\o -> Any <$ checkType "any" o)

newtype Ref = Ref {ref :: Global}
  deriving (Eq, Show)

instance FromJSON Ref where
  parseJSON = Aeson.withObject "Ref" (fmap Ref . (.: "$ref"))

data Lit
  = -- Literal types.
    Text
  | Bool
  | Float
  | Double
  | Byte
  | UInt32
  | UInt64
  | Int32
  | Int64
  | Nat
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
  parseJSON =
    Aeson.withObject "Literal" $ \o -> do
      t <- o .: "format" <|> o .: "type"

      case t of
        -- Types
        "string" -> pure Text
        "boolean" -> pure Bool
        -- Formats
        "float" -> pure Float
        "double" -> pure Double
        "byte" -> pure Byte
        "uint32" -> pure UInt32
        "uint64" -> pure UInt64
        "int32" -> pure Int32
        "int64" -> pure Int64
        "time" -> pure Time
        "date" -> pure Date
        "date-time" -> pure DateTime
        "google-datetime" -> pure DateTime
        "google-fieldmask" -> pure GFieldMask
        "google-duration" -> pure GDuration
        _ ->
          fail $
            "Unable to parse Literal from: " ++ Text.unpack t

newtype Enm = Enm {_eValues :: [(Text, Help)]}
  deriving (Eq, Show)

instance FromJSON Enm where
  parseJSON =
    Aeson.withObject "Enm" $ \o -> do
      checkType "string" o
      vs <- o .: "enum"
      ds <- o .: "enumDescriptions"
      pure $! Enm (zip vs (ds ++ repeat mempty))

newtype Arr a = Arr {_aItem :: a}
  deriving (Eq, Show)

instance FromJSON a => FromJSON (Arr a) where
  parseJSON =
    Aeson.withObject "Array" $ \o -> do
      checkType "array" o
      Arr <$> o .: "items"

data Obj a = Obj
  { _oAdditional :: Maybe a,
    _oProperties :: HashMap Local a
  }
  deriving (Eq, Show)

instance FromJSON a => FromJSON (Obj a) where
  parseJSON =
    Aeson.withObject "Object" $ \o -> do
      checkType "object" o
      Obj <$> o .:? "additionalProperties"
        <*> o .:? "properties" .!= mempty

data Param a = Param
  { _pLocation :: Location,
    _pParam :: a
  }
  deriving (Eq, Show, Functor, Foldable, Traversable)

$(Lens.makeLenses ''Param)

instance FromJSON a => FromJSON (Param a) where
  parseJSON =
    Aeson.withObject "param" $ \o ->
      Param
        <$> o .: "location"
        <*> Aeson.parseJSON (Aeson.Object o)

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
  parseJSON =
    Aeson.withObject "MediaUpload" $ \o ->
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
    _mParameters :: HashMap Local (Param a),
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
  parseJSON =
    Aeson.withObject "method" $ \o ->
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
  { _rResources :: HashMap Local (Resource a),
    _rMethods :: [Method a]
  }
  deriving (Eq, Show, Functor, Foldable, Traversable)

instance FromJSON a => FromJSON (Resource a) where
  parseJSON =
    Aeson.withObject "Resource" $ \o ->
      Resource
        <$> o .:? "resources" .!= mempty
        <*> (o .:? "methods" .!= mempty <&> keyless)

newtype OAuth2 = OAuth2 {scopes :: HashMap Text Help}
  deriving (Eq, Show, ToJSON)

instance FromJSON OAuth2 where
  parseJSON =
    Aeson.withObject "OAuth2" $ \x -> do
      y <- x .: "oauth2"
      z <- y .: "scopes"
      OAuth2 <$> traverse (.: "description") z

data Label
  = Deprecated
  | LimitedAvailability
  | Labs
  deriving (Eq, Show)

instance FromJSON Label where
  parseJSON =
    Aeson.withText "Label" $ \case
      "deprecated" -> pure Deprecated
      "limited_availability" -> pure LimitedAvailability
      "labs" -> pure Labs
      t ->
        fail $
          Text.unpack ("Unable to parse Label from: " <> t)

instance ToJSON Label where
  toJSON =
    Aeson.String . \case
      Deprecated -> "Deprecated"
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
    _dIcons :: HashMap Text Text,
    _dDocumentationLink :: Text,
    _dLabels :: [Label],
    _dProtocol :: Text,
    _dBaseUrl :: Text,
    _dRootUrl :: Text,
    _dServicePath :: Text,
    _dBatchPath :: Text,
    _dParameters :: HashMap Local (Param a),
    _dAuth :: Maybe OAuth2,
    _dFeatures :: [Text],
    _dSchemas :: HashMap Global a,
    _dResources :: HashMap Global (Resource a),
    _dMethods :: [Method a]
  }
  deriving (Eq, Show)

$(Lens.makeClassy ''Description)

instance FromJSON a => FromJSON (Description a) where
  parseJSON =
    Aeson.withObject "Description" $ \o ->
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

$(Lens.makeClassy ''Service)

instance FromJSON a => FromJSON (Service a) where
  parseJSON =
    Aeson.withObject "Service" $ \o ->
      Service
        <$> (o .: "library" <&> renameLibrary)
        <*> (o .: "canonicalName" <&> upperHead . renameAbbrev)
        <*> o .: "ownerName"
        <*> o .: "ownerDomain"
        <*> o .:? "packagePath"
        <*> Aeson.parseJSON (Aeson.Object o)

instance HasDescription (Service a) a where
  description = sDescription

serviceName :: Service a -> String
serviceName = Text.unpack . (<> "Service") . toCamelCase . _sCanonicalName

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
      | x == "yt" = "YouTube"
      | otherwise =
        upperHead $
          foldr (\(match, replace) -> Text.replace match replace) x special

    lower = Text.toLower (_sCanonicalName s)
    pascal = toPascalCase (_sCanonicalName s)

    special =
      [ ("only", "Only"),
        ("manage", "Manage"),
        ("devstorage", "Storage"),
        ("number", "Number")
      ]
