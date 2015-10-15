{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ResourceViews.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ResourceViews.Types
    (
    -- * Service Configuration
      resourceViews

    -- * OAuth Scopes
    , computeScope
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope
    , ndevCloudmanScope
    , ndevCloudmanReadonlyScope
    , computeReadonlyScope

    -- * OperationWarningsItemDataItem
    , OperationWarningsItemDataItem
    , operationWarningsItemDataItem
    , owidiValue
    , owidiKey

    -- * OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

    -- * ResourceView
    , ResourceView
    , resourceView
    , rvSize
    , rvKind
    , rvFingerprint
    , rvNetwork
    , rvResources
    , rvSelfLink
    , rvName
    , rvCreationTimestamp
    , rvId
    , rvLabels
    , rvEndpoints
    , rvDescription

    -- * ZoneViewsList
    , ZoneViewsList
    , zoneViewsList
    , zvlNextPageToken
    , zvlKind
    , zvlItems
    , zvlSelfLink

    -- * Operation
    , Operation
    , operation
    , oTargetId
    , oStatus
    , oInsertTime
    , oProgress
    , oStartTime
    , oKind
    , oError
    , oHTTPErrorMessage
    , oZone
    , oWarnings
    , oHTTPErrorStatusCode
    , oUser
    , oSelfLink
    , oName
    , oStatusMessage
    , oCreationTimestamp
    , oEndTime
    , oId
    , oOperationType
    , oRegion
    , oTargetLink
    , oClientOperationId

    -- * ZoneViewsListResourcesFormat
    , ZoneViewsListResourcesFormat (..)

    -- * ZoneViewsListResourcesResponse
    , ZoneViewsListResourcesResponse
    , zoneViewsListResourcesResponse
    , zvlrrNextPageToken
    , zvlrrItems
    , zvlrrNetwork

    -- * ServiceEndpoint
    , ServiceEndpoint
    , serviceEndpoint
    , seName
    , sePort

    -- * ZoneViewsListResourcesListState
    , ZoneViewsListResourcesListState (..)

    -- * ZoneViewsRemoveResourcesRequest
    , ZoneViewsRemoveResourcesRequest
    , zoneViewsRemoveResourcesRequest
    , zvrrrResources

    -- * ListResourceResponseItemEndpoints
    , ListResourceResponseItemEndpoints
    , listResourceResponseItemEndpoints
    , lrrieAddtional

    -- * ZoneViewsAddResourcesRequest
    , ZoneViewsAddResourcesRequest
    , zoneViewsAddResourcesRequest
    , zvarrResources

    -- * OperationError
    , OperationError
    , operationError
    , oeErrors

    -- * ZoneViewsGetServiceResponse
    , ZoneViewsGetServiceResponse
    , zoneViewsGetServiceResponse
    , zvgsrFingerprint
    , zvgsrEndpoints

    -- * OperationErrorErrorsItem
    , OperationErrorErrorsItem
    , operationErrorErrorsItem
    , oeeiLocation
    , oeeiCode
    , oeeiMessage

    -- * ZoneViewsSetServiceRequest
    , ZoneViewsSetServiceRequest
    , zoneViewsSetServiceRequest
    , zvssrResourceName
    , zvssrFingerprint
    , zvssrEndpoints

    -- * ListResourceResponseItem
    , ListResourceResponseItem
    , listResourceResponseItem
    , lrriResource
    , lrriEndpoints

    -- * Label
    , Label
    , label
    , lValue
    , lKey

    -- * OperationWarningsItem
    , OperationWarningsItem
    , operationWarningsItem
    , owiData
    , owiCode
    , owiMessage
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceViews.Types.Product
import           Network.Google.ResourceViews.Types.Sum

-- | Default request referring to version 'v1beta2' of the Google Compute Engine Instance Groups API. This contains the host and root path used as a starting point for constructing service requests.
resourceViews :: Service
resourceViews
  = defaultService (ServiceId "resourceviews:v1beta2")
      "www.googleapis.com"
      "resourceviews/v1beta2/projects/"

-- | View and manage your Google Compute Engine resources
computeScope :: OAuthScope
computeScope = "https://www.googleapis.com/auth/compute";

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: OAuthScope
cloudPlatformReadOnlyScope = "https://www.googleapis.com/auth/cloud-platform.read-only";

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: OAuthScope
cloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

-- | View and manage your Google Cloud Platform management resources and
-- deployment status information
ndevCloudmanScope :: OAuthScope
ndevCloudmanScope = "https://www.googleapis.com/auth/ndev.cloudman";

-- | View your Google Cloud Platform management resources and deployment
-- status information
ndevCloudmanReadonlyScope :: OAuthScope
ndevCloudmanReadonlyScope = "https://www.googleapis.com/auth/ndev.cloudman.readonly";

-- | View your Google Compute Engine resources
computeReadonlyScope :: OAuthScope
computeReadonlyScope = "https://www.googleapis.com/auth/compute.readonly";
