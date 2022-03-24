-- | Each API's Discovery Document describes the surface of the API, how to
-- access the API and how API requests and responses are structured.
--
-- The information provided by the discovery document includes
-- API-level properties such as an API description, resource schemas,
-- authentication scopes, and methods.
--
-- The 'Schema' type is a very limited form of JSONSchema v3.
module Gen.Schema.Discovery where

import Data.Aeson (Key, Value, parseJSON, (.!=), (.:?))
import Data.Aeson qualified as Aeson
import Data.Aeson.Types (Parser)
import Data.Map.Strict qualified as Map
import Data.Text qualified as Text
import Gen.Prelude
import Gen.Schema.Markdown (Markdown)

-- | The discovery document which describes a REST API.
--
-- See <https://developers.google.com/discovery/v1/reference/apis Discovery Document>.
data Description = Description
  { -- | The kind for this response. The fixed string discovery#restDescription.
    kind :: Literal "discovery#restDescription",
    -- | Indicate the version of the Discovery API used to generate this doc.
    discoveryVersion :: Literal "v1",
    -- | The protocol described by the document. For example, REST.
    protocol :: Literal "rest",
    -- | The ID of the Discovery document for the API. For example, urlshortener:v1.
    id :: Text,
    -- | The name of the API. For example, urlshortener.
    name :: Text,
    -- | The canonical name of the API. For example, Url Shortener.
    canonicalName :: Text,
    -- | The version of the API. For example, v1.
    version :: Text,
    -- | The revision of the API.
    revision :: Text,
    -- | The title of the API. For example, "Google Url Shortener API".
    title :: Text,
    -- | The description of this API.
    description :: Markdown,
    -- | Links to 16x16 and 32x32 icons representing the API.
    icons :: Icons,
    -- | A link to human-readable documentation for the API.
    documentationLink :: Text,
    -- | Labels for the status of this API. Valid values include limited_availability or deprecated.
    labels :: [Text],
    -- | The root url under which all API services live.
    rootUrl :: Text,
    -- | The base path for all REST requests.
    servicePath :: Text,
    -- | The path for REST batch requests.
    batchPath :: Text,
    -- | Common parameters that apply across all apis.
    parameters :: Map Text Schema,
    -- | Authentication information.
    auth :: OAuth2,
    -- | A list of supported features for this API.
    features :: Maybe [Text],
    -- | The schemas for this API.
    schemas :: Map SchemaId Schema,
    -- | API-level methods for this API.
    methods :: Map MethodId Method,
    -- | The resources in this API.
    resources :: Map Text Resource
  }
  deriving stock (Show, Eq, Ord)

data Literal (s :: Symbol) = Literal
  deriving stock (Show, Eq, Ord)

instance KnownSymbol s => FromJSON (Literal s) where
  parseJSON =
    Aeson.withText name $ \text ->
      if text == Text.pack value
        then pure Literal
        else fail $ "(FromJSON (" ++ name ++ ")) failure parsing text " ++ show text
    where
      name = "Literal " ++ value
      value = symbolVal (Proxy @s)

