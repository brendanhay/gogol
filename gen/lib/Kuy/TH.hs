{-# OPTIONS_GHC -fno-warn-orphans #-}

module Kuy.TH
  ( -- -- * Names
    --  TH.PkgName,
    --  TH.mkPkgName,
    --  TH.ModName,
    --  TH.mkModName,
    --  TH.Name,
    --  TH.mkName

    module TH,
    mkCabalModuleName,
    mkHsModuleName,
  )
where

import Distribution.ModuleName qualified as Cabal
import GHC.Unit.Module.Name qualified as GHC
import Kuy.Prelude
import Language.Haskell.TH.Syntax as TH hiding (Inline)

-- instance IsString TH.PkgName where
--   fromString = TH.mkPkgName

-- instance IsString TH.ModName where
--   fromString = TH.mkModName

-- instance IsString TH.Name where
--   fromString = TH.mkName

mkCabalModuleName :: ModName -> Cabal.ModuleName
mkCabalModuleName = fromString . modString

mkHsModuleName :: ModName -> GHC.ModuleName
mkHsModuleName = GHC.mkModuleName . modString
