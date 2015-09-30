{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.InstanceGroups
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | The Resource View API allows users to create and manage logical sets of
-- Google Compute Engine instances.
--
-- /See:/ <https://developers.google.com/compute/ Google Compute Engine Instance Groups API Reference>
module Network.Google.InstanceGroups
    (
    -- * API
      InstanceGroupsAPI
    , instanceGroupsAPI
    , instanceGroupsURL

    -- * Service Methods

    -- * REST Resources

    -- ** ResourceviewsZoneOperationsGet
    , module Resourceviews.ZoneOperations.Get

    -- ** ResourceviewsZoneOperationsList
    , module Resourceviews.ZoneOperations.List

    -- ** ResourceviewsZoneViewsAddResources
    , module Resourceviews.ZoneViews.AddResources

    -- ** ResourceviewsZoneViewsDelete
    , module Resourceviews.ZoneViews.Delete

    -- ** ResourceviewsZoneViewsGet
    , module Resourceviews.ZoneViews.Get

    -- ** ResourceviewsZoneViewsGetService
    , module Resourceviews.ZoneViews.GetService

    -- ** ResourceviewsZoneViewsInsert
    , module Resourceviews.ZoneViews.Insert

    -- ** ResourceviewsZoneViewsList
    , module Resourceviews.ZoneViews.List

    -- ** ResourceviewsZoneViewsListResources
    , module Resourceviews.ZoneViews.ListResources

    -- ** ResourceviewsZoneViewsRemoveResources
    , module Resourceviews.ZoneViews.RemoveResources

    -- ** ResourceviewsZoneViewsSetService
    , module Resourceviews.ZoneViews.SetService

    -- * Types

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

    -- ** ZoneViewsRemoveResourcesRequest
    , ZoneViewsRemoveResourcesRequest
    , zoneViewsRemoveResourcesRequest
    , zvrrrResources

    -- ** ZoneViewsAddResourcesRequest
    , ZoneViewsAddResourcesRequest
    , zoneViewsAddResourcesRequest
    , zvarrResources

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

    -- ** ZoneViewsSetServiceRequest
    , ZoneViewsSetServiceRequest
    , zoneViewsSetServiceRequest
    , zvssrResourceName
    , zvssrFingerprint
    , zvssrEndpoints
    ) where

import           Network.Google.InstanceGroups.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Resourceviews.ZoneOperations.Get
import           Network.Google.Resource.Resourceviews.ZoneOperations.List
import           Network.Google.Resource.Resourceviews.ZoneViews.AddResources
import           Network.Google.Resource.Resourceviews.ZoneViews.Delete
import           Network.Google.Resource.Resourceviews.ZoneViews.Get
import           Network.Google.Resource.Resourceviews.ZoneViews.GetService
import           Network.Google.Resource.Resourceviews.ZoneViews.Insert
import           Network.Google.Resource.Resourceviews.ZoneViews.List
import           Network.Google.Resource.Resourceviews.ZoneViews.ListResources
import           Network.Google.Resource.Resourceviews.ZoneViews.RemoveResources
import           Network.Google.Resource.Resourceviews.ZoneViews.SetService

{- $resources
TODO
-}

type InstanceGroupsAPI =
     ZoneViews :<|> ZoneOperations

instanceGroupsAPI :: Proxy InstanceGroupsAPI
instanceGroupsAPI = Proxy
