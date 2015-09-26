-- |
-- Module      : Network.Google.ComputeEngineInstanceGroups
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Resource View API allows users to create and manage logical sets of Google Compute Engine instances.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference>
module Network.Google.ComputeEngineInstanceGroups
    (
    -- * API Definition
      ComputeEngineInstanceGroups



    -- * Types

    -- ** Label
    , Label
    , label
    , lValue
    , lKey

    -- ** ListResourceResponseItem
    , ListResourceResponseItem
    , listResourceResponseItem
    , lrriResource
    , lrriEndpoints

    -- ** ListResourceResponseItemEndpoints
    , ListResourceResponseItemEndpoints
    , listResourceResponseItemEndpoints

    -- ** Operation
    , Operation
    , operation
    , oTargetId
    , oStatus
    , oInsertTime
    , oProgress
    , oStartTime
    , oKind
    , oError
    , oHttpErrorMessage
    , oZone
    , oWarnings
    , oHttpErrorStatusCode
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

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

    -- ** OperationItemDataItemWarnings
    , OperationItemDataItemWarnings
    , operationItemDataItemWarnings
    , oidiwValue
    , oidiwKey

    -- ** OperationItemErrorsError
    , OperationItemErrorsError
    , operationItemErrorsError
    , oieeLocation
    , oieeCode
    , oieeMessage

    -- ** OperationItemWarnings
    , OperationItemWarnings
    , operationItemWarnings
    , oiwData
    , oiwCode
    , oiwMessage

    -- ** OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

    -- ** ResourceView
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

    -- ** ServiceEndpoint
    , ServiceEndpoint
    , serviceEndpoint
    , seName
    , sePort

    -- ** ZoneViewsAddResourcesRequest
    , ZoneViewsAddResourcesRequest
    , zoneViewsAddResourcesRequest
    , zvarrResources

    -- ** ZoneViewsGetServiceResponse
    , ZoneViewsGetServiceResponse
    , zoneViewsGetServiceResponse
    , zvgsrFingerprint
    , zvgsrEndpoints

    -- ** ZoneViewsList
    , ZoneViewsList
    , zoneViewsList
    , zvlNextPageToken
    , zvlKind
    , zvlItems
    , zvlSelfLink

    -- ** ZoneViewsListResourcesResponse
    , ZoneViewsListResourcesResponse
    , zoneViewsListResourcesResponse
    , zvlrrNextPageToken
    , zvlrrItems
    , zvlrrNetwork

    -- ** ZoneViewsRemoveResourcesRequest
    , ZoneViewsRemoveResourcesRequest
    , zoneViewsRemoveResourcesRequest
    , zvrrrResources

    -- ** ZoneViewsSetServiceRequest
    , ZoneViewsSetServiceRequest
    , zoneViewsSetServiceRequest
    , zvssrResourceName
    , zvssrFingerprint
    , zvssrEndpoints
    ) where

import           Network.Google.ComputeEngineInstanceGroups.Types

{- $resources
TODO
-}

type ComputeEngineInstanceGroups = ()

computeEngineInstanceGroups :: Proxy ComputeEngineInstanceGroups
computeEngineInstanceGroups = Proxy




