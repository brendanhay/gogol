{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase                 #-}
{-# LANGUAGE TemplateHaskell            #-}

module Gen.Schema where

import           Control.Applicative
import           Control.Lens                 hiding ((.=))
import           Data.Aeson                   hiding (Array, Bool, Object,
                                               String)
import qualified Data.Aeson                   as A
import           Data.Aeson.TH
import           Data.Char
import           Data.Function                (on)
import qualified Data.HashMap.Strict          as Map
import qualified Data.HashSet                 as Set
import           Data.List                    (groupBy, sort, sortOn)
import           Data.List.NonEmpty           (NonEmpty (..))
import qualified Data.List.NonEmpty           as NE
import           Data.Maybe
import           Data.Ord
import           Data.Semigroup               ((<>))
import           Data.Text                    (Text)
import qualified Data.Text                    as Text
import qualified Data.Text.Lazy               as LText
import qualified Data.Text.Lazy.Builder       as Build
import           Data.Text.Manipulate
import qualified Data.Text.Read               as Read
import qualified Filesystem.Path.CurrentOS    as Path
import           Formatting
import           Gen.Orphans                  ()
import           Gen.Text
import           Gen.Types.Help
import           Gen.Types.Id
import           Gen.Types.Map
import           Gen.Types.NS
import           GHC.Generics
import           GHC.TypeLits
import           Language.Haskell.Exts        (Name)
import           Language.Haskell.Exts.Pretty (Pretty, prettyPrint)
import           Prelude                      hiding (Enum)
import           Text.EDE                     (Template)

newtype Fix f = Fix (f (Fix f))

type Set      = Set.HashSet
type Error    = LText.Text
type Rendered = LText.Text
type Path     = Path.FilePath

data Location
    = Query
    | Path
      deriving (Eq, Show)

deriveJSON options ''Location

newtype Ann = Ann { annRequired :: [Text] }
    deriving (Eq, Show, Monoid)

deriveJSON options ''Ann

data Info = Info
    { _iId          :: Maybe Text
    , _iDescription :: Maybe Help
    , _iDefault     :: Maybe Text
    , _iRequired    :: Bool
    , _iPattern     :: Maybe Text
    , _iMinimum     :: Maybe Text
    , _iMaximum     :: Maybe Text
    , _iRepeated    :: Bool
    , _iAnnotations :: Ann
    } deriving (Eq, Show)

makeClassy ''Info

instance FromJSON Info where
    parseJSON = withObject "info" $ \o -> Info
        <$> o .:  "id"
        <*> o .:? "description"
        <*> o .:? "default"
        <*> o .:? "required"    .!= False
        <*> o .:? "pattern"
        <*> o .:? "minimum"
        <*> o .:? "maximum"
        <*> o .:? "repeated"    .!= False
        <*> o .:? "annotations" .!= mempty

data Schema
    = SRef  Info Ref
    | SLit  Info Literal
    | SEnum Info Enum
    | SArr  Info Array
    | SObj  Info Object
      deriving (Eq, Show)

instance FromJSON Schema where
    parseJSON o = do
        i <- parseJSON o
        SRef i <$> parseJSON o
            <|> SLit  i <$> parseJSON o
            <|> SEnum i <$> parseJSON o
            <|> SArr  i <$> parseJSON o
            <|> SObj  i <$> parseJSON o

instance HasInfo Schema where
    info = lens f (flip g)
      where
        f = \case
            SRef  i _ -> i
            SLit  i _ -> i
            SEnum i _ -> i
            SArr  i _ -> i
            SObj  i _ -> i

        g i = \case
            SRef  _ x -> SRef  i x
            SLit  _ x -> SLit  i x
            SEnum _ x -> SEnum i x
            SArr  _ x -> SArr  i x
            SObj  _ x -> SObj  i x

newtype Ref = Ref { ref :: Text }
    deriving (Eq, Show)

instance FromJSON Ref where
    parseJSON = withObject "ref" (fmap Ref . (.: "$ref"))

data Literal
    = Text
    | Bool
    | Float
    | Double
    | Byte
    | UInt32
    | UInt64
    | Int32
    | Int64
    | Date
    | Time
      deriving (Eq, Show)

instance FromJSON Literal where
    parseJSON = withObject "literal" $ \o -> do
        t <- o .: "format" <|> o .: "type"
        case t of
            -- Types
            "string"    -> pure Text
            "boolean"   -> pure Bool

            -- Formats
            "float"     -> pure Float
            "double"    -> pure Double
            "byte"      -> pure Byte
            "uint32"    -> pure UInt32
            "uint64"    -> pure UInt64
            "int32"     -> pure Int32
            "int64"     -> pure Int64
            "date"      -> pure Date
            "date-time" -> pure Time

            _           -> fail $
                "Unable to parse Literal from: " ++ Text.unpack t

newtype Enum = Enum { _eValues :: [(Text, Help)] }
    deriving (Eq, Show)

instance FromJSON Enum where
    parseJSON = withObject "enum" $ \o -> do
        vs <- o .: "enum"
        ds <- o .: "enumDescriptions"
        pure $! Enum (zip vs (ds ++ repeat mempty))

newtype Array = Array { _aItem :: Schema }
    deriving (Eq, Show)

instance FromJSON Array where
    parseJSON = withObject "array" (fmap Array . (.: "item"))

data Object = Object
    { _oProperties           :: Map Text Schema
    , _oAdditionalProperties :: Maybe Schema
    } deriving (Eq, Show)

deriveFromJSON options ''Object

data Param = Param
    { _pLocation :: Location
    , _pSchema   :: Schema
    } deriving (Eq, Show)

makeLenses ''Param

instance FromJSON Param where
    parseJSON = withObject "param" $ \o -> Param
        <$> o .: "location"
        <*> parseJSON (A.Object o)

instance HasInfo Param where
    info = pSchema . info

data MediaUpload = MediaUpload
    { _muAccept        :: [Text]
    , _muMaxSize       :: Text
    , _muResumablePath :: Text
    , _muSimplePath    :: Text
    } deriving (Eq, Show)

instance FromJSON MediaUpload where
    parseJSON = withObject "mediaUpload" $ \o -> MediaUpload
         <$>  o .: "accept"
         <*>  o .: "maxSize"
         <*> (o .: "protocols" >>= (.: "resumable") >>= (.: "path"))
         <*> (o .: "protocols" >>= (.: "simple")    >>= (.: "path"))

data Method = Method
    { _mId                    :: Text
    , _mPath                  :: Text
    , _mHttpMethod            :: Text
    , _mDescription           :: Help
    , _mParameters            :: Map Text Param
    , _mParameterOrder        :: [Text]
    , _mRequest               :: Maybe Ref
    , _mResponse              :: Maybe Ref
    , _mScopes                :: [Text]
    , _mSupportsMediaUpload   :: Bool
    , _mSupportsMediaDownload :: Bool
    , _mMediaUpload           :: Maybe MediaUpload
    , _mSupportsSubscription  :: Bool
    } deriving (Eq, Show)

instance FromJSON Method where
    parseJSON = withObject "method" $ \o -> Method
        <$> o .:  "id"
        <*> o .:  "path"
        <*> o .:  "httpMethod"
        <*> o .:  "description"
        <*> o .:? "parameters"            .!= mempty
        <*> o .:? "parameterOrder"        .!= mempty
        <*> o .:? "request"
        <*> o .:? "response"
        <*> o .:? "scopes"                .!= mempty
        <*> o .:? "supportsMediaUpload"   .!= False
        <*> o .:? "supportsMediaDownload" .!= False
        <*> o .:? "mediaUpload"
        <*> o .:? "supportsSubscription"  .!= False

data Resource = Resource
    { _rMethods   :: Map Text Method
    , _rResources :: Map Text Resource
    } deriving (Eq, Show)

instance FromJSON Resource where
    parseJSON = withObject "resource" $ \o -> Resource
         <$> o .:? "methods"   .!= mempty
         <*> o .:? "resources" .!= mempty

newtype OAuth2 = OAuth2 { scopes :: Map Text Text }
    deriving (Eq, Show)

instance FromJSON OAuth2 where
    parseJSON = withObject "oauth2" $ \o ->
        o .: "oauth2" >>=
            withObject "scopes" (.: "scopes")

data Description = Description
    { _dKind              :: Text
    , _dDiscoveryVersion  :: Text
    , _dId                :: Text
    , _dName              :: Text
    , _dVersion           :: Text
    , _dRevision          :: Text
    , _dTitle             :: Text
    , _dDescription       :: Help
    , _dIcons             :: Map Text Text
    , _dDocumentationLink :: Text
    , _dLabels            :: Text
    , _dProtocol          :: Text
    , _dBaseUrl           :: Text
    , _dRootUrl           :: Text
    , _dServicePath       :: Text
    , _dBatchPath         :: Text
    , _dParameters        :: Map Text Param
    , _dAuth              :: OAuth2
    , _dFeatures          :: [Text]
    , _dSchemas           :: Map Text Schema
    , _dMethods           :: Map Text Method
    , _dResources         :: Map Text Resource
    } deriving (Eq, Show)

makeClassy ''Description

instance FromJSON Description where
    parseJSON = withObject "description" $ \o -> Description
        <$> o .:  "kind"
        <*> o .:  "discoveryVersion"
        <*> o .:  "id"
        <*> o .:  "name"
        <*> o .:  "version"
        <*> o .:  "revision"
        <*> o .:  "title"
        <*> o .:  "description"
        <*> o .:  "icons"
        <*> o .:  "documentationLink"
        <*> o .:  "labels"
        <*> o .:  "protocol"
        <*> o .:  "baseUrl"
        <*> o .:  "rootUrl"
        <*> o .:  "servicePath"
        <*> o .:  "batchPath"
        <*> o .:? "parameters" .!= mempty
        <*> o .:  "auth"
        <*> o .:? "features"   .!= mempty
        <*> o .:? "schemas"    .!= mempty
        <*> o .:? "methods"    .!= mempty
        <*> o .:? "resources"  .!= mempty

data Service = Service
    { _sLibrary       :: Text
    , _sCanonicalName :: Text
    , _sOwnerName     :: Text
    , _sOwnerDomain   :: Text
    , _sPackagePath   :: Maybe Text
    , _sDescription   :: Description
    } deriving (Eq, Show)

makeLenses ''Service

instance FromJSON Service where
    parseJSON = withObject "service" $ \o -> Service
        <$> o .: "library"
        <*> o .: "canonicalName"
        <*> o .: "ownerName"
        <*> o .: "ownerDomain"
        <*> o .: "packagePath"
        <*> parseJSON (A.Object o)
