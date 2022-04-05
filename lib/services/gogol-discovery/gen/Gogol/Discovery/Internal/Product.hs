{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Discovery.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Discovery.Internal.Product
  ( -- * DirectoryList
    DirectoryList (..),
    newDirectoryList,

    -- * DirectoryList_ItemsItem
    DirectoryList_ItemsItem (..),
    newDirectoryList_ItemsItem,

    -- * DirectoryList_ItemsItem_Icons
    DirectoryList_ItemsItem_Icons (..),
    newDirectoryList_ItemsItem_Icons,

    -- * JsonSchema
    JsonSchema (..),
    newJsonSchema,

    -- * JsonSchema_Annotations
    JsonSchema_Annotations (..),
    newJsonSchema_Annotations,

    -- * JsonSchema_Properties
    JsonSchema_Properties (..),
    newJsonSchema_Properties,

    -- * JsonSchema_Variant
    JsonSchema_Variant (..),
    newJsonSchema_Variant,

    -- * JsonSchema_Variant_MapItem
    JsonSchema_Variant_MapItem (..),
    newJsonSchema_Variant_MapItem,

    -- * RestDescription
    RestDescription (..),
    newRestDescription,

    -- * RestDescription_Auth
    RestDescription_Auth (..),
    newRestDescription_Auth,

    -- * RestDescription_Auth_Oauth2
    RestDescription_Auth_Oauth2 (..),
    newRestDescription_Auth_Oauth2,

    -- * RestDescription_Auth_Oauth2_Scopes
    RestDescription_Auth_Oauth2_Scopes (..),
    newRestDescription_Auth_Oauth2_Scopes,

    -- * RestDescription_Auth_Oauth2_ScopesAdditional
    RestDescription_Auth_Oauth2_ScopesAdditional (..),
    newRestDescription_Auth_Oauth2_ScopesAdditional,

    -- * RestDescription_Icons
    RestDescription_Icons (..),
    newRestDescription_Icons,

    -- * RestDescription_Methods
    RestDescription_Methods (..),
    newRestDescription_Methods,

    -- * RestDescription_Parameters
    RestDescription_Parameters (..),
    newRestDescription_Parameters,

    -- * RestDescription_Resources
    RestDescription_Resources (..),
    newRestDescription_Resources,

    -- * RestDescription_Schemas
    RestDescription_Schemas (..),
    newRestDescription_Schemas,

    -- * RestMethod
    RestMethod (..),
    newRestMethod,

    -- * RestMethod_MediaUpload
    RestMethod_MediaUpload (..),
    newRestMethod_MediaUpload,

    -- * RestMethod_MediaUpload_Protocols
    RestMethod_MediaUpload_Protocols (..),
    newRestMethod_MediaUpload_Protocols,

    -- * RestMethod_MediaUpload_Protocols_Resumable
    RestMethod_MediaUpload_Protocols_Resumable (..),
    newRestMethod_MediaUpload_Protocols_Resumable,

    -- * RestMethod_MediaUpload_Protocols_Simple
    RestMethod_MediaUpload_Protocols_Simple (..),
    newRestMethod_MediaUpload_Protocols_Simple,

    -- * RestMethod_Parameters
    RestMethod_Parameters (..),
    newRestMethod_Parameters,

    -- * RestMethod_Request
    RestMethod_Request (..),
    newRestMethod_Request,

    -- * RestMethod_Response
    RestMethod_Response (..),
    newRestMethod_Response,

    -- * RestResource
    RestResource (..),
    newRestResource,

    -- * RestResource_Methods
    RestResource_Methods (..),
    newRestResource_Methods,

    -- * RestResource_Resources
    RestResource_Resources (..),
    newRestResource_Resources,
  )
where

import Gogol.Discovery.Internal.Sum
import qualified Gogol.Prelude as Core

--
-- /See:/ 'newDirectoryList' smart constructor.
data DirectoryList = DirectoryList
  { -- | Indicate the version of the Discovery API used to generate this doc.
    discoveryVersion :: Core.Text,
    -- | The individual directory entries. One entry per api\/version pair.
    items :: (Core.Maybe [DirectoryList_ItemsItem]),
    -- | The kind for this response.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryList' with the minimum fields required to make a request.
newDirectoryList ::
  DirectoryList
newDirectoryList =
  DirectoryList
    { discoveryVersion = "v1",
      items = Core.Nothing,
      kind = "discovery#directoryList"
    }

instance Core.FromJSON DirectoryList where
  parseJSON =
    Core.withObject
      "DirectoryList"
      ( \o ->
          DirectoryList
            Core.<$> (o Core..:? "discoveryVersion" Core..!= "v1")
            Core.<*> (o Core..:? "items")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "discovery#directoryList"
                     )
      )

instance Core.ToJSON DirectoryList where
  toJSON DirectoryList {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("discoveryVersion" Core..= discoveryVersion),
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind)
          ]
      )

--
-- /See:/ 'newDirectoryList_ItemsItem' smart constructor.
data DirectoryList_ItemsItem = DirectoryList_ItemsItem
  { -- | The description of this API.
    description :: (Core.Maybe Core.Text),
    -- | A link to the discovery document.
    discoveryLink :: (Core.Maybe Core.Text),
    -- | The URL for the discovery REST document.
    discoveryRestUrl :: (Core.Maybe Core.Text),
    -- | A link to human readable documentation for the API.
    documentationLink :: (Core.Maybe Core.Text),
    -- | Links to 16x16 and 32x32 icons representing the API.
    icons :: (Core.Maybe DirectoryList_ItemsItem_Icons),
    -- | The id of this API.
    id :: (Core.Maybe Core.Text),
    -- | The kind for this response.
    kind :: Core.Text,
    -- | Labels for the status of this API, such as labs or deprecated.
    labels :: (Core.Maybe [Core.Text]),
    -- | The name of the API.
    name :: (Core.Maybe Core.Text),
    -- | True if this version is the preferred version to use.
    preferred :: (Core.Maybe Core.Bool),
    -- | The title of this API.
    title :: (Core.Maybe Core.Text),
    -- | The version of the API.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryList_ItemsItem' with the minimum fields required to make a request.
newDirectoryList_ItemsItem ::
  DirectoryList_ItemsItem
newDirectoryList_ItemsItem =
  DirectoryList_ItemsItem
    { description = Core.Nothing,
      discoveryLink = Core.Nothing,
      discoveryRestUrl = Core.Nothing,
      documentationLink = Core.Nothing,
      icons = Core.Nothing,
      id = Core.Nothing,
      kind = "discovery#directoryItem",
      labels = Core.Nothing,
      name = Core.Nothing,
      preferred = Core.Nothing,
      title = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON DirectoryList_ItemsItem where
  parseJSON =
    Core.withObject
      "DirectoryList_ItemsItem"
      ( \o ->
          DirectoryList_ItemsItem
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "discoveryLink")
            Core.<*> (o Core..:? "discoveryRestUrl")
            Core.<*> (o Core..:? "documentationLink")
            Core.<*> (o Core..:? "icons")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "discovery#directoryItem"
                     )
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "preferred")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON DirectoryList_ItemsItem where
  toJSON DirectoryList_ItemsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("discoveryLink" Core..=) Core.<$> discoveryLink,
            ("discoveryRestUrl" Core..=)
              Core.<$> discoveryRestUrl,
            ("documentationLink" Core..=)
              Core.<$> documentationLink,
            ("icons" Core..=) Core.<$> icons,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("preferred" Core..=) Core.<$> preferred,
            ("title" Core..=) Core.<$> title,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Links to 16x16 and 32x32 icons representing the API.
