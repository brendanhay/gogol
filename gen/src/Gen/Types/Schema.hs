{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE DeriveFoldable             #-}
{-# LANGUAGE DeriveFunctor              #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DeriveTraversable          #-}
{-# LANGUAGE ExtendedDefaultRules       #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE FunctionalDependencies     #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE KindSignatures             #-}
{-# LANGUAGE LambdaCase                 #-}
{-# LANGUAGE MultiParamTypeClasses      #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TemplateHaskell            #-}

-- Module      : Gen.Types.Schema
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Types.Schema where

import           Control.Applicative
import           Control.Lens                 hiding ((.=))
import           Control.Monad
import           Data.Aeson                   hiding (Array, Bool, Object,
                                               String)
import qualified Data.Aeson                   as A
import           Data.Aeson.TH
import           Data.Aeson.Types             (Parser)
import           Data.Char
import           Data.Function                (on)
import           Data.Hashable
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
import           Gen.TH
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

keyless :: Map Text a -> [a]
keyless = Map.elems

newtype Fix f = Fix (f (Fix f))

data Location
    = Query
    | Path
      deriving (Eq, Show)

deriveJSON options ''Location

newtype Ann = Ann { annRequired :: [Local] }
    deriving (Eq, Show, Monoid)

deriveJSON options ''Ann

data Info = Info
    { _iId          :: Maybe Global
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

defaulted, required, parameter :: HasInfo a => a -> Bool
defaulted   = isJust . view iDefault
required    = view iRequired
parameter s = required s && not (defaulted s)

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
        s <-    SRef i <$> parseJSON o
            <|> SAny i <$> parseJSON o
            <|> SLit i <$> parseJSON o
            <|> SEnm i <$> parseJSON o
            <|> SArr i <$> parseJSON o
            <|> SObj i <$> parseJSON o
        pure (Fix s)

instance HasInfo (Schema a) where
    info = lens f (flip g)
      where
        f = \case
            SRef i _ -> i
            SLit i _ -> i
            SEnm i _ -> i
            SArr i _ -> i
            SObj i _ -> i

        g i = \case
            SRef _ x -> SRef i x
            SLit _ x -> SLit i x
            SEnm _ x -> SEnm i x
            SArr _ x -> SArr i x
            SObj _ x -> SObj i x

checkType :: Text -> A.Object -> Parser ()
checkType x o = do
   y <- o .: "type"
   unless (x == y) . fail . Text.unpack $
       "Schema type mismatch, expected " <> x <> ", but got " <> y

data Any = Any
    deriving (Eq, Show)

instance FromJSON Any where
    parseJSON = withObject "any" (\o -> Any <$ checkType "any" o)

newtype Ref = Ref { ref :: Global }
    deriving (Eq, Show)

instance FromJSON Ref where
    parseJSON = withObject "ref" (fmap Ref . (.: "$ref"))

data Lit
    = Text
    | Bool
    | Float
    | Double
    | Byte
    | UInt32
    | UInt64
    | Int32
    | Int64
    | Nat
    | Date
    | Time
      deriving (Eq, Show)

instance FromJSON Lit where
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

newtype Enm = Enm { _eValues :: [(Text, Help)] }
    deriving (Eq, Show)

instance FromJSON Enm where
    parseJSON = withObject "enum" $ \o -> do
        checkType "string" o
        vs <- o .: "enum"
        ds <- o .: "enumDescriptions"
        pure $! Enm (zip vs (ds ++ repeat mempty))

newtype Arr a = Arr { _aItem :: a }
    deriving (Eq, Show)

instance FromJSON a => FromJSON (Arr a) where
    parseJSON = withObject "array" $ \o -> do
        checkType "array" o
        Arr <$> o .: "item"

data Obj a = Obj
    { _oAdditional :: Maybe a
    , _oProperties :: Map Local a
    } deriving (Eq, Show)

instance FromJSON a => FromJSON (Obj a) where
    parseJSON = withObject "object" $ \o -> do
        checkType "object" o
        Obj <$> o .:? "additionalProperties"
            <*> o .:? "properties" .!= mempty

data Param a = Param
    { _pLocation :: Location
    , _pParam    :: a
    } deriving (Eq, Show, Functor, Foldable, Traversable)

makeLenses ''Param

instance FromJSON a => FromJSON (Param a) where
    parseJSON = withObject "param" $ \o -> Param
        <$> o .: "location"
        <*> parseJSON (A.Object o)

instance HasInfo a => HasInfo (Param a) where
    info = pParam . info

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

data Method a = Method
    { _mId                    :: Global
    , _mPath                  :: Text
    , _mHttpMethod            :: Text
    , _mDescription           :: Maybe Help
    , _mParameters            :: Map Local (Param a)
    , _mParameterOrder        :: [Local]
    , _mRequest               :: Maybe Ref
    , _mResponse              :: Maybe Ref
    , _mScopes                :: [Text]
    , _mSupportsMediaUpload   :: Bool
    , _mSupportsMediaDownload :: Bool
    , _mMediaUpload           :: Maybe MediaUpload
    , _mSupportsSubscription  :: Bool
    } deriving (Eq, Show, Functor, Foldable, Traversable)

instance FromJSON a => FromJSON (Method a) where
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

data Resource a = Resource
    { _rResources :: Map Local (Resource a)
    , _rMethods   :: [Method a]
    } deriving (Eq, Show, Functor, Foldable, Traversable)

instance FromJSON a => FromJSON (Resource a) where
    parseJSON = withObject "resource" $ \o -> Resource
         <$>  o .:? "resources" .!= mempty
         <*> (o .:? "methods"   .!= mempty <&> keyless)

newtype OAuth2 = OAuth2 { scopes :: Map Text Text }
    deriving (Eq, Show)

instance FromJSON OAuth2 where
    parseJSON = withObject "oauth2" $ \o ->
        o .: "oauth2" >>=
            withObject "scopes" (.: "scopes")

data Description a = Description
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
    , _dParameters        :: Map Local (Param a)
    , _dAuth              :: OAuth2
    , _dFeatures          :: [Text]
    , _dSchemas           :: Map Global a
    , _dResources         :: Map Global (Resource a)
    , _dMethods           :: [Method a]
    } deriving (Eq, Show)

makeClassy ''Description

instance FromJSON a => FromJSON (Description a) where
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
        <*> o .:? "resources"  .!= mempty
        <*> (o .:? "methods"   .!= mempty <&> keyless)

data Service a = Service
    { _sLibrary       :: Text
    , _sCanonicalName :: Text
    , _sOwnerName     :: Text
    , _sOwnerDomain   :: Text
    , _sPackagePath   :: Maybe Text
    , _sDescription   :: (Description a)
    } deriving (Eq, Show)

makeClassy ''Service

instance FromJSON a => FromJSON (Service a) where
    parseJSON = withObject "service" $ \o -> Service
        <$>  o .: "library"
        <*> (o .: "canonicalName" <&> upperHead . renameAbbrev)
        <*>  o .: "ownerName"
        <*>  o .: "ownerDomain"
        <*>  o .: "packagePath"
        <*> parseJSON (A.Object o)

instance HasDescription (Service a) a where
    description = sDescription

urlName :: Service a -> Text
urlName = (<> "URL") . lowerHead . _sCanonicalName

-- data Method a = Method
--     { _mId             :: Text
--     , _mPath           :: Text
--     , _mMethod         :: Text
--     , _mDescription    :: Maybe Help
--     , _mParameters     :: Map Local (Param a)
--     , _mParameterOrder :: [Local]
--     , _mScopes         :: [Text]
--     , _mRequest        :: Maybe Global
--     , _mResponse       :: Maybe Global
--     } deriving (Generic, Functor, Foldable, Traversable)

-- instance FromJSON a => FromJSON (Method a) where
--     parseJSON = withObject "method" $ \o -> Method
--         <$> o .:  "id"
--         <*> o .:  "path"
--         <*> o .:  "httpMethod"
--         <*> o .:? "description"
--         <*> o .:? "parameters"     .!= mempty
--         <*> o .:? "parameterOrder" .!= mempty
--         <*> o .:? "scopes"         .!= mempty
--         <*> ref o "request"
--         <*> ref o "response"
--       where
--         ref o k = Just <$> (o .: k >>= (.: "$ref"))
--               <|> pure Nothing

-- data Resource a
--     = Top (Map Local (Resource a))
--     | Sub (Map Local (Method   a))
--       deriving (Functor, Foldable, Traversable)

-- instance FromJSON a => FromJSON (Resource a) where
--     parseJSON = withObject "resource" $ \o ->
--             Top <$> o .: "resources"
--         <|> Sub <$> o .: "methods"

-- data Service s p r = Service
--     { _svcLibrary           :: Text
--     , _svcTitle             :: Text
--     , _svcName              :: Text
--     , _svcCanonicalName     :: Text
--     , _svcDescription       :: Help
--     , _svcRevision          :: Maybe Text
--     , _svcVersion           :: Text
--     , _svcOwnerName         :: Text
--     , _svcOwnerDomain       :: Text
--     , _svcPackagePath       :: Maybe Text
--     , _svcDocumentationLink :: Text
--     , _svcProtocol          :: Protocol
--     , _svcBaseUrl           :: Text
--     , _svcRootUrl           :: Text
--     , _svcServicePath       :: Text
--     , _svcBatchPath         :: Text
--     , _svcAuth              :: Maybe Object
--     , _svcParameters        :: p
--     , _svcSchemas           :: s
--     , _svcApi               :: r
--     } deriving (Generic)

-- type Parsed    = Service (Map Id    (Fix Schema))
--                          (Map Local (Param (Fix Schema)))
--                          (Resource  (Fix Schema))

-- type Flattened = Service [Id]     [Param Id]     (Resource Id)
-- type Typed     = Service [Solved] [Param Solved] (Resource Solved)
-- type Printed   = Service [Data]   ()             API

-- instance (FromJSON s, FromJSON p, FromJSON r) => FromJSON (Service s p r) where
--     parseJSON = withObject "service" $ \o -> Service
--         <$> o .:  "library"
--         <*> o .:  "title"
--         <*> o .:  "name"
--         <*> o .:  "canonicalName"
--         <*> o .:  "description"
--         <*> o .:? "revision"
--         <*> o .:  "version"
--         <*> o .:  "ownerName"
--         <*> o .:  "ownerDomain"
--         <*> o .:? "packagePath"
--         <*> o .:  "documentationLink"
--         <*> o .:  "protocol"
--         <*> o .:  "baseUrl"
--         <*> o .:  "rootUrl"
--         <*> o .:  "servicePath"
--         <*> o .:  "batchPath"
--         <*> o .:? "auth"
--         <*> o .:  "parameters"
--         <*> o .:  "schemas"
--         <*> parseJSON (Object o)

-- instance (ToJSON s, ToJSON p) => ToJSON (Service s p API) where
--     toJSON s = Object (x <> y)
--       where
--         Object x = genericToJSON (js "_svc") s
--         Object y = object
--             [ "exposedModules" .= exposedModules s
--             ]

-- type Parsed    = Service (Map Id    (Fix Schema))
--                          (Map Local (Param (Fix Schema)))
--                          (Resource  (Fix Schema))

-- type Flattened = Service [Id]     [Param Id]     (Resource Id)
-- type Typed     = Service [Solved] [Param Solved] (Resource Solved)
-- type Printed   = Service [Data]   ()             API

-- data Library = Library
--     { _libName     :: Text
--     , _libTitle    :: Text
--     , _libVersions :: Versions
--     , _libServices :: NonEmpty Printed
--     }

-- instance ToJSON Library where
--     toJSON Library{..} = object
--         [ "libraryName"         .= _libName
--         , "libraryTitle"        .= _libTitle
--         , "libraryVersion"      .= _libraryVersion _libVersions
--         , "libraryDescriptions" .= map (Desc 4 . _svcDescription) (NE.toList _libServices)
--         , "coreVersion"         .= _coreVersion    _libVersions
--         , "clientVersion"       .= _clientVersion  _libVersions
--         , "exposedModules"      .= concatMap exposedModules (NE.toList _libServices)
--         , "otherModules"        .= concatMap otherModules   (NE.toList _libServices)
--         ]

