module Gen.JSON where

import Control.Error ()
import Data.Aeson (Object, Value (..))
import qualified Data.Aeson as Aeson
import qualified Data.Char as Char
import qualified Data.HashMap.Strict as HashMap
import qualified Data.List as List
import Gen.Formatting
import Gen.Prelude
import qualified Text.EDE as EDE

jsonObject :: ToJSON a => String -> a -> Either Text Object
jsonObject n =
  note (sformat ("Failed to extract JSON object from value " % string) n)
    . EDE.fromValue
    . Aeson.toJSON

jsonMerge :: [Object] -> Object
jsonMerge = foldl' go mempty
  where
    go :: Object -> Object -> Object
    go = HashMap.unionWith value

    value :: Value -> Value -> Value
    value l r =
      case (l, r) of
        (Object x, Object y) -> Object (x `go` y)
        (_, _) -> l

jsonOptions :: Aeson.Options
jsonOptions =
  Aeson.defaultOptions
    { Aeson.constructorTagModifier = map Char.toLower,
      Aeson.fieldLabelModifier = \s ->
        case List.dropWhile (not . Char.isUpper) s of
          [] -> s
          x : xs -> Char.toLower x : xs
    }
