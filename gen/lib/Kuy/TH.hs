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
    -- GHC.ThToHs.convertToHsDecls,

    getQualifiedImports,
  )
where

import Kuy.Prelude
import Language.Haskell.TH.Syntax as TH hiding (Inline)

-- instance IsString TH.PkgName where
--   fromString = TH.mkPkgName

-- instance IsString TH.ModName where
--   fromString = TH.mkModName

-- instance IsString TH.Name where
--   fromString = TH.mkName

getQualifiedImports :: ModName -> [Dec] -> (Set Name, Set ModName)
getQualifiedImports _self _decs = (mempty, mempty)
