module Kuy.Discovery.Description where

import Kuy.Prelude
import Kuy.Discovery.Label
import Kuy.Discovery.Name
import Data.Aeson qualified as Aeson
import Kuy.Discovery.Schema
import Kuy.Markdown (Markdown)
import Kuy.Template (Template)

-- | The discovery document which describes a REST API.
--
-- See <https://developers.google.com/discovery/v1/reference/apis Discovery Document: overview>.
--
-- Example @gen\/examples/rest-description.json@.
data Description = Description
  { -- | The kind for this response. The fixed string discovery#restDescription.
    kind :: Literal "discovery#restDescription",
    -- | Indicate the version of the Discovery API used to generate this doc.
    discoveryVersion :: Literal "v1",
    -- | The protocol described by the document. For example, REST.
    protocol :: Literal "rest",
    -- | The ID of the Discovery document for the API. For example, urlshortener:v1.
    id :: ServiceId,
    -- | The name of the API. For example, urlshortener.
    name :: ServiceName,
    -- | The canonical name of the API. For example, Url Shortener.
    canonicalName :: Maybe Text,
    -- | The version of the API. For example, v1.
    version :: ServiceVersion,
    -- | The revision of the API.
    revision :: Text,
    -- | The title of the API. For example, "Google Url Shortener API".
    title :: Text,
    -- | The description of this API.
    description :: Markdown,
    -- | A link to human-readable documentation for the API.
    documentationLink :: Text,
    -- | Labels for the status of this API.
    -- Valid values include limited_availability or deprecated.
    labels :: Set Label,
    -- | A list of supported features for this API.
    features :: Set Text,
    -- | The root url under which all API services live.
    rootUrl :: Text,
    -- | The base path for all REST requests.
    servicePath :: Text,
    -- | The path for REST batch requests.
    batchPath :: Maybe Text,
    -- | Authentication information.
    auth :: Auth,
    -- | Common parameters that apply across all apis.
    parameters :: Map Text SchemaRef,
    -- | The schemas for this API.
    schemas :: Map SchemaId SchemaRef,
    -- | API-level methods for this API.
    methods :: Map Text Method,
    -- | The resources in this API.
    resources :: Map Text Resource
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (Structured, Persist)

instance FromJSON Description where
  parseJSON =
   Aeson.withObject "Description" $ \o -> do
      kind <-
        o .: "kind"
      discoveryVersion <-
        o .: "discoveryVersion"
      protocol <-
        o .: "protocol"
      id <-
        o .: "id"
      name <-
        o .: "name"
      canonicalName <-
        o .:? "canonicalName"
      version <-
        o .: "version"
      revision <-
        o .: "revision"
      title <-
        o .: "title"
      description <-
        o .: "description"
      documentationLink <-
        o .: "documentationLink"
      labels <-
        o .:? "labels" .!= mempty
      features <-
        o .:? "features" .!= mempty
      rootUrl <-
        o .: "rootUrl"
      servicePath <-
        o .: "servicePath"
      batchPath <-
        o .:? "batchPath"
      auth <-
        o .:? "auth" .!= Auth (OAuth mempty)
      parameters <-
        o .:? "parameters" .!= mempty
      schemas <-
        o .:? "schemas" .!= mempty
      methods <-
        o .:? "methods" .!= mempty
      resources <-
        o .:? "resources" .!= mempty

      pure Description{..}

data Auth = Auth
  { oauth2 :: OAuth
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (Structured, Persist, FromJSON)

newtype OAuthScope = OAuthScope { text :: Text }
  deriving stock (Show, Eq, Ord)
  deriving newtype (Structured, Persist, FromJSON, FromJSONKey)

-- | Available OAuth 2.0 scopes.
data OAuth = OAuth
  { scopes :: Map OAuthScope Markdown
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (Structured, Persist)

instance FromJSON OAuth where
  parseJSON =
    Aeson.withObject "OAuth" $ \o -> do
      scopes <- o .: "scopes"
      OAuth <$> traverse (.: "description") scopes

-- | An individual resource description. Contains methods and sub-resources
-- related to this resource.
data Resource = Resource
  { -- | Methods on this resource.
    methods :: Map Text Method,
    -- | Sub-resources on this resource.
    resources :: Map Text Resource
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (Structured, Persist)

instance FromJSON Resource where
  parseJSON =
    Aeson.withObject "Resource" $ \o -> do
      methods <- o .:? "methods" .!= mempty
      resources <- o .:? "resources" .!= mempty

      pure Resource{..}

-- | An individual method description.
data Method = Method
  { -- | A unique ID for this method. This property can be used to match methods
    -- between different versions of Discovery.
    id :: MethodId,
    -- | Description of this method.
    description :: Maybe Markdown,
    -- | The URI path of this REST method. Should be used in conjunction with
    -- the servicePath property at the API-level.
    path :: Template,
    -- | The URI path of this REST method in (RFC 6570) format without level 2
    -- features ({+var}). Supplementary to the path property.
    flatPath :: Maybe Template,
    -- | HTTP method used by this method.
    httpMethod :: Text,
    -- | OAuth 2.0 scopes applicable to this method.
    scopes :: [OAuthScope],
    -- | Details for all parameters in this method.
    parameters :: Map Text SchemaRef,
    -- | Ordered list of required parameters. This serves as a hint to clients
    -- on how to structure their method signatures. The array is ordered such
    -- that the most significant parameter appears first.
    parameterOrder :: [Text],
    -- | The schema for the request.
    request :: Maybe SchemaId,
    -- | The schema for the request.
    response :: Maybe SchemaId,
    -- | Whether this method supports media downloads.
    supportsMediaDownload :: Bool,
    -- | Whether this method supports media uploads.
    supportsMediaUpload :: Bool,
    -- | Whether this method supports subscriptions.
    supportsSubscription :: Bool,
    -- | Media upload parameters.
    mediaUpload :: Maybe MediaUpload
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (Structured, Persist)

instance FromJSON Method where
  parseJSON =
   Aeson.withObject "Method" $ \o -> do
      id <-
        o .: "id"
      description <-
        o .:? "description"
      path <-
        o .: "path"
      flatPath <-
        o .:? "flatPath"
      httpMethod <-
        o .: "httpMethod"
      scopes <-
        o .:? "scopes" .!= []
      parameters <-
        o .:? "parameters" .!= mempty
      parameterOrder <-
        o .:? "parameterOrder" .!= []
      request <-
        o .:? "request" >>= \case
          Nothing -> pure Nothing
          Just o' -> o' .: "$ref"
      response <-
        o .:? "response" >>= \case
          Nothing -> pure Nothing
          Just o' -> o' .: "$ref"
      supportsMediaDownload <-
        o .:? "supportsMediaDownload" .!= False
      supportsMediaUpload<-
        o .:? "supportsMediaUpload" .!= False
      supportsSubscription <-
        o .:? "supportsSubscription" .!= False
      mediaUpload <-
        o .:? "mediaUpload"

      pure Method {..}

-- | Media upload parameters.
data MediaUpload = MediaUpload
  { -- | MIME Media Ranges for acceptable media uploads to this method.
    accept :: [Text],
    -- | Maximum size of a media upload, such as "1MB", "2GB" or "3TB".
    maxSize :: Maybe Text,
    -- | Supported upload protocols.
    protocols :: Protocols
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (Structured, Persist, FromJSON)

-- | Supported upload protocols.
data Protocols = Protocols
  { -- | Supports uploading as a single HTTP request.
    simple :: Maybe Protocol,
    -- | Supports the Resumable Media Upload protocol.
    resumable :: Maybe Protocol
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (Structured, Persist, FromJSON)

data Protocol = Protocol
  { -- | The URI path to be used for upload. Should be used in conjunction with
    -- the rootURL property at the api-level.
    path :: Template,
    -- | True if this endpoint supports upload multipart media.
    multipart :: Bool
  }
  deriving stock (Show, Eq, Ord, Generic)
  deriving anyclass (Structured, Persist, FromJSON)
