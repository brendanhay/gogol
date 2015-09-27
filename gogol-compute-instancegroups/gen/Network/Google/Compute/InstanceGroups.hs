{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Compute.InstanceGroups
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
module Network.Google.Compute.InstanceGroups
    (
    -- * Resources
      ComputeInstanceGroups
    , ZoneViewsAPI
    , ZoneViewsSetService
    , ZoneViewsInsert
    , ZoneViewsList
    , ZoneViewsListResources
    , ZoneViewsGet
    , ZoneViewsRemoveResources
    , ZoneViewsAddResources
    , ZoneViewsGetService
    , ZoneViewsDelete
    , ZoneOperationsAPI
    , ZoneOperationsList
    , ZoneOperationsGet

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

import           Network.Google.Compute.InstanceGroups.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type ComputeInstanceGroups =
     ZoneViewsAPI :<|> ZoneOperationsAPI

type ZoneViewsAPI =
     ZoneViewsSetService :<|> ZoneViewsInsert :<|>
       ZoneViewsList
       :<|> ZoneViewsListResources
       :<|> ZoneViewsGet
       :<|> ZoneViewsRemoveResources
       :<|> ZoneViewsAddResources
       :<|> ZoneViewsGetService
       :<|> ZoneViewsDelete

-- | Update the service information of a resource view or a resource.
type ZoneViewsSetService =
     "resourceviews" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "resourceViews" :>
                   Capture "resourceView" Text :>
                     "setService" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | Create a resource view.
type ZoneViewsInsert =
     "resourceviews" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "resourceViews" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Text :> Post '[JSON] Operation

-- | List resource views.
type ZoneViewsList =
     "resourceviews" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "resourceViews" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "maxResults" Int32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Get '[JSON] ZoneViewsList

-- | List the resources of the resource view.
type ZoneViewsListResources =
     "resourceviews" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "resourceViews" :>
                   Capture "resourceView" Text :>
                     "resources" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "listState" Text :>
                             QueryParam "userIp" Text :>
                               QueryParam "format" Text :>
                                 QueryParam "key" Text :>
                                   QueryParam "serviceName" Text :>
                                     QueryParam "pageToken" Text :>
                                       QueryParam "oauth_token" Text :>
                                         QueryParam "maxResults" Int32 :>
                                           QueryParam "fields" Text :>
                                             QueryParam "alt" Text :>
                                               Get '[JSON]
                                                 ZoneViewsListResourcesResponse

-- | Get the information of a zonal resource view.
type ZoneViewsGet =
     "resourceviews" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "resourceViews" :>
                   Capture "resourceView" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Get '[JSON] ResourceView

-- | Remove resources from the view.
type ZoneViewsRemoveResources =
     "resourceviews" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "resourceViews" :>
                   Capture "resourceView" Text :>
                     "removeResources" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | Add resources to the view.
type ZoneViewsAddResources =
     "resourceviews" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "resourceViews" :>
                   Capture "resourceView" Text :>
                     "addResources" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "key" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Text :>
                                     Post '[JSON] Operation

-- | Get the service information of a resource view or a resource.
type ZoneViewsGetService =
     "resourceviews" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "resourceViews" :>
                   Capture "resourceView" Text :>
                     "getService" :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "resourceName" Text :>
                             QueryParam "userIp" Text :>
                               QueryParam "key" Text :>
                                 QueryParam "oauth_token" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Post '[JSON] ZoneViewsGetServiceResponse

-- | Delete a resource view.
type ZoneViewsDelete =
     "resourceviews" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "resourceViews" :>
                   Capture "resourceView" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :>
                                   Delete '[JSON] Operation

type ZoneOperationsAPI =
     ZoneOperationsList :<|> ZoneOperationsGet

-- | Retrieves the list of operation resources contained within the specified
-- zone.
type ZoneOperationsList =
     "resourceviews" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "operations" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "key" Text :>
                           QueryParam "filter" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "oauth_token" Text :>
                                 QueryParam "maxResults" Word32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Text :>
                                       Get '[JSON] OperationList

-- | Retrieves the specified zone-specific operation resource.
type ZoneOperationsGet =
     "resourceviews" :>
       "v1beta2" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "operations" :>
                   Capture "operation" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "key" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Text :> Get '[JSON] Operation
