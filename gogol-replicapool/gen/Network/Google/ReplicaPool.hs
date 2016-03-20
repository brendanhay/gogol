{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ReplicaPool
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Compute Engine Instance Group Manager API provides groups of
-- homogenous Compute Engine Instances.
--
-- /See:/ <https://developers.google.com/compute/docs/instance-groups/manager/v1beta2 Google Compute Engine Instance Group Manager API Reference>
module Network.Google.ReplicaPool
    (
    -- * Service Configuration
      replicaPoolService

    -- * OAuth Scopes
    , authComputeScope
    , authCloudPlatformReadOnlyScope
    , authCloudPlatformScope
    , authComputeReadonlyScope

    -- * API Declaration
    , ReplicaPoolAPI

    -- * Resources

    -- ** replicapool.instanceGroupManagers.abandonInstances
    , module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.AbandonInstances

    -- ** replicapool.instanceGroupManagers.delete
    , module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.Delete

    -- ** replicapool.instanceGroupManagers.deleteInstances
    , module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.DeleteInstances

    -- ** replicapool.instanceGroupManagers.get
    , module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.Get

    -- ** replicapool.instanceGroupManagers.insert
    , module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.Insert

    -- ** replicapool.instanceGroupManagers.list
    , module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.List

    -- ** replicapool.instanceGroupManagers.recreateInstances
    , module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.RecreateInstances

    -- ** replicapool.instanceGroupManagers.resize
    , module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.Resize

    -- ** replicapool.instanceGroupManagers.setInstanceTemplate
    , module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.SetInstanceTemplate

    -- ** replicapool.instanceGroupManagers.setTargetPools
    , module Network.Google.Resource.ReplicaPool.InstanceGroupManagers.SetTargetPools

    -- ** replicapool.zoneOperations.get
    , module Network.Google.Resource.ReplicaPool.ZoneOperations.Get

    -- ** replicapool.zoneOperations.list
    , module Network.Google.Resource.ReplicaPool.ZoneOperations.List

    -- * Types

    -- ** OperationWarningsItemDataItem
    , OperationWarningsItemDataItem
    , operationWarningsItemDataItem
    , owidiValue
    , owidiKey

    -- ** InstanceGroupManagersAbandonInstancesRequest
    , InstanceGroupManagersAbandonInstancesRequest
    , instanceGroupManagersAbandonInstancesRequest
    , igmairInstances

    -- ** InstanceGroupManagersSetInstanceTemplateRequest
    , InstanceGroupManagersSetInstanceTemplateRequest
    , instanceGroupManagersSetInstanceTemplateRequest
    , igmsitrInstanceTemplate

    -- ** OperationWarningsItemCode
    , OperationWarningsItemCode (..)

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

    -- ** OperationErrorErrorsItem
    , OperationErrorErrorsItem
    , operationErrorErrorsItem
    , oeeiLocation
    , oeeiCode
    , oeeiMessage

    -- ** OperationWarningsItem
    , OperationWarningsItem
    , operationWarningsItem
    , owiData
    , owiCode
    , owiMessage
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

-- | Represents the entirety of the methods and resources available for the Google Compute Engine Instance Group Manager API service.
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
