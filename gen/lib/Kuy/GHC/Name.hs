module Kuy.GHC.Name where

import Kuy.Prelude
import Kuy.GHC.Syntax

-- | The complement to 'moduleNameStrToString' which intersperses epath
-- separators @/@ instead of namespace separators.
moduleNameToPath :: ModuleNameStr -> FilePath
moduleNameToPath name =
  map dots (moduleNameStrToString name) <.> "hs"
  where
    dots = \case
        '.' -> '/'
        chr -> chr
