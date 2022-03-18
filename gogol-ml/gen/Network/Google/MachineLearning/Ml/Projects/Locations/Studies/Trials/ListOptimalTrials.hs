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
-- Module      : Network.Google.MachineLearning.Ml.Projects.Locations.Studies.Trials.ListOptimalTrials
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the pareto-optimal trials for multi-objective study or the optimal trials for single-objective study. The definition of pareto-optimal can be checked in wiki page. https:\/\/en.wikipedia.org\/wiki\/Pareto_efficiency
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.trials.listOptimalTrials@.
module Network.Google.MachineLearning.Ml.Projects.Locations.Studies.Trials.ListOptimalTrials
  ( -- * Resource
    MlProjectsLocationsStudiesTrialsListOptimalTrialsResource,

    -- ** Constructing a Request
    newMlProjectsLocationsStudiesTrialsListOptimalTrials,
    MlProjectsLocationsStudiesTrialsListOptimalTrials,
  )
where

import Network.Google.MachineLearning.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @ml.projects.locations.studies.trials.listOptimalTrials@ method which the
-- 'MlProjectsLocationsStudiesTrialsListOptimalTrials' request conforms to.
type MlProjectsLocationsStudiesTrialsListOptimalTrialsResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "trials:listOptimalTrials"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudMlV1__ListOptimalTrialsRequest
    Core.:> Core.Post
              '[Core.JSON]
              GoogleCloudMlV1__ListOptimalTrialsResponse

-- | Lists the pareto-optimal trials for multi-objective study or the optimal trials for single-objective study. The definition of pareto-optimal can be checked in wiki page. https:\/\/en.wikipedia.org\/wiki\/Pareto_efficiency
--
-- /See:/ 'newMlProjectsLocationsStudiesTrialsListOptimalTrials' smart constructor.
data MlProjectsLocationsStudiesTrialsListOptimalTrials = MlProjectsLocationsStudiesTrialsListOptimalTrials
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the study that the pareto-optimal trial belongs to.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudMlV1__ListOptimalTrialsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsLocationsStudiesTrialsListOptimalTrials' with the minimum fields required to make a request.
newMlProjectsLocationsStudiesTrialsListOptimalTrials ::
  -- |  Required. The name of the study that the pareto-optimal trial belongs to. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudMlV1__ListOptimalTrialsRequest ->
  MlProjectsLocationsStudiesTrialsListOptimalTrials
newMlProjectsLocationsStudiesTrialsListOptimalTrials parent payload =
  MlProjectsLocationsStudiesTrialsListOptimalTrials
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MlProjectsLocationsStudiesTrialsListOptimalTrials
  where
  type
    Rs
      MlProjectsLocationsStudiesTrialsListOptimalTrials =
      GoogleCloudMlV1__ListOptimalTrialsResponse
  type
    Scopes
      MlProjectsLocationsStudiesTrialsListOptimalTrials =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    MlProjectsLocationsStudiesTrialsListOptimalTrials {..} =
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
                Core.Proxy
                  MlProjectsLocationsStudiesTrialsListOptimalTrialsResource
            )
            Core.mempty
