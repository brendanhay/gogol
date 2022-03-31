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
-- Module      : Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.CheckEarlyStoppingState
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks whether a trial should stop or not. Returns a long-running operation. When the operation is successful, it will contain a CheckTrialEarlyStoppingStateResponse.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.trials.checkEarlyStoppingState@.
module Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.CheckEarlyStoppingState
  ( -- * Resource
    MlProjectsLocationsStudiesTrialsCheckEarlyStoppingStateResource,

    -- ** Constructing a Request
    newMlProjectsLocationsStudiesTrialsCheckEarlyStoppingState,
    MlProjectsLocationsStudiesTrialsCheckEarlyStoppingState,
  )
where

import Gogol.MachineLearning.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @ml.projects.locations.studies.trials.checkEarlyStoppingState@ method which the
-- 'MlProjectsLocationsStudiesTrialsCheckEarlyStoppingState' request conforms to.
type MlProjectsLocationsStudiesTrialsCheckEarlyStoppingStateResource =
  "v1"
    Core.:> Core.CaptureMode
              "name"
              "checkEarlyStoppingState"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest
    Core.:> Core.Post '[Core.JSON] GoogleLongrunning__Operation

-- | Checks whether a trial should stop or not. Returns a long-running operation. When the operation is successful, it will contain a CheckTrialEarlyStoppingStateResponse.
--
-- /See:/ 'newMlProjectsLocationsStudiesTrialsCheckEarlyStoppingState' smart constructor.
data MlProjectsLocationsStudiesTrialsCheckEarlyStoppingState = MlProjectsLocationsStudiesTrialsCheckEarlyStoppingState
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The trial name.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsLocationsStudiesTrialsCheckEarlyStoppingState' with the minimum fields required to make a request.
newMlProjectsLocationsStudiesTrialsCheckEarlyStoppingState ::
  -- |  Required. The trial name. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest ->
  MlProjectsLocationsStudiesTrialsCheckEarlyStoppingState
newMlProjectsLocationsStudiesTrialsCheckEarlyStoppingState name payload =
  MlProjectsLocationsStudiesTrialsCheckEarlyStoppingState
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
    MlProjectsLocationsStudiesTrialsCheckEarlyStoppingState
  where
  type
    Rs
      MlProjectsLocationsStudiesTrialsCheckEarlyStoppingState =
      GoogleLongrunning__Operation
  type
    Scopes
      MlProjectsLocationsStudiesTrialsCheckEarlyStoppingState =
      '[CloudPlatform'FullControl]
  requestClient
    MlProjectsLocationsStudiesTrialsCheckEarlyStoppingState {..} =
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
                  MlProjectsLocationsStudiesTrialsCheckEarlyStoppingStateResource
            )
            Core.mempty
