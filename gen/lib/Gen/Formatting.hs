module Gen.Formatting
  ( module Gen.Formatting,
    module Formatting,
    module Formatting.Internal,
    module Formatting.Time,
  )
where

import Control.Monad.Except
import Data.Text.Lazy qualified as LText
import Data.Text.Lazy.Builder qualified as Build
import Formatting hiding (base, left, right)
import Formatting.Internal (runFormat)
import Formatting.Time hiding (fmt)
import Gen.Types

path :: Format a (Path -> a)
path = later (Build.fromText . toTextIgnore)

failure :: (MonadError e m) => Format LText.Text (a -> e) -> a -> m b
failure m = throwError . format m
