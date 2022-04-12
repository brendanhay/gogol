-- | A very limited form of JSONSchema v3 conforming to the
-- discovery document examples.
module Kuy.Discovery.Schema where

import Data.Aeson qualified as Aeson
import Kuy.Discovery.Name
import Kuy.Markdown (Markdown)
import Kuy.Prelude

-- | Description of a single parameter.
data Schema = Schema
  { -- | Unique identifier for this schema.
    id :: Maybe SchemaId,
    -- | An interpretation of both the type and format fields describing this schema.
    format :: Format,
    -- | A description of this object.
    description :: Maybe Markdown,
    -- | The default value of this property (if one exists).
    default' :: Maybe Text,
    -- | Whether the parameter is required.
    required :: Bool,
    -- | The regular expression this parameter must conform to.
    pattern' :: Maybe Text,
    -- | The minimum value of this parameter.
    minimum :: Maybe Text,
    -- | The maximum value of this parameter.
    maximum :: Maybe Text,
    -- | Values this parameter may take (if it is an enum).
    enum :: Maybe [Text],
    -- | The descriptions for the enums. Each position maps to the corresponding value in the enum array.
    enumDescriptions :: Maybe [Markdown],
    -- | Whether this parameter may appear multiple times.
    repeated :: Bool,
    -- | Whether this parameter goes in the query or the path for REST requests.
    location :: Maybe Location,
    -- | If this is a schema for an object, list the schema for each property of this object.
    -- The values are a JSON Schema object describing each property.
    properties :: Map Text SchemaRef,
    -- | If this is a schema for an object, this property is the schema for any additional properties with dynamic keys on this object.
    additionalProperties :: Maybe SchemaRef,
    -- | If this is a schema for an array, this property is the schema for each element in the array.
    items :: Maybe SchemaRef,
    -- | Additional information about this property.
    annotations :: Set Text
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (Structured, Persist)

instance FromJSON Schema where
  parseJSON =
    Aeson.withObject "Schema" $ \o -> do
      id <-
        o .:? "id"
      format <-
        parseJSON (Aeson.Object o)
      description <-
        o .:? "description"
      default' <-
        o .:? "default"
      required <-
        o .:? "required" .!= False
      pattern' <-
        o .:? "pattern"
      minimum <-
        o .:? "minimum"
      maximum <-
        o .:? "maximum"
      enum <-
        o .:? "enum"
      enumDescriptions <-
        o .:? "enumDescriptions"
      repeated <-
        o .:? "repeated" .!= False
      location <-
        o .:? "location"
      properties <-
        o .:? "properties" .!= mempty
      additionalProperties <-
        o .:? "additionalProperties"
      items <-
        o .:? "items"
      annotations <-
        o .:? "annotations" >>= \case
          Nothing -> pure mempty
          Just o' -> o' .: "required"

      pure Schema {..}

-- | Either a schema reference or an inline definition.
data SchemaRef
  = Follow SchemaId
  | Inline Schema
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (Structured, Persist)

-- Note no 'FromJSON Schema' instance to ensure you don't accidentally
-- try and deserialise bare Schema within a larger structure.
instance FromJSON SchemaRef where
  parseJSON =
    Aeson.withObject "SchemaRef" $ \o ->
      fmap Follow (o .: "$ref") <|> fmap Inline (parseJSON (Aeson.Object o))

-- | Whether a parameter goes in the query or the path for REST requests.
data Location
  = Query
  | Path
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (Structured, Persist)

instance FromJSON Location where
  parseJSON =
    Aeson.withText "Location" $ \case
      "query" -> pure Query
      "path" -> pure Path
      unknown -> fail $ "(FromJSON Location) invalid location " ++ show unknown

-- | The type and format properties on parameters and schemas can be
-- used to determine the data type of the property. The type property
-- indicates the type of the property when its sent in JSON requests
-- and responses (JSON supports a small set of data types, see
-- json.org for details). The format property provides additional
-- information about the underlying type. Properties will always have
-- a type property, but some may also have a format property.
--
-- This datatype singularly represents parsing both the @type@ and @format@
-- property keys on a schema, to make various nonsensical states unrepresentable.
--
-- | See <https://developers.google.com/discovery/v1/type-format Type and Format>.
data Format
  = -- | The property may have any type. Defined by the JSON Schema spec.
    Any
  | -- | A JavaScript array of values. The items property indicates the schema
    --  for the array values. Defined by the JSON Schema spec.
    Array
  | -- | A JavaScript object. Defined by the JSON Schema spec.
    Object
  | -- | A boolean value, either "true" or "false". Defined by the JSON Schema spec.
    Boolean
  | -- | An arbitrary string. Defined by the JSON Schema spec.
    String
  | -- | A padded, base64-encoded string of bytes, encoded with a URL and
    -- filename safe alphabet (sometimes referred to as "web-safe" or "base64url").
    -- Defined by RFC4648.
    Byte
  | -- | An RFC3339 date in the format YYYY-MM-DD. Defined in the JSON Schema spec.
    Date
  | -- | An RFC3339 timestamp in UTC time. This in the format of yyyy-MM-ddTHH:mm:ss.SSSZ.
    -- The milliseconds portion (".SSS") is optional. Defined in the JSON Schema spec.
    DateTime
  | -- | An RFC3339 timestamp in UTC time. This in the format of yyyy-MM-ddTHH:mm:ss.SSSZ.
    -- The milliseconds portion (".SSS") is optional.
    GoogleDateTime
  | -- | A string ends in the suffix "s" (indicating seconds) and is preceded by
    -- the number of seconds, with nanoseconds expressed as fractional seconds.
    -- The period is always used as the decimal point, not a comma.
    GoogleDuration
  | -- | A string where field names are separated by a comma. Field names are
    -- represented in lower-camel naming conventions.
    GoogleFieldMask
  | -- | A 64-bit signed integer. It has a minimum value of -9,223,372,036,854,775,808
    -- and a maximum value of 9,223,372,036,854,775,807 (inclusive).
    Int64
  | -- | A 64-bit unsigned integer. It has a minimum value of 0 and a maximum
    -- value of (2^64)-1 (inclusive).
    UInt64
  | -- | A 32-bit signed integer. It has a minimum value of -2,147,483,648 and
    -- a maximum value of 2,147,483,647 (inclusive).
    Int32
  | -- | A 32-bit unsigned integer. It has a minimum value of 0 and a maximum
    -- value of 4,294,967,295 (inclusive).
    UInt32
  | -- | A double-precision 64-bit IEEE 754 floating point.
    Double
  | -- | A single-precision 32-bit IEEE 754 floating point.
    Float
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (Structured, Persist)

instance FromJSON Format where
  parseJSON =
    Aeson.withObject "Format" $ \o ->
      (,) <$> o .: "type" <*> o .:? "format" >>= \case
        ("any", Nothing) ->
          pure Any
        ("array", Nothing) ->
          pure Array
        ("boolean", Nothing) ->
          pure Boolean
        ("object", Nothing) ->
          pure Object
        ("string", Nothing) ->
          pure String
        ("string", Just "byte") ->
          pure Byte
        ("string", Just "date") ->
          pure Date
        ("string", Just "date-time") ->
          pure DateTime
        ("string", Just "google-datetime") ->
          pure GoogleDateTime
        ("string", Just "google-duration") ->
          pure GoogleDuration
        ("string", Just "google-fieldmask") ->
          pure GoogleFieldMask
        ("string", Just "int64") ->
          pure Int64
        ("string", Just "uint64") ->
          pure UInt64
        ("integer", Just "int32") ->
          pure Int32
        ("integer", Just "uint32") ->
          pure UInt32
        ("number", Just "double") ->
          pure Double
        ("number", Just "float") ->
          pure Float
        (type' :: Text, format :: Maybe Text) ->
          fail $
            "(FromJSON Format) unable to parse type and format from unknown pair "
              ++ show (type', format)