--
-- /See:/ 'newDirectoryList_ItemsItem_Icons' smart constructor.
data DirectoryList_ItemsItem_Icons = DirectoryList_ItemsItem_Icons
  { -- | The URL of the 16x16 icon.
    x16 :: (Core.Maybe Core.Text),
    -- | The URL of the 32x32 icon.
    x32 :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryList_ItemsItem_Icons' with the minimum fields required to make a request.
newDirectoryList_ItemsItem_Icons ::
  DirectoryList_ItemsItem_Icons
newDirectoryList_ItemsItem_Icons =
  DirectoryList_ItemsItem_Icons {x16 = Core.Nothing, x32 = Core.Nothing}

instance Core.FromJSON DirectoryList_ItemsItem_Icons where
  parseJSON =
    Core.withObject
      "DirectoryList_ItemsItem_Icons"
      ( \o ->
          DirectoryList_ItemsItem_Icons
            Core.<$> (o Core..:? "x16") Core.<*> (o Core..:? "x32")
      )

instance Core.ToJSON DirectoryList_ItemsItem_Icons where
  toJSON DirectoryList_ItemsItem_Icons {..} =
    Core.object
      ( Core.catMaybes
          [ ("x16" Core..=) Core.<$> x16,
            ("x32" Core..=) Core.<$> x32
          ]
      )

--
-- /See:/ 'newJsonSchema' smart constructor.
data JsonSchema = JsonSchema
  { -- | A reference to another schema. The value of this property is the \"id\" of another schema.
    ref :: (Core.Maybe Core.Text),
    -- | If this is a schema for an object, this property is the schema for any additional properties with dynamic keys on this object.
    additionalProperties :: (Core.Maybe JsonSchema),
    -- | Additional information about this property.
    annotations :: (Core.Maybe JsonSchema_Annotations),
    -- | The default value of this property (if one exists).
    default' :: (Core.Maybe Core.Text),
    -- | A description of this object.
    description :: (Core.Maybe Core.Text),
    -- | Values this parameter may take (if it is an enum).
    enum :: (Core.Maybe [Core.Text]),
    -- | The descriptions for the enums. Each position maps to the corresponding value in the \"enum\" array.
    enumDescriptions :: (Core.Maybe [Core.Text]),
    -- | An additional regular expression or key that helps constrain the value. For more details see: http:\/\/tools.ietf.org\/html\/draft-zyp-json-schema-03#section-5.23
    format :: (Core.Maybe Core.Text),
    -- | Unique identifier for this schema.
    id :: (Core.Maybe Core.Text),
    -- | If this is a schema for an array, this property is the schema for each element in the array.
    items :: (Core.Maybe JsonSchema),
    -- | Whether this parameter goes in the query or the path for REST requests.
    location :: (Core.Maybe Core.Text),
    -- | The maximum value of this parameter.
    maximum :: (Core.Maybe Core.Text),
    -- | The minimum value of this parameter.
    minimum :: (Core.Maybe Core.Text),
    -- | The regular expression this parameter must conform to. Uses Java 6 regex format: http:\/\/docs.oracle.com\/javase\/6\/docs\/api\/java\/util\/regex\/Pattern.html
    pattern' :: (Core.Maybe Core.Text),
    -- | If this is a schema for an object, list the schema for each property of this object.
    properties :: (Core.Maybe JsonSchema_Properties),
    -- | The value is read-only, generated by the service. The value cannot be modified by the client. If the value is included in a POST, PUT, or PATCH request, it is ignored by the service.
    readOnly :: (Core.Maybe Core.Bool),
    -- | Whether this parameter may appear multiple times.
    repeated :: (Core.Maybe Core.Bool),
    -- | Whether the parameter is required.
    required :: (Core.Maybe Core.Bool),
    -- | The value type for this schema. A list of values can be found here: http:\/\/tools.ietf.org\/html\/draft-zyp-json-schema-03#section-5.1
    type' :: (Core.Maybe Core.Text),
    -- | In a variant data type, the value of one property is used to determine how to interpret the entire entity. Its value must exist in a map of descriminant values to schema names.
    variant :: (Core.Maybe JsonSchema_Variant)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JsonSchema' with the minimum fields required to make a request.
newJsonSchema ::
  JsonSchema
newJsonSchema =
  JsonSchema
    { ref = Core.Nothing,
      additionalProperties = Core.Nothing,
      annotations = Core.Nothing,
      default' = Core.Nothing,
      description = Core.Nothing,
      enum = Core.Nothing,
      enumDescriptions = Core.Nothing,
      format = Core.Nothing,
      id = Core.Nothing,
      items = Core.Nothing,
      location = Core.Nothing,
      maximum = Core.Nothing,
      minimum = Core.Nothing,
      pattern' = Core.Nothing,
      properties = Core.Nothing,
      readOnly = Core.Nothing,
      repeated = Core.Nothing,
      required = Core.Nothing,
      type' = Core.Nothing,
      variant = Core.Nothing
    }

instance Core.FromJSON JsonSchema where
  parseJSON =
    Core.withObject
      "JsonSchema"
      ( \o ->
          JsonSchema
            Core.<$> (o Core..:? "$ref")
            Core.<*> (o Core..:? "additionalProperties")
            Core.<*> (o Core..:? "annotations")
            Core.<*> (o Core..:? "default")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "enum")
            Core.<*> (o Core..:? "enumDescriptions")
            Core.<*> (o Core..:? "format")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "items")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "maximum")
            Core.<*> (o Core..:? "minimum")
            Core.<*> (o Core..:? "pattern")
            Core.<*> (o Core..:? "properties")
            Core.<*> (o Core..:? "readOnly")
            Core.<*> (o Core..:? "repeated")
            Core.<*> (o Core..:? "required")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "variant")
      )

