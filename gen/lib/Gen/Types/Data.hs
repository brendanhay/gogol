{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-orphans #-}

module Gen.Types.Data where

import Data.Aeson as Aeson
import Data.Aeson.TH as TH
import Gen.JSON (jsonOptions)
import Gen.Prelude
import Gen.Types.Help
import Gen.Types.Id (Global)
import Gen.Types.NS
import qualified Language.Haskell.Exts.Pretty as PP
import Language.Haskell.Exts.Syntax

newtype PP a = PP a

instance PP.Pretty a => ToJSON (PP a) where
  toJSON (PP x) = toJSON (PP.prettyPrintStyleMode style mode x)
    where
      style =
        PP.style
          { PP.mode = PP.PageMode,
            PP.lineLength = 255,
            PP.ribbonsPerLine = 2
          }

      mode =
        PP.defaultMode
          { PP.layout = PP.PPOffsideRule,
            PP.spacing = False
          }

deriving via PP (Name ()) instance ToJSON (Name ())

deriving via PP (Type ()) instance ToJSON (Type ())

deriving via PP (Deriving ()) instance ToJSON (Deriving ())

deriving via PP (Decl ()) instance ToJSON (Decl ())

data Fun = Fun
  { funName :: Name (),
    funHelp :: Maybe Help,
    funSig :: Decl (),
    funDecl :: Decl ()
  }
  deriving stock (Show, Eq, Ord)

data Branch = Branch
  { branchName :: Name (),
    branchHelp :: Help,
    branchValue :: Text
  }
  deriving stock (Show, Eq, Ord)

data Field = Field
  { fieldName :: Name (),
    fieldType :: Type (),
    fieldHelp :: Nest 6
  }
  deriving stock (Show, Eq, Ord)

data Data
  = Sum
      { sumName :: Name (),
        sumHelp :: Maybe Help,
        sumBranches :: [Branch]
      }
  | Prod
      { prodName :: Name (),
        prodHelp :: Maybe Help,
        prodDecl :: Decl (),
        prodFields :: [Field],
        prodCtor :: Fun,
        prodDeriving :: Deriving (),
        prodInstances :: [Decl ()]
      }
  deriving stock (Show, Eq, Ord)

getDataName :: Data -> Name ()
getDataName = \case
  Sum {sumName} -> sumName
  Prod {prodName} -> prodName

setDataInstances :: [Decl ()] -> Data -> Data
setDataInstances xs = \case
  Prod {..} -> Prod {prodInstances = xs, ..}
  other -> other

data Action = Action
  { actionId :: Text,
    actionUnique :: Global,
    actionNs :: NS,
    actionHelp :: Maybe Help,
    actionData :: Data
  }
  deriving stock (Show, Eq, Ord)

data Scope = Scope
  { scopeName :: Name (),
    scopeDecl :: Decl (),
    scopeHelp :: Help
  }
  deriving stock (Show, Eq, Ord)

data API = API
  { apiResources :: Set Action,
    apiMethods :: Set Action,
    apiConfig :: Fun,
    apiParams :: Data,
    apiScopes :: Set Scope
  }
  deriving stock (Show, Eq, Ord)

$(TH.deriveToJSON jsonOptions ''Fun)
$(TH.deriveToJSON jsonOptions ''Branch)
$(TH.deriveToJSON jsonOptions ''Field)
$(TH.deriveToJSON jsonOptions ''Data)
$(TH.deriveToJSON jsonOptions ''Action)
$(TH.deriveToJSON jsonOptions ''Scope)
$(TH.deriveToJSON jsonOptions ''API)
