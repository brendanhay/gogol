module Gen.JSON where

import Control.Error
import Control.Monad
import Control.Monad.IO.Class (MonadIO)
import Data.Aeson hiding (decode)
import Data.Aeson.KeyMap (fromHashMapText, toHashMapText)
import Data.Aeson.Types
import Data.Bifunctor
import Data.ByteString (ByteString)
import qualified Data.ByteString.Lazy as LBS
import Data.HashMap.Strict (HashMap)
import qualified Data.HashMap.Strict as HashMap
import Data.List
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
merge obs = fromHashMapText $ foldl' HashMap.union mempty (map toHashMapText obs)