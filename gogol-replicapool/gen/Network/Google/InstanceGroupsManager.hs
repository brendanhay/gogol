{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.InstanceGroupsManager
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
module Network.Google.InstanceGroupsManager
    (
    -- * API
      InstanceGroupsManagerAPI
    , instanceGroupsManagerAPI
    , instanceGroupsManagerURL

    -- * Service Methods

    -- * REST Resources

    -- ** ReplicapoolInstanceGroupManagersAbandonInstances
    , module Replicapool.InstanceGroupManagers.AbandonInstances

    -- ** ReplicapoolInstanceGroupManagersDelete
    , module Replicapool.InstanceGroupManagers.Delete

    -- ** ReplicapoolInstanceGroupManagersDeleteInstances
    , module Replicapool.InstanceGroupManagers.DeleteInstances

    -- ** ReplicapoolInstanceGroupManagersGet
    , module Replicapool.InstanceGroupManagers.Get

    -- ** ReplicapoolInstanceGroupManagersInsert
    , module Replicapool.InstanceGroupManagers.Insert

    -- ** ReplicapoolInstanceGroupManagersList
    , module Replicapool.InstanceGroupManagers.List

    -- ** ReplicapoolInstanceGroupManagersRecreateInstances
    , module Replicapool.InstanceGroupManagers.RecreateInstances

    -- ** ReplicapoolInstanceGroupManagersResize
    , module Replicapool.InstanceGroupManagers.Resize

    -- ** ReplicapoolInstanceGroupManagersSetInstanceTemplate
    , module Replicapool.InstanceGroupManagers.SetInstanceTemplate

    -- ** ReplicapoolInstanceGroupManagersSetTargetPools
    , module Replicapool.InstanceGroupManagers.SetTargetPools

    -- ** ReplicapoolZoneOperationsGet
    , module Replicapool.ZoneOperations.Get

    -- ** ReplicapoolZoneOperationsList
    , module Replicapool.ZoneOperations.List

    -- * Types

    -- ** InstanceGroupManagersSetInstanceTemplateRequest
    , InstanceGroupManagersSetInstanceTemplateRequest
    , instanceGroupManagersSetInstanceTemplateRequest
    , igmsitrInstanceTemplate

    -- ** InstanceGroupManagersAbandonInstancesRequest
    , InstanceGroupManagersAbandonInstancesRequest
    , instanceGroupManagersAbandonInstancesRequest
    , igmairInstances

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

    -- ** ReplicaPoolAutoHealingPolicy
    , ReplicaPoolAutoHealingPolicy
    , replicaPoolAutoHealingPolicy
    , rpahpHealthCheck
    , rpahpActionType

    -- ** InstanceGroupManagersRecreateInstancesRequest
    , InstanceGroupManagersRecreateInstancesRequest
    , instanceGroupManagersRecreateInstancesRequest
    , igmrirInstances

    -- ** InstanceGroupManagersDeleteInstancesRequest
    , InstanceGroupManagersDeleteInstancesRequest
    , instanceGroupManagersDeleteInstancesRequest
    , igmdirInstances

    -- ** InstanceGroupManagersSetTargetPoolsRequest
    , InstanceGroupManagersSetTargetPoolsRequest
    , instanceGroupManagersSetTargetPoolsRequest
    , igmstprFingerprint
    , igmstprTargetPools
    ) where

import           Network.Google.InstanceGroupsManager.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Replicapool.InstanceGroupManagers.AbandonInstances
import           Network.Google.Resource.Replicapool.InstanceGroupManagers.Delete
import           Network.Google.Resource.Replicapool.InstanceGroupManagers.DeleteInstances
import           Network.Google.Resource.Replicapool.InstanceGroupManagers.Get
import           Network.Google.Resource.Replicapool.InstanceGroupManagers.Insert
import           Network.Google.Resource.Replicapool.InstanceGroupManagers.List
import           Network.Google.Resource.Replicapool.InstanceGroupManagers.RecreateInstances
import           Network.Google.Resource.Replicapool.InstanceGroupManagers.Resize
import           Network.Google.Resource.Replicapool.InstanceGroupManagers.SetInstanceTemplate
import           Network.Google.Resource.Replicapool.InstanceGroupManagers.SetTargetPools
import           Network.Google.Resource.Replicapool.ZoneOperations.Get
import           Network.Google.Resource.Replicapool.ZoneOperations.List

{- $resources
TODO
-}

type InstanceGroupsManagerAPI =
     ZoneOperations :<|> InstanceGroupManagers

instanceGroupsManagerAPI :: Proxy InstanceGroupsManagerAPI
instanceGroupsManagerAPI = Proxy
