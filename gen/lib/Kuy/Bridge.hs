module Kuy.Bridge where

import Data.Set qualified as Set
import Kuy.Cabal qualified as Cabal
import Kuy.GHC qualified as GHC
import Kuy.Prelude
import Kuy.TH qualified as TH

ghcModuleName :: TH.ModName -> GHC.ModuleName
ghcModuleName = GHC.mkModuleName . TH.modString

cabalModuleName :: TH.ModName -> Cabal.ModuleName
cabalModuleName = fromString . TH.modString

ghcModule ::
  TH.ModName ->
  [TH.Dec] ->
  Either String (Cabal.ModuleName, GHC.HsModule)
ghcModule self decs = do
  let (_exports, imports) = second Set.toList (TH.getQualifiedImports self decs)

  decls <- GHC.convertDecls decs

  pure
    ( cabalModuleName self,
      GHC.module' (ghcModuleName self) (map (GHC.qualifiedImport . ghcModuleName) imports) decls
    )
