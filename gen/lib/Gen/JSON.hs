module Gen.JSON where

import Data.Aeson (Object, Value (..))
import Data.Aeson qualified as Aeson
import Data.Aeson.KeyMap qualified as KeyMap
import Data.Char qualified as Char
import Data.List qualified as List
import Gen.Prelude

mergeObject :: [Object] -> Object
mergeObject = foldl' union mempty
  where
    union :: Object -> Object -> Object
    union = KeyMap.unionWith value

    value :: Value -> Value -> Value
    value l r =
      case (l, r) of
        (Object x, Object y) -> Object (union x y)
        (_, _) -> l

jsonOptions :: Aeson.Options
jsonOptions =
  Aeson.defaultOptions
    { Aeson.sumEncoding =
        Aeson.TaggedObject
          { Aeson.tagFieldName = "type",
            Aeson.contentsFieldName = "contents"
          },
      Aeson.constructorTagModifier =
        map Char.toLower,
      Aeson.fieldLabelModifier = \s ->
        case List.dropWhile (not . Char.isUpper) s of
          [] -> s
          x : xs -> Char.toLower x : xs
    }