instance Core.ToJSON JsonSchema where
  toJSON JsonSchema {..} =
    Core.object
      ( Core.catMaybes
          [ ("$ref" Core..=) Core.<$> ref,
            ("additionalProperties" Core..=)
              Core.<$> additionalProperties,
            ("annotations" Core..=) Core.<$> annotations,
            ("default" Core..=) Core.<$> default',
            ("description" Core..=) Core.<$> description,
            ("enum" Core..=) Core.<$> enum,
            ("enumDescriptions" Core..=)
              Core.<$> enumDescriptions,
            ("format" Core..=) Core.<$> format,
            ("id" Core..=) Core.<$> id,
            ("items" Core..=) Core.<$> items,
            ("location" Core..=) Core.<$> location,
            ("maximum" Core..=) Core.<$> maximum,
            ("minimum" Core..=) Core.<$> minimum,
            ("pattern" Core..=) Core.<$> pattern',
            ("properties" Core..=) Core.<$> properties,
            ("readOnly" Core..=) Core.<$> readOnly,
            ("repeated" Core..=) Core.<$> repeated,
            ("required" Core..=) Core.<$> required,
            ("type" Core..=) Core.<$> type',
            ("variant" Core..=) Core.<$> variant
          ]
      )

-- | Additional information about this property.
--
-- /See:/ 'newJsonSchema_Annotations' smart constructor.
newtype JsonSchema_Annotations = JsonSchema_Annotations
  { -- | A list of methods for which this property is required on requests.
    required :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JsonSchema_Annotations' with the minimum fields required to make a request.
newJsonSchema_Annotations ::
  JsonSchema_Annotations
newJsonSchema_Annotations = JsonSchema_Annotations {required = Core.Nothing}

instance Core.FromJSON JsonSchema_Annotations where
  parseJSON =
    Core.withObject
      "JsonSchema_Annotations"
      ( \o ->
          JsonSchema_Annotations
            Core.<$> (o Core..:? "required")
      )

instance Core.ToJSON JsonSchema_Annotations where
  toJSON JsonSchema_Annotations {..} =
    Core.object
      ( Core.catMaybes
          [("required" Core..=) Core.<$> required]
      )

-- | If this is a schema for an object, list the schema for each property of this object.
--
-- /See:/ 'newJsonSchema_Properties' smart constructor.
newtype JsonSchema_Properties = JsonSchema_Properties
  { -- | A single property of this object. The value is itself a JSON Schema object describing this property.
    additional :: (Core.HashMap Core.Text JsonSchema)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JsonSchema_Properties' with the minimum fields required to make a request.
newJsonSchema_Properties ::
  -- |  A single property of this object. The value is itself a JSON Schema object describing this property. See 'additional'.
  Core.HashMap Core.Text JsonSchema ->
  JsonSchema_Properties
newJsonSchema_Properties additional =
  JsonSchema_Properties {additional = additional}

instance Core.FromJSON JsonSchema_Properties where
  parseJSON =
    Core.withObject
      "JsonSchema_Properties"
      ( \o ->
          JsonSchema_Properties
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON JsonSchema_Properties where
  toJSON JsonSchema_Properties {..} =
    Core.toJSON additional

-- | In a variant data type, the value of one property is used to determine how to interpret the entire entity. Its value must exist in a map of descriminant values to schema names.
--
-- /See:/ 'newJsonSchema_Variant' smart constructor.
data JsonSchema_Variant = JsonSchema_Variant
  { -- | The name of the type discriminant property.
    discriminant :: (Core.Maybe Core.Text),
    -- | The map of discriminant value to schema to use for parsing..
    map :: (Core.Maybe [JsonSchema_Variant_MapItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JsonSchema_Variant' with the minimum fields required to make a request.
newJsonSchema_Variant ::
  JsonSchema_Variant
newJsonSchema_Variant =
  JsonSchema_Variant {discriminant = Core.Nothing, map = Core.Nothing}

instance Core.FromJSON JsonSchema_Variant where
  parseJSON =
    Core.withObject
      "JsonSchema_Variant"
      ( \o ->
          JsonSchema_Variant
            Core.<$> (o Core..:? "discriminant")
            Core.<*> (o Core..:? "map")
      )

instance Core.ToJSON JsonSchema_Variant where
  toJSON JsonSchema_Variant {..} =
    Core.object
      ( Core.catMaybes
          [ ("discriminant" Core..=) Core.<$> discriminant,
            ("map" Core..=) Core.<$> map
          ]
      )

--
-- /See:/ 'newJsonSchema_Variant_MapItem' smart constructor.
data JsonSchema_Variant_MapItem = JsonSchema_Variant_MapItem
  { -- |
    ref :: (Core.Maybe Core.Text),
    -- |
    typeValue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'JsonSchema_Variant_MapItem' with the minimum fields required to make a request.
newJsonSchema_Variant_MapItem ::
  JsonSchema_Variant_MapItem
newJsonSchema_Variant_MapItem =
  JsonSchema_Variant_MapItem {ref = Core.Nothing, typeValue = Core.Nothing}

instance Core.FromJSON JsonSchema_Variant_MapItem where
  parseJSON =
    Core.withObject
      "JsonSchema_Variant_MapItem"
      ( \o ->
          JsonSchema_Variant_MapItem
            Core.<$> (o Core..:? "$ref")
            Core.<*> (o Core..:? "type_value")
      )

instance Core.ToJSON JsonSchema_Variant_MapItem where
  toJSON JsonSchema_Variant_MapItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("$ref" Core..=) Core.<$> ref,
            ("type_value" Core..=) Core.<$> typeValue
          ]
      )

--
-- /See:/ 'newRestDescription' smart constructor.
data RestDescription = RestDescription
  { -- | Authentication information.
    auth :: (Core.Maybe RestDescription_Auth),
    -- | [DEPRECATED] The base path for REST requests.
    basePath :: (Core.Maybe Core.Text),
    -- | [DEPRECATED] The base URL for REST requests.
    baseUrl :: (Core.Maybe Core.Text),
    -- | The path for REST batch requests.
    batchPath :: (Core.Maybe Core.Text),
    -- | Indicates how the API name should be capitalized and split into various parts. Useful for generating pretty class names.
    canonicalName :: (Core.Maybe Core.Text),
    -- | The description of this API.
    description :: (Core.Maybe Core.Text),
    -- | Indicate the version of the Discovery API used to generate this doc.
    discoveryVersion :: Core.Text,
    -- | A link to human readable documentation for the API.
    documentationLink :: (Core.Maybe Core.Text),
    -- | The ETag for this response.
    etag :: (Core.Maybe Core.Text),
    -- | Enable exponential backoff for suitable methods in the generated clients.
    exponentialBackoffDefault :: (Core.Maybe Core.Bool),
    -- | A list of supported features for this API.
    features :: (Core.Maybe [Core.Text]),
    -- | Links to 16x16 and 32x32 icons representing the API.
    icons :: (Core.Maybe RestDescription_Icons),
    -- | The ID of this API.
    id :: (Core.Maybe Core.Text),
    -- | The kind for this response.
    kind :: Core.Text,
    -- | Labels for the status of this API, such as labs or deprecated.
    labels :: (Core.Maybe [Core.Text]),
    -- | API-level methods for this API.
    methods :: (Core.Maybe RestDescription_Methods),
    -- | The name of this API.
    name :: (Core.Maybe Core.Text),
    -- | The domain of the owner of this API. Together with the ownerName and a packagePath values, this can be used to generate a library for this API which would have a unique fully qualified name.
    ownerDomain :: (Core.Maybe Core.Text),
    -- | The name of the owner of this API. See ownerDomain.
    ownerName :: (Core.Maybe Core.Text),
    -- | The package of the owner of this API. See ownerDomain.
    packagePath :: (Core.Maybe Core.Text),
    -- | Common parameters that apply across all apis.
    parameters :: (Core.Maybe RestDescription_Parameters),
    -- | The protocol described by this document.
    protocol :: Core.Text,
    -- | The resources in this API.
    resources :: (Core.Maybe RestDescription_Resources),
    -- | The version of this API.
    revision :: (Core.Maybe Core.Text),
    -- | The root URL under which all API services live.
    rootUrl :: (Core.Maybe Core.Text),
    -- | The schemas for this API.
    schemas :: (Core.Maybe RestDescription_Schemas),
    -- | The base path for all REST requests.
    servicePath :: (Core.Maybe Core.Text),
    -- | The title of this API.
    title :: (Core.Maybe Core.Text),
    -- | The version of this API.
    version :: (Core.Maybe Core.Text),
    -- |
    versionModule :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestDescription' with the minimum fields required to make a request.
newRestDescription ::
  RestDescription
newRestDescription =
  RestDescription
    { auth = Core.Nothing,
      basePath = Core.Nothing,
      baseUrl = Core.Nothing,
      batchPath = Core.Nothing,
      canonicalName = Core.Nothing,
      description = Core.Nothing,
      discoveryVersion = "v1",
      documentationLink = Core.Nothing,
      etag = Core.Nothing,
      exponentialBackoffDefault = Core.Nothing,
      features = Core.Nothing,
      icons = Core.Nothing,
      id = Core.Nothing,
      kind = "discovery#restDescription",
      labels = Core.Nothing,
      methods = Core.Nothing,
      name = Core.Nothing,
      ownerDomain = Core.Nothing,
      ownerName = Core.Nothing,
      packagePath = Core.Nothing,
      parameters = Core.Nothing,
      protocol = "rest",
      resources = Core.Nothing,
      revision = Core.Nothing,
      rootUrl = Core.Nothing,
      schemas = Core.Nothing,
      servicePath = Core.Nothing,
      title = Core.Nothing,
      version = Core.Nothing,
      versionModule = Core.Nothing
    }

instance Core.FromJSON RestDescription where
  parseJSON =
    Core.withObject
      "RestDescription"
      ( \o ->
          RestDescription
            Core.<$> (o Core..:? "auth")
            Core.<*> (o Core..:? "basePath")
            Core.<*> (o Core..:? "baseUrl")
            Core.<*> (o Core..:? "batchPath")
            Core.<*> (o Core..:? "canonicalName")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "discoveryVersion" Core..!= "v1")
            Core.<*> (o Core..:? "documentationLink")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "exponentialBackoffDefault")
            Core.<*> (o Core..:? "features")
            Core.<*> (o Core..:? "icons")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "discovery#restDescription"
                     )
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "methods")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "ownerDomain")
            Core.<*> (o Core..:? "ownerName")
            Core.<*> (o Core..:? "packagePath")
            Core.<*> (o Core..:? "parameters")
            Core.<*> (o Core..:? "protocol" Core..!= "rest")
            Core.<*> (o Core..:? "resources")
            Core.<*> (o Core..:? "revision")
            Core.<*> (o Core..:? "rootUrl")
            Core.<*> (o Core..:? "schemas")
            Core.<*> (o Core..:? "servicePath")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "version")
            Core.<*> (o Core..:? "version_module")
      )

