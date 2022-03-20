{-# LANGUAGE TemplateHaskell #-}

module Gen.Types.Schema where

import Control.Lens (lens, makeClassy, makeLenses, view)
import Data.Aeson ((.!=), (.:), (.:?))
import qualified Data.Aeson as Aeson
import Data.Aeson.TH (deriveJSON)
import qualified Data.Aeson.Types as Aeson.Types
import qualified Data.Char as Char
import Data.Function (on)
import qualified Data.List as List
import qualified Data.Map.Strict as Map
import qualified Data.Text as Text
import Gen.JSON
import Gen.Prelude hiding (Enum)
import Gen.Text
import Gen.Types.Help
import Gen.Types.Id

keyless :: Map Text a -> [a]
keyless = Map.elems

newtype Fix f = Fix (f (Fix f))

data Location
  = Query
  | Path
  deriving (Eq, Show)

deriveJSON jsonOptions ''Location

newtype Ann = Ann {annRequired :: [Local]}
  deriving (Eq, Show, Monoid)

instance Semigroup Ann where
  a <> b = Ann (annRequired a <> annRequired b)

deriveJSON jsonOptions ''Ann

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

checkType :: Text -> Aeson.Object -> Aeson.Types.Parser ()
checkType x o = do
  y <- o .: "type"

  unless (x == y) . fail . Text.unpack $
    "Schema type mismatch, expected " <> x <> ", but got " <> y
      <> "\n"
      <> Text.pack (show o)

hasProperties :: Schema a -> Bool
hasProperties = \case
  SObj _ (Obj _ props) -> not (Map.null props)
  _other -> False

data Any = Any
  deriving (Eq, Show)

instance FromJSON Any where
  parseJSON = Aeson.withObject "any" (\o -> Any <$ checkType "any" o)

newtype Ref = Ref {ref :: Global}
  deriving (Eq, Show)

instance FromJSON Ref where
  parseJSON = Aeson.withObject "ref" (\o -> fmap Ref (o .: "$ref"))

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
  parseJSON =
    Aeson.withObject "literal" $ \o -> do
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
  parseJSON =
    Aeson.withObject "enum" $ \o -> do
      checkType "string" o
      vs <- o .: "enum"
      ds <- o .: "enumDescriptions"
      pure $! Enm (zip vs (ds ++ repeat mempty))

newtype Arr a = Arr {_aItem :: a}
  deriving (Eq, Show)

instance FromJSON a => FromJSON (Arr a) where
  parseJSON =
    Aeson.withObject "array" $ \o -> do
      checkType "array" o
      Arr <$> o .: "items"

data Obj a = Obj
  { _oAdditional :: Maybe a,
    _oProperties :: Map Local a
  }
  deriving (Eq, Show)

instance FromJSON a => FromJSON (Obj a) where
  parseJSON =
    Aeson.withObject "object" $ \o -> do
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
    Aeson.withObject "mediaUpload" $ \o ->
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
  { _rResources :: Map Local (Resource a),
    _rMethods :: [Method a]
  }
  deriving (Eq, Show, Functor, Foldable, Traversable)

instance FromJSON a => FromJSON (Resource a) where
  parseJSON =
    Aeson.withObject "resource" $ \o ->
      Resource
        <$> o .:? "resources" .!= mempty
        <*> (o .:? "methods" .!= mempty <&> keyless)

newtype OAuth2 = OAuth2 {scopes :: Map Text Help}
  deriving (Eq, Show, ToJSON)

instance FromJSON OAuth2 where
  parseJSON =
    Aeson.withObject "oauth2" $ \x -> do
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
    Aeson.withText "label" $ \case
      "deprecated" -> pure Deprecated
      "limited_availability" -> pure LimitedAvailability
      "labs" -> pure Labs
      other -> fail $ Text.unpack ("Unable to parse Label from: " <> other)

instance ToJSON Label where
  toJSON =
    Aeson.toJSON . \case
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
    _dBasePath :: Text,
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
  parseJSON =
    Aeson.withObject "description" $ \o ->
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
        <*> o .: "basePath"
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
  parseJSON =
    Aeson.withObject "service" $ \o ->
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
serviceName = Text.unpack . (<> "Service") . toCamel . _sCanonicalName

scopeName :: HasCallStack => Text -> String
scopeName full =
  case Text.stripPrefix "https://www.googleapis.com/auth/" full of
    Nothing -> error $ "(scopeName): unrecognised oauth2 scope format " ++ show full
    Just suffix
      | implicit suffix -> splitTop suffix <> "'FullControl"
      | otherwise -> splitTop suffix
  where
    -- FIXME: use a parser combinator here.

    implicit =
      not
        . Text.any (== '.')

    splitTop =
      Text.unpack
        . mconcat
        . List.intersperse "'"
        . map splitSub
        . Text.split (== '.')

    splitSub =
      mconcat
        . map upperHead
        . Text.split (not . Char.isAlphaNum)
