{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.InstanceGroups.Updater
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
module Network.Google.InstanceGroups.Updater
    (
    -- * REST Resources

    -- ** Google Compute Engine Instance Group Updater API
      InstanceGroupsUpdater
    , instanceGroupsUpdater
    , instanceGroupsUpdaterURL

    -- ** replicapoolupdater.rollingUpdates.cancel
    , module Network.Google.API.Replicapoolupdater.RollingUpdates.Cancel

    -- ** replicapoolupdater.rollingUpdates.get
    , module Network.Google.API.Replicapoolupdater.RollingUpdates.Get

    -- ** replicapoolupdater.rollingUpdates.insert
    , module Network.Google.API.Replicapoolupdater.RollingUpdates.Insert

    -- ** replicapoolupdater.rollingUpdates.list
    , module Network.Google.API.Replicapoolupdater.RollingUpdates.List

    -- ** replicapoolupdater.rollingUpdates.listInstanceUpdates
    , module Network.Google.API.Replicapoolupdater.RollingUpdates.ListInstanceUpdates

    -- ** replicapoolupdater.rollingUpdates.pause
    , module Network.Google.API.Replicapoolupdater.RollingUpdates.Pause

    -- ** replicapoolupdater.rollingUpdates.resume
    , module Network.Google.API.Replicapoolupdater.RollingUpdates.Resume

    -- ** replicapoolupdater.rollingUpdates.rollback
    , module Network.Google.API.Replicapoolupdater.RollingUpdates.Rollback

    -- ** replicapoolupdater.zoneOperations.get
    , module Network.Google.API.Replicapoolupdater.ZoneOperations.Get

    -- ** replicapoolupdater.zoneOperations.list
    , module Network.Google.API.Replicapoolupdater.ZoneOperations.List

    -- * Types

    -- ** OperationItemDataItemWarnings
    , OperationItemDataItemWarnings
    , operationItemDataItemWarnings
    , oidiwValue
    , oidiwKey

    -- ** InstanceUpdateList
    , InstanceUpdateList
    , instanceUpdateList
    , iulNextPageToken
    , iulKind
    , iulItems
    , iulSelfLink

    -- ** OperationItemWarnings
    , OperationItemWarnings
    , operationItemWarnings
    , oiwData
    , oiwCode
    , oiwMessage

    -- ** Alt
    , Alt (..)

    -- ** InstanceUpdateItemErrorsError
    , InstanceUpdateItemErrorsError
    , instanceUpdateItemErrorsError
    , iuieeLocation
    , iuieeCode
    , iuieeMessage

    -- ** OperationItemErrorsError
    , OperationItemErrorsError
    , operationItemErrorsError
    , oieeLocation
    , oieeCode
    , oieeMessage

    -- ** InstanceUpdateError
    , InstanceUpdateError
    , instanceUpdateError
    , iueErrors

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

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

    -- ** RollingUpdatePolicy
    , RollingUpdatePolicy
    , rollingUpdatePolicy
    , rupMinInstanceUpdateTimeSec
    , rupInstanceStartupTimeoutSec
    , rupMaxNumFailedInstances
    , rupAutoPauseAfterInstances
    , rupMaxNumConcurrentInstances

    -- ** RollingUpdateError
    , RollingUpdateError
    , rollingUpdateError
    , rueErrors

    -- ** OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

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

    -- ** InstanceUpdate
    , InstanceUpdate
    , instanceUpdate
    , iuStatus
    , iuError
    , iuInstance

    -- ** RollingUpdateList
    , RollingUpdateList
    , rollingUpdateList
    , rulNextPageToken
    , rulKind
    , rulItems
    , rulSelfLink

    -- ** RollingUpdateItemErrorsError
    , RollingUpdateItemErrorsError
    , rollingUpdateItemErrorsError
    , ruieeLocation
    , ruieeCode
    , ruieeMessage
    ) where

import           Network.Google.API.Replicapoolupdater.RollingUpdates.Cancel
import           Network.Google.API.Replicapoolupdater.RollingUpdates.Get
import           Network.Google.API.Replicapoolupdater.RollingUpdates.Insert
import           Network.Google.API.Replicapoolupdater.RollingUpdates.List
import           Network.Google.API.Replicapoolupdater.RollingUpdates.ListInstanceUpdates
import           Network.Google.API.Replicapoolupdater.RollingUpdates.Pause
import           Network.Google.API.Replicapoolupdater.RollingUpdates.Resume
import           Network.Google.API.Replicapoolupdater.RollingUpdates.Rollback
import           Network.Google.API.Replicapoolupdater.ZoneOperations.Get
import           Network.Google.API.Replicapoolupdater.ZoneOperations.List
import           Network.Google.InstanceGroups.Updater.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type InstanceGroupsUpdater =
     RollingUpdatesPauseAPI :<|> RollingUpdatesRollbackAPI
       :<|> RollingUpdatesCancelAPI
       :<|> RollingUpdatesListInstanceUpdatesAPI
       :<|> ZoneOperationsGetAPI
       :<|> RollingUpdatesGetAPI
       :<|> ZoneOperationsListAPI
       :<|> RollingUpdatesInsertAPI
       :<|> RollingUpdatesListAPI
       :<|> RollingUpdatesResumeAPI

instanceGroupsUpdater :: Proxy InstanceGroupsUpdater
instanceGroupsUpdater = Proxy
