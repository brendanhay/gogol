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
-- Module      : Gogol.Fitness.Users.Dataset.Aggregate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Aggregates data of a certain type or stream into buckets divided by a given type of boundary. Multiple data sets of multiple types and from multiple sources can be aggregated into exactly one bucket type per request.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference> for @fitness.users.dataset.aggregate@.
module Gogol.Fitness.Users.Dataset.Aggregate
  ( -- * Resource
    FitnessUsersDatasetAggregateResource,

    -- ** Constructing a Request
    newFitnessUsersDatasetAggregate,
    FitnessUsersDatasetAggregate,
  )
where

import Gogol.Fitness.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @fitness.users.dataset.aggregate@ method which the
-- 'FitnessUsersDatasetAggregate' request conforms to.
type FitnessUsersDatasetAggregateResource =
  "fitness"
    Core.:> "v1"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "dataset:aggregate"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AggregateRequest
    Core.:> Core.Post '[Core.JSON] AggregateResponse

-- | Aggregates data of a certain type or stream into buckets divided by a given type of boundary. Multiple data sets of multiple types and from multiple sources can be aggregated into exactly one bucket type per request.
--
-- /See:/ 'newFitnessUsersDatasetAggregate' smart constructor.
data FitnessUsersDatasetAggregate = FitnessUsersDatasetAggregate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: AggregateRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Aggregate data for the person identified. Use me to indicate the authenticated user. Only me is supported at this time.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FitnessUsersDatasetAggregate' with the minimum fields required to make a request.
newFitnessUsersDatasetAggregate ::
  -- |  Multipart request metadata. See 'payload'.
  AggregateRequest ->
  -- |  Aggregate data for the person identified. Use me to indicate the authenticated user. Only me is supported at this time. See 'userId'.
  Core.Text ->
  FitnessUsersDatasetAggregate
newFitnessUsersDatasetAggregate payload userId =
  FitnessUsersDatasetAggregate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance
  Core.GoogleRequest
    FitnessUsersDatasetAggregate
  where
  type
    Rs FitnessUsersDatasetAggregate =
      AggregateResponse
  type
    Scopes FitnessUsersDatasetAggregate =
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
  requestClient FitnessUsersDatasetAggregate {..} =
    go
      userId
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
              Core.Proxy FitnessUsersDatasetAggregateResource
          )
          Core.mempty
