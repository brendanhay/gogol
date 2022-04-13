module Kuy.Unit
  ( Unit,
    mkUnit,
    compileUnit,
  )
where

import Data.DList qualified as DList
import Data.Map.Strict qualified as Map
import GHC.ThToHs qualified as GHC
import GHC.Types.Basic qualified as GHC
import GHC.Types.SrcLoc qualified as GHC
import GHC.Utils.Outputable qualified as GHC
import Kuy.GHC qualified as GHC
import Kuy.Prelude
import Kuy.TH (Dec, ModName, Name)

newtype Unit = Unit (Map Text (DList Dec))
  deriving stock (Eq, Ord)
  deriving newtype (Monoid)

instance Show Unit where
  showsPrec d (Unit m) =
    showParen (d >= 11) $
      showString "Unit {groups = "
        . shows (Map.size m)
        . showChar '}'

instance Semigroup Unit where
  Unit a <> Unit b = Unit (Map.unionWith mappend a b)

instance Hashable Unit where
  hashWithSalt salt (Unit m) =
    Map.foldlWithKey'
      (\s' k v -> hashWithSalt (hashWithSalt s' k) (DList.toList v))
      (hashWithSalt salt (Map.size m))
      m

mkUnit :: Text -> Dec -> Unit
mkUnit group =
  Unit
    . Map.singleton group
    . pure

compileUnit ::
  ModName ->
  Unit ->
  Either String ([GHC.HsDecl'], Set ModName, Set Name)
compileUnit self (Unit m) = do
  let decs = DList.toList $ DList.concat $ Map.elems m
      (imports, exports) = getImportExports self decs

  decls <-
    first GHC.showSDocUnsafe $
      GHC.convertToHsDecls GHC.Generated GHC.generatedSrcSpan decs

  pure
    ( map GHC.unLoc decls,
      imports,
      exports
    )

getImportExports :: ModName -> [Dec] -> (Set ModName, Set Name)
getImportExports _self _decs = (mempty, mempty)

-- . Set.delete self
