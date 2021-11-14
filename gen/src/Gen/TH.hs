-- |
-- Module      : Gen.TH
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gen.TH where

import Data.Aeson.Types (Options (..), defaultOptions)
import qualified Data.Char as Char
import Gen.Prelude

options :: Options
options =
  defaultOptions
    { constructorTagModifier = map Char.toLower,
      fieldLabelModifier = \s ->
        let x : xs = dropWhile (not . Char.isUpper) s in Char.toLower x : xs
    }
