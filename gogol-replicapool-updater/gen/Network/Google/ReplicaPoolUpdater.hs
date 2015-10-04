{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ReplicaPoolUpdater
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | The Google Compute Engine Instance Group Updater API provides services
-- for updating groups of Compute Engine Instances.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference>
module Network.Google.ReplicaPoolUpdater
    (
    -- * API
      ReplicaPoolUpdaterAPI
    , replicaPoolUpdaterAPI
    , replicaPoolUpdaterURL

    -- * Service Methods

    -- * REST Resources

    -- ** ReplicapoolupdaterRollingUpdatesCancel
    , module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Cancel

    -- ** ReplicapoolupdaterRollingUpdatesGet
    , module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Get

    -- ** ReplicapoolupdaterRollingUpdatesInsert
    , module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Insert

    -- ** ReplicapoolupdaterRollingUpdatesList
    , module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.List

    -- ** ReplicapoolupdaterRollingUpdatesListInstanceUpdates
    , module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.ListInstanceUpdates

    -- ** ReplicapoolupdaterRollingUpdatesPause
    , module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Pause

    -- ** ReplicapoolupdaterRollingUpdatesResume
    , module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Resume

    -- ** ReplicapoolupdaterRollingUpdatesRollback
    , module Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Rollback

    -- ** ReplicapoolupdaterZoneOperationsGet
    , module Network.Google.Resource.ReplicaPoolUpdater.ZoneOperations.Get

    -- ** ReplicapoolupdaterZoneOperationsList
    , module Network.Google.Resource.ReplicaPoolUpdater.ZoneOperations.List

    -- * Types

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

    -- ** Error'
    , Error'
    , error'
    , eErrors

    -- ** InstanceUpdateError
    , InstanceUpdateError
    , instanceUpdateError
    , iueErrors

    -- ** InstanceUpdate
    , InstanceUpdate
    , instanceUpdate
    , iuStatus
    , iuError
    , iuInstance

    -- ** WarningsItem
    , WarningsItem
    , warningsItem
    , wiData
    , wiCode
    , wiMessage

    -- ** DataItem
    , DataItem
    , dataItem
    , diValue
    , diKey

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

    -- ** Policy
    , Policy
    , policy
    , pMinInstanceUpdateTimeSec
    , pInstanceStartupTimeoutSec
    , pMaxNumFailedInstances
    , pAutoPauseAfterInstances
    , pMaxNumConcurrentInstances

    -- ** OperationErrorErrorsItem
    , OperationErrorErrorsItem
    , operationErrorErrorsItem
    , oeeiLocation
    , oeeiCode
    , oeeiMessage

    -- ** RollingUpdateList
    , RollingUpdateList
    , rollingUpdateList
    , rulNextPageToken
    , rulKind
    , rulItems
    , rulSelfLink

    -- ** ErrorsItem
    , ErrorsItem
    , errorsItem
    , eiLocation
    , eiCode
    , eiMessage

    -- ** InstanceUpdateErrorErrorsItem
    , InstanceUpdateErrorErrorsItem
    , instanceUpdateErrorErrorsItem
    , iueeiLocation
    , iueeiCode
    , iueeiMessage
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPoolUpdater.Types
import           Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Cancel
import           Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Get
import           Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Insert
import           Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.List
import           Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.ListInstanceUpdates
import           Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Pause
import           Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Resume
import           Network.Google.Resource.ReplicaPoolUpdater.RollingUpdates.Rollback
import           Network.Google.Resource.ReplicaPoolUpdater.ZoneOperations.Get
import           Network.Google.Resource.ReplicaPoolUpdater.ZoneOperations.List

{- $resources
TODO
-}

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

replicaPoolUpdaterAPI :: Proxy ReplicaPoolUpdaterAPI
replicaPoolUpdaterAPI = Proxy
