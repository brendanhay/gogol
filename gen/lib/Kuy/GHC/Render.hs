module Kuy.GHC.Render where

import GHC.SourceGen.Pretty qualified as Pretty
import Kuy.GHC.DynFlags (dynFlags)
import Kuy.GHC.Syntax
import Kuy.Prelude

renderModule :: HsModule' -> String
renderModule = Pretty.showPpr dynFlags