instance Core.ToJSON RestDescription where
  toJSON RestDescription {..} =
    Core.object
      ( Core.catMaybes
          [ ("auth" Core..=) Core.<$> auth,
            ("basePath" Core..=) Core.<$> basePath,
            ("baseUrl" Core..=) Core.<$> baseUrl,
            ("batchPath" Core..=) Core.<$> batchPath,
            ("canonicalName" Core..=) Core.<$> canonicalName,
            ("description" Core..=) Core.<$> description,
            Core.Just
              ("discoveryVersion" Core..= discoveryVersion),
            ("documentationLink" Core..=)
              Core.<$> documentationLink,
            ("etag" Core..=) Core.<$> etag,
            ("exponentialBackoffDefault" Core..=)
              Core.<$> exponentialBackoffDefault,
            ("features" Core..=) Core.<$> features,
            ("icons" Core..=) Core.<$> icons,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("labels" Core..=) Core.<$> labels,
            ("methods" Core..=) Core.<$> methods,
            ("name" Core..=) Core.<$> name,
            ("ownerDomain" Core..=) Core.<$> ownerDomain,
            ("ownerName" Core..=) Core.<$> ownerName,
            ("packagePath" Core..=) Core.<$> packagePath,
            ("parameters" Core..=) Core.<$> parameters,
            Core.Just ("protocol" Core..= protocol),
            ("resources" Core..=) Core.<$> resources,
            ("revision" Core..=) Core.<$> revision,
            ("rootUrl" Core..=) Core.<$> rootUrl,
            ("schemas" Core..=) Core.<$> schemas,
            ("servicePath" Core..=) Core.<$> servicePath,
            ("title" Core..=) Core.<$> title,
            ("version" Core..=) Core.<$> version,
            ("version_module" Core..=) Core.<$> versionModule
          ]
      )