data Icons = Icons
  { -- | The URL of the 16x16 icon.
    x16 :: Text,
    -- | The URL of the 32x32 icon.
    x32 :: Text
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (FromJSON)

newtype OAuth2Scope = OAuth2Scope Text
  deriving stock (Show, Eq, Ord)
  deriving newtype (FromJSON)

-- | OAuth 2.0 authentication information.
data OAuth2 = OAuth2
  { oauth2 :: Map OAuth2Scope Markdown -- -- ^ Available OAuth 2.0 scopes.
  }
  deriving stock (Show, Eq, Ord)

instance FromJSON OAuth2 where
  parseJSON =
    Aeson.withObject "oauth2" $ \auth -> do
      oauth2 <- auth .: "oauth2"
      scopes <- oauth2 .: "scopes"
      OAuth2 <$> traverse (.: "description") scopes

-- | Media upload parameters.
data MediaUpload = MediaUpload
  { -- | MIME Media Ranges for acceptable media uploads to this method.
    accept :: [Text],
    -- | Maximum size of a media upload, such as "1MB", "2GB" or "3TB".
    maxSize :: Maybe Text,
    -- | Supported upload protocols.
    protocols :: UploadProtocols
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (FromJSON)

-- | Supported upload protocols.
data UploadProtocols = UploadProtocols
  { -- | Supports uploading as a single HTTP request.
    simple :: Maybe UploadProtocol,
    -- | Supports the Resumable Media Upload protocol.
    resumable :: Maybe UploadProtocol
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (FromJSON)

data UploadProtocol = UploadProtocol
  { -- | The URI path to be used for upload. Should be used in conjunction with the rootURL property at the api-level.
    path :: Text,
    -- | True if this endpoint supports upload multipart media.
    multipart :: Bool
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (FromJSON)

-- | An individual resource description. Contains methods and sub-resources related to this resource.
data Resource = Resource
  { -- | Methods on this resource.
    methods :: Map MethodId Method,
    -- | Sub-resources on this resource.
    resources :: Map Text Resource
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (FromJSON)

newtype MethodId = MethodId Text
  deriving stock (Show, Eq, Ord)
  deriving newtype (FromJSON, FromJSONKey)

-- | An individual method description.
data Method = Method
  { -- | A unique ID for this method. This property can be used to match methods between different versions of Discovery.
    id :: MethodId,
    -- | Description of this method.
    description :: Markdown,
    -- | The URI path of this REST method. Should be used in conjunction with the servicePath property at the API-level.
    path :: Text,
    -- | The URI path of this REST method in (RFC 6570) format without level 2 features ({+var}). Supplementary to the path property.
    flatPath :: Maybe Text,
    -- | HTTP method used by this method.
    httpMethod :: Text,
    -- | OAuth 2.0 scopes applicable to this method.
    scopes :: [OAuth2Scope],
    -- | Details for all parameters in this method.
    parameters :: Map Text Schema,
    -- | Ordered list of required parameters. This serves as a hint to clients on how to structure their method signatures. The array is ordered such that the most significant parameter appears first.
    parameterOrder :: [Text],
    -- | The schema for the request.
    request :: SchemaRef,
    -- | The schema for the request.
    response :: SchemaRef,
    -- | Whether this method supports media downloads.
    supportsMediaDownload :: Bool,
    -- | Whether this method supports media uploads.
    supportsMediaUpload :: Bool,
    -- | Whether this method supports subscriptions.
    supportsSubscription :: Bool,
    -- | Media upload parameters.
    mediaUpload :: MediaUpload
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (FromJSON)

-- | Whether a parameter goes in the query or the path for REST requests.
data Location
  = Query
  | Path
  deriving stock (Show, Eq, Ord)

instance FromJSON Location where
  parseJSON =
    Aeson.withText "Location" $ \case
      "query" -> pure Query
      "Path" -> pure Path
      unknown -> fail $ "(FromJSON SchemaType) invalid type " ++ show unknown

-- | A list of methods that require this property on requests.
data Annotation = Annotation
  { required :: [Text]
  }
  deriving stock (Show, Eq, Ord)

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
    GoogleDatetime
  | -- | A string ends in the suffix "s" (indicating seconds) and is preceded by
    -- the number of seconds, with nanoseconds expressed as fractional seconds.
    -- The period is always used as the decimal point, not a comma.
    GoogleDuration
  | -- | A string where field names are separated by a comma. Field names are
    -- represented in lower-camel naming conventions.
    GoogleFieldmask
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
  deriving stock (Show, Eq, Ord)

instance FromJSON Format where
  parseJSON =
    Aeson.withObject "TypeAndFormat" $ \o ->
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
          pure GoogleFieldmask
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
        unknown ->
          fail $
            "(FromJSON Format) unable to parse type and format from unknown pair "
              ++ show unknown

newtype SchemaId = SchemaId Text
  deriving stock (Show, Eq, Ord)
  deriving newtype (FromJSON, FromJSONKey)

newtype SchemaRef = SchemaRef {ref :: SchemaId}
  deriving stock (Show, Eq, Ord)

instance FromJSON SchemaRef where
  parseJSON =
    Aeson.withObject "SchemaRef" $ \o ->
      SchemaRef <$> o .: "$ref"

-- | Description of a single parameter.
data Schema = Schema
  { -- | Unique identifier for this schema.
    id :: SchemaId,
    -- | A reference to another schema. The value of this property is the ID of another schema.
    ref :: SchemaId,
    -- | An interpretation of both the type and format fields describing this schema.
    format :: Maybe Format,
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
    maximum :: Text,
    -- | Values this parameter may take (if it is an enum).
    enum :: [Text],
    -- | The descriptions for the enums. Each position maps to the corresponding value in the enum array.
    enumDescriptions :: [Markdown],
    -- | Whether this parameter may appear multiple times.
    repeated :: Maybe Bool,
    -- | Whether this parameter goes in the query or the path for REST requests.
    location :: Location,
    -- | If this is a schema for an object, list the schema for each property of this object.
    -- The values are a JSON Schema object describing each property.
    properties :: Map Text Schema,
    -- | If this is a schema for an object, this property is the schema for any additional properties with dynamic keys on this object.
    additionalProperties :: Maybe Schema,
    -- | If this is a schema for an array, this property is the schema for each element in the array.
    items :: Maybe Schema,
    -- | Additional information about this property.
    annotations :: Map Text Annotation
  }
  deriving stock (Show, Eq, Ord)

instance FromJSON Schema where
  parseJSON =
    Aeson.withObject "Schema" $ \o -> do
      id <-
        o .: "id"
      ref <-
        o .:? "$ref"
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
        o .:? "properties" .!= Map.empty
      additionalProperties <-
        o .:? "additionalProperties"
      items <-
        o .:? "items"
      annotations <-
        o .:? "items" .!= Map.empty

      pure Schema {..}
