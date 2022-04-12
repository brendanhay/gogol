module Kuy.Name where

import GHC.Data.FastString
import Kuy.Prelude

-- Use GHC.Data.FastString.fastStringToShortByteString to get Cabal
-- ShortByteString types, otherwise use FastString everywhere

-- Alternatively, use ShortByteString?

newtype Package = Package FastString

newtype Module = Module (NonEmpty FastString)

data Namespace
  = Constructor
  | Value

data Name = Name Namespace FastString

-- data Qualified = Qualified Module Name

data Qualified = Qualified Module Name

-- valueRdrName, typeRdrName :: RdrNameStr -> LocatedN RdrName
-- valueRdrName (UnqualStr r) = mkLocated $ Unqual $ valueOccName r
-- valueRdrName (QualStr (ModuleNameStr m) r) = mkLocated $ Qual m $ valueOccName r

-- typeRdrName (UnqualStr r) = mkLocated $ Unqual $ typeOccName r
-- typeRdrName (QualStr (ModuleNameStr m) r) = mkLocated $ Qual m $ typeOccName r
