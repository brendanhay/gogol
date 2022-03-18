{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ReplicaPoolUpdater.RollingUpdates.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about an update.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @replicapoolupdater.rollingUpdates.get@.
module Gogol.ReplicaPoolUpdater.RollingUpdates.Get
    (
    -- * Resource
      ReplicaPoolUpdaterRollingUpdatesGetResource

    -- ** Constructing a Request
    , newReplicaPoolUpdaterRollingUpdatesGet
    , ReplicaPoolUpdaterRollingUpdatesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ReplicaPoolUpdater.Types

-- | A resource alias for @replicapoolupdater.rollingUpdates.get@ method which the
-- 'ReplicaPoolUpdaterRollingUpdatesGet' request conforms to.
type ReplicaPoolUpdaterRollingUpdatesGetResource =
     "replicapoolupdater" Core.:>
       "v1beta1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "zones" Core.:>
               Core.Capture "zone" Core.Text Core.:>
                 "rollingUpdates" Core.:>
                   Core.Capture "rollingUpdate" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] RollingUpdate

-- | Returns information about an update.
--
-- /See:/ 'newReplicaPoolUpdaterRollingUpdatesGet' smart constructor.
data ReplicaPoolUpdaterRollingUpdatesGet = ReplicaPoolUpdaterRollingUpdatesGet
    {
      -- | The Google Developers Console project name.
      project :: Core.Text
      -- | The name of the update.
    , rollingUpdate :: Core.Text
      -- | The name of the zone in which the update\'s target resides.
    , zone :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaPoolUpdaterRollingUpdatesGet' with the minimum fields required to make a request.
newReplicaPoolUpdaterRollingUpdatesGet 
    ::  Core.Text
       -- ^  The Google Developers Console project name. See 'project'.
    -> Core.Text
       -- ^  The name of the update. See 'rollingUpdate'.
    -> Core.Text
       -- ^  The name of the zone in which the update\'s target resides. See 'zone'.
    -> ReplicaPoolUpdaterRollingUpdatesGet
newReplicaPoolUpdaterRollingUpdatesGet project rollingUpdate zone =
  ReplicaPoolUpdaterRollingUpdatesGet
    {project = project, rollingUpdate = rollingUpdate, zone = zone}

instance Core.GoogleRequest
           ReplicaPoolUpdaterRollingUpdatesGet
         where
        type Rs ReplicaPoolUpdaterRollingUpdatesGet =
             RollingUpdate
        type Scopes ReplicaPoolUpdaterRollingUpdatesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/replicapool",
               "https://www.googleapis.com/auth/replicapool.readonly"]
        requestClient ReplicaPoolUpdaterRollingUpdatesGet{..}
          = go project zone rollingUpdate
              (Core.Just Core.AltJSON)
              replicaPoolUpdaterService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ReplicaPoolUpdaterRollingUpdatesGetResource)
                      Core.mempty

