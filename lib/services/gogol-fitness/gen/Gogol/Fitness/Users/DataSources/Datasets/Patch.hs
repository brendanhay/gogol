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
-- Module      : Gogol.Fitness.Users.DataSources.Datasets.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds data points to a dataset. The dataset need not be previously created. All points within the given dataset will be returned with subsquent calls to retrieve this dataset. Data points can belong to more than one dataset. This method does not use patch semantics: the data points provided are merely inserted, with no existing data replaced.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference> for @fitness.users.dataSources.datasets.patch@.
module Gogol.Fitness.Users.DataSources.Datasets.Patch
  ( -- * Resource
    FitnessUsersDataSourcesDatasetsPatchResource,

    -- ** Constructing a Request
    newFitnessUsersDataSourcesDatasetsPatch,
    FitnessUsersDataSourcesDatasetsPatch,
  )
where

import Gogol.Fitness.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @fitness.users.dataSources.datasets.patch@ method which the
-- 'FitnessUsersDataSourcesDatasetsPatch' request conforms to.
type FitnessUsersDataSourcesDatasetsPatchResource =
  "fitness"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "dataSources"
    Core.:> Core.Capture "dataSourceId" Core.Text
    Core.:> "datasets"
    Core.:> Core.Capture "datasetId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Dataset
    Core.:> Core.Patch '[Core.JSON] Dataset

-- | Adds data points to a dataset. The dataset need not be previously created. All points within the given dataset will be returned with subsquent calls to retrieve this dataset. Data points can belong to more than one dataset. This method does not use patch semantics: the data points provided are merely inserted, with no existing data replaced.
--
-- /See:/ 'newFitnessUsersDataSourcesDatasetsPatch' smart constructor.
data FitnessUsersDataSourcesDatasetsPatch = FitnessUsersDataSourcesDatasetsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The data stream ID of the data source that created the dataset.
    dataSourceId :: Core.Text,
    -- | This field is not used, and can be safely omitted.
    datasetId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Dataset,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Patch a dataset for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FitnessUsersDataSourcesDatasetsPatch' with the minimum fields required to make a request.
newFitnessUsersDataSourcesDatasetsPatch ::
  -- |  The data stream ID of the data source that created the dataset. See 'dataSourceId'.
  Core.Text ->
  -- |  This field is not used, and can be safely omitted. See 'datasetId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Dataset ->
  -- |  Patch a dataset for the person identified. Use me to indicate the authenticated user. Only me is supported at this time. See 'userId'.
  Core.Text ->
  FitnessUsersDataSourcesDatasetsPatch
newFitnessUsersDataSourcesDatasetsPatch dataSourceId datasetId payload userId =
  FitnessUsersDataSourcesDatasetsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      dataSourceId = dataSourceId,
      datasetId = datasetId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance
  Core.GoogleRequest
    FitnessUsersDataSourcesDatasetsPatch
  where
  type
    Rs FitnessUsersDataSourcesDatasetsPatch =
      Dataset
  type
    Scopes FitnessUsersDataSourcesDatasetsPatch =
      '[ "https://www.googleapis.com/auth/fitness.activity.write",
         "https://www.googleapis.com/auth/fitness.blood_glucose.write",
         "https://www.googleapis.com/auth/fitness.blood_pressure.write",
         "https://www.googleapis.com/auth/fitness.body.write",
         "https://www.googleapis.com/auth/fitness.body_temperature.write",
         "https://www.googleapis.com/auth/fitness.heart_rate.write",
         "https://www.googleapis.com/auth/fitness.location.write",
         "https://www.googleapis.com/auth/fitness.nutrition.write",
         "https://www.googleapis.com/auth/fitness.oxygen_saturation.write",
         "https://www.googleapis.com/auth/fitness.reproductive_health.write",
         "https://www.googleapis.com/auth/fitness.sleep.write"
       ]
  requestClient
    FitnessUsersDataSourcesDatasetsPatch {..} =
      go
        userId
        dataSourceId
        datasetId
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
                Core.Proxy
                  FitnessUsersDataSourcesDatasetsPatchResource
            )
            Core.mempty
