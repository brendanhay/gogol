{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ComputeEngineInstanceGroupManager
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
module Network.Google.ComputeEngineInstanceGroupManager
    (
    -- * Resources
      ComputeEngineInstanceGroupManager
    , ZoneOperationsAPI
    , ZoneOperationsList
    , ZoneOperationsGet
    , InstanceGroupManagersAPI
    , InstanceGroupManagersSetTargetPools
    , InstanceGroupManagersInsert
    , InstanceGroupManagersResize
    , InstanceGroupManagersList
    , InstanceGroupManagersAbandonInstances
    , InstanceGroupManagersSetInstanceTemplate
    , InstanceGroupManagersGet
    , InstanceGroupManagersDeleteInstances
    , InstanceGroupManagersDelete
    , InstanceGroupManagersRecreateInstances

    -- * Types

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

    -- ** InstanceGroupManagerList
    , InstanceGroupManagerList
    , instanceGroupManagerList
    , igmlNextPageToken
    , igmlKind
    , igmlItems
    , igmlSelfLink
    , igmlId

    -- ** InstanceGroupManagersAbandonInstancesRequest
    , InstanceGroupManagersAbandonInstancesRequest
    , instanceGroupManagersAbandonInstancesRequest
    , igmairInstances

    -- ** InstanceGroupManagersDeleteInstancesRequest
    , InstanceGroupManagersDeleteInstancesRequest
    , instanceGroupManagersDeleteInstancesRequest
    , igmdirInstances

    -- ** InstanceGroupManagersRecreateInstancesRequest
    , InstanceGroupManagersRecreateInstancesRequest
    , instanceGroupManagersRecreateInstancesRequest
    , igmrirInstances

    -- ** InstanceGroupManagersSetInstanceTemplateRequest
    , InstanceGroupManagersSetInstanceTemplateRequest
    , instanceGroupManagersSetInstanceTemplateRequest
    , igmsitrInstanceTemplate

    -- ** InstanceGroupManagersSetTargetPoolsRequest
    , InstanceGroupManagersSetTargetPoolsRequest
    , instanceGroupManagersSetTargetPoolsRequest
    , igmstprFingerprint
    , igmstprTargetPools

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

    -- ** OperationCodeItemWarnings
    , OperationCodeItemWarnings (..)

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

    -- ** OperationStatus
    , OperationStatus (..)

    -- ** ReplicaPoolAutoHealingPolicy
    , ReplicaPoolAutoHealingPolicy
    , replicaPoolAutoHealingPolicy
    , rpahpHealthCheck
    , rpahpActionType

    -- ** ReplicaPoolAutoHealingPolicyActionType
    , ReplicaPoolAutoHealingPolicyActionType (..)
    ) where

import           Network.Google.ComputeEngineInstanceGroupManager.Types

{- $resources
TODO
-}

type ComputeEngineInstanceGroupManager =
     InstanceGroupManagersAPI :<|> ZoneOperationsAPI

type ZoneOperationsAPI =
     ZoneOperationsGet :<|> ZoneOperationsList

-- | Retrieves the list of operation resources contained within the specified
-- zone.
type ZoneOperationsList =
     "replicapool" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "operations"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "filter" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves the specified zone-specific operation resource.
type ZoneOperationsGet =
     "replicapool" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "operations"
       :> Capture "operation" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type InstanceGroupManagersAPI =
     InstanceGroupManagersInsert :<|>
       InstanceGroupManagersResize :<|>
         InstanceGroupManagersList :<|>
           InstanceGroupManagersAbandonInstances :<|>
             InstanceGroupManagersSetInstanceTemplate :<|>
               InstanceGroupManagersGet :<|>
                 InstanceGroupManagersDeleteInstances :<|>
                   InstanceGroupManagersDelete :<|>
                     InstanceGroupManagersRecreateInstances :<|>
                       InstanceGroupManagersSetTargetPools

-- | Modifies the target pools to which all new instances in this group are
-- assigned. Existing instances in the group are not affected.
type InstanceGroupManagersSetTargetPools =
     "replicapool" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "instanceGroupManagers"
       :> Capture "instanceGroupManager" Text
       :> "setTargetPools"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Creates an instance group manager, as well as the instance group and the
-- specified number of instances.
type InstanceGroupManagersInsert =
     "replicapool" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "instanceGroupManagers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "size" Int32
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Resizes the managed instance group up or down. If resized up, new
-- instances are created using the current instance template. If resized
-- down, instances are removed in the order outlined in Resizing a managed
-- instance group.
type InstanceGroupManagersResize =
     "replicapool" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "instanceGroupManagers"
       :> Capture "instanceGroupManager" Text
       :> "resize"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "size" Int32
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves the list of Instance Group Manager resources contained within
-- the specified zone.
type InstanceGroupManagersList =
     "replicapool" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "instanceGroupManagers"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "filter" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Removes the specified instances from the managed instance group, and
-- from any target pools of which they were members, without deleting the
-- instances.
type InstanceGroupManagersAbandonInstances =
     "replicapool" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "instanceGroupManagers"
       :> Capture "instanceGroupManager" Text
       :> "abandonInstances"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Sets the instance template to use when creating new instances in this
-- group. Existing instances are not affected.
type InstanceGroupManagersSetInstanceTemplate =
     "replicapool" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "instanceGroupManagers"
       :> Capture "instanceGroupManager" Text
       :> "setInstanceTemplate"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Returns the specified Instance Group Manager resource.
type InstanceGroupManagersGet =
     "replicapool" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "instanceGroupManagers"
       :> Capture "instanceGroupManager" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes the specified instances. The instances are deleted, then removed
-- from the instance group and any target pools of which they were a
-- member. The targetSize of the instance group manager is reduced by the
-- number of instances deleted.
type InstanceGroupManagersDeleteInstances =
     "replicapool" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "instanceGroupManagers"
       :> Capture "instanceGroupManager" Text
       :> "deleteInstances"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes the instance group manager and all instances contained within.
-- If you\'d like to delete the manager without deleting the instances, you
-- must first abandon the instances to remove them from the group.
type InstanceGroupManagersDelete =
     "replicapool" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "instanceGroupManagers"
       :> Capture "instanceGroupManager" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Recreates the specified instances. The instances are deleted, then
-- recreated using the instance group manager\'s current instance template.
type InstanceGroupManagersRecreateInstances =
     "replicapool" :> "v1beta2" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "instanceGroupManagers"
       :> Capture "instanceGroupManager" Text
       :> "recreateInstances"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
