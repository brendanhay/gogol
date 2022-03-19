module Gen.Syntax.Service where

import Control.Lens (view, (^.))
import qualified Control.Monad as Monad
import Data.Either
import qualified Data.Foldable as Foldable
import qualified Data.List as List
import Data.Map.Strict (Map)
import qualified Data.Map.Strict as Map
import Data.Maybe
import qualified Data.Set as Set
import Data.Text (Text)
import qualified Data.Text as Text
import Gen.Syntax.Build
import Gen.Syntax.Record
import Gen.Text (stripPrefix, stripSuffix)
import Gen.Types
import Language.Haskell.Exts

scopeDecl :: Name () -> Text -> Decl ()
scopeDecl n = typeDecl (DHead () n) . tySymbol

serviceSig :: Name () -> Decl ()
serviceSig n = typeSig [n] (TyCon () "Core.ServiceConfig")

-- FIXME: Should this be rootUrl or baseUrl?
serviceDecl :: Description a -> Name () -> Decl ()
serviceDecl Description {_dId, _dRootUrl} n =
  sfun n [] (unguardedRhs rhs) noBinds
  where
    rhs =
      appFun (var "Core.defaultService") $
        [ app (var "Core.ServiceId") (textE _dId),
          textE . stripSuffix "/" $ stripPrefix "https://" _dRootUrl
        ]

paramsDecl :: Description Solved -> Global -> (Decl (), Map Local Solved)
paramsDecl Description {_dParameters} n =
  ( recordDecl n params,
    params
  )
  where
    params =
      Map.map _pParam
        . Map.filterWithKey (\k _v -> notElem k ["alt", "uploadType"])
        $ _dParameters
