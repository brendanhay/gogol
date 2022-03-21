module Gen.Syntax.Service where

import Control.Lens (view, (^.))
import qualified Data.Foldable as Foldable
import qualified Data.List as List
import qualified Data.Map.Strict as Map
import qualified Data.Set as Set
import qualified Data.Text as Text
import Gen.Prelude
import Gen.Syntax.Build
import Gen.Syntax.Record
import Gen.Text (stripPrefix, stripSuffix)
import Gen.Types
import Language.Haskell.Exts

scopeDecl :: Name () -> Text -> Decl ()
scopeDecl n = typeDecl (DHead () n) . tySymbol

-- serviceConfig :: Service a ->  bbjs

serviceSig :: Name () -> Decl ()
serviceSig n = typeSig [n] (TyCon () "Core.Service")

serviceDecl :: Description a -> Name () -> Decl ()
serviceDecl Description {_dId, _dRootUrl} n =
  sfun n [] (unguardedRhs rhs) noBinds
  where
    rhs =
      appFun (var "Core.newService") $
        [ textE _dId,
          textE (fromMaybe <*> Text.stripSuffix "/" $ _dRootUrl)
        ]

paramsDecl :: Description Solved -> Global -> (Decl (), Map Local Solved)
paramsDecl Description {_dParameters} n =
  ( recordDecl n params,
    params
  )
  where
    params =
      Map.map _pParam
        . flip Map.withoutKeys specialParamNames
        $ _dParameters
