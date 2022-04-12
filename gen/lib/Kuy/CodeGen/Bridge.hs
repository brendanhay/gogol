module Kuy.CodeGen.Bridge where

import Data.Set qualified as Set
import Kuy.CodeGen.Cabal qualified as Cabal
import Kuy.CodeGen.GHC qualified as GHC
import Kuy.CodeGen.TH qualified as TH
import Kuy.Prelude

ghcModuleName :: TH.ModName -> GHC.ModuleName
ghcModuleName = GHC.mkModuleName . TH.modString

cabalModuleName :: TH.ModName -> Cabal.ModuleName
cabalModuleName = fromString . TH.modString

ghcModule :: TH.ModName -> [TH.Dec] -> (Cabal.ModuleName, GHC.HsModule)
ghcModule self decs =
  ( cabalModuleName self,
    GHC.module' (ghcModuleName self) (map (GHC.qualifiedImport . ghcModuleName) imports) decls
  )
  where
    (_exports, imports) = second Set.toList (TH.getQualifiedImports self decs)

    decls = GHC.unsafeConvertDecls decs
