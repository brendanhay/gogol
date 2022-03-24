module Gen.JSON where

import Data.Aeson (Object, Value (..))
import qualified Data.Aeson as Aeson
import qualified Data.Aeson.KeyMap as KeyMap
import qualified Data.Char as Char
import qualified Data.List as List
import Gen.Formatting
import Gen.Prelude
import qualified Text.EDE as EDE

jsonObject :: ToJSON a => String -> a -> Either Text (HashMap Text Value)
jsonObject n =
  note (sformat ("Failed to extract JSON object from value " % string) n)
    . EDE.fromValue
    . Aeson.toJSON

jsonMerge :: [Object] -> Object
jsonMerge = foldl' union mempty
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
