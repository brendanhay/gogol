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
-- Module      : Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the trials associated with a study.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.trials.list@.
module Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.List
  ( -- * Resource
    MlProjectsLocationsStudiesTrialsListResource,

    -- ** Constructing a Request
    MlProjectsLocationsStudiesTrialsList (..),
    newMlProjectsLocationsStudiesTrialsList,
  )
where

import Gogol.MachineLearning.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @ml.projects.locations.studies.trials.list@ method which the
-- 'MlProjectsLocationsStudiesTrialsList' request conforms to.
type MlProjectsLocationsStudiesTrialsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "trials"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleCloudMlV1__ListTrialsResponse

-- | Lists the trials associated with a study.
--
-- /See:/ 'newMlProjectsLocationsStudiesTrialsList' smart constructor.
data MlProjectsLocationsStudiesTrialsList = MlProjectsLocationsStudiesTrialsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the study that the trial belongs to.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsLocationsStudiesTrialsList' with the minimum fields required to make a request.
newMlProjectsLocationsStudiesTrialsList ::
  -- |  Required. The name of the study that the trial belongs to. See 'parent'.
  Core.Text ->
  MlProjectsLocationsStudiesTrialsList
newMlProjectsLocationsStudiesTrialsList parent =
  MlProjectsLocationsStudiesTrialsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MlProjectsLocationsStudiesTrialsList
  where
  type
    Rs MlProjectsLocationsStudiesTrialsList =
      GoogleCloudMlV1__ListTrialsResponse
  type
    Scopes MlProjectsLocationsStudiesTrialsList =
      '[CloudPlatform'FullControl]
  requestClient
    MlProjectsLocationsStudiesTrialsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        machineLearningService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  MlProjectsLocationsStudiesTrialsListResource
            )
            Core.mempty
