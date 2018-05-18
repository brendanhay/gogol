{-# LANGUAGE OverloadedStrings #-}

-- Module      : Gen.Formatting
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.Formatting
    ( module Gen.Formatting
    , module Formatting
    , module Formatting.Time
    ) where

import           Control.Monad.Except
import qualified Data.Text.Lazy         as LText
import qualified Data.Text.Lazy.Builder as Build
import           Formatting             hiding (base, left, right)
import           Formatting.Internal    (runFormat)
import           Formatting.Time        hiding (fmt)
import           Gen.Types

path :: Format a (Path -> a)
path = later (Build.fromText . toTextIgnore)

failure :: MonadError e m => Format LText.Text (a -> e) -> a -> m b
failure m = throwError . format m
