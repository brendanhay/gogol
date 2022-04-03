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
-- Module      : Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.Stop
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a trial.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.trials.stop@.
module Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.Stop
  ( -- * Resource
    MlProjectsLocationsStudiesTrialsStopResource,

    -- ** Constructing a Request
    MlProjectsLocationsStudiesTrialsStop (..),
    newMlProjectsLocationsStudiesTrialsStop,
  )
where

import Gogol.MachineLearning.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @ml.projects.locations.studies.trials.stop@ method which the
-- 'MlProjectsLocationsStudiesTrialsStop' request conforms to.
type MlProjectsLocationsStudiesTrialsStopResource =
  "v1"
    Core.:> Core.CaptureMode "name" "stop" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudMlV1__StopTrialRequest
    Core.:> Core.Post '[Core.JSON] GoogleCloudMlV1__Trial

-- | Stops a trial.
--
-- /See:/ 'newMlProjectsLocationsStudiesTrialsStop' smart constructor.
data MlProjectsLocationsStudiesTrialsStop = MlProjectsLocationsStudiesTrialsStop
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The trial name.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudMlV1__StopTrialRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsLocationsStudiesTrialsStop' with the minimum fields required to make a request.
newMlProjectsLocationsStudiesTrialsStop ::
  -- |  Required. The trial name. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudMlV1__StopTrialRequest ->
  MlProjectsLocationsStudiesTrialsStop
newMlProjectsLocationsStudiesTrialsStop name payload =
  MlProjectsLocationsStudiesTrialsStop
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MlProjectsLocationsStudiesTrialsStop
  where
  type
    Rs MlProjectsLocationsStudiesTrialsStop =
      GoogleCloudMlV1__Trial
  type
    Scopes MlProjectsLocationsStudiesTrialsStop =
      '[CloudPlatform'FullControl]
  requestClient
    MlProjectsLocationsStudiesTrialsStop {..} =
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
                Core.Proxy
                  MlProjectsLocationsStudiesTrialsStopResource
            )
            Core.mempty
