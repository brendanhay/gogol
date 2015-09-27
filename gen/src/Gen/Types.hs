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
    , module Gen.Types.Help
    , module Gen.Types.Id
    , module Gen.Types.Map
    , module Gen.Types.NS
    ) where

import           Control.Applicative
import           Control.Lens                 hiding ((.=))
import           Data.Aeson                   hiding (Bool, String)
import           Data.Aeson.TH
import           Data.Char
import           Data.Function                (on)
import qualified Data.HashMap.Strict          as Map
import qualified Data.HashSet                 as Set
import           Data.List                    (groupBy, sort)
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
import           Text.EDE                     (Template)

default (Text)

newtype Fix f = Fix (f (Fix f))

type Set      = Set.HashSet
type Error    = LText.Text
type Rendered = LText.Text
type Path     = Path.FilePath

toTextIgnore :: Path -> Text
toTextIgnore = either id id . Path.toText

data Templates = Templates
    { cabalTemplate  :: Template
    , tocTemplate    :: Template
    , readmeTemplate :: Template
    , typesTemplate  :: Template
    , prodTemplate   :: Template
    , sumTemplate    :: Template
    , actionTemplate :: Template
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
     . drop 1
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
    { _description :: Maybe Help
    , _defaulted   :: Maybe Text
    , _required    :: !Bool
    , _location    :: Maybe Location
    } deriving (Eq, Show)

instance FromJSON Info where
    parseJSON = withObject "info" $ \o -> Info
        <$> o .:? "description"
        <*> o .:? "default"
        <*> o .:? "required" .!= False
        <*> o .:? "location"

deriveToJSON (js "_info") ''Info

makeClassy ''Info

parameter :: HasInfo a => a -> Bool
parameter s = s ^. required && isNothing (s ^. defaulted)

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
        n <- num =<< (o .:? "minimum" .!= "0")
        (o .: "format" <|> o .: "type") >>= \case
            -- Types
            "string"    -> pure Text
            "boolean"   -> pure Bool
            -- Formats
            "float"     -> pure Float
            "double"    -> pure Double
            "byte"      -> pure (nat n Byte)
            "uint32"    -> pure (nat n UInt32)
            "uint64"    -> pure (nat n UInt64)
            "int32"     -> pure (nat n Int32)
            "int64"     -> pure (nat n Int64)
            "date"      -> pure Date
            "date-time" -> pure Time
            e           -> fail $
                "Unable to parse Lit from " ++ Text.unpack e
      where
        num = either fail (pure . fst) . Read.decimal

        nat :: Int -> Lit -> Lit
        nat n | n > 0     = const Nat
              | otherwise = id

-- "pattern": "[A-Z]{3}",
-- "pattern": "[0-9a-zA-Z,]+",
-- "pattern": "[a-zA-Z]+==[a-zA-Z0-9_+-]+",
-- "minimum": "1"
-- "format": "date-time", "uint64", "int32",

deriveToJSON (js "") ''Lit

data Schema a
    = Obj  Info (Map Local a)
    | Arr  Info a
    | Enum Info [Text] [Text]
    | Lit  Info Lit
    | Ref  Info Global
    | Any  Info -- String or Number
      deriving (Eq, Show, Functor, Foldable, Traversable)

instance FromJSON (Fix Schema) where
    parseJSON = withObject "schema" $ \o -> do
        i <- parseJSON (Object o)
        Fix <$> (ref i o <|> schema i o)
      where
        schema i o = o .: "type" >>= \case
            "object" -> Obj i <$> o .:? "properties" .!= mempty
            "array"  -> Arr i <$> o .:  "items"
            "any"    -> pure (Any i)
            _        -> enm i o <|> Lit i <$> parseJSON (Object o)

        enm i o = Enum i <$> o .: "enum" <*> o .: "enumDescriptions"
        ref i o = Ref  i <$> o .: "$ref"

deriveToJSON (js "") ''Schema

instance HasInfo (Schema a) where
    info = lens f (flip g)
      where
        f = \case
            Obj  i _   -> i
            Arr  i _   -> i
            Enum i _ _ -> i
            Lit  i _   -> i
            Ref  i _   -> i
            Any  i     -> i

        g i = \case
            Obj  _ p   -> Obj  i p
            Arr  _ e   -> Arr  i e
            Enum _ v d -> Enum i v d
            Lit  _ l   -> Lit  i l
            Ref  _ r   -> Ref  i r
            Any  {}    -> Any  i

data Param a = Param
    { _prmLocation :: !Location
    , _prmRepeated :: !Bool
    , _prmInfo     :: Info
    , _prmSchema   :: a
    } deriving (Show, Functor, Foldable, Traversable)

-- paramSchema :: Param -> Fix Schema
-- paramSchema p
--     | _prmRepeated p = Fix $ Arr (_prmInfo p) lit
--     | otherwise      = lit
--   where
--     lit = Fix $ Lit (_prmInfo p) (_prmLiteral p)

instance FromJSON a => FromJSON (Param a) where
    parseJSON = withObject "parameter" $ \o -> Param
        <$> o .:  "location"
        <*> o .:? "repeated" .!= False
        <*> parseJSON (Object o)
        <*> parseJSON (Object o)

data TType
    = TType   Id
    | TLit    Lit
    | TMaybe  TType
    | TEither TType TType
    | TList   TType

data Derive
    = DEq
    | DOrd
    | DRead
    | DShow
    | DEnum
    | DNum
    | DIntegral
    | DReal
    | DMonoid
    | DIsString
    | DData
    | DTypeable
    | DGeneric
      deriving (Eq, Show)

data Solved = Solved
    { _ident    :: Id
    , _prefix   :: Pre
    , _schema   :: Schema Id
    , _type     :: TType
    , _deriving :: [Derive]
    }

instance HasInfo Solved where
    info = f . info
      where
        f = lens _schema (\s a -> s { _schema = a })

monoid :: Solved -> Bool
monoid = elem DMonoid . _deriving

data Syn a = Syn { syntax :: a }

instance Pretty a => ToJSON (Syn a) where
    toJSON = toJSON . prettyPrint . syntax

data Fun = Fun' Name (Maybe Help) Rendered Rendered

instance ToJSON Fun where
    toJSON (Fun' n h s d) = object
        [ "name" .= Syn n
        , "help" .= h
        , "sig"  .= s
        , "decl" .= d
        ]

data Branch = Branch Name Text Text

instance ToJSON Branch where
    toJSON (Branch n v h) = object
        [ "name"  .= Syn n
        , "value" .= v
        , "help"  .= h
        ]

data Data
    = Sum  Name (Maybe Help) [Branch]
    | Prod Name (Maybe Help) Rendered Fun [Fun] [Rendered]

instance ToJSON Data where
    toJSON = \case
        Sum n h bs -> object
            [ "name"     .= Syn n
            , "type"     .= "sum"
            , "help"     .= h
            , "branches" .= bs
            ]

        Prod n h d c ls is -> object
            [ "name"      .= Syn n
            , "type"      .= "prod"
            , "decl"      .= d
            , "help"      .= h
            , "ctor"      .= c
            , "lenses"    .= ls
            , "instances" .= is
            ]

data Action = Action
    { _actName  :: Name
    , _actNS    :: NS
    , _actHelp  :: Maybe Help
    , _actAlias :: Rendered
    , _actData  :: Data
    }

instance ToJSON Action where
    toJSON Action {..} = object
        [ "name"  .= Syn _actName
        , "ns"    .= _actNS
        , "help"  .= _actHelp
        , "alias" .= _actAlias
        , "type"  .= _actData
        ]

data API = API
    { _apiName    :: Name
    , _apiDecl    :: Rendered
    , _apiActions :: Map Name Action
    }

instance ToJSON API where
    toJSON API {..} = object
         [ "name"    .= Syn _apiName
         , "decl"    .= _apiDecl
         , "actions" .= Map.elems _apiActions
         ]

data Method a = Method
    { _mId             :: Text
    , _mPath           :: Text
    , _mMethod         :: Text
    , _mDescription    :: Maybe Help
    , _mParameters     :: Map Local (Param a)
    , _mParameterOrder :: [Local]
    , _mScopes         :: [Text]
    , _mRequest        :: Maybe Global
    , _mResponse       :: Maybe Global
    } deriving (Generic, Functor, Foldable, Traversable)

instance FromJSON a => FromJSON (Method a) where
    parseJSON = withObject "method" $ \o -> Method
        <$> o .:  "id"
        <*> o .:  "path"
        <*> o .:  "httpMethod"
        <*> o .:? "description"
        <*> o .:? "parameters"     .!= mempty
        <*> o .:? "parameterOrder" .!= mempty
        <*> o .:? "scopes"         .!= mempty
        <*> ref o "request"
        <*> ref o "response"
      where
        ref o k = Just <$> (o .: k >>= (.: "$ref"))
              <|> pure Nothing

data Resource a
    = Top (Map Local (Resource a))
    | Sub (Map Local (Method   a))
      deriving (Functor, Foldable, Traversable)

instance FromJSON a => FromJSON (Resource a) where
    parseJSON = withObject "resource" $ \o ->
            Top <$> o .: "resources"
        <|> Sub <$> o .: "methods"

data Service s p r = Service
    { _svcLibrary           :: Text
    , _svcTitle             :: Text
    , _svcName              :: Text
    , _svcCanonicalName     :: Text
    , _svcDescription       :: Help
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
    , _svcParameters        :: p
    , _svcSchemas           :: s
    , _svcApi               :: r
    } deriving (Generic)

instance (FromJSON s, FromJSON p, FromJSON r) => FromJSON (Service s p r) where
    parseJSON = withObject "service" $ \o -> Service
        <$> o .:  "library"
        <*> o .:  "title"
        <*> o .:  "name"
        <*> o .:  "canonicalName"
        <*> o .:  "description"
        <*> o .:? "revision"
        <*> o .:  "version"
        <*> o .:  "ownerName"
        <*> o .:  "ownerDomain"
        <*> o .:? "packagePath"
        <*> o .:  "documentationLink"
        <*> o .:  "protocol"
        <*> o .:  "baseUrl"
        <*> o .:  "rootUrl"
        <*> o .:  "servicePath"
        <*> o .:  "batchPath"
        <*> o .:? "auth"
        <*> o .:  "parameters"
        <*> o .:  "schemas"
        <*> parseJSON (Object o)

instance (ToJSON s, ToJSON p) => ToJSON (Service s p API) where
    toJSON s = Object (x <> y)
      where
        Object x = genericToJSON (js "_svc") s
        Object y = object
            [ "exposedModules" .= exposedModules s
            ]

type Parsed    = Service (Map Id    (Fix Schema))
                         (Map Local (Param (Fix Schema)))
                         (Resource  (Fix Schema))

type Flattened = Service [Id]     [Param Id]     (Resource Id)
type Typed     = Service [Solved] [Param Solved] (Resource Solved)
type Printed   = Service [Data]   ()             API

svcAbbrev :: Service s p r -> Text
svcAbbrev = upperHead . renameAbbrev . _svcCanonicalName

svcActions :: Service s p API -> [Action]
svcActions = Map.elems . _apiActions . _svcApi

typeImports, prodImports, sumImports, actionImports :: Service s p r -> [NS]
typeImports s = sort ["Network.Google.Prelude", prodNS s, sumNS s]
prodImports s = sort ["Network.Google.Prelude", sumNS s]
sumImports  _ = sort ["Network.Google.Prelude"]
actionImports = typeImports

tocNS, typesNS, prodNS, sumNS :: Service s p r -> NS
tocNS s = NS $ "Network" : "Google" : Text.split (== '.') (_svcCanonicalName s)
typesNS = (<> "Types")   . tocNS
prodNS  = (<> "Product") . typesNS
sumNS   = (<> "Sum")     . typesNS

actionNS :: Service s p r -> Local -> Local -> NS
actionNS s x y = tocNS s <> NS [upperHead (local x), upperHead (local y)]

exposedModules :: Service s p API -> [NS]
exposedModules s = sort (tocNS s : typesNS s : map _actNS (svcActions s))

otherModules :: Service s p r -> [NS]
otherModules s = sort [prodNS s, sumNS s]

data Library = Library
    { _libName     :: Text
    , _libTitle    :: Text
    , _libVersions :: Versions
    , _libServices :: NonEmpty Printed
    }

instance ToJSON Library where
    toJSON Library{..} = object
        [ "libraryName"         .= _libName
        , "libraryTitle"        .= _libTitle
        , "libraryVersion"      .= _libraryVersion _libVersions
        , "libraryDescriptions" .= map (Desc 4 . _svcDescription) (NE.toList _libServices)
        , "coreVersion"         .= _coreVersion    _libVersions
        , "clientVersion"       .= _clientVersion  _libVersions
        , "exposedModules"      .= concatMap exposedModules (NE.toList _libServices)
        , "otherModules"        .= concatMap otherModules   (NE.toList _libServices)
        ]

merge :: Versions -> [Printed] -> [Library]
merge v = map go . groupBy (on (==) _svcLibrary)
  where
    go [x]    = mk x
    go (x:xs) = (mk x) { _libServices = x :| xs }
    -- FIXME:
    go []     = error "Empty merge set!"

    mk x = Library
        { _libName     = renameLibrary (_svcLibrary x)
        , _libTitle    = renameTitle   (_svcTitle   x)
        , _libVersions = v
        , _libServices = x :| []
        }
