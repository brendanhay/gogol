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
    -- * REST Resources

    -- ** Google Compute Engine Instance Groups API
      InstanceGroups
    , instanceGroups
    , instanceGroupsURL

    -- ** resourceviews.zoneOperations.get
    , module Network.Google.API.Resourceviews.ZoneOperations.Get

    -- ** resourceviews.zoneOperations.list
    , module Network.Google.API.Resourceviews.ZoneOperations.List

    -- ** resourceviews.zoneViews.addResources
    , module Network.Google.API.Resourceviews.ZoneViews.AddResources

    -- ** resourceviews.zoneViews.delete
    , module Network.Google.API.Resourceviews.ZoneViews.Delete

    -- ** resourceviews.zoneViews.get
    , module Network.Google.API.Resourceviews.ZoneViews.Get

    -- ** resourceviews.zoneViews.getService
    , module Network.Google.API.Resourceviews.ZoneViews.GetService

    -- ** resourceviews.zoneViews.insert
    , module Network.Google.API.Resourceviews.ZoneViews.Insert

    -- ** resourceviews.zoneViews.list
    , module Network.Google.API.Resourceviews.ZoneViews.List

    -- ** resourceviews.zoneViews.listResources
    , module Network.Google.API.Resourceviews.ZoneViews.ListResources

    -- ** resourceviews.zoneViews.removeResources
    , module Network.Google.API.Resourceviews.ZoneViews.RemoveResources

    -- ** resourceviews.zoneViews.setService
    , module Network.Google.API.Resourceviews.ZoneViews.SetService

    -- * Types

    -- ** OperationItemDataItemWarnings
    , OperationItemDataItemWarnings
    , operationItemDataItemWarnings
    , oidiwValue
    , oidiwKey

    -- ** ZoneViewsList
    , ZoneViewsList
    , zoneViewsList
    , zvlNextPageToken
    , zvlKind
    , zvlItems
    , zvlSelfLink

    -- ** OperationItemWarnings
    , OperationItemWarnings
    , operationItemWarnings
    , oiwData
    , oiwCode
    , oiwMessage

    -- ** Alt
    , Alt (..)

    -- ** ZoneViewsGetServiceResponse
    , ZoneViewsGetServiceResponse
    , zoneViewsGetServiceResponse
    , zvgsrFingerprint
    , zvgsrEndpoints

    -- ** OperationItemErrorsError
    , OperationItemErrorsError
    , operationItemErrorsError
    , oieeLocation
    , oieeCode
    , oieeMessage

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

    -- ** ServiceEndpoint
    , ServiceEndpoint
    , serviceEndpoint
    , seName
    , sePort

    -- ** ZoneViewsRemoveResourcesRequest
    , ZoneViewsRemoveResourcesRequest
    , zoneViewsRemoveResourcesRequest
    , zvrrrResources

    -- ** ZoneViewsListResources'Format
    , ZoneViewsListResources'Format (..)

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

    -- ** ZoneViewsListResources'ListState
    , ZoneViewsListResources'ListState (..)

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

    -- ** ZoneViewsListResourcesResponse
    , ZoneViewsListResourcesResponse
    , zoneViewsListResourcesResponse
    , zvlrrNextPageToken
    , zvlrrItems
    , zvlrrNetwork

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

    -- ** ListResourceResponseItem
    , ListResourceResponseItem
    , listResourceResponseItem
    , lrriResource
    , lrriEndpoints

    -- ** ZoneViewsAddResourcesRequest
    , ZoneViewsAddResourcesRequest
    , zoneViewsAddResourcesRequest
    , zvarrResources
    ) where

import           Network.Google.API.Resourceviews.ZoneOperations.Get
import           Network.Google.API.Resourceviews.ZoneOperations.List
import           Network.Google.API.Resourceviews.ZoneViews.AddResources
import           Network.Google.API.Resourceviews.ZoneViews.Delete
import           Network.Google.API.Resourceviews.ZoneViews.Get
import           Network.Google.API.Resourceviews.ZoneViews.GetService
import           Network.Google.API.Resourceviews.ZoneViews.Insert
import           Network.Google.API.Resourceviews.ZoneViews.List
import           Network.Google.API.Resourceviews.ZoneViews.ListResources
import           Network.Google.API.Resourceviews.ZoneViews.RemoveResources
import           Network.Google.API.Resourceviews.ZoneViews.SetService
import           Network.Google.InstanceGroups.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type InstanceGroups =
     ZoneViewsSetServiceAPI :<|> ZoneViewsDeleteAPI :<|>
       ZoneViewsGetAPI
       :<|> ZoneViewsListResourcesAPI
       :<|> ZoneViewsListAPI
       :<|> ZoneOperationsGetAPI
       :<|> ZoneOperationsListAPI
       :<|> ZoneViewsAddResourcesAPI
       :<|> ZoneViewsRemoveResourcesAPI
       :<|> ZoneViewsInsertAPI
       :<|> ZoneViewsGetServiceAPI

instanceGroups :: Proxy InstanceGroups
instanceGroups = Proxy
