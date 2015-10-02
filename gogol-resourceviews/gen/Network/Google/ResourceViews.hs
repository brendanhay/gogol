{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ResourceViews
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | The Resource View API allows users to create and manage logical sets of
-- Google Compute Engine instances.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference>
module Network.Google.ResourceViews
    (
    -- * API
      ResourceViewsAPI
    , resourceViewsAPI
    , resourceViewsURL

    -- * Service Methods

    -- * REST Resources

    -- ** ResourceviewsZoneOperationsGet
    , module Network.Google.Resource.ResourceViews.ZoneOperations.Get

    -- ** ResourceviewsZoneOperationsList
    , module Network.Google.Resource.ResourceViews.ZoneOperations.List

    -- ** ResourceviewsZoneViewsAddResources
    , module Network.Google.Resource.ResourceViews.ZoneViews.AddResources

    -- ** ResourceviewsZoneViewsDelete
    , module Network.Google.Resource.ResourceViews.ZoneViews.Delete

    -- ** ResourceviewsZoneViewsGet
    , module Network.Google.Resource.ResourceViews.ZoneViews.Get

    -- ** ResourceviewsZoneViewsGetService
    , module Network.Google.Resource.ResourceViews.ZoneViews.GetService

    -- ** ResourceviewsZoneViewsInsert
    , module Network.Google.Resource.ResourceViews.ZoneViews.Insert

    -- ** ResourceviewsZoneViewsList
    , module Network.Google.Resource.ResourceViews.ZoneViews.List

    -- ** ResourceviewsZoneViewsListResources
    , module Network.Google.Resource.ResourceViews.ZoneViews.ListResources

    -- ** ResourceviewsZoneViewsRemoveResources
    , module Network.Google.Resource.ResourceViews.ZoneViews.RemoveResources

    -- ** ResourceviewsZoneViewsSetService
    , module Network.Google.Resource.ResourceViews.ZoneViews.SetService

    -- * Types

    -- ** OperationWarnings
    , OperationWarnings
    , operationWarnings
    , owData
    , owCode
    , owMessage

    -- ** ResourceviewsZoneViewsListResourcesFormat
    , ResourceviewsZoneViewsListResourcesFormat (..)

    -- ** OperationWarningsData
    , OperationWarningsData
    , operationWarningsData
    , owdValue
    , owdKey

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

    -- ** OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

    -- ** ZoneViewsList
    , ZoneViewsList
    , zoneViewsList
    , zvlNextPageToken
    , zvlKind
    , zvlItems
    , zvlSelfLink

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

    -- ** ZoneViewsListResourcesResponse
    , ZoneViewsListResourcesResponse
    , zoneViewsListResourcesResponse
    , zvlrrNextPageToken
    , zvlrrItems
    , zvlrrNetwork

    -- ** ServiceEndpoint
    , ServiceEndpoint
    , serviceEndpoint
    , seName
    , sePort

    -- ** ListResourceResponseItemEndpoints
    , ListResourceResponseItemEndpoints
    , listResourceResponseItemEndpoints

    -- ** ZoneViewsRemoveResourcesRequest
    , ZoneViewsRemoveResourcesRequest
    , zoneViewsRemoveResourcesRequest
    , zvrrrResources

    -- ** ZoneViewsAddResourcesRequest
    , ZoneViewsAddResourcesRequest
    , zoneViewsAddResourcesRequest
    , zvarrResources

    -- ** ResourceviewsZoneViewsListResourcesListState
    , ResourceviewsZoneViewsListResourcesListState (..)

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

    -- ** ZoneViewsGetServiceResponse
    , ZoneViewsGetServiceResponse
    , zoneViewsGetServiceResponse
    , zvgsrFingerprint
    , zvgsrEndpoints

    -- ** ListResourceResponseItem
    , ListResourceResponseItem
    , listResourceResponseItem
    , lrriResource
    , lrriEndpoints

    -- ** Label
    , Label
    , label
    , lValue
    , lKey

    -- ** OperationErrorErrors
    , OperationErrorErrors
    , operationErrorErrors
    , oeeLocation
    , oeeCode
    , oeeMessage

    -- ** ZoneViewsSetServiceRequest
    , ZoneViewsSetServiceRequest
    , zoneViewsSetServiceRequest
    , zvssrResourceName
    , zvssrFingerprint
    , zvssrEndpoints
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.ResourceViews.ZoneOperations.Get
import           Network.Google.Resource.ResourceViews.ZoneOperations.List
import           Network.Google.Resource.ResourceViews.ZoneViews.AddResources
import           Network.Google.Resource.ResourceViews.ZoneViews.Delete
import           Network.Google.Resource.ResourceViews.ZoneViews.Get
import           Network.Google.Resource.ResourceViews.ZoneViews.GetService
import           Network.Google.Resource.ResourceViews.ZoneViews.Insert
import           Network.Google.Resource.ResourceViews.ZoneViews.List
import           Network.Google.Resource.ResourceViews.ZoneViews.ListResources
import           Network.Google.Resource.ResourceViews.ZoneViews.RemoveResources
import           Network.Google.Resource.ResourceViews.ZoneViews.SetService
import           Network.Google.ResourceViews.Types

{- $resources
TODO
-}

type ResourceViewsAPI =
     ZoneViewsSetServiceResource :<|>
       ZoneViewsInsertResource
       :<|> ZoneViewsListResource
       :<|> ZoneViewsListResourcesResource
       :<|> ZoneViewsGetResource
       :<|> ZoneViewsRemoveResourcesResource
       :<|> ZoneViewsAddResourcesResource
       :<|> ZoneViewsGetServiceResource
       :<|> ZoneViewsDeleteResource
       :<|> ZoneOperationsListResource
       :<|> ZoneOperationsGetResource

resourceViewsAPI :: Proxy ResourceViewsAPI
resourceViewsAPI = Proxy
