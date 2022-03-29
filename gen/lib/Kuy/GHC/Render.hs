module Kuy.GHC.Render where

import GHC.SourceGen.Pretty qualified as Pretty
import Kuy.GHC.Syntax
import Kuy.Prelude
import Kuy.GHC.DynFlags (dynFlags)

renderModule :: HsModule' -> String
renderModule = Pretty.showPpr dynFlags
