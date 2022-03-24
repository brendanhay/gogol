{-# LANGUAGE TemplateHaskell #-}

module Gen.Types
  ( module Gen.Types,
    module Gen.Types.Help,
    module Gen.Types.Id,
    module Gen.Types.Data,
    module Gen.Types.Map,
    module Gen.Types.NS,
    module Gen.Types.Schema,
  )
where

import Control.Applicative (optional)
import Control.Lens (lens, makeLenses, use, uses, view)
import Data.Aeson ((.=))
import qualified Data.Aeson as Aeson
import qualified Data.Attoparsec.Text as Atto
import qualified Data.CaseInsensitive as CI
import qualified Data.Char as Char
import Data.Function (on)
import qualified Data.List as List
import qualified Data.Map.Strict as Map
import Data.Ord (Down (..))
import qualified Data.Set as Set
import qualified Data.Text as Text
import qualified Data.Text.Lazy.Builder as Text.Builder
import Gen.Formatting
import Gen.Prelude hiding (Enum)
import Gen.Text
import Gen.Types.Data
import Gen.Types.Help
import Gen.Types.Id
import Gen.Types.Map
import Gen.Types.NS
import Gen.Types.Schema
import qualified System.FilePath as FilePath
import Text.EDE (Template)

newtype Version = Version Text
  deriving (Show, Eq)

instance ToJSON Version where
  toJSON (Version v) = Aeson.toJSON v

fver :: Format a (Version -> a)
fver = later (\(Version v) -> Text.Builder.fromText v)

data Release
  = Sandbox
  | Dev (Maybe Int) (Maybe Char)
  | Alpha (Maybe Int) (Maybe Char)
  | Beta (Maybe Int) (Maybe Char)
  deriving stock (Eq, Ord, Show)

data ModelVersion = ModelVersion Double (Maybe Release)
  deriving stock (Show, Eq)

instance Ord ModelVersion where
  compare (ModelVersion an ar) (ModelVersion bn br) =
    compare an bn
      <> case (ar, br) of
        (Nothing, _) -> GT
        (_, Nothing) -> LT
        (Just x, Just y) -> compare x y

parseVersion :: Text -> Either String ModelVersion
parseVersion x =
  first (mappend (Text.unpack x) . mappend " -> ") $
    Atto.parseOnly (preface *> (empty' <|> version) <* Atto.endOfInput) x
  where
    empty' = ModelVersion 0 <$> (alpha <|> beta <|> exp')

    version =
      ModelVersion
        <$> number
        <*> (alpha <|> beta <|> sandbox <|> dev <|> suffix <|> pure Nothing)

    preface =
      Atto.takeWhile (/= '_') *> void (Atto.char '_') <|> pure ()

    protoVersionParser = do
      n <- Atto.many1 Atto.digit
      _ <- Atto.char 'p'
      p <- Atto.many1 Atto.digit
      return (read (n ++ "." ++ p) :: Double)

    number =
      Atto.takeWhile (/= 'v') *> Atto.char 'v' *> (protoVersionParser <|> Atto.double)

    dev =
      Atto.string "dev"
        *> (Dev <$> optional Atto.decimal <*> optional Atto.letter)
        <&> Just

    alpha =
      Atto.string "alpha"
        *> (Alpha <$> optional Atto.decimal <*> optional Atto.letter)
        <&> Just

    beta =
      (Atto.string "beta" <|> Atto.string "b")
        *> (Beta <$> optional Atto.decimal <*> optional Atto.letter)
        <&> Just

    sandbox = Just Sandbox <$ Atto.string "sandbox"

    exp' = Just Sandbox <$ Atto.string "exp" <* Atto.decimal @Integer

    suffix = Atto.takeWhile Char.isAlpha *> pure Nothing <* Atto.endOfInput

data Model = Model
  { modelName :: Text,
    modelPrefix :: Text,
    modelVersion :: ModelVersion,
    modelPath :: FilePath
  }
  deriving stock (Show)

instance Eq Model where
  (==) = on (==) modelPrefix

instance Ord Model where
  compare a b =
    on compare modelPrefix a b
      <> on compare (Down . modelVersion) a b

modelFromPath :: HasCallStack => FilePath -> Model
modelFromPath modelPath = Model {..}
  where
    modelName =
      Text.intercalate "/"
        . drop 1
        . List.dropWhile (/= "models")
        . Text.split (== '/')
        $ modelPrefix

    modelPrefix =
      Text.pack
        . FilePath.takeDirectory
        . FilePath.takeDirectory
        $ modelPath

    modelVersion =
      either error id
        . parseVersion
        . Text.pack
        . FilePath.takeBaseName
        . FilePath.takeDirectory
        $ modelPath

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

data Library = Library
  { _lVersion :: Version,
    _lService :: Service Global,
    _lAPI :: API,
    _lSchemas :: Set Data
  }

makeLenses ''Library

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
        "libraryDescription" .= Desc @4 (l ^. dDescription),
        "libraryVersion" .= (l ^. lVersion),
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

serviceImports :: HasService a b => a -> Imports
serviceImports s =
  Imports
    { tocImports = Set.empty,
      typeImports = Set.fromList [prodNS s, sumNS s],
      prodImports = Set.fromList [sumNS s],
      sumImports = Set.empty,
      actionImports = Set.fromList [typesNS s]
    }

tocNS, typesNS, prodNS, sumNS :: HasService a b => a -> NS
tocNS = mappend "Gogol" . mkNS . view sCanonicalName
typesNS = (<> "Types") . tocNS
prodNS = (<> "Internal.Product") . tocNS
sumNS = (<> "Internal.Sum") . tocNS

exposedModules :: Library -> [NS]
exposedModules l =
  (tocNS l :) . (typesNS l :) . map actionNs . Set.toList $
    apiResources (_lAPI l) <> apiMethods (_lAPI l)

otherModules :: Library -> [NS]
otherModules s = List.sort [prodNS s, sumNS s]

data TType
  = TType Global
  | TLit Lit
  | TMaybe TType
  | TList TType
  | TMap TType TType
  deriving (Show, Eq)

textual :: TType -> Bool
textual = \case
  TType {} -> False
  TList {} -> False
  TMap {} -> False
  TMaybe x -> textual x
  TLit (Natural p) -> p
  TLit (Float p) -> p
  TLit (Double p) -> p
  TLit (UInt32 p) -> p
  TLit (UInt64 p) -> p
  TLit (Int32 p) -> p
  TLit (Int64 p) -> p
  TLit _other -> False

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
  | DGeneric
  deriving (Show, Eq)

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
      f = lens _schema (\s a -> s {_schema = a})

monoid :: Solved -> Bool
monoid = elem DMonoid . _deriving

setAdditional :: Solved -> Solved
setAdditional s =
  setRequired $
    s
      { _additional = True,
        _type = TMap (TLit Text) (_type s)
      }

type Seen = Map (CI Text {- Prefix -}) (Set (CI Text {- Inhabitants -}))

data Memo = Memo
  { _context :: Service (Fix Schema),
    _typed :: Map Global TType,
    _derived :: Map Global [Derive],
    _reserve :: Set Global,
    _schemas :: Map Global (Schema Global),
    _prefixed :: Map Global Prefix,
    _branches :: Seen,
    _fields :: Seen
  }

makeLenses ''Memo

instance HasService Memo (Fix Schema) where
  service = context

type AST = ExceptT Text (State Memo)

reserveType :: Global -> AST Global
reserveType g = do
  p <- uses reserve (Set.member g)

  pure
    $! if p
      then reference g "'"
      else g

reserveBranches :: AST ()
reserveBranches = do
  ss <- use schemas

  let bs = Set.fromList $ map (CI.mk . global) (Map.keys ss)

  branches %= Map.insertWith (<>) mempty bs

reserveFields :: AST ()
reserveFields = do
  ss <- use schemas

  forM_ (Map.keys ss) $ \(global -> k) -> do
    let (p, s) =
          case splitWords k of
            [] -> ("", "")
            x : xs -> (x, mconcat xs)

    fields %= Map.insertWith (<>) (CI.mk p) (Set.singleton (CI.mk s))
