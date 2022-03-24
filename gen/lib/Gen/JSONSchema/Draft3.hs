module Gen.JSONSchema.Draft3 where

import Data.Aeson (Key, Value, (.!=), (.:?))
import Data.Aeson qualified as Aeson
import Data.Aeson.Types (Parser)
import Data.Scientific (Scientific)
import Gen.Prelude

type SchemaGraph format = Map Text (Schema format)

data SchemaType
  = SchemaString
  | SchemaNumber
  | SchemaInteger
  | SchemaBoolean
  | SchemaObject
  | SchemaArray
  | SchemaNull
  | SchemaAny
  deriving (Show, Eq, Ord)

instance FromJSON SchemaType where
  parseJSON =
    Aeson.withText "SchemaType" $ \case
      "string" -> pure SchemaString
      "number" -> pure SchemaNumber
      "integer" -> pure SchemaInteger
      "boolean" -> pure SchemaBoolean
      "object" -> pure SchemaObject
      "array" -> pure SchemaArray
      "null" -> pure SchemaNull
      "any" -> pure SchemaAny
      other -> fail ("invalid SchemaType: " ++ show other)

-- | JSON Schema (Draft 3) Schema Definition.
data Schema format = Schema
  { -- | \$ref: reference to another schema
    schemaRef :: Maybe Text,
    -- | Identifier of the current schema
    schemaId :: Maybe Text,
    -- | Short description of the instance property
    schemaTitle :: Maybe Text,
    -- | Full description of the purpose of the instance property.
    schemaDescription :: Maybe Text,
    -- | Allowed schema type.
    schemaType :: SchemaType,
    -- | Format of strings, e.g. 'data-time', 'regex' or 'email'.
    schemaFormat :: Maybe format,
    -- | Subschemas for properties.
    schemaProperties :: Map Text (Schema format),
    -- | Whether additional properties are allowed when the instance is an object,
    -- and if so, a schema that they have to validate against.
    schemaAdditionalProperties :: Either Bool (Schema format),
    -- | Schema for array items.
    schemaItems :: Maybe (Schema format),
    -- | Whether additional items are allowed.
    schemaAdditionalItems :: Either Bool (Schema format),
    -- | When this schema is used in a property of another schema, this means that the property must have a value and not be undefined.
    schemaRequired :: Bool,
    -- | Regex for validating strings.
    schemaPattern :: Maybe Text,
    -- | Minimum value when the instance is a number.
    schemaMinimum :: Maybe Scientific,
    -- | Maximum value when the instance is a number.
    schemaMaximum :: Maybe Scientific,
    -- | Minimum length for arrays.
    schemaMinItems :: Int,
    -- | Maximum length for arrays.
    schemaMaxItems :: Maybe Int,
    -- | Minimum length for strings.
    schemaMinLength :: Int,
    -- | Maximum length for strings.
    schemaMaxLength :: Maybe Int,
    -- | Allowed values for this schema.
    schemaEnum :: Maybe [Value],
    -- | Extension by Google: description for the values in schemaEnum.
    schemaEnumDescriptions :: Maybe [Text],
    -- | Default value if this schema is used in a property of another schema and the value is undefined.
    schemaDefault :: Maybe Value
  }
  deriving stock (Show, Eq, Ord, Functor, Foldable, Traversable)

instance FromJSON format => FromJSON (Schema format) where
  parseJSON =
    Aeson.withObject "Schema" $ \o -> do
      let parseMaybe :: FromJSON a => Key -> Parser (Maybe a)
          parseMaybe k = o .:? k

          parseDefault :: FromJSON a => Key -> a -> Parser a
          parseDefault k v = parseMaybe k .!= v

          parseEither :: (FromJSON a, FromJSON b) => Key -> Either a b -> Parser (Either a b)
          parseEither k v =
            parseMaybe k >>= \case
              Nothing -> pure v
              Just v' -> fmap Left (Aeson.parseJSON v') <|> fmap Right (Aeson.parseJSON v')

      schemaRef <- parseMaybe "$ref"
      schemaId <- parseMaybe "id"
      schemaTitle <- parseMaybe "title"
      schemaDescription <- parseMaybe "description"
      schemaType <- parseDefault "type" SchemaAny
      schemaFormat <- parseMaybe "format"
      schemaProperties <- parseDefault "properties" mempty
      schemaAdditionalProperties <- parseEither "additionalProperties" (Left True)
      schemaItems <- parseMaybe "items"
      schemaAdditionalItems <- parseEither "additionalItems" (Left True)
      schemaRequired <- parseDefault "required" False
      schemaPattern <- parseMaybe "pattern"
      schemaMinimum <- parseMaybe "minimum"
      schemaMaximum <- parseMaybe "maximum"
      schemaMinItems <- parseDefault "minItems" 0
      schemaMaxItems <- parseMaybe "maxItems"
      schemaMinLength <- parseDefault "minLength" 0
      schemaMaxLength <- parseMaybe "maxLength"
      schemaEnum <- parseMaybe "enum"
      schemaEnumDescriptions <- parseMaybe "enumDescriptions"
      schemaDefault <- parseMaybe "default"

      pure Schema {..}
