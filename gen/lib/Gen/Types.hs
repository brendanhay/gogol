{-# LANGUAGE TemplateHaskell #-}

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

import Control.Applicative
import Control.Lens hiding ((.=))
import Control.Monad.Except
import Control.Monad.State.Strict
import Data.Aeson hiding (Array, Bool, String)
import qualified Data.Attoparsec.Text as A
import Data.Bifunctor
import Data.CaseInsensitive (CI)
import qualified Data.CaseInsensitive as CI
import qualified Data.Char as Char
import Data.Function (on)
import Data.List (sort)
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map
import Data.Maybe
import Data.Ord
import Data.Set (Set)
import qualified Data.Set as Set
import Data.String
import Data.Text (Text)
import qualified Data.Text as Text
import qualified Data.Text.Lazy as LText
import qualified Data.Text.Lazy.Builder as Build
import Data.Text.Manipulate
import qualified Filesystem.Path.CurrentOS as Path
import Formatting
import GHC.Stack (HasCallStack)
import Gen.Text
import Gen.Types.Data
import Gen.Types.Help
import Gen.Types.Id
import Gen.Types.Map
import Gen.Types.NS
import Gen.Types.Schema
import Text.EDE (Template)
import Prelude hiding (Enum)

type Error = LText.Text

type Path = Path.FilePath

newtype Version = Version Text
  deriving (Eq, Show)

instance ToJSON Version where
  toJSON (Version v) = toJSON v

fver :: Format a (Version -> a)
fver = later (\(Version v) -> Build.fromText v)

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

parseVersion :: Text -> Either String ModelVersion
parseVersion x =
  first (mappend (Text.unpack x) . mappend " -> ") $
    A.parseOnly (preface *> (empty' <|> version) <* A.endOfInput) x
  where
    empty' = ModelVersion 0 <$> (alpha <|> beta <|> exp')

    version =
      ModelVersion
        <$> number
        <*> (alpha <|> beta <|> sandbox <|> dev <|> suffix <|> pure Nothing)

    preface =
      A.takeWhile (/= '_') *> void (A.char '_') <|> pure ()

    protoVersionParser = do
      n <- A.many1 A.digit
      _ <- A.char 'p'
      p <- A.many1 A.digit
      return (read (n ++ "." ++ p) :: Double)

    number =
      A.takeWhile (/= 'v') *> A.char 'v' *> (protoVersionParser <|> A.double)

    dev =
      A.string "dev"
        *> (Dev <$> optional A.decimal <*> optional A.letter)
        <&> Just

    alpha =
      A.string "alpha"
        *> (Alpha <$> optional A.decimal <*> optional A.letter)
        <&> Just

    beta =
      (A.string "beta" <|> A.string "b")
        *> (Beta <$> optional A.decimal <*> optional A.letter)
        <&> Just

    sandbox = Just Sandbox <$ A.string "sandbox"

    exp' = Just Sandbox <$ A.string "exp" <* A.decimal @Integer

    suffix = A.takeWhile Char.isAlpha *> pure Nothing <* A.endOfInput

data Model = Model
  { modelName :: Text,
    modelPrefix :: Text,
    modelVersion :: ModelVersion,
    modelPath :: Path
  }

instance Eq Model where
  (==) = on (==) modelPrefix

instance Ord Model where
  compare a b =
    on compare modelPrefix a b
      <> on compare (Down . modelVersion) a b

modelFromPath :: HasCallStack => Path -> Model
modelFromPath x = Model n p v x
  where
    n =
      Text.init
        . Text.intercalate "/"
        . drop 1
        . dropWhile (/= "models")
        $ Text.split (== '/') p

    p = toTextIgnore (Path.parent (Path.parent x))
    v = either error id $ parseVersion (toTextIgnore (Path.dirname x))

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
  sort $
    tocNS l :
    typesNS l :
    map _actNamespace (_apiResources (_lAPI l))
      ++ map _actNamespace (_apiMethods (_lAPI l))

otherModules :: Library -> [NS]
otherModules s = sort [prodNS s, sumNS s]

toTextIgnore :: Path -> Text
toTextIgnore = either id id . Path.toText

data Library = Library
  { _lVersion :: Version,
    _lService :: Service Global,
    _lAPI :: API,
    _lSchemas :: [Data]
  }

makeLenses ''Library

instance HasDescription Library Global where
  description = lService . description

instance HasService Library Global where
  service = lService

instance ToJSON Library where
  toJSON l =
    object
      -- Library
      [ "libraryName" .= (l ^. sLibrary),
        "libraryTitle" .= renameTitle (l ^. dTitle),
        "libraryDescription" .= Desc 4 (l ^. dDescription),
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

data TType
  = TType Global
  | TLit Lit
  | TMaybe TType
  | TList TType
  | TMap TType TType
  deriving (Eq, Show)

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

initial :: Service (Fix Schema) -> Memo
initial s = Memo s mempty mempty res core mempty mempty mempty
  where
    -- Top-level schema definitions with ids.
    res =
      Set.fromList
        . mapMaybe (view iId)
        $ Map.elems (s ^. dSchemas)
    -- Types available in Gogol.Prelude.
    core =
      Map.fromList
        [ ("GBody", SLit requiredInfo RqBody),
          ("Stream", SLit requiredInfo RsBody),
          ("JsonValue", SLit requiredInfo JSONValue),
          ("JSONValue", SLit requiredInfo JSONValue)
        ]

makeLenses ''Memo

instance HasService Memo (Fix Schema) where
  service = context

type AST = ExceptT Error (State Memo)

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
