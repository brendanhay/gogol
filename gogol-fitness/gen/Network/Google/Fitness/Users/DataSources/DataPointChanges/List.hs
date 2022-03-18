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
-- Module      : Network.Google.Fitness.Users.DataSources.DataPointChanges.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Queries for user\'s data point changes for a particular data source.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference> for @fitness.users.dataSources.dataPointChanges.list@.
module Network.Google.Fitness.Users.DataSources.DataPointChanges.List
  ( -- * Resource
    FitnessUsersDataSourcesDataPointChangesListResource,

    -- ** Constructing a Request
    newFitnessUsersDataSourcesDataPointChangesList,
    FitnessUsersDataSourcesDataPointChangesList,
  )
where

import Network.Google.Fitness.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @fitness.users.dataSources.dataPointChanges.list@ method which the
-- 'FitnessUsersDataSourcesDataPointChangesList' request conforms to.
type FitnessUsersDataSourcesDataPointChangesListResource =
  "fitness"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "dataSources"
    Core.:> Core.Capture "dataSourceId" Core.Text
    Core.:> "dataPointChanges"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "limit" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListDataPointChangesResponse

-- | Queries for user\'s data point changes for a particular data source.
--
-- /See:/ 'newFitnessUsersDataSourcesDataPointChangesList' smart constructor.
data FitnessUsersDataSourcesDataPointChangesList = FitnessUsersDataSourcesDataPointChangesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The data stream ID of the data source that created the dataset.
    dataSourceId :: Core.Text,
    -- | If specified, no more than this many data point changes will be included in the response.
    limit :: (Core.Maybe Core.Int32),
    -- | The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of nextPageToken from the previous response.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | List data points for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FitnessUsersDataSourcesDataPointChangesList' with the minimum fields required to make a request.
newFitnessUsersDataSourcesDataPointChangesList ::
  -- |  The data stream ID of the data source that created the dataset. See 'dataSourceId'.
  Core.Text ->
  -- |  List data points for the person identified. Use me to indicate the authenticated user. Only me is supported at this time. See 'userId'.
  Core.Text ->
  FitnessUsersDataSourcesDataPointChangesList
newFitnessUsersDataSourcesDataPointChangesList dataSourceId userId =
  FitnessUsersDataSourcesDataPointChangesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      dataSourceId = dataSourceId,
      limit = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance
  Core.GoogleRequest
    FitnessUsersDataSourcesDataPointChangesList
  where
  type
    Rs FitnessUsersDataSourcesDataPointChangesList =
      ListDataPointChangesResponse
  type
    Scopes
      FitnessUsersDataSourcesDataPointChangesList =
      '[ "https://www.googleapis.com/auth/fitness.activity.read",
         "https://www.googleapis.com/auth/fitness.activity.write",
         "https://www.googleapis.com/auth/fitness.blood_glucose.read",
         "https://www.googleapis.com/auth/fitness.blood_glucose.write",
         "https://www.googleapis.com/auth/fitness.blood_pressure.read",
         "https://www.googleapis.com/auth/fitness.blood_pressure.write",
         "https://www.googleapis.com/auth/fitness.body.read",
         "https://www.googleapis.com/auth/fitness.body.write",
         "https://www.googleapis.com/auth/fitness.body_temperature.read",
         "https://www.googleapis.com/auth/fitness.body_temperature.write",
         "https://www.googleapis.com/auth/fitness.heart_rate.read",
         "https://www.googleapis.com/auth/fitness.heart_rate.write",
         "https://www.googleapis.com/auth/fitness.location.read",
         "https://www.googleapis.com/auth/fitness.location.write",
         "https://www.googleapis.com/auth/fitness.nutrition.read",
         "https://www.googleapis.com/auth/fitness.nutrition.write",
         "https://www.googleapis.com/auth/fitness.oxygen_saturation.read",
         "https://www.googleapis.com/auth/fitness.oxygen_saturation.write",
         "https://www.googleapis.com/auth/fitness.reproductive_health.read",
         "https://www.googleapis.com/auth/fitness.reproductive_health.write",
         "https://www.googleapis.com/auth/fitness.sleep.read",
         "https://www.googleapis.com/auth/fitness.sleep.write"
       ]
  requestClient
    FitnessUsersDataSourcesDataPointChangesList {..} =
      go
        userId
        dataSourceId
        xgafv
        accessToken
        callback
        limit
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        fitnessService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  FitnessUsersDataSourcesDataPointChangesListResource
            )
            Core.mempty
