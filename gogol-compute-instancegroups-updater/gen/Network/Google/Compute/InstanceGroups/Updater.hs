{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Compute.InstanceGroups.Updater
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | The Google Compute Engine Instance Group Updater API provides services
-- for updating groups of Compute Engine Instances.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference>
module Network.Google.Compute.InstanceGroups.Updater
    (
    -- * Resources
      ComputeInstanceGroupsUpdater
    , RollingUpdatesAPI
    , RollingUpdatesInsert
    , RollingUpdatesList
    , RollingUpdatesGet
    , RollingUpdatesRollback
    , RollingUpdatesPause
    , RollingUpdatesCancel
    , RollingUpdatesListInstanceUpdates
    , RollingUpdatesResume
    , ZoneOperationsAPI
    , ZoneOperationsList
    , ZoneOperationsGet

    -- * Types

    -- ** InstanceUpdate
    , InstanceUpdate
    , instanceUpdate
    , iuStatus
    , iuError
    , iuInstance

    -- ** InstanceUpdateError
    , InstanceUpdateError
    , instanceUpdateError
    , iueErrors

    -- ** InstanceUpdateItemErrorsError
    , InstanceUpdateItemErrorsError
    , instanceUpdateItemErrorsError
    , iuieeLocation
    , iuieeCode
    , iuieeMessage

    -- ** InstanceUpdateList
    , InstanceUpdateList
    , instanceUpdateList
    , iulNextPageToken
    , iulKind
    , iulItems
    , iulSelfLink

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

    -- ** RollingUpdate
    , RollingUpdate
    , rollingUpdate
    , ruStatus
    , ruProgress
    , ruInstanceGroupManager
    , ruKind
    , ruError
    , ruInstanceTemplate
    , ruUser
    , ruSelfLink
    , ruStatusMessage
    , ruCreationTimestamp
    , ruId
    , ruPolicy
    , ruActionType
    , ruOldInstanceTemplate
    , ruDescription
    , ruInstanceGroup

    -- ** RollingUpdateError
    , RollingUpdateError
    , rollingUpdateError
    , rueErrors

    -- ** RollingUpdateItemErrorsError
    , RollingUpdateItemErrorsError
    , rollingUpdateItemErrorsError
    , ruieeLocation
    , ruieeCode
    , ruieeMessage

    -- ** RollingUpdateList
    , RollingUpdateList
    , rollingUpdateList
    , rulNextPageToken
    , rulKind
    , rulItems
    , rulSelfLink

    -- ** RollingUpdatePolicy
    , RollingUpdatePolicy
    , rollingUpdatePolicy
    , rupMinInstanceUpdateTimeSec
    , rupInstanceStartupTimeoutSec
    , rupMaxNumFailedInstances
    , rupAutoPauseAfterInstances
    , rupMaxNumConcurrentInstances
    ) where

import           Network.Google.Compute.InstanceGroups.Updater.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type ComputeInstanceGroupsUpdater =
     RollingUpdatesAPI :<|> ZoneOperationsAPI

type RollingUpdatesAPI =
     RollingUpdatesInsert :<|> RollingUpdatesList :<|>
       RollingUpdatesGet
       :<|> RollingUpdatesRollback
       :<|> RollingUpdatesPause
       :<|> RollingUpdatesCancel
       :<|> RollingUpdatesListInstanceUpdates
       :<|> RollingUpdatesResume

-- | Inserts and starts a new update.
type RollingUpdatesInsert =
     "replicapoolupdater" :> "v1beta1" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "rollingUpdates"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists recent updates for a given managed instance group, in reverse
-- chronological order and paginated format.
type RollingUpdatesList =
     "replicapoolupdater" :> "v1beta1" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "rollingUpdates"
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

-- | Returns information about an update.
type RollingUpdatesGet =
     "replicapoolupdater" :> "v1beta1" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "rollingUpdates"
       :> Capture "rollingUpdate" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Rolls back the update in state from ROLLING_FORWARD or PAUSED. Has no
-- effect if invoked when the state of the update is ROLLED_BACK.
type RollingUpdatesRollback =
     "replicapoolupdater" :> "v1beta1" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "rollingUpdates"
       :> Capture "rollingUpdate" Text
       :> "rollback"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Pauses the update in state from ROLLING_FORWARD or ROLLING_BACK. Has no
-- effect if invoked when the state of the update is PAUSED.
type RollingUpdatesPause =
     "replicapoolupdater" :> "v1beta1" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "rollingUpdates"
       :> Capture "rollingUpdate" Text
       :> "pause"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Cancels an update. The update must be PAUSED before it can be cancelled.
-- This has no effect if the update is already CANCELLED.
type RollingUpdatesCancel =
     "replicapoolupdater" :> "v1beta1" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "rollingUpdates"
       :> Capture "rollingUpdate" Text
       :> "cancel"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists the current status for each instance within a given update.
type RollingUpdatesListInstanceUpdates =
     "replicapoolupdater" :> "v1beta1" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "rollingUpdates"
       :> Capture "rollingUpdate" Text
       :> "instanceUpdates"
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

-- | Continues an update in PAUSED state. Has no effect if invoked when the
-- state of the update is ROLLED_OUT.
type RollingUpdatesResume =
     "replicapoolupdater" :> "v1beta1" :> "projects" :>
       Capture "project" Text
       :> "zones"
       :> Capture "zone" Text
       :> "rollingUpdates"
       :> Capture "rollingUpdate" Text
       :> "resume"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ZoneOperationsAPI =
     ZoneOperationsList :<|> ZoneOperationsGet

-- | Retrieves the list of Operation resources contained within the specified
-- zone.
type ZoneOperationsList =
     "replicapoolupdater" :> "v1beta1" :> "projects" :>
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
     "replicapoolupdater" :> "v1beta1" :> "projects" :>
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
