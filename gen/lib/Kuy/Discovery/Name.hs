module Kuy.Discovery.Name where

import Data.Aeson qualified as Aeson
import Data.Text qualified as Text
import Kuy.Prelude

data ServiceId = ServiceId
  { name :: ServiceName,
    version :: ServiceVersion
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (NFData, Hashable, Binary)

instance FromJSON ServiceId where
  parseJSON =
    Aeson.withText "ServiceId" $ \text ->
      case Text.break (== ':') text of
        (_name, "") ->
          fail $ "(FromJSON ServiceId) failed to parse <name:version> from " ++ show text
        (name, version) ->
          pure
            ServiceId
              { name = ServiceName name,
                version = ServiceVersion (Text.drop 1 version)
              }

newtype ServiceName = ServiceName {text :: Text}
  deriving stock (Show, Eq, Ord)
  deriving newtype (IsString, NFData, Hashable, Binary, FromJSON, FromJSONKey, ToHttpApiData, FromHttpApiData)

newtype ServiceVersion = ServiceVersion {text :: Text}
  deriving stock (Show, Eq, Ord)
  deriving newtype (IsString, NFData, Hashable, Binary, FromJSON, FromJSONKey, ToHttpApiData, FromHttpApiData)

newtype MethodId = MethodId {text :: Text}
  deriving stock (Show, Eq, Ord)
  deriving newtype (IsString, NFData, Hashable, Binary, FromJSON, FromJSONKey)

-- | An absolute ID referring to a schema from the top-level schemas property of
-- the service description.
newtype SchemaId = SchemaId {text :: Text}
  deriving stock (Show, Eq, Ord)
  deriving newtype (IsString, NFData, Hashable, Binary, FromJSON, FromJSONKey)

-- | A constant type-level symbol parsed from a matching JSON string literal.
data Literal (s :: Symbol) = Literal
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (NFData, Hashable, Binary)

instance KnownSymbol s => FromJSON (Literal s) where
  parseJSON =
    Aeson.withText name $ \text ->
      if text == Text.pack value
        then pure Literal
        else fail $ "(FromJSON (" ++ name ++ ")) failure parsing text " ++ show text
    where
      name = "Literal " ++ value
      value = symbolVal (Proxy @s)
