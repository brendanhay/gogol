{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.InstanceGroupsUpdater
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
module Network.Google.InstanceGroupsUpdater
    (
    -- * API
      InstanceGroupsUpdaterAPI
    , instanceGroupsUpdaterAPI
    , instanceGroupsUpdaterURL

    -- * Service Methods

    -- * REST Resources

    -- ** ReplicapoolupdaterRollingUpdatesCancel
    , module Replicapoolupdater.RollingUpdates.Cancel

    -- ** ReplicapoolupdaterRollingUpdatesGet
    , module Replicapoolupdater.RollingUpdates.Get

    -- ** ReplicapoolupdaterRollingUpdatesInsert
    , module Replicapoolupdater.RollingUpdates.Insert

    -- ** ReplicapoolupdaterRollingUpdatesList
    , module Replicapoolupdater.RollingUpdates.List

    -- ** ReplicapoolupdaterRollingUpdatesListInstanceUpdates
    , module Replicapoolupdater.RollingUpdates.ListInstanceUpdates

    -- ** ReplicapoolupdaterRollingUpdatesPause
    , module Replicapoolupdater.RollingUpdates.Pause

    -- ** ReplicapoolupdaterRollingUpdatesResume
    , module Replicapoolupdater.RollingUpdates.Resume

    -- ** ReplicapoolupdaterRollingUpdatesRollback
    , module Replicapoolupdater.RollingUpdates.Rollback

    -- ** ReplicapoolupdaterZoneOperationsGet
    , module Replicapoolupdater.ZoneOperations.Get

    -- ** ReplicapoolupdaterZoneOperationsList
    , module Replicapoolupdater.ZoneOperations.List

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
    ) where

import           Network.Google.InstanceGroupsUpdater.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Replicapoolupdater.RollingUpdates.Cancel
import           Network.Google.Resource.Replicapoolupdater.RollingUpdates.Get
import           Network.Google.Resource.Replicapoolupdater.RollingUpdates.Insert
import           Network.Google.Resource.Replicapoolupdater.RollingUpdates.List
import           Network.Google.Resource.Replicapoolupdater.RollingUpdates.ListInstanceUpdates
import           Network.Google.Resource.Replicapoolupdater.RollingUpdates.Pause
import           Network.Google.Resource.Replicapoolupdater.RollingUpdates.Resume
import           Network.Google.Resource.Replicapoolupdater.RollingUpdates.Rollback
import           Network.Google.Resource.Replicapoolupdater.ZoneOperations.Get
import           Network.Google.Resource.Replicapoolupdater.ZoneOperations.List

{- $resources
TODO
-}

type InstanceGroupsUpdaterAPI =
     RollingUpdates :<|> ZoneOperations

instanceGroupsUpdaterAPI :: Proxy InstanceGroupsUpdaterAPI
instanceGroupsUpdaterAPI = Proxy
