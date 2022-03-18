module Gen.TH where

import Data.Aeson.Types
import Data.Char

options :: Options
options =
  defaultOptions
    { constructorTagModifier = map toLower,
      fieldLabelModifier = \s ->
        case dropWhile (not . isUpper) s of
          [] -> s
          x : xs -> toLower x : xs
    }
