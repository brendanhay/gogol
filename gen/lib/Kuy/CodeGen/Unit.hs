module Kuy.CodeGen.Unit where

import Data.DList qualified as DList
import Data.Map.Strict qualified as Map
import Kuy.CodeGen.TH (Dec)
import Kuy.Prelude

newtype Unit = Unit (Map Text (DList Dec))

instance Monoid Unit where
  mempty = Unit Map.empty

instance Semigroup Unit where
  Unit a <> Unit b = Unit (Map.unionWith mappend a b)

mkUnit :: Text -> Dec -> Unit
mkUnit heading = Unit . Map.singleton heading . pure

unitDeclarations :: Unit -> [Dec]
unitDeclarations (Unit m) = DList.toList $ DList.concat $ Map.elems m
