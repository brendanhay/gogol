module Kuy.CodeGen.Name where

import Kuy.CodeGen.TH qualified as TH

unit :: TH.Name
unit = TH.mkName "()"
