module Gen.JSON where

import Control.Error
import Control.Monad
import Control.Monad.IO.Class (MonadIO)
import Data.Aeson hiding (decode)
import Data.Aeson.KeyMap (unionWith)
import Data.Aeson.Types
import Data.Bifunctor
import Data.ByteString (ByteString)
import qualified Data.ByteString.Lazy as LBS
import Data.HashMap.Strict (HashMap)
import Data.List (foldl')
import Data.Text (Text)
import qualified Data.Text.Lazy as LText
import Gen.Formatting
import Gen.IO
import Gen.Types
import qualified Text.EDE as EDE

objectErr :: (ToJSON a) => String -> a -> Either Error (HashMap Text Value)
objectErr n =
  note (format ("Failed to extract JSON object from value " % string) n)
    . EDE.fromValue
    . toJSON

load :: (MonadIO m) => Path -> ExceptT Error m Object
load = readBSFile >=> hoistEither . decode

decode :: ByteString -> Either Error Object
decode = first LText.pack . eitherDecode' . LBS.fromStrict

parse :: (FromJSON a) => Object -> Either Error a
parse = first LText.pack . parseEither parseJSON . Object

merge :: [Object] -> Object
merge = foldl' go mempty
  where
    go :: Object -> Object -> Object
    go = unionWith value

    value :: Value -> Value -> Value
    value l r =
      case (l, r) of
        (Object x, Object y) -> Object (x `go` y)
        (_, _) -> l
