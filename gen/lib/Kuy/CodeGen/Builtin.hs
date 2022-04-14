module Kuy.CodeGen.Builtin where

import Kuy.TH qualified as TH

unit :: TH.Name
unit = TH.mkName "()"
