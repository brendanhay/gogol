{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.AddMeasurement
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a measurement of the objective metrics to a trial. This measurement is assumed to have been taken before the trial is complete.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.trials.addMeasurement@.
module Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.AddMeasurement
  ( -- * Resource
    MlProjectsLocationsStudiesTrialsAddMeasurementResource,

    -- ** Constructing a Request
    MlProjectsLocationsStudiesTrialsAddMeasurement (..),
    newMlProjectsLocationsStudiesTrialsAddMeasurement,
  )
where

import Gogol.MachineLearning.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @ml.projects.locations.studies.trials.addMeasurement@ method which the
-- 'MlProjectsLocationsStudiesTrialsAddMeasurement' request conforms to.
type MlProjectsLocationsStudiesTrialsAddMeasurementResource =
  "v1"
    Core.:> Core.CaptureMode "name" "addMeasurement" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudMlV1__AddTrialMeasurementRequest
    Core.:> Core.Post '[Core.JSON] GoogleCloudMlV1__Trial

-- | Adds a measurement of the objective metrics to a trial. This measurement is assumed to have been taken before the trial is complete.
--
-- /See:/ 'newMlProjectsLocationsStudiesTrialsAddMeasurement' smart constructor.
data MlProjectsLocationsStudiesTrialsAddMeasurement = MlProjectsLocationsStudiesTrialsAddMeasurement
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The trial name.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudMlV1__AddTrialMeasurementRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsLocationsStudiesTrialsAddMeasurement' with the minimum fields required to make a request.
newMlProjectsLocationsStudiesTrialsAddMeasurement ::
  -- |  Required. The trial name. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudMlV1__AddTrialMeasurementRequest ->
  MlProjectsLocationsStudiesTrialsAddMeasurement
newMlProjectsLocationsStudiesTrialsAddMeasurement name payload =
  MlProjectsLocationsStudiesTrialsAddMeasurement
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MlProjectsLocationsStudiesTrialsAddMeasurement
  where
  type
    Rs MlProjectsLocationsStudiesTrialsAddMeasurement =
      GoogleCloudMlV1__Trial
  type
    Scopes MlProjectsLocationsStudiesTrialsAddMeasurement =
      '[CloudPlatform'FullControl]
  requestClient MlProjectsLocationsStudiesTrialsAddMeasurement {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      machineLearningService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy MlProjectsLocationsStudiesTrialsAddMeasurementResource
          )
          Core.mempty
