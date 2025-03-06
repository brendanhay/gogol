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
-- Module      : Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a user provided trial to a study.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.trials.create@.
module Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.Create
  ( -- * Resource
    MlProjectsLocationsStudiesTrialsCreateResource,

    -- ** Constructing a Request
    MlProjectsLocationsStudiesTrialsCreate (..),
    newMlProjectsLocationsStudiesTrialsCreate,
  )
where

import Gogol.MachineLearning.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @ml.projects.locations.studies.trials.create@ method which the
-- 'MlProjectsLocationsStudiesTrialsCreate' request conforms to.
type MlProjectsLocationsStudiesTrialsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "trials"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleCloudMlV1__Trial
    Core.:> Core.Post '[Core.JSON] GoogleCloudMlV1__Trial

-- | Adds a user provided trial to a study.
--
-- /See:/ 'newMlProjectsLocationsStudiesTrialsCreate' smart constructor.
data MlProjectsLocationsStudiesTrialsCreate = MlProjectsLocationsStudiesTrialsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the study that the trial belongs to.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudMlV1__Trial,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsLocationsStudiesTrialsCreate' with the minimum fields required to make a request.
newMlProjectsLocationsStudiesTrialsCreate ::
  -- |  Required. The name of the study that the trial belongs to. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudMlV1__Trial ->
  MlProjectsLocationsStudiesTrialsCreate
newMlProjectsLocationsStudiesTrialsCreate parent payload =
  MlProjectsLocationsStudiesTrialsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MlProjectsLocationsStudiesTrialsCreate where
  type
    Rs MlProjectsLocationsStudiesTrialsCreate =
      GoogleCloudMlV1__Trial
  type
    Scopes MlProjectsLocationsStudiesTrialsCreate =
      '[CloudPlatform'FullControl]
  requestClient MlProjectsLocationsStudiesTrialsCreate {..} =
    go
      parent
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
              Core.Proxy MlProjectsLocationsStudiesTrialsCreateResource
          )
          Core.mempty
