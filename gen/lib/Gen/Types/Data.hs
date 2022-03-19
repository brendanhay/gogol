module Gen.Types.Data where

import Data.Aeson hiding (Array, Bool, String)
import Data.List (sortOn)
import Data.Maybe
import Data.Text (Text)
import qualified Data.Text as Text
import qualified Data.Text.Lazy as LText
import Gen.Types.Help
import Gen.Types.Id
import Gen.Types.NS
import Language.Haskell.Exts (Name, Type)
import Language.Haskell.Exts.Pretty (Pretty, prettyPrint)
import Prelude hiding (Enum)

default (Text)

type Rendered = LText.Text

newtype Syn a = Syn {syntax :: a}

instance Pretty a => ToJSON (Syn a) where
  toJSON = toJSON . prettyPrint . syntax

data Fun = Fun' (Name ()) (Maybe Help) Rendered Rendered

instance ToJSON Fun where
  toJSON (Fun' n h s d) =
    object
      [ "name" .= Syn n,
        "help" .= h,
        "sig" .= s,
        "decl" .= d
      ]

data Branch = Branch (Name ()) Text Help

instance ToJSON Branch where
  toJSON (Branch n v h) =
    object
      [ "name" .= Syn n,
        "value" .= v,
        "help" .= h
      ]

data Field = Field (Name ()) (Type ()) Help

instance ToJSON Field where
  toJSON (Field name type' help) =
    object
      [ "name" .= Syn name,
        "type" .= Syn type',
        "help" .= Nest 6 help
      ]

data Data
  = Sum (Name ()) (Maybe Help) [Branch]
  | Prod (Name ()) (Maybe Help) Rendered [Field] Rendered [Rendered] Fun

instance ToJSON Data where
  toJSON = \case
    Sum name help branches ->
      object
        [ "name" .= Syn name,
          "type" .= Text.pack "sum",
          "help" .= help,
          "branches" .= branches
        ]
    Prod name help decl fields derive inst ctor ->
      object
        [ "name" .= Syn name,
          "type" .= Text.pack "prod",
          "help" .= help,
          "decl" .= decl,
          "fields" .= fields,
          "deriving" .= derive,
          "instances" .= inst,
          "ctor" .= ctor
        ]

dataName :: Data -> Name ()
dataName = \case
  Sum n _ _ -> n
  Prod n _ _ _ _ _ _ -> n

data Action = Action
  { _actId :: Text,
    _actType :: Global,
    _actNamespace :: NS,
    _actHelp :: Maybe Help,
    _actData :: Data
  }

instance ToJSON Action where
  toJSON Action {..} =
    object
      [ "id" .= _actId,
        "ns" .= _actNamespace,
        "help" .= _actHelp,
        "type" .= _actData
      ]

data Scope = Scope
  { _scopeName :: Name (),
    _scopeData :: Rendered,
    _scopeHelp :: Help
  }

instance ToJSON Scope where
  toJSON Scope {..} =
    object
      [ "name" .= Syn _scopeName,
        "decl" .= _scopeData,
        "help" .= _scopeHelp
      ]

data API = API
  { _apiResources :: [Action],
    _apiMethods :: [Action],
    _apiConfig :: Fun,
    _apiScopes :: [Scope],
    _apiParams :: Data
  }

instance ToJSON API where
  toJSON API {..} =
    object
      [ "resources" .= sortOn _actId _apiResources,
        "methods" .= sortOn _actId _apiMethods,
        "config" .= _apiConfig,
        "scopes" .= _apiScopes,
        "params" .= _apiParams
      ]
