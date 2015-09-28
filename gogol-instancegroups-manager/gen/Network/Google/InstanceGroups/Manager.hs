{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.InstanceGroups.Manager
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
module Network.Google.InstanceGroups.Manager
    (
    -- * REST Resources

    -- ** Google Compute Engine Instance Group Manager API
      InstanceGroupsManager
    , instanceGroupsManager
    , instanceGroupsManagerURL

    -- ** replicapool.instanceGroupManagers.abandonInstances
    , module Network.Google.API.Replicapool.InstanceGroupManagers.AbandonInstances

    -- ** replicapool.instanceGroupManagers.delete
    , module Network.Google.API.Replicapool.InstanceGroupManagers.Delete

    -- ** replicapool.instanceGroupManagers.deleteInstances
    , module Network.Google.API.Replicapool.InstanceGroupManagers.DeleteInstances

    -- ** replicapool.instanceGroupManagers.get
    , module Network.Google.API.Replicapool.InstanceGroupManagers.Get

    -- ** replicapool.instanceGroupManagers.insert
    , module Network.Google.API.Replicapool.InstanceGroupManagers.Insert

    -- ** replicapool.instanceGroupManagers.list
    , module Network.Google.API.Replicapool.InstanceGroupManagers.List

    -- ** replicapool.instanceGroupManagers.recreateInstances
    , module Network.Google.API.Replicapool.InstanceGroupManagers.RecreateInstances

    -- ** replicapool.instanceGroupManagers.resize
    , module Network.Google.API.Replicapool.InstanceGroupManagers.Resize

    -- ** replicapool.instanceGroupManagers.setInstanceTemplate
    , module Network.Google.API.Replicapool.InstanceGroupManagers.SetInstanceTemplate

    -- ** replicapool.instanceGroupManagers.setTargetPools
    , module Network.Google.API.Replicapool.InstanceGroupManagers.SetTargetPools

    -- ** replicapool.zoneOperations.get
    , module Network.Google.API.Replicapool.ZoneOperations.Get

    -- ** replicapool.zoneOperations.list
    , module Network.Google.API.Replicapool.ZoneOperations.List

    -- * Types

    -- ** InstanceGroupManagersDeleteInstancesRequest
    , InstanceGroupManagersDeleteInstancesRequest
    , instanceGroupManagersDeleteInstancesRequest
    , igmdirInstances

    -- ** OperationItemDataItemWarnings
    , OperationItemDataItemWarnings
    , operationItemDataItemWarnings
    , oidiwValue
    , oidiwKey

    -- ** OperationCodeItemWarnings
    , OperationCodeItemWarnings (..)

    -- ** OperationItemWarnings
    , OperationItemWarnings
    , operationItemWarnings
    , oiwData
    , oiwCode
    , oiwMessage

    -- ** Alt
    , Alt (..)

    -- ** OperationItemErrorsError
    , OperationItemErrorsError
    , operationItemErrorsError
    , oieeLocation
    , oieeCode
    , oieeMessage

    -- ** InstanceGroupManagersSetTargetPoolsRequest
    , InstanceGroupManagersSetTargetPoolsRequest
    , instanceGroupManagersSetTargetPoolsRequest
    , igmstprFingerprint
    , igmstprTargetPools

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

    -- ** InstanceGroupManagersRecreateInstancesRequest
    , InstanceGroupManagersRecreateInstancesRequest
    , instanceGroupManagersRecreateInstancesRequest
    , igmrirInstances

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

    -- ** OperationStatus
    , OperationStatus (..)

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

    -- ** ReplicaPoolAutoHealingPolicyActionType
    , ReplicaPoolAutoHealingPolicyActionType (..)
    ) where

import           Network.Google.API.Replicapool.InstanceGroupManagers.AbandonInstances
import           Network.Google.API.Replicapool.InstanceGroupManagers.Delete
import           Network.Google.API.Replicapool.InstanceGroupManagers.DeleteInstances
import           Network.Google.API.Replicapool.InstanceGroupManagers.Get
import           Network.Google.API.Replicapool.InstanceGroupManagers.Insert
import           Network.Google.API.Replicapool.InstanceGroupManagers.List
import           Network.Google.API.Replicapool.InstanceGroupManagers.RecreateInstances
import           Network.Google.API.Replicapool.InstanceGroupManagers.Resize
import           Network.Google.API.Replicapool.InstanceGroupManagers.SetInstanceTemplate
import           Network.Google.API.Replicapool.InstanceGroupManagers.SetTargetPools
import           Network.Google.API.Replicapool.ZoneOperations.Get
import           Network.Google.API.Replicapool.ZoneOperations.List
import           Network.Google.InstanceGroups.Manager.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type InstanceGroupsManager =
     InstanceGroupManagersAbandonInstancesAPI :<|>
       InstanceGroupManagersSetInstanceTemplateAPI
       :<|> InstanceGroupManagersListAPI
       :<|> InstanceGroupManagersGetAPI
       :<|> InstanceGroupManagersSetTargetPoolsAPI
       :<|> ZoneOperationsGetAPI
       :<|> InstanceGroupManagersInsertAPI
       :<|> InstanceGroupManagersDeleteInstancesAPI
       :<|> ZoneOperationsListAPI
       :<|> InstanceGroupManagersRecreateInstancesAPI
       :<|> InstanceGroupManagersDeleteAPI
       :<|> InstanceGroupManagersResizeAPI

instanceGroupsManager :: Proxy InstanceGroupsManager
instanceGroupsManager = Proxy
