-- Module      : Gen.TH
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)

module Gen.TH where

import           Data.Aeson.Types
import           Data.Char

options :: Options
options = defaultOptions
    { constructorTagModifier = map toLower
    , fieldLabelModifier = \s ->
        let x:xs = dropWhile (not . isUpper) s in toLower x : xs
    }

-- -- Wut?
-- js :: String -> Options
-- js pre = defaultOptions
--     { constructorTagModifier = map toLower
--     , fieldLabelModifier = \s ->
--         let x:xs = drop (length pre) s
--          in toLower x : xs
--     }
