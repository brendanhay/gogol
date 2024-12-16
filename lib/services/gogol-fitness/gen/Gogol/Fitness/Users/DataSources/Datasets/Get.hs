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
-- Module      : Gogol.Fitness.Users.DataSources.Datasets.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a dataset containing all data points whose start and end times overlap with the specified range of the dataset minimum start time and maximum end time. Specifically, any data point whose start time is less than or equal to the dataset end time and whose end time is greater than or equal to the dataset start time.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference> for @fitness.users.dataSources.datasets.get@.
module Gogol.Fitness.Users.DataSources.Datasets.Get
    (
    -- * Resource
      FitnessUsersDataSourcesDatasetsGetResource

    -- ** Constructing a Request
    , FitnessUsersDataSourcesDatasetsGet (..)
    , newFitnessUsersDataSourcesDatasetsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Fitness.Types

-- | A resource alias for @fitness.users.dataSources.datasets.get@ method which the
-- 'FitnessUsersDataSourcesDatasetsGet' request conforms to.
type FitnessUsersDataSourcesDatasetsGetResource =
     "fitness" Core.:>
       "v1" Core.:>
         "users" Core.:>
           Core.Capture "userId" Core.Text Core.:>
             "dataSources" Core.:>
               Core.Capture "dataSourceId" Core.Text Core.:>
                 "datasets" Core.:>
                   Core.Capture "datasetId" Core.Text Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "limit" Core.Int32 Core.:>
                             Core.QueryParam "pageToken" Core.Text Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.Get '[Core.JSON] Dataset

-- | Returns a dataset containing all data points whose start and end times overlap with the specified range of the dataset minimum start time and maximum end time. Specifically, any data point whose start time is less than or equal to the dataset end time and whose end time is greater than or equal to the dataset start time.
--
-- /See:/ 'newFitnessUsersDataSourcesDatasetsGet' smart constructor.
data FitnessUsersDataSourcesDatasetsGet = FitnessUsersDataSourcesDatasetsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The data stream ID of the data source that created the dataset.
    , dataSourceId :: Core.Text
      -- | Dataset identifier that is a composite of the minimum data point start time and maximum data point end time represented as nanoseconds from the epoch. The ID is formatted like: \"startTime-endTime\" where startTime and endTime are 64 bit integers.
    , datasetId :: Core.Text
      -- | If specified, no more than this many data points will be included in the dataset. If there are more data points in the dataset, nextPageToken will be set in the dataset response. The limit is applied from the end of the time range. That is, if pageToken is absent, the limit most recent data points will be returned.
    , limit :: (Core.Maybe Core.Int32)
      -- | The continuation token, which is used to page through large datasets. To get the next page of a dataset, set this parameter to the value of nextPageToken from the previous response. Each subsequent call will yield a partial dataset with data point end timestamps that are strictly smaller than those in the previous partial response.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Retrieve a dataset for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
    , userId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FitnessUsersDataSourcesDatasetsGet' with the minimum fields required to make a request.
newFitnessUsersDataSourcesDatasetsGet 
    ::  Core.Text
       -- ^  The data stream ID of the data source that created the dataset. See 'dataSourceId'.
    -> Core.Text
       -- ^  Dataset identifier that is a composite of the minimum data point start time and maximum data point end time represented as nanoseconds from the epoch. The ID is formatted like: \"startTime-endTime\" where startTime and endTime are 64 bit integers. See 'datasetId'.
    -> Core.Text
       -- ^  Retrieve a dataset for the person identified. Use me to indicate the authenticated user. Only me is supported at this time. See 'userId'.
    -> FitnessUsersDataSourcesDatasetsGet
newFitnessUsersDataSourcesDatasetsGet dataSourceId datasetId userId =
  FitnessUsersDataSourcesDatasetsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , dataSourceId = dataSourceId
    , datasetId = datasetId
    , limit = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userId = userId
    }

instance Core.GoogleRequest
           FitnessUsersDataSourcesDatasetsGet
         where
        type Rs FitnessUsersDataSourcesDatasetsGet = Dataset
        type Scopes FitnessUsersDataSourcesDatasetsGet =
             '[Fitness'Activity'Read, Fitness'Activity'Write,
               Fitness'BloodGlucose'Read,
               Fitness'BloodGlucose'Write,
               Fitness'BloodPressure'Read,
               Fitness'BloodPressure'Write, Fitness'Body'Read,
               Fitness'Body'Write, Fitness'BodyTemperature'Read,
               Fitness'BodyTemperature'Write,
               Fitness'HeartRate'Read, Fitness'HeartRate'Write,
               Fitness'Location'Read, Fitness'Location'Write,
               Fitness'Nutrition'Read, Fitness'Nutrition'Write,
               Fitness'OxygenSaturation'Read,
               Fitness'OxygenSaturation'Write,
               Fitness'ReproductiveHealth'Read,
               Fitness'ReproductiveHealth'Write, Fitness'Sleep'Read,
               Fitness'Sleep'Write]
        requestClient FitnessUsersDataSourcesDatasetsGet{..}
          = go userId dataSourceId datasetId xgafv accessToken
              callback
              limit
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              fitnessService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           FitnessUsersDataSourcesDatasetsGetResource)
                      Core.mempty

