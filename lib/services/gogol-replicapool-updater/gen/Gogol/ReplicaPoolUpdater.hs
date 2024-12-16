{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ReplicaPoolUpdater
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- [Deprecated. Please use compute.instanceGroupManagers.update method. replicapoolupdater API will be disabled after December 30th, 2016] Updates groups of Compute Engine instances.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference>
module Gogol.ReplicaPoolUpdater
    (
    -- * Configuration
      replicaPoolUpdaterService

    -- * OAuth Scopes
    , CloudPlatform'FullControl
    , CloudPlatform'ReadOnly
    , Replicapool'FullControl
    , Replicapool'Readonly

    -- * Resources

    -- ** replicapoolupdater.rollingUpdates.cancel
    , ReplicaPoolUpdaterRollingUpdatesCancelResource
    , ReplicaPoolUpdaterRollingUpdatesCancel (..)
    , newReplicaPoolUpdaterRollingUpdatesCancel

    -- ** replicapoolupdater.rollingUpdates.get
    , ReplicaPoolUpdaterRollingUpdatesGetResource
    , ReplicaPoolUpdaterRollingUpdatesGet (..)
    , newReplicaPoolUpdaterRollingUpdatesGet

    -- ** replicapoolupdater.rollingUpdates.insert
    , ReplicaPoolUpdaterRollingUpdatesInsertResource
    , ReplicaPoolUpdaterRollingUpdatesInsert (..)
    , newReplicaPoolUpdaterRollingUpdatesInsert

    -- ** replicapoolupdater.rollingUpdates.list
    , ReplicaPoolUpdaterRollingUpdatesListResource
    , ReplicaPoolUpdaterRollingUpdatesList (..)
    , newReplicaPoolUpdaterRollingUpdatesList

    -- ** replicapoolupdater.rollingUpdates.listInstanceUpdates
    , ReplicaPoolUpdaterRollingUpdatesListInstanceUpdatesResource
    , ReplicaPoolUpdaterRollingUpdatesListInstanceUpdates (..)
    , newReplicaPoolUpdaterRollingUpdatesListInstanceUpdates

    -- ** replicapoolupdater.rollingUpdates.pause
    , ReplicaPoolUpdaterRollingUpdatesPauseResource
    , ReplicaPoolUpdaterRollingUpdatesPause (..)
    , newReplicaPoolUpdaterRollingUpdatesPause

    -- ** replicapoolupdater.rollingUpdates.resume
    , ReplicaPoolUpdaterRollingUpdatesResumeResource
    , ReplicaPoolUpdaterRollingUpdatesResume (..)
    , newReplicaPoolUpdaterRollingUpdatesResume

    -- ** replicapoolupdater.rollingUpdates.rollback
    , ReplicaPoolUpdaterRollingUpdatesRollbackResource
    , ReplicaPoolUpdaterRollingUpdatesRollback (..)
    , newReplicaPoolUpdaterRollingUpdatesRollback

    -- ** replicapoolupdater.zoneOperations.get
    , ReplicaPoolUpdaterZoneOperationsGetResource
    , ReplicaPoolUpdaterZoneOperationsGet (..)
    , newReplicaPoolUpdaterZoneOperationsGet

    -- ** replicapoolupdater.zoneOperations.list
    , ReplicaPoolUpdaterZoneOperationsListResource
    , ReplicaPoolUpdaterZoneOperationsList (..)
    , newReplicaPoolUpdaterZoneOperationsList

    -- * Types

    -- ** InstanceUpdate
    , InstanceUpdate (..)
    , newInstanceUpdate

    -- ** InstanceUpdate_Error
    , InstanceUpdate_Error (..)
    , newInstanceUpdate_Error

    -- ** InstanceUpdate_Error_ErrorsItem
    , InstanceUpdate_Error_ErrorsItem (..)
    , newInstanceUpdate_Error_ErrorsItem

    -- ** InstanceUpdateList
    , InstanceUpdateList (..)
    , newInstanceUpdateList

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Error
    , Operation_Error (..)
    , newOperation_Error

    -- ** Operation_Error_ErrorsItem
    , Operation_Error_ErrorsItem (..)
    , newOperation_Error_ErrorsItem

    -- ** Operation_WarningsItem
    , Operation_WarningsItem (..)
    , newOperation_WarningsItem

    -- ** Operation_WarningsItem_DataItem
    , Operation_WarningsItem_DataItem (..)
    , newOperation_WarningsItem_DataItem

    -- ** OperationList
    , OperationList (..)
    , newOperationList

    -- ** RollingUpdate
    , RollingUpdate (..)
    , newRollingUpdate

    -- ** RollingUpdate_Error
    , RollingUpdate_Error (..)
    , newRollingUpdate_Error

    -- ** RollingUpdate_Error_ErrorsItem
    , RollingUpdate_Error_ErrorsItem (..)
    , newRollingUpdate_Error_ErrorsItem

    -- ** RollingUpdate_Policy
    , RollingUpdate_Policy (..)
    , newRollingUpdate_Policy

    -- ** RollingUpdateList
    , RollingUpdateList (..)
    , newRollingUpdateList
    ) where

import Gogol.ReplicaPoolUpdater.RollingUpdates.Cancel
import Gogol.ReplicaPoolUpdater.RollingUpdates.Get
import Gogol.ReplicaPoolUpdater.RollingUpdates.Insert
import Gogol.ReplicaPoolUpdater.RollingUpdates.List
import Gogol.ReplicaPoolUpdater.RollingUpdates.ListInstanceUpdates
import Gogol.ReplicaPoolUpdater.RollingUpdates.Pause
import Gogol.ReplicaPoolUpdater.RollingUpdates.Resume
import Gogol.ReplicaPoolUpdater.RollingUpdates.Rollback
import Gogol.ReplicaPoolUpdater.Types
import Gogol.ReplicaPoolUpdater.ZoneOperations.Get
import Gogol.ReplicaPoolUpdater.ZoneOperations.List
