module Kuy.Text.Template
  ( Template (..),
    Token (..),
  )
where

import Burrito qualified
import Burrito.Internal.Type.Template qualified as Burrito
import Burrito.Internal.Type.Token (Token (..))
import Data.Aeson qualified as Aeson
import Data.Text qualified as Text
import Kuy.Prelude

-- | URI path of a REST method in RFC 6570 format without level 2 features ({+var}).
newtype Template = Template {tokens :: [Token]}
  deriving stock (Show, Eq, Ord)
  deriving newtype (Structured, Persist)

instance FromJSON Template where
  parseJSON =
    Aeson.withText "Template" $ \text ->
      case Burrito.parse (Text.unpack text) of
        Just (Burrito.Template tokens) ->
          pure Template {tokens}
        Nothing ->
          fail $ "(FromJSON Template) failure parsing template from " ++ show text