-- | Authentication information.
--
-- /See:/ 'newRestDescription_Auth' smart constructor.
newtype RestDescription_Auth = RestDescription_Auth
  { -- | OAuth 2.0 authentication information.
    oauth2 :: (Core.Maybe RestDescription_Auth_Oauth2)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestDescription_Auth' with the minimum fields required to make a request.
newRestDescription_Auth ::
  RestDescription_Auth
newRestDescription_Auth = RestDescription_Auth {oauth2 = Core.Nothing}

instance Core.FromJSON RestDescription_Auth where
  parseJSON =
    Core.withObject
      "RestDescription_Auth"
      ( \o ->
          RestDescription_Auth Core.<$> (o Core..:? "oauth2")
      )

instance Core.ToJSON RestDescription_Auth where
  toJSON RestDescription_Auth {..} =
    Core.object
      (Core.catMaybes [("oauth2" Core..=) Core.<$> oauth2])

-- | OAuth 2.0 authentication information.
--
-- /See:/ 'newRestDescription_Auth_Oauth2' smart constructor.
newtype RestDescription_Auth_Oauth2 = RestDescription_Auth_Oauth2
  { -- | Available OAuth 2.0 scopes.
    scopes :: (Core.Maybe RestDescription_Auth_Oauth2_Scopes)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestDescription_Auth_Oauth2' with the minimum fields required to make a request.
newRestDescription_Auth_Oauth2 ::
  RestDescription_Auth_Oauth2
newRestDescription_Auth_Oauth2 =
  RestDescription_Auth_Oauth2 {scopes = Core.Nothing}

instance Core.FromJSON RestDescription_Auth_Oauth2 where
  parseJSON =
    Core.withObject
      "RestDescription_Auth_Oauth2"
      ( \o ->
          RestDescription_Auth_Oauth2
            Core.<$> (o Core..:? "scopes")
      )

instance Core.ToJSON RestDescription_Auth_Oauth2 where
  toJSON RestDescription_Auth_Oauth2 {..} =
    Core.object
      (Core.catMaybes [("scopes" Core..=) Core.<$> scopes])

-- | Available OAuth 2.0 scopes.
--
-- /See:/ 'newRestDescription_Auth_Oauth2_Scopes' smart constructor.
newtype RestDescription_Auth_Oauth2_Scopes = RestDescription_Auth_Oauth2_Scopes
  { -- | The scope value.
    additional ::
      ( Core.HashMap
          Core.Text
          RestDescription_Auth_Oauth2_ScopesAdditional
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestDescription_Auth_Oauth2_Scopes' with the minimum fields required to make a request.
newRestDescription_Auth_Oauth2_Scopes ::
  -- |  The scope value. See 'additional'.
  Core.HashMap Core.Text RestDescription_Auth_Oauth2_ScopesAdditional ->
  RestDescription_Auth_Oauth2_Scopes
newRestDescription_Auth_Oauth2_Scopes additional =
  RestDescription_Auth_Oauth2_Scopes {additional = additional}

instance
  Core.FromJSON
    RestDescription_Auth_Oauth2_Scopes
  where
  parseJSON =
    Core.withObject
      "RestDescription_Auth_Oauth2_Scopes"
      ( \o ->
          RestDescription_Auth_Oauth2_Scopes
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    RestDescription_Auth_Oauth2_Scopes
  where
  toJSON RestDescription_Auth_Oauth2_Scopes {..} =
    Core.toJSON additional

-- | The scope value.
--
-- /See:/ 'newRestDescription_Auth_Oauth2_ScopesAdditional' smart constructor.
newtype RestDescription_Auth_Oauth2_ScopesAdditional = RestDescription_Auth_Oauth2_ScopesAdditional
  { -- | Description of scope.
    description :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestDescription_Auth_Oauth2_ScopesAdditional' with the minimum fields required to make a request.
newRestDescription_Auth_Oauth2_ScopesAdditional ::
  RestDescription_Auth_Oauth2_ScopesAdditional
newRestDescription_Auth_Oauth2_ScopesAdditional =
  RestDescription_Auth_Oauth2_ScopesAdditional {description = Core.Nothing}

instance
  Core.FromJSON
    RestDescription_Auth_Oauth2_ScopesAdditional
  where
  parseJSON =
    Core.withObject
      "RestDescription_Auth_Oauth2_ScopesAdditional"
      ( \o ->
          RestDescription_Auth_Oauth2_ScopesAdditional
            Core.<$> (o Core..:? "description")
      )

instance
  Core.ToJSON
    RestDescription_Auth_Oauth2_ScopesAdditional
  where
  toJSON
    RestDescription_Auth_Oauth2_ScopesAdditional {..} =
      Core.object
        ( Core.catMaybes
            [("description" Core..=) Core.<$> description]
        )

-- | Links to 16x16 and 32x32 icons representing the API.
--
-- /See:/ 'newRestDescription_Icons' smart constructor.
data RestDescription_Icons = RestDescription_Icons
  { -- | The URL of the 16x16 icon.
    x16 :: (Core.Maybe Core.Text),
    -- | The URL of the 32x32 icon.
    x32 :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestDescription_Icons' with the minimum fields required to make a request.
newRestDescription_Icons ::
  RestDescription_Icons
newRestDescription_Icons =
  RestDescription_Icons {x16 = Core.Nothing, x32 = Core.Nothing}

instance Core.FromJSON RestDescription_Icons where
  parseJSON =
    Core.withObject
      "RestDescription_Icons"
      ( \o ->
          RestDescription_Icons
            Core.<$> (o Core..:? "x16") Core.<*> (o Core..:? "x32")
      )

instance Core.ToJSON RestDescription_Icons where
  toJSON RestDescription_Icons {..} =
    Core.object
      ( Core.catMaybes
          [ ("x16" Core..=) Core.<$> x16,
            ("x32" Core..=) Core.<$> x32
          ]
      )

-- | API-level methods for this API.
--
-- /See:/ 'newRestDescription_Methods' smart constructor.
newtype RestDescription_Methods = RestDescription_Methods
  { -- | An individual method description.
    additional :: (Core.HashMap Core.Text RestMethod)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestDescription_Methods' with the minimum fields required to make a request.
newRestDescription_Methods ::
  -- |  An individual method description. See 'additional'.
  Core.HashMap Core.Text RestMethod ->
  RestDescription_Methods
newRestDescription_Methods additional =
  RestDescription_Methods {additional = additional}

instance Core.FromJSON RestDescription_Methods where
  parseJSON =
    Core.withObject
      "RestDescription_Methods"
      ( \o ->
          RestDescription_Methods
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON RestDescription_Methods where
  toJSON RestDescription_Methods {..} =
    Core.toJSON additional

-- | Common parameters that apply across all apis.
--
-- /See:/ 'newRestDescription_Parameters' smart constructor.
newtype RestDescription_Parameters = RestDescription_Parameters
  { -- | Description of a single parameter.
    additional :: (Core.HashMap Core.Text JsonSchema)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestDescription_Parameters' with the minimum fields required to make a request.
newRestDescription_Parameters ::
  -- |  Description of a single parameter. See 'additional'.
  Core.HashMap Core.Text JsonSchema ->
  RestDescription_Parameters
newRestDescription_Parameters additional =
  RestDescription_Parameters {additional = additional}

instance Core.FromJSON RestDescription_Parameters where
  parseJSON =
    Core.withObject
      "RestDescription_Parameters"
      ( \o ->
          RestDescription_Parameters
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON RestDescription_Parameters where
  toJSON RestDescription_Parameters {..} =
    Core.toJSON additional

-- | The resources in this API.
--
-- /See:/ 'newRestDescription_Resources' smart constructor.
newtype RestDescription_Resources = RestDescription_Resources
  { -- | An individual resource description. Contains methods and sub-resources related to this resource.
    additional :: (Core.HashMap Core.Text RestResource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestDescription_Resources' with the minimum fields required to make a request.
newRestDescription_Resources ::
  -- |  An individual resource description. Contains methods and sub-resources related to this resource. See 'additional'.
  Core.HashMap Core.Text RestResource ->
  RestDescription_Resources
newRestDescription_Resources additional =
  RestDescription_Resources {additional = additional}

instance Core.FromJSON RestDescription_Resources where
  parseJSON =
    Core.withObject
      "RestDescription_Resources"
      ( \o ->
          RestDescription_Resources
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON RestDescription_Resources where
  toJSON RestDescription_Resources {..} =
    Core.toJSON additional

-- | The schemas for this API.
--
-- /See:/ 'newRestDescription_Schemas' smart constructor.
newtype RestDescription_Schemas = RestDescription_Schemas
  { -- | An individual schema description.
    additional :: (Core.HashMap Core.Text JsonSchema)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestDescription_Schemas' with the minimum fields required to make a request.
newRestDescription_Schemas ::
  -- |  An individual schema description. See 'additional'.
  Core.HashMap Core.Text JsonSchema ->
  RestDescription_Schemas
newRestDescription_Schemas additional =
  RestDescription_Schemas {additional = additional}

instance Core.FromJSON RestDescription_Schemas where
  parseJSON =
    Core.withObject
      "RestDescription_Schemas"
      ( \o ->
          RestDescription_Schemas
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON RestDescription_Schemas where
  toJSON RestDescription_Schemas {..} =
    Core.toJSON additional

--
-- /See:/ 'newRestMethod' smart constructor.
data RestMethod = RestMethod
  { -- | Description of this method.
    description :: (Core.Maybe Core.Text),
    -- | Whether this method requires an ETag to be specified. The ETag is sent as an HTTP If-Match or If-None-Match header.
    etagRequired :: (Core.Maybe Core.Bool),
    -- | The URI path of this REST method in (RFC 6570) format without level 2 features ({+var}). Supplementary to the path property.
    flatPath :: (Core.Maybe Core.Text),
    -- | HTTP method used by this method.
    httpMethod :: (Core.Maybe Core.Text),
    -- | A unique ID for this method. This property can be used to match methods between different versions of Discovery.
    id :: (Core.Maybe Core.Text),
    -- | Media upload parameters.
    mediaUpload :: (Core.Maybe RestMethod_MediaUpload),
    -- | Ordered list of required parameters, serves as a hint to clients on how to structure their method signatures. The array is ordered such that the \"most-significant\" parameter appears first.
    parameterOrder :: (Core.Maybe [Core.Text]),
    -- | Details for all parameters in this method.
    parameters :: (Core.Maybe RestMethod_Parameters),
    -- | The URI path of this REST method. Should be used in conjunction with the basePath property at the api-level.
    path :: (Core.Maybe Core.Text),
    -- | The schema for the request.
    request' :: (Core.Maybe RestMethod_Request),
    -- | The schema for the response.
    response :: (Core.Maybe RestMethod_Response),
    -- | OAuth 2.0 scopes applicable to this method.
    scopes :: (Core.Maybe [Core.Text]),
    -- | Whether this method supports media downloads.
    supportsMediaDownload :: (Core.Maybe Core.Bool),
    -- | Whether this method supports media uploads.
    supportsMediaUpload :: (Core.Maybe Core.Bool),
    -- | Whether this method supports subscriptions.
    supportsSubscription :: (Core.Maybe Core.Bool),
    -- | Indicates that downloads from this method should use the download service URL (i.e. \"\/download\"). Only applies if the method supports media download.
    useMediaDownloadService :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestMethod' with the minimum fields required to make a request.
newRestMethod ::
  RestMethod
newRestMethod =
  RestMethod
    { description = Core.Nothing,
      etagRequired = Core.Nothing,
      flatPath = Core.Nothing,
      httpMethod = Core.Nothing,
      id = Core.Nothing,
      mediaUpload = Core.Nothing,
      parameterOrder = Core.Nothing,
      parameters = Core.Nothing,
      path = Core.Nothing,
      request' = Core.Nothing,
      response = Core.Nothing,
      scopes = Core.Nothing,
      supportsMediaDownload = Core.Nothing,
      supportsMediaUpload = Core.Nothing,
      supportsSubscription = Core.Nothing,
      useMediaDownloadService = Core.Nothing
    }

instance Core.FromJSON RestMethod where
  parseJSON =
    Core.withObject
      "RestMethod"
      ( \o ->
          RestMethod
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "etagRequired")
            Core.<*> (o Core..:? "flatPath")
            Core.<*> (o Core..:? "httpMethod")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "mediaUpload")
            Core.<*> (o Core..:? "parameterOrder")
            Core.<*> (o Core..:? "parameters")
            Core.<*> (o Core..:? "path")
            Core.<*> (o Core..:? "request")
            Core.<*> (o Core..:? "response")
            Core.<*> (o Core..:? "scopes")
            Core.<*> (o Core..:? "supportsMediaDownload")
            Core.<*> (o Core..:? "supportsMediaUpload")
            Core.<*> (o Core..:? "supportsSubscription")
            Core.<*> (o Core..:? "useMediaDownloadService")
      )

instance Core.ToJSON RestMethod where
  toJSON RestMethod {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("etagRequired" Core..=) Core.<$> etagRequired,
            ("flatPath" Core..=) Core.<$> flatPath,
            ("httpMethod" Core..=) Core.<$> httpMethod,
            ("id" Core..=) Core.<$> id,
            ("mediaUpload" Core..=) Core.<$> mediaUpload,
            ("parameterOrder" Core..=) Core.<$> parameterOrder,
            ("parameters" Core..=) Core.<$> parameters,
            ("path" Core..=) Core.<$> path,
            ("request" Core..=) Core.<$> request',
            ("response" Core..=) Core.<$> response,
            ("scopes" Core..=) Core.<$> scopes,
            ("supportsMediaDownload" Core..=)
              Core.<$> supportsMediaDownload,
            ("supportsMediaUpload" Core..=)
              Core.<$> supportsMediaUpload,
            ("supportsSubscription" Core..=)
              Core.<$> supportsSubscription,
            ("useMediaDownloadService" Core..=)
              Core.<$> useMediaDownloadService
          ]
      )

-- | Media upload parameters.
--
-- /See:/ 'newRestMethod_MediaUpload' smart constructor.
data RestMethod_MediaUpload = RestMethod_MediaUpload
  { -- | MIME Media Ranges for acceptable media uploads to this method.
    accept :: (Core.Maybe [Core.Text]),
    -- | Maximum size of a media upload, such as \"1MB\", \"2GB\" or \"3TB\".
    maxSize :: (Core.Maybe Core.Text),
    -- | Supported upload protocols.
    protocols :: (Core.Maybe RestMethod_MediaUpload_Protocols)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestMethod_MediaUpload' with the minimum fields required to make a request.
newRestMethod_MediaUpload ::
  RestMethod_MediaUpload
newRestMethod_MediaUpload =
  RestMethod_MediaUpload
    { accept = Core.Nothing,
      maxSize = Core.Nothing,
      protocols = Core.Nothing
    }

instance Core.FromJSON RestMethod_MediaUpload where
  parseJSON =
    Core.withObject
      "RestMethod_MediaUpload"
      ( \o ->
          RestMethod_MediaUpload
            Core.<$> (o Core..:? "accept")
            Core.<*> (o Core..:? "maxSize")
            Core.<*> (o Core..:? "protocols")
      )

instance Core.ToJSON RestMethod_MediaUpload where
  toJSON RestMethod_MediaUpload {..} =
    Core.object
      ( Core.catMaybes
          [ ("accept" Core..=) Core.<$> accept,
            ("maxSize" Core..=) Core.<$> maxSize,
            ("protocols" Core..=) Core.<$> protocols
          ]
      )

-- | Supported upload protocols.
--
-- /See:/ 'newRestMethod_MediaUpload_Protocols' smart constructor.
data RestMethod_MediaUpload_Protocols = RestMethod_MediaUpload_Protocols
  { -- | Supports the Resumable Media Upload protocol.
    resumable :: (Core.Maybe RestMethod_MediaUpload_Protocols_Resumable),
    -- | Supports uploading as a single HTTP request.
    simple :: (Core.Maybe RestMethod_MediaUpload_Protocols_Simple)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestMethod_MediaUpload_Protocols' with the minimum fields required to make a request.
newRestMethod_MediaUpload_Protocols ::
  RestMethod_MediaUpload_Protocols
newRestMethod_MediaUpload_Protocols =
  RestMethod_MediaUpload_Protocols
    { resumable = Core.Nothing,
      simple = Core.Nothing
    }

instance
  Core.FromJSON
    RestMethod_MediaUpload_Protocols
  where
  parseJSON =
    Core.withObject
      "RestMethod_MediaUpload_Protocols"
      ( \o ->
          RestMethod_MediaUpload_Protocols
            Core.<$> (o Core..:? "resumable")
            Core.<*> (o Core..:? "simple")
      )

instance Core.ToJSON RestMethod_MediaUpload_Protocols where
  toJSON RestMethod_MediaUpload_Protocols {..} =
    Core.object
      ( Core.catMaybes
          [ ("resumable" Core..=) Core.<$> resumable,
            ("simple" Core..=) Core.<$> simple
          ]
      )

-- | Supports the Resumable Media Upload protocol.
--
-- /See:/ 'newRestMethod_MediaUpload_Protocols_Resumable' smart constructor.
data RestMethod_MediaUpload_Protocols_Resumable = RestMethod_MediaUpload_Protocols_Resumable
  { -- | True if this endpoint supports uploading multipart media.
    multipart :: Core.Bool,
    -- | The URI path to be used for upload. Should be used in conjunction with the basePath property at the api-level.
    path :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestMethod_MediaUpload_Protocols_Resumable' with the minimum fields required to make a request.
newRestMethod_MediaUpload_Protocols_Resumable ::
  RestMethod_MediaUpload_Protocols_Resumable
newRestMethod_MediaUpload_Protocols_Resumable =
  RestMethod_MediaUpload_Protocols_Resumable
    { multipart = Core.True,
      path = Core.Nothing
    }

instance
  Core.FromJSON
    RestMethod_MediaUpload_Protocols_Resumable
  where
  parseJSON =
    Core.withObject
      "RestMethod_MediaUpload_Protocols_Resumable"
      ( \o ->
          RestMethod_MediaUpload_Protocols_Resumable
            Core.<$> (o Core..:? "multipart" Core..!= Core.True)
            Core.<*> (o Core..:? "path")
      )

instance
  Core.ToJSON
    RestMethod_MediaUpload_Protocols_Resumable
  where
  toJSON RestMethod_MediaUpload_Protocols_Resumable {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("multipart" Core..= multipart),
            ("path" Core..=) Core.<$> path
          ]
      )

-- | Supports uploading as a single HTTP request.
--
-- /See:/ 'newRestMethod_MediaUpload_Protocols_Simple' smart constructor.
data RestMethod_MediaUpload_Protocols_Simple = RestMethod_MediaUpload_Protocols_Simple
  { -- | True if this endpoint supports upload multipart media.
    multipart :: Core.Bool,
    -- | The URI path to be used for upload. Should be used in conjunction with the basePath property at the api-level.
    path :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestMethod_MediaUpload_Protocols_Simple' with the minimum fields required to make a request.
newRestMethod_MediaUpload_Protocols_Simple ::
  RestMethod_MediaUpload_Protocols_Simple
newRestMethod_MediaUpload_Protocols_Simple =
  RestMethod_MediaUpload_Protocols_Simple
    { multipart = Core.True,
      path = Core.Nothing
    }

instance
  Core.FromJSON
    RestMethod_MediaUpload_Protocols_Simple
  where
  parseJSON =
    Core.withObject
      "RestMethod_MediaUpload_Protocols_Simple"
      ( \o ->
          RestMethod_MediaUpload_Protocols_Simple
            Core.<$> (o Core..:? "multipart" Core..!= Core.True)
            Core.<*> (o Core..:? "path")
      )

instance
  Core.ToJSON
    RestMethod_MediaUpload_Protocols_Simple
  where
  toJSON RestMethod_MediaUpload_Protocols_Simple {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("multipart" Core..= multipart),
            ("path" Core..=) Core.<$> path
          ]
      )

-- | Details for all parameters in this method.
--
-- /See:/ 'newRestMethod_Parameters' smart constructor.
newtype RestMethod_Parameters = RestMethod_Parameters
  { -- | Details for a single parameter in this method.
    additional :: (Core.HashMap Core.Text JsonSchema)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestMethod_Parameters' with the minimum fields required to make a request.
newRestMethod_Parameters ::
  -- |  Details for a single parameter in this method. See 'additional'.
  Core.HashMap Core.Text JsonSchema ->
  RestMethod_Parameters
newRestMethod_Parameters additional =
  RestMethod_Parameters {additional = additional}

instance Core.FromJSON RestMethod_Parameters where
  parseJSON =
    Core.withObject
      "RestMethod_Parameters"
      ( \o ->
          RestMethod_Parameters
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON RestMethod_Parameters where
  toJSON RestMethod_Parameters {..} =
    Core.toJSON additional

-- | The schema for the request.
--
-- /See:/ 'newRestMethod_Request' smart constructor.
data RestMethod_Request = RestMethod_Request
  { -- | Schema ID for the request schema.
    ref :: (Core.Maybe Core.Text),
    -- | parameter name.
    parameterName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestMethod_Request' with the minimum fields required to make a request.
newRestMethod_Request ::
  RestMethod_Request
newRestMethod_Request =
  RestMethod_Request {ref = Core.Nothing, parameterName = Core.Nothing}

instance Core.FromJSON RestMethod_Request where
  parseJSON =
    Core.withObject
      "RestMethod_Request"
      ( \o ->
          RestMethod_Request
            Core.<$> (o Core..:? "$ref")
            Core.<*> (o Core..:? "parameterName")
      )

instance Core.ToJSON RestMethod_Request where
  toJSON RestMethod_Request {..} =
    Core.object
      ( Core.catMaybes
          [ ("$ref" Core..=) Core.<$> ref,
            ("parameterName" Core..=) Core.<$> parameterName
          ]
      )

-- | The schema for the response.
--
-- /See:/ 'newRestMethod_Response' smart constructor.
newtype RestMethod_Response = RestMethod_Response
  { -- | Schema ID for the response schema.
    ref :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestMethod_Response' with the minimum fields required to make a request.
newRestMethod_Response ::
  RestMethod_Response
newRestMethod_Response = RestMethod_Response {ref = Core.Nothing}

instance Core.FromJSON RestMethod_Response where
  parseJSON =
    Core.withObject
      "RestMethod_Response"
      ( \o ->
          RestMethod_Response Core.<$> (o Core..:? "$ref")
      )

instance Core.ToJSON RestMethod_Response where
  toJSON RestMethod_Response {..} =
    Core.object
      (Core.catMaybes [("$ref" Core..=) Core.<$> ref])

--
-- /See:/ 'newRestResource' smart constructor.
data RestResource = RestResource
  { -- | Methods on this resource.
    methods :: (Core.Maybe RestResource_Methods),
    -- | Sub-resources on this resource.
    resources :: (Core.Maybe RestResource_Resources)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestResource' with the minimum fields required to make a request.
newRestResource ::
  RestResource
newRestResource =
  RestResource {methods = Core.Nothing, resources = Core.Nothing}

instance Core.FromJSON RestResource where
  parseJSON =
    Core.withObject
      "RestResource"
      ( \o ->
          RestResource
            Core.<$> (o Core..:? "methods")
            Core.<*> (o Core..:? "resources")
      )

instance Core.ToJSON RestResource where
  toJSON RestResource {..} =
    Core.object
      ( Core.catMaybes
          [ ("methods" Core..=) Core.<$> methods,
            ("resources" Core..=) Core.<$> resources
          ]
      )

-- | Methods on this resource.
--
-- /See:/ 'newRestResource_Methods' smart constructor.
newtype RestResource_Methods = RestResource_Methods
  { -- | Description for any methods on this resource.
    additional :: (Core.HashMap Core.Text RestMethod)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestResource_Methods' with the minimum fields required to make a request.
newRestResource_Methods ::
  -- |  Description for any methods on this resource. See 'additional'.
  Core.HashMap Core.Text RestMethod ->
  RestResource_Methods
newRestResource_Methods additional =
  RestResource_Methods {additional = additional}

instance Core.FromJSON RestResource_Methods where
  parseJSON =
    Core.withObject
      "RestResource_Methods"
      ( \o ->
          RestResource_Methods
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON RestResource_Methods where
  toJSON RestResource_Methods {..} =
    Core.toJSON additional

-- | Sub-resources on this resource.
--
-- /See:/ 'newRestResource_Resources' smart constructor.
newtype RestResource_Resources = RestResource_Resources
  { -- | Description for any sub-resources on this resource.
    additional :: (Core.HashMap Core.Text RestResource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RestResource_Resources' with the minimum fields required to make a request.
newRestResource_Resources ::
  -- |  Description for any sub-resources on this resource. See 'additional'.
  Core.HashMap Core.Text RestResource ->
  RestResource_Resources
newRestResource_Resources additional =
  RestResource_Resources {additional = additional}

instance Core.FromJSON RestResource_Resources where
  parseJSON =
    Core.withObject
      "RestResource_Resources"
      ( \o ->
          RestResource_Resources
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON RestResource_Resources where
  toJSON RestResource_Resources {..} =
    Core.toJSON additional
