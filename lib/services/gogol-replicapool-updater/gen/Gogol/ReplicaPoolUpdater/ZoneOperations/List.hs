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
-- Module      : Gogol.ReplicaPoolUpdater.ZoneOperations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of Operation resources contained within the specified zone.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @replicapoolupdater.zoneOperations.list@.
module Gogol.ReplicaPoolUpdater.ZoneOperations.List
    (
    -- * Resource
      ReplicaPoolUpdaterZoneOperationsListResource

    -- ** Constructing a Request
    , ReplicaPoolUpdaterZoneOperationsList (..)
    , newReplicaPoolUpdaterZoneOperationsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ReplicaPoolUpdater.Types

-- | A resource alias for @replicapoolupdater.zoneOperations.list@ method which the
-- 'ReplicaPoolUpdaterZoneOperationsList' request conforms to.
type ReplicaPoolUpdaterZoneOperationsListResource =
     "replicapoolupdater" Core.:>
       "v1beta1" Core.:>
         "projects" Core.:>
           Core.Capture "project" Core.Text Core.:>
             "zones" Core.:>
               Core.Capture "zone" Core.Text Core.:>
                 "operations" Core.:>
                   Core.QueryParam "filter" Core.Text Core.:>
                     Core.QueryParam "maxResults" Core.Word32 Core.:>
                       Core.QueryParam "pageToken" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] OperationList

-- | Retrieves the list of Operation resources contained within the specified zone.
--
-- /See:/ 'newReplicaPoolUpdaterZoneOperationsList' smart constructor.
data ReplicaPoolUpdaterZoneOperationsList = ReplicaPoolUpdaterZoneOperationsList
    {
      -- | Optional. Filter expression for filtering listed resources.
      filter :: (Core.Maybe Core.Text)
      -- | Optional. Maximum count of results to be returned. Maximum value is 500 and default value is 500.
    , maxResults :: Core.Word32
      -- | Optional. Tag returned by a previous list request truncated by maxResults. Used to continue a previous list request.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Name of the project scoping this request.
    , project :: Core.Text
      -- | Name of the zone scoping this request.
    , zone :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaPoolUpdaterZoneOperationsList' with the minimum fields required to make a request.
newReplicaPoolUpdaterZoneOperationsList 
    ::  Core.Text
       -- ^  Name of the project scoping this request. See 'project'.
    -> Core.Text
       -- ^  Name of the zone scoping this request. See 'zone'.
    -> ReplicaPoolUpdaterZoneOperationsList
newReplicaPoolUpdaterZoneOperationsList project zone =
  ReplicaPoolUpdaterZoneOperationsList
    { filter = Core.Nothing
    , maxResults = 500
    , pageToken = Core.Nothing
    , project = project
    , zone = zone
    }

instance Core.GoogleRequest
           ReplicaPoolUpdaterZoneOperationsList
         where
        type Rs ReplicaPoolUpdaterZoneOperationsList =
             OperationList
        type Scopes ReplicaPoolUpdaterZoneOperationsList =
             '[CloudPlatform'FullControl, Replicapool'FullControl]
        requestClient
          ReplicaPoolUpdaterZoneOperationsList{..}
          = go project zone filter (Core.Just maxResults)
              pageToken
              (Core.Just Core.AltJSON)
              replicaPoolUpdaterService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ReplicaPoolUpdaterZoneOperationsListResource)
                      Core.mempty

