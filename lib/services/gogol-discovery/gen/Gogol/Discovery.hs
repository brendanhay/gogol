{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Discovery
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information about other Google APIs, such as what APIs are available, the resource, and method details for each API.
--
-- /See:/ <https://developers.google.com/discovery/ API Discovery Service Reference>
module Gogol.Discovery
  ( -- * Configuration
    discoveryService,

    -- * Resources

    -- ** discovery.apis.getRest
    DiscoveryApisGetRestResource,
    DiscoveryApisGetRest (..),
    newDiscoveryApisGetRest,

    -- ** discovery.apis.list
    DiscoveryApisListResource,
    DiscoveryApisList (..),
    newDiscoveryApisList,

    -- * Types

    -- ** DirectoryList
    DirectoryList (..),
    newDirectoryList,

    -- ** DirectoryList_ItemsItem
    DirectoryList_ItemsItem (..),
    newDirectoryList_ItemsItem,

    -- ** DirectoryList_ItemsItem_Icons
    DirectoryList_ItemsItem_Icons (..),
    newDirectoryList_ItemsItem_Icons,

    -- ** JsonSchema
    JsonSchema (..),
    newJsonSchema,

    -- ** JsonSchema_Annotations
    JsonSchema_Annotations (..),
    newJsonSchema_Annotations,

    -- ** JsonSchema_Properties
    JsonSchema_Properties (..),
    newJsonSchema_Properties,

    -- ** JsonSchema_Variant
    JsonSchema_Variant (..),
    newJsonSchema_Variant,

    -- ** JsonSchema_Variant_MapItem
    JsonSchema_Variant_MapItem (..),
    newJsonSchema_Variant_MapItem,

    -- ** RestDescription
    RestDescription (..),
    newRestDescription,

    -- ** RestDescription_Auth
    RestDescription_Auth (..),
    newRestDescription_Auth,

    -- ** RestDescription_Auth_Oauth2
    RestDescription_Auth_Oauth2 (..),
    newRestDescription_Auth_Oauth2,

    -- ** RestDescription_Auth_Oauth2_Scopes
    RestDescription_Auth_Oauth2_Scopes (..),
    newRestDescription_Auth_Oauth2_Scopes,

    -- ** RestDescription_Auth_Oauth2_ScopesAdditional
    RestDescription_Auth_Oauth2_ScopesAdditional (..),
    newRestDescription_Auth_Oauth2_ScopesAdditional,

    -- ** RestDescription_EndpointsItem
    RestDescription_EndpointsItem (..),
    newRestDescription_EndpointsItem,

    -- ** RestDescription_Icons
    RestDescription_Icons (..),
    newRestDescription_Icons,

    -- ** RestDescription_Methods
    RestDescription_Methods (..),
    newRestDescription_Methods,

    -- ** RestDescription_Parameters
    RestDescription_Parameters (..),
    newRestDescription_Parameters,

    -- ** RestDescription_Resources
    RestDescription_Resources (..),
    newRestDescription_Resources,

    -- ** RestDescription_Schemas
    RestDescription_Schemas (..),
    newRestDescription_Schemas,

    -- ** RestMethod
    RestMethod (..),
    newRestMethod,

    -- ** RestMethod_MediaUpload
    RestMethod_MediaUpload (..),
    newRestMethod_MediaUpload,

    -- ** RestMethod_MediaUpload_Protocols
    RestMethod_MediaUpload_Protocols (..),
    newRestMethod_MediaUpload_Protocols,

    -- ** RestMethod_MediaUpload_Protocols_Resumable
    RestMethod_MediaUpload_Protocols_Resumable (..),
    newRestMethod_MediaUpload_Protocols_Resumable,

    -- ** RestMethod_MediaUpload_Protocols_Simple
    RestMethod_MediaUpload_Protocols_Simple (..),
    newRestMethod_MediaUpload_Protocols_Simple,

    -- ** RestMethod_Parameters
    RestMethod_Parameters (..),
    newRestMethod_Parameters,

    -- ** RestMethod_Request
    RestMethod_Request (..),
    newRestMethod_Request,

    -- ** RestMethod_Response
    RestMethod_Response (..),
    newRestMethod_Response,

    -- ** RestResource
    RestResource (..),
    newRestResource,

    -- ** RestResource_Methods
    RestResource_Methods (..),
    newRestResource_Methods,

    -- ** RestResource_Resources
    RestResource_Resources (..),
    newRestResource_Resources,
  )
where

import Gogol.Discovery.Apis.GetRest
import Gogol.Discovery.Apis.List
import Gogol.Discovery.Types
