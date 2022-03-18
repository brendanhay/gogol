{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.ReplicaPoolUpdater
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- [Deprecated. Please use compute.instanceGroupManagers.update method. replicapoolupdater API will be disabled after December 30th, 2016] Updates groups of Compute Engine instances.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference>
module Network.Google.ReplicaPoolUpdater
  ( -- * Configuration
    replicaPoolUpdaterService,

    -- * OAuth Scopes
    cloudPlatformScope,
    cloudPlatformReadOnlyScope,
    replicapoolScope,
    replicapoolReadOnlyScope,

    -- * Resources

    -- ** replicapoolupdater.rollingUpdates.cancel
    ReplicaPoolUpdaterRollingUpdatesCancelResource,
    newReplicaPoolUpdaterRollingUpdatesCancel,
    ReplicaPoolUpdaterRollingUpdatesCancel,

    -- ** replicapoolupdater.rollingUpdates.get
    ReplicaPoolUpdaterRollingUpdatesGetResource,
    newReplicaPoolUpdaterRollingUpdatesGet,
    ReplicaPoolUpdaterRollingUpdatesGet,

    -- ** replicapoolupdater.rollingUpdates.insert
    ReplicaPoolUpdaterRollingUpdatesInsertResource,
    newReplicaPoolUpdaterRollingUpdatesInsert,
    ReplicaPoolUpdaterRollingUpdatesInsert,

    -- ** replicapoolupdater.rollingUpdates.list
    ReplicaPoolUpdaterRollingUpdatesListResource,
    newReplicaPoolUpdaterRollingUpdatesList,
    ReplicaPoolUpdaterRollingUpdatesList,

    -- ** replicapoolupdater.rollingUpdates.listInstanceUpdates
    ReplicaPoolUpdaterRollingUpdatesListInstanceUpdatesResource,
    newReplicaPoolUpdaterRollingUpdatesListInstanceUpdates,
    ReplicaPoolUpdaterRollingUpdatesListInstanceUpdates,

    -- ** replicapoolupdater.rollingUpdates.pause
    ReplicaPoolUpdaterRollingUpdatesPauseResource,
    newReplicaPoolUpdaterRollingUpdatesPause,
    ReplicaPoolUpdaterRollingUpdatesPause,

    -- ** replicapoolupdater.rollingUpdates.resume
    ReplicaPoolUpdaterRollingUpdatesResumeResource,
    newReplicaPoolUpdaterRollingUpdatesResume,
    ReplicaPoolUpdaterRollingUpdatesResume,

    -- ** replicapoolupdater.rollingUpdates.rollback
    ReplicaPoolUpdaterRollingUpdatesRollbackResource,
    newReplicaPoolUpdaterRollingUpdatesRollback,
    ReplicaPoolUpdaterRollingUpdatesRollback,

    -- ** replicapoolupdater.zoneOperations.get
    ReplicaPoolUpdaterZoneOperationsGetResource,
    newReplicaPoolUpdaterZoneOperationsGet,
    ReplicaPoolUpdaterZoneOperationsGet,

    -- ** replicapoolupdater.zoneOperations.list
    ReplicaPoolUpdaterZoneOperationsListResource,
    newReplicaPoolUpdaterZoneOperationsList,
    ReplicaPoolUpdaterZoneOperationsList,

    -- * Types

    -- ** InstanceUpdate
    InstanceUpdate (..),
    newInstanceUpdate,

    -- ** InstanceUpdate_Error
    InstanceUpdate_Error (..),
    newInstanceUpdate_Error,

    -- ** InstanceUpdate_Error_ErrorsItem
    InstanceUpdate_Error_ErrorsItem (..),
    newInstanceUpdate_Error_ErrorsItem,

    -- ** InstanceUpdateList
    InstanceUpdateList (..),
    newInstanceUpdateList,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Error
    Operation_Error (..),
    newOperation_Error,

    -- ** Operation_Error_ErrorsItem
    Operation_Error_ErrorsItem (..),
    newOperation_Error_ErrorsItem,

    -- ** Operation_WarningsItem
    Operation_WarningsItem (..),
    newOperation_WarningsItem,

    -- ** Operation_WarningsItem_DataItem
    Operation_WarningsItem_DataItem (..),
    newOperation_WarningsItem_DataItem,

    -- ** OperationList
    OperationList (..),
    newOperationList,

    -- ** RollingUpdate
    RollingUpdate (..),
    newRollingUpdate,

    -- ** RollingUpdate_Error
    RollingUpdate_Error (..),
    newRollingUpdate_Error,

    -- ** RollingUpdate_Error_ErrorsItem
    RollingUpdate_Error_ErrorsItem (..),
    newRollingUpdate_Error_ErrorsItem,

    -- ** RollingUpdate_Policy
    RollingUpdate_Policy (..),
    newRollingUpdate_Policy,

    -- ** RollingUpdateList
    RollingUpdateList (..),
    newRollingUpdateList,
  )
where

import Network.Google.ReplicaPoolUpdater.RollingUpdates.Cancel
import Network.Google.ReplicaPoolUpdater.RollingUpdates.Get
import Network.Google.ReplicaPoolUpdater.RollingUpdates.Insert
import Network.Google.ReplicaPoolUpdater.RollingUpdates.List
import Network.Google.ReplicaPoolUpdater.RollingUpdates.ListInstanceUpdates
import Network.Google.ReplicaPoolUpdater.RollingUpdates.Pause
import Network.Google.ReplicaPoolUpdater.RollingUpdates.Resume
import Network.Google.ReplicaPoolUpdater.RollingUpdates.Rollback
import Network.Google.ReplicaPoolUpdater.Types
import Network.Google.ReplicaPoolUpdater.ZoneOperations.Get
import Network.Google.ReplicaPoolUpdater.ZoneOperations.List
