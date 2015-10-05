{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

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

    -- ** OperationWarningsItemDataItem
    , OperationWarningsItemDataItem
    , operationWarningsItemDataItem
    , owidiValue
    , owidiKey

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

    -- ** ZoneViewsListResourcesFormat
    , ZoneViewsListResourcesFormat (..)

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

    -- ** ZoneViewsListResourcesListState
    , ZoneViewsListResourcesListState (..)

    -- ** ZoneViewsRemoveResourcesRequest
    , ZoneViewsRemoveResourcesRequest
    , zoneViewsRemoveResourcesRequest
    , zvrrrResources

    -- ** ListResourceResponseItemEndpoints
    , ListResourceResponseItemEndpoints
    , listResourceResponseItemEndpoints

    -- ** ZoneViewsAddResourcesRequest
    , ZoneViewsAddResourcesRequest
    , zoneViewsAddResourcesRequest
    , zvarrResources

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

    -- ** ZoneViewsGetServiceResponse
    , ZoneViewsGetServiceResponse
    , zoneViewsGetServiceResponse
    , zvgsrFingerprint
    , zvgsrEndpoints

    -- ** OperationErrorErrorsItem
    , OperationErrorErrorsItem
    , operationErrorErrorsItem
    , oeeiLocation
    , oeeiCode
    , oeeiMessage

    -- ** ZoneViewsSetServiceRequest
    , ZoneViewsSetServiceRequest
    , zoneViewsSetServiceRequest
    , zvssrResourceName
    , zvssrFingerprint
    , zvssrEndpoints

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

    -- ** OperationWarningsItem
    , OperationWarningsItem
    , operationWarningsItem
    , owiData
    , owiCode
    , owiMessage
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
