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
-- Module      : Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.Complete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Marks a trial as complete.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.trials.complete@.
module Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.Complete
  ( -- * Resource
    MlProjectsLocationsStudiesTrialsCompleteResource,

    -- ** Constructing a Request
    newMlProjectsLocationsStudiesTrialsComplete,
    MlProjectsLocationsStudiesTrialsComplete,
  )
where

import Gogol.MachineLearning.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @ml.projects.locations.studies.trials.complete@ method which the
-- 'MlProjectsLocationsStudiesTrialsComplete' request conforms to.
type MlProjectsLocationsStudiesTrialsCompleteResource =
  "v1"
    Core.:> Core.CaptureMode "name" "complete" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudMlV1__CompleteTrialRequest
    Core.:> Core.Post '[Core.JSON] GoogleCloudMlV1__Trial

-- | Marks a trial as complete.
--
-- /See:/ 'newMlProjectsLocationsStudiesTrialsComplete' smart constructor.
data MlProjectsLocationsStudiesTrialsComplete = MlProjectsLocationsStudiesTrialsComplete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The trial name.metat
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudMlV1__CompleteTrialRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsLocationsStudiesTrialsComplete' with the minimum fields required to make a request.
newMlProjectsLocationsStudiesTrialsComplete ::
  -- |  Required. The trial name.metat See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudMlV1__CompleteTrialRequest ->
  MlProjectsLocationsStudiesTrialsComplete
newMlProjectsLocationsStudiesTrialsComplete name payload =
  MlProjectsLocationsStudiesTrialsComplete
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
    MlProjectsLocationsStudiesTrialsComplete
  where
  type
    Rs MlProjectsLocationsStudiesTrialsComplete =
      GoogleCloudMlV1__Trial
  type
    Scopes MlProjectsLocationsStudiesTrialsComplete =
      '[CloudPlatform'FullControl]
  requestClient
    MlProjectsLocationsStudiesTrialsComplete {..} =
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
                  MlProjectsLocationsStudiesTrialsCompleteResource
            )
            Core.mempty
