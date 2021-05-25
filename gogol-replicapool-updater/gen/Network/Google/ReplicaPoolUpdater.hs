{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ReplicaPoolUpdater
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- [Deprecated. Please use compute.instanceGroupManagers.update method.
-- replicapoolupdater API will be disabled after December 30th, 2016]
-- Updates groups of Compute Engine instances.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference>
module Network.Google.ReplicaPoolUpdater
    (
    -- * Service Configuration
      replicaPoolUpdaterService

    -- * OAuth Scopes
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope
    , replicapoolScope
    , replicapoolReadOnlyScope

    -- * API Declaration
    , ReplicaPoolUpdaterAPI

    -- * Resources

    -- ** replicapoolupdater.rollingUpdates.cancel
    , module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Cancel

    -- ** replicapoolupdater.rollingUpdates.get
    , module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Get

    -- ** replicapoolupdater.rollingUpdates.insert
    , module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Insert

    -- ** replicapoolupdater.rollingUpdates.list
    , module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.List

    -- ** replicapoolupdater.rollingUpdates.listInstanceUpdates
    , module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.ListInstanceUpdates

    -- ** replicapoolupdater.rollingUpdates.pause
    , module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Pause

    -- ** replicapoolupdater.rollingUpdates.resume
    , module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Resume

    -- ** replicapoolupdater.rollingUpdates.rollback
    , module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Rollback

    -- ** replicapoolupdater.zoneOperations.get
    , module Network.Google.Resource.ReplicaPoolUpdater.ZoneOperations.Get

    -- ** replicapoolupdater.zoneOperations.list
    , module Network.Google.Resource.ReplicaPoolUpdater.ZoneOperations.List

    -- * Types

    -- ** OperationWarningsItemDataItem
    , OperationWarningsItemDataItem
    , operationWarningsItemDataItem
    , owidiValue
    , owidiKey

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

    -- ** OperationList
    , OperationList
    , operationList
    , olNextPageToken
    , olKind
    , olItems
    , olSelfLink
    , olId

    -- ** InstanceUpdateList
    , InstanceUpdateList
    , instanceUpdateList
    , iulNextPageToken
    , iulKind
    , iulItems
    , iulSelfLink

    -- ** RollingUpdateErrorErrorsItem
    , RollingUpdateErrorErrorsItem
    , rollingUpdateErrorErrorsItem
    , rueeiLocation
    , rueeiCode
    , rueeiMessage

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

    -- ** RollingUpdatePolicy
    , RollingUpdatePolicy
    , rollingUpdatePolicy
    , rupMinInstanceUpdateTimeSec
    , rupInstanceStartupTimeoutSec
    , rupMaxNumFailedInstances
    , rupAutoPauseAfterInstances
    , rupMaxNumConcurrentInstances

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

    -- ** OperationErrorErrorsItem
    , OperationErrorErrorsItem
    , operationErrorErrorsItem
    , oeeiLocation
    , oeeiCode
    , oeeiMessage

    -- ** InstanceUpdateErrorErrorsItem
    , InstanceUpdateErrorErrorsItem
    , instanceUpdateErrorErrorsItem
    , iueeiLocation
    , iueeiCode
    , iueeiMessage

    -- ** RollingUpdateList
    , RollingUpdateList
    , rollingUpdateList
    , rulNextPageToken
    , rulKind
    , rulItems
    , rulSelfLink

    -- ** OperationWarningsItem
    , OperationWarningsItem
    , operationWarningsItem
    , owiData
    , owiCode
    , owiMessage
    ) where

import Network.Google.Prelude
import Network.Google.ReplicaPoolUpdater.Types
import Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Cancel
import Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Get
import Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Insert
import Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.List
import Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.ListInstanceUpdates
import Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Pause
import Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Resume
import Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Rollback
import Network.Google.Resource.ReplicaPoolUpdater.ZoneOperations.Get
import Network.Google.Resource.ReplicaPoolUpdater.ZoneOperations.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Compute Engine Instance Group Updater API service.
type ReplicaPoolUpdaterAPI =
     RollingUpdatesInsertResource :<|>
       RollingUpdatesListResource
       :<|> RollingUpdatesGetResource
       :<|> RollingUpdatesRollbackResource
       :<|> RollingUpdatesPauseResource
       :<|> RollingUpdatesCancelResource
       :<|> RollingUpdatesListInstanceUpdatesResource
       :<|> RollingUpdatesResumeResource
       :<|> ZoneOperationsListResource
       :<|> ZoneOperationsGetResource
