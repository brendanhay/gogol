{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE KindSignatures    #-}
{-# LANGUAGE LambdaCase        #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}

-- Module      : Gen.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Types where

--import           Control.Lens
import           Data.Aeson
import           Data.Aeson.TH
import qualified Data.Attoparsec.Text      as A
import           Data.Char
import           Data.Function             (on)
import qualified Data.HashMap.Strict       as Map
import           Data.List                 (groupBy, nub, sort)
import           Data.List.NonEmpty        (NonEmpty (..), nonEmpty)
import qualified Data.List.NonEmpty        as NE
import           Data.Ord
import           Data.Semigroup
import           Data.Text                 (Text)
import qualified Data.Text                 as Text
import qualified Data.Text.Lazy            as LText
import           Data.Text.Manipulate
import qualified Filesystem.Path.CurrentOS as Path
import           Gen.JSON
import           Gen.Types.NS
import           GHC.TypeLits
import           Text.EDE                  (Template)

type Map   = Map.HashMap
type Error = LText.Text
type Path  = Path.FilePath

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

type LibraryVer = Version "library"
type ClientVer  = Version "client"
type CoreVer    = Version "core"

data Versions = Versions
    { _libraryVersion :: LibraryVer
    , _clientVersion  :: ClientVer
    , _coreVersion    :: CoreVer
    } deriving (Show)

-- makeClassy ''Versions

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

data Service = Service
    { _svcTitle             :: Text
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
    , _svcParameters        :: Object
    , _svcAuth              :: Maybe Object
    , _svcSchemas           :: Object
    } deriving (Show)

deriveFromJSON (js "_svc") ''Service

data Library = Library
    { _libName         :: Text
    , _libTitle        :: Text
    , _libDescriptions :: [Text]
    , _libNamespace    :: NS
    , _libVersions     :: Versions
    , _libServices     :: NonEmpty Service
    }

mergeLibraries :: Versions -> [Service] -> [Library]
mergeLibraries v = map go . groupBy (on (==) _svcName)
  where
    go [x]    = mk x
    go (x:xs) = (mk x) { _libServices = x :| xs }

    mk x = Library
        { _libName      = "gozen-" <> Text.toLower (_svcName x)
        , _libTitle     = _svcTitle x
        , _libDescriptions = []
        , _libNamespace = "Network.Google" <> mkNS (toPascal (_svcName x))
        , _libVersions  = v
        , _libServices  = x :| []
        }
