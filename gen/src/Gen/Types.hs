{-# LANGUAGE TemplateHaskell #-}

-- |
-- Module      : Gen.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gen.Types
  ( module Gen.Types,
    module Gen.Types.Help,
    module Gen.Types.Id,
    module Gen.Types.Map,
    module Gen.Types.NS,
    module Gen.Types.Schema,
    module Gen.Types.Data,
  )
where

import Control.Applicative (optional)
import qualified Control.Lens as Lens
import qualified Data.Aeson as Aeson
import qualified Data.Attoparsec.Text as Atto
import qualified Data.CaseInsensitive as CI
import qualified Data.Function as Function
import qualified Data.HashMap.Strict as HashMap
import qualified Data.HashSet as HashSet
import qualified Data.List as List
import Data.Ord (Down (..))
import qualified Data.Text as Text
import qualified Data.Text.Lazy as Text.Lazy
import qualified Data.Text.Lazy.Builder as TextBuilder
import qualified Data.Text.Manipulate as Text.Manipulate
import Gen.Orphans ()
import Gen.Prelude
import Gen.Text
import Gen.Types.Data
import Gen.Types.Help
import Gen.Types.Id
import Gen.Types.Map
import Gen.Types.NS
import Gen.Types.Schema
import qualified System.FilePath as FilePath
import Text.EDE (Template)

type Error = String

newtype Version (v :: Symbol) = Version { fromVersion :: Text }
  deriving (Eq, Show)

instance ToJSON (Version v) where
  toJSON (Version v) = Aeson.toJSON v

type LibraryVer = Version "library"

type ClientVer = Version "client"

type CoreVer = Version "core"

data Versions = Versions
  { _libraryVersion :: LibraryVer,
    _clientVersion :: ClientVer,
    _coreVersion :: CoreVer
  }
  deriving (Show)

$(Lens.makeClassy ''Versions)

data Release
  = Sandbox
  | Dev (Maybe Int) (Maybe Char)
  | Alpha (Maybe Int) (Maybe Char)
  | Beta (Maybe Int) (Maybe Char)
  deriving (Eq, Ord, Show)

data ModelVersion = ModelVersion Double (Maybe Release)
  deriving (Eq, Show)

instance Ord ModelVersion where
  compare (ModelVersion an ar) (ModelVersion bn br) =
    compare an bn
      <> case (ar, br) of
        (Nothing, _) -> GT
        (_, Nothing) -> LT
        (Just x, Just y) -> compare x y

parseVersion :: String -> Either String ModelVersion
parseVersion s@(Text.pack -> x) =
  first (mappend s . mappend " -> ") $
    Atto.parseOnly (preface *> (empty' <|> version) <* Atto.endOfInput) x
  where
    empty' = ModelVersion 0 <$> (alpha <|> beta <|> exp')
    version =
      ModelVersion
        <$> number
        <*> (alpha <|> beta <|> sandbox <|> dev <|> pure Nothing)

    preface = Atto.takeWhile (/= '_') *> void (Atto.char '_') <|> pure ()

    protoVersionParser = do
      n <- Atto.many1 Atto.digit
      _ <- Atto.char 'p'
      p <- Atto.many1 Atto.digit
      return (read (n ++ "." ++ p) :: Double)
    number = Atto.takeWhile (/= 'v') *> Atto.char 'v' *> (protoVersionParser <|> Atto.double)

    dev =
      Atto.string "dev"
        *> (Dev <$> optional Atto.decimal <*> optional Atto.letter)
        <&> Just

    alpha =
      Atto.string "alpha"
        *> (Alpha <$> optional Atto.decimal <*> optional Atto.letter)
        <&> Just

    beta =
      Atto.string "beta"
        *> (Beta <$> optional Atto.decimal <*> optional Atto.letter)
        <&> Just

    sandbox = Just Sandbox <$ Atto.string "sandbox"
    exp' = Just Sandbox <$ Atto.string "exp" <* Atto.decimal

data Model = Model
  { modelName :: Text,
    modelPrefix :: Text,
    modelVersion :: ModelVersion,
    modelPath :: FilePath
  }

instance Eq Model where
  (==) = Function.on (==) modelPrefix

instance Ord Model where
  compare a b =
    Function.on compare modelPrefix a b
      <> Function.on compare (Down . modelVersion) a b

modelFromPath :: FilePath -> Model
modelFromPath x = Model n p v x
  where
    n =
      Text.init
        . Text.intercalate "/"
        . drop 1
        . dropWhile (/= "model")
        $ Text.split (== '/') p

    p = Text.pack $ FilePath.takeDirectory $ FilePath.takeDirectory x
    v = either error id (parseVersion x)

data Templates = Templates
  { cabalTemplate :: Template,
    tocTemplate :: Template,
    readmeTemplate :: Template,
    typesTemplate :: Template,
    prodTemplate :: Template,
    sumTemplate :: Template,
    actionTemplate :: Template
  }

data Imports = Imports
  { tocImports :: Set NS,
    typeImports :: Set NS,
    prodImports :: Set NS,
    sumImports :: Set NS,
    actionImports :: Set NS
  }

serviceImports :: HasService a b => a -> Imports
serviceImports s =
  Imports
    { tocImports = fromList [preludeNS],
      typeImports = fromList [preludeNS, prodNS s, sumNS s],
      prodImports = fromList [preludeNS, sumNS s],
      sumImports = fromList [preludeSumNS],
      actionImports = fromList [preludeNS, typesNS s]
    }

tocNS, typesNS, prodNS, sumNS :: HasService a b => a -> NS
tocNS = mappend "Network.Google" . mkNS . Lens.view sCanonicalName
typesNS = (<> "Types") . tocNS
prodNS = (<> "Product") . typesNS
sumNS = (<> "Sum") . typesNS

preludeNS :: NS
preludeNS = "Network.Google.Prelude"

-- | hide some conflicting (unneeded) data types from Sum modules
preludeSumNS :: NS
preludeSumNS = "Network.Google.Prelude hiding (Bytes)"

resourceNS, methodNS :: NS
resourceNS = "Network.Google.Resource"
methodNS = "Network.Google.Method"

exposedModules :: Library -> [NS]
exposedModules l =
  List.sort $
    tocNS l :
    typesNS l :
    map _actNamespace (_apiResources (_lAPI l))
      ++ map _actNamespace (_apiMethods (_lAPI l))

otherModules :: Library -> [NS]
otherModules s = List.sort [prodNS s, sumNS s]

data Library = Library
  { _lVersions :: Versions,
    _lService :: Service Global,
    _lAPI :: API,
    _lSchemas :: [Data]
  }

$(Lens.makeLenses ''Library)

instance HasVersions Library where
  versions = lVersions

instance HasDescription Library Global where
  description = lService . description

instance HasService Library Global where
  service = lService

instance ToJSON Library where
  toJSON l =
    Aeson.object
      -- Library
      [ "libraryName" .= (l ^. sLibrary),
        "libraryTitle" .= renameTitle (l ^. dTitle),
        "libraryDescription" .= Desc 4 (l ^. dDescription),
        "libraryVersion" .= (l ^. libraryVersion),
        "coreVersion" .= (l ^. coreVersion),
        "clientVersion" .= (l ^. clientVersion),
        "exposedModules" .= exposedModules l,
        "otherModules" .= otherModules l,
        -- Service
        "id" .= (l ^. dId),
        "name" .= (l ^. dName),
        "version" .= (l ^. dVersion),
        "title" .= (l ^. dTitle),
        "description" .= (l ^. dDescription),
        "documentationLink" .= (l ^. dDocumentationLink),
        "labels" .= (l ^. dLabels),
        "features" .= (l ^. dFeatures),
        "scopes" .= (l ^. dAuth),
        -- API
        "api" .= (l ^. lAPI),
        -- Schemas
        "schemas" .= (l ^. lSchemas)
      ]

data TType
  = TType Global
  | TLit Lit
  | TMaybe TType
  | TList TType
  | TMap TType TType
  deriving (Eq, Show)

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
  { _additional :: Bool,
    _unique :: Global,
    _prefix :: Prefix,
    _schema :: Schema Global,
    _type :: TType,
    _deriving :: [Derive]
  }
  deriving (Show)

instance HasInfo Solved where
  info = f . info
    where
      f = Lens.lens _schema (\s a -> s {_schema = a})

monoid :: Solved -> Bool
monoid = elem DMonoid . _deriving

setAdditional :: Solved -> Solved
setAdditional s =
  setRequired $
    s
      { _additional = True,
        _type = TMap (TLit Text) (_type s)
      }

type Seen = HashMap (CI Text {- Prefix -}) (HashSet (CI Text {- Inhabitants -}))

data Memo = Memo
  { _context :: Service (Fix Schema),
    _typed :: HashMap Global TType,
    _derived :: HashMap Global [Derive],
    _reserve :: HashSet Global,
    _schemas :: HashMap Global (Schema Global),
    _prefixed :: HashMap Global Prefix,
    _branches :: Seen,
    _fields :: Seen
  }

initial :: Service (Fix Schema) -> Memo
initial s = Memo s mempty mempty res core mempty mempty mempty
  where
    -- Top-level schema definitions with ids.
    res =
      HashSet.fromList
        . mapMaybe (Lens.view iId)
        $ HashMap.elems (s ^. dSchemas)
    -- Types available in Network.Google.Prelude.
    core =
      HashMap.fromList
        [ ("GBody", SLit requiredInfo RqBody),
          ("Stream", SLit requiredInfo RsBody),
          ("JSONValue", SLit requiredInfo JSONValue)
        ]

$(Lens.makeLenses ''Memo)

instance HasService Memo (Fix Schema) where
  service = context

type AST = ExceptT Error (State Memo)

reserveType :: Global -> AST Global
reserveType g = do
  p <- Lens.uses reserve (HashSet.member g)

  pure
    $! if p
      then reference g "'"
      else g

reserveBranches :: AST ()
reserveBranches = do
  ss <- Lens.use schemas

  let bs = HashSet.fromList $ map (CI.mk . global) (HashMap.keys ss)

  branches %= HashMap.insertWith (<>) mempty bs

reserveFields :: AST ()
reserveFields = do
  ss <- Lens.use schemas

  forM_ (HashMap.keys ss) $ \(global -> k) -> do
    let p : ps = Text.Manipulate.splitWords k
        s = mconcat ps

    fields %= HashMap.insertWith (<>) (CI.mk p) (HashSet.singleton (CI.mk s))
