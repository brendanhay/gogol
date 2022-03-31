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
-- Module      : Gogol.Fitness.Users.Sessions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists sessions previously created.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference> for @fitness.users.sessions.list@.
module Gogol.Fitness.Users.Sessions.List
  ( -- * Resource
    FitnessUsersSessionsListResource,

    -- ** Constructing a Request
    newFitnessUsersSessionsList,
    FitnessUsersSessionsList,
  )
where

import Gogol.Fitness.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @fitness.users.sessions.list@ method which the
-- 'FitnessUsersSessionsList' request conforms to.
type FitnessUsersSessionsListResource =
  "fitness"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "sessions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParams "activityType" Core.Int32
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "endTime" Core.Text
    Core.:> Core.QueryParam "includeDeleted" Core.Bool
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "startTime" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListSessionsResponse

-- | Lists sessions previously created.
--
-- /See:/ 'newFitnessUsersSessionsList' smart constructor.
data FitnessUsersSessionsList = FitnessUsersSessionsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | If non-empty, only sessions with these activity types should be returned.
    activityType :: (Core.Maybe [Core.Int32]),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | An RFC3339 timestamp. Only sessions ending between the start and end times will be included in the response. If this time is omitted but startTime is specified, all sessions from startTime to the end of time will be returned.
    endTime :: (Core.Maybe Core.Text),
    -- | If true, and if both startTime and endTime are omitted, session deletions will be returned.
    includeDeleted :: (Core.Maybe Core.Bool),
    -- | The continuation token, which is used for incremental syncing. To get the next batch of changes, set this parameter to the value of nextPageToken from the previous response. The page token is ignored if either start or end time is specified. If none of start time, end time, and the page token is specified, sessions modified in the last 30 days are returned.
    pageToken :: (Core.Maybe Core.Text),
    -- | An RFC3339 timestamp. Only sessions ending between the start and end times will be included in the response. If this time is omitted but endTime is specified, all sessions from the start of time up to endTime will be returned.
    startTime :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | List sessions for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FitnessUsersSessionsList' with the minimum fields required to make a request.
newFitnessUsersSessionsList ::
  -- |  List sessions for the person identified. Use me to indicate the authenticated user. Only me is supported at this time. See 'userId'.
  Core.Text ->
  FitnessUsersSessionsList
newFitnessUsersSessionsList userId =
  FitnessUsersSessionsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      activityType = Core.Nothing,
      callback = Core.Nothing,
      endTime = Core.Nothing,
      includeDeleted = Core.Nothing,
      pageToken = Core.Nothing,
      startTime = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance Core.GoogleRequest FitnessUsersSessionsList where
  type
    Rs FitnessUsersSessionsList =
      ListSessionsResponse
  type
    Scopes FitnessUsersSessionsList =
      '[ Fitness'Activity'Read,
         Fitness'Activity'Write,
         Fitness'BloodGlucose'Read,
         Fitness'BloodGlucose'Write,
         Fitness'BloodPressure'Read,
         Fitness'BloodPressure'Write,
         Fitness'Body'Read,
         Fitness'Body'Write,
         Fitness'BodyTemperature'Read,
         Fitness'BodyTemperature'Write,
         Fitness'HeartRate'Read,
         Fitness'HeartRate'Write,
         Fitness'Location'Read,
         Fitness'Location'Write,
         Fitness'Nutrition'Read,
         Fitness'Nutrition'Write,
         Fitness'OxygenSaturation'Read,
         Fitness'OxygenSaturation'Write,
         Fitness'ReproductiveHealth'Read,
         Fitness'ReproductiveHealth'Write,
         Fitness'Sleep'Read,
         Fitness'Sleep'Write
       ]
  requestClient FitnessUsersSessionsList {..} =
    go
      userId
      xgafv
      accessToken
      (activityType Core.^. Core._Default)
      callback
      endTime
      includeDeleted
      pageToken
      startTime
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      fitnessService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FitnessUsersSessionsListResource
          )
          Core.mempty
