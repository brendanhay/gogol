{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ReplicaPool
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | The Google Compute Engine Instance Group Manager API provides groups of
-- homogenous Compute Engine Instances.
--
-- /See:/ <https://developers.google.com/compute/docs/instance-groups/manager/v1beta2 Google Compute Engine Instance Group Manager API Reference>
module Network.Google.ReplicaPool
    (
    -- * API
      ReplicaPoolAPI
    , replicaPoolAPI
    , replicaPoolURL

    -- * Service Methods

    -- * REST Resources

    -- ** ReplicapoolInstanceGroupManagersAbandonInstances
    , module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.AbandonInstances

    -- ** ReplicapoolInstanceGroupManagersDelete
    , module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.Delete

    -- ** ReplicapoolInstanceGroupManagersDeleteInstances
    , module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.DeleteInstances

    -- ** ReplicapoolInstanceGroupManagersGet
    , module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.Get

    -- ** ReplicapoolInstanceGroupManagersInsert
    , module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.Insert

    -- ** ReplicapoolInstanceGroupManagersList
    , module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.List

    -- ** ReplicapoolInstanceGroupManagersRecreateInstances
    , module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.RecreateInstances

    -- ** ReplicapoolInstanceGroupManagersResize
    , module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.Resize

    -- ** ReplicapoolInstanceGroupManagersSetInstanceTemplate
    , module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.SetInstanceTemplate

    -- ** ReplicapoolInstanceGroupManagersSetTargetPools
    , module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.SetTargetPools

    -- ** ReplicapoolZoneOperationsGet
    , module Network.Google.Resource.ReplicaPool.ZoneOperations.Get

    -- ** ReplicapoolZoneOperationsList
    , module Network.Google.Resource.ReplicaPool.ZoneOperations.List

    -- * Types

    -- ** InstanceGroupManagersSetInstanceTemplateRequest
    , InstanceGroupManagersSetInstanceTemplateRequest
    , instanceGroupManagersSetInstanceTemplateRequest
    , igmsitrInstanceTemplate

    -- ** OperationWarnings
    , OperationWarnings
    , operationWarnings
    , owData
    , owCode
    , owMessage

    -- ** InstanceGroupManagersAbandonInstancesRequest
    , InstanceGroupManagersAbandonInstancesRequest
    , instanceGroupManagersAbandonInstancesRequest
    , igmairInstances

    -- ** OperationWarningsData
    , OperationWarningsData
    , operationWarningsData
    , owdValue
    , owdKey

    -- ** OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

    -- ** InstanceGroupManagerList
    , InstanceGroupManagerList
    , instanceGroupManagerList
    , igmlNextPageToken
    , igmlKind
    , igmlItems
    , igmlSelfLink
    , igmlId

    -- ** ReplicaPoolAutoHealingPolicyActionType
    , ReplicaPoolAutoHealingPolicyActionType (..)

    -- ** InstanceGroupManager
    , InstanceGroupManager
    , instanceGroupManager
    , igmCurrentSize
    , igmGroup
    , igmKind
    , igmFingerprint
    , igmBaseInstanceName
    , igmAutoHealingPolicies
    , igmInstanceTemplate
    , igmTargetSize
    , igmSelfLink
    , igmName
    , igmCreationTimestamp
    , igmId
    , igmTargetPools
    , igmDescription

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

    -- ** ReplicaPoolAutoHealingPolicy
    , ReplicaPoolAutoHealingPolicy
    , replicaPoolAutoHealingPolicy
    , rpahpHealthCheck
    , rpahpActionType

    -- ** InstanceGroupManagersRecreateInstancesRequest
    , InstanceGroupManagersRecreateInstancesRequest
    , instanceGroupManagersRecreateInstancesRequest
    , igmrirInstances

    -- ** OperationStatus
    , OperationStatus (..)

    -- ** InstanceGroupManagersDeleteInstancesRequest
    , InstanceGroupManagersDeleteInstancesRequest
    , instanceGroupManagersDeleteInstancesRequest
    , igmdirInstances

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

    -- ** InstanceGroupManagersSetTargetPoolsRequest
    , InstanceGroupManagersSetTargetPoolsRequest
    , instanceGroupManagersSetTargetPoolsRequest
    , igmstprFingerprint
    , igmstprTargetPools

    -- ** OperationErrorErrors
    , OperationErrorErrors
    , operationErrorErrors
    , oeeLocation
    , oeeCode
    , oeeMessage

    -- ** OperationWarningsCode
    , OperationWarningsCode (..)
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types
import           Network.Google.Resource.ReplicaPool.InstanceGroupManagers.AbandonInstances
import           Network.Google.Resource.ReplicaPool.InstanceGroupManagers.Delete
import           Network.Google.Resource.ReplicaPool.InstanceGroupManagers.DeleteInstances
import           Network.Google.Resource.ReplicaPool.InstanceGroupManagers.Get
import           Network.Google.Resource.ReplicaPool.InstanceGroupManagers.Insert
import           Network.Google.Resource.ReplicaPool.InstanceGroupManagers.List
import           Network.Google.Resource.ReplicaPool.InstanceGroupManagers.RecreateInstances
import           Network.Google.Resource.ReplicaPool.InstanceGroupManagers.Resize
import           Network.Google.Resource.ReplicaPool.InstanceGroupManagers.SetInstanceTemplate
import           Network.Google.Resource.ReplicaPool.InstanceGroupManagers.SetTargetPools
import           Network.Google.Resource.ReplicaPool.ZoneOperations.Get
import           Network.Google.Resource.ReplicaPool.ZoneOperations.List

{- $resources
TODO
-}

type ReplicaPoolAPI =
     ZoneOperationsListResource :<|>
       ZoneOperationsGetResource
       :<|> InstanceGroupManagersSetTargetPoolsResource
       :<|> InstanceGroupManagersInsertResource
       :<|> InstanceGroupManagersResizeResource
       :<|> InstanceGroupManagersListResource
       :<|> InstanceGroupManagersAbandonInstancesResource
       :<|> InstanceGroupManagersSetInstanceTemplateResource
       :<|> InstanceGroupManagersGetResource
       :<|> InstanceGroupManagersDeleteInstancesResource
       :<|> InstanceGroupManagersDeleteResource
       :<|> InstanceGroupManagersRecreateInstancesResource

replicaPoolAPI :: Proxy ReplicaPoolAPI
replicaPoolAPI = Proxy
