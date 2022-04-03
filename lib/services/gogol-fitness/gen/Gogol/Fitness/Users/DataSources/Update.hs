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
-- Module      : Gogol.Fitness.Users.DataSources.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified data source. The dataStreamId, dataType, type, dataStreamName, and device properties with the exception of version, cannot be modified. Data sources are identified by their dataStreamId.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference> for @fitness.users.dataSources.update@.
module Gogol.Fitness.Users.DataSources.Update
  ( -- * Resource
    FitnessUsersDataSourcesUpdateResource,

    -- ** Constructing a Request
    FitnessUsersDataSourcesUpdate (..),
    newFitnessUsersDataSourcesUpdate,
  )
where

import Gogol.Fitness.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @fitness.users.dataSources.update@ method which the
-- 'FitnessUsersDataSourcesUpdate' request conforms to.
type FitnessUsersDataSourcesUpdateResource =
  "fitness"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "dataSources"
    Core.:> Core.Capture "dataSourceId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DataSource
    Core.:> Core.Put '[Core.JSON] DataSource

-- | Updates the specified data source. The dataStreamId, dataType, type, dataStreamName, and device properties with the exception of version, cannot be modified. Data sources are identified by their dataStreamId.
--
-- /See:/ 'newFitnessUsersDataSourcesUpdate' smart constructor.
data FitnessUsersDataSourcesUpdate = FitnessUsersDataSourcesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The data stream ID of the data source to update.
    dataSourceId :: Core.Text,
    -- | Multipart request metadata.
    payload :: DataSource,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Update the data source for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FitnessUsersDataSourcesUpdate' with the minimum fields required to make a request.
newFitnessUsersDataSourcesUpdate ::
  -- |  The data stream ID of the data source to update. See 'dataSourceId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DataSource ->
  -- |  Update the data source for the person identified. Use me to indicate the authenticated user. Only me is supported at this time. See 'userId'.
  Core.Text ->
  FitnessUsersDataSourcesUpdate
newFitnessUsersDataSourcesUpdate dataSourceId payload userId =
  FitnessUsersDataSourcesUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      dataSourceId = dataSourceId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance
  Core.GoogleRequest
    FitnessUsersDataSourcesUpdate
  where
  type Rs FitnessUsersDataSourcesUpdate = DataSource
  type
    Scopes FitnessUsersDataSourcesUpdate =
      '[ Fitness'Activity'Write,
         Fitness'BloodGlucose'Write,
         Fitness'BloodPressure'Write,
         Fitness'Body'Write,
         Fitness'BodyTemperature'Write,
         Fitness'HeartRate'Write,
         Fitness'Location'Write,
         Fitness'Nutrition'Write,
         Fitness'OxygenSaturation'Write,
         Fitness'ReproductiveHealth'Write,
         Fitness'Sleep'Write
       ]
  requestClient FitnessUsersDataSourcesUpdate {..} =
    go
      userId
      dataSourceId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      fitnessService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FitnessUsersDataSourcesUpdateResource
          )
          Core.mempty
