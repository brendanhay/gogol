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
-- Module      : Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.Suggest
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds one or more trials to a study, with parameter values suggested by AI Platform Vizier. Returns a long-running operation associated with the generation of trial suggestions. When this long-running operation succeeds, it will contain a SuggestTrialsResponse.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.trials.suggest@.
module Gogol.MachineLearning.Ml.Projects.Locations.Studies.Trials.Suggest
  ( -- * Resource
    MlProjectsLocationsStudiesTrialsSuggestResource,

    -- ** Constructing a Request
    MlProjectsLocationsStudiesTrialsSuggest (..),
    newMlProjectsLocationsStudiesTrialsSuggest,
  )
where

import Gogol.MachineLearning.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @ml.projects.locations.studies.trials.suggest@ method which the
-- 'MlProjectsLocationsStudiesTrialsSuggest' request conforms to.
type MlProjectsLocationsStudiesTrialsSuggestResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "trials:suggest"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudMlV1__SuggestTrialsRequest
    Core.:> Core.Post '[Core.JSON] GoogleLongrunning__Operation

-- | Adds one or more trials to a study, with parameter values suggested by AI Platform Vizier. Returns a long-running operation associated with the generation of trial suggestions. When this long-running operation succeeds, it will contain a SuggestTrialsResponse.
--
-- /See:/ 'newMlProjectsLocationsStudiesTrialsSuggest' smart constructor.
data MlProjectsLocationsStudiesTrialsSuggest = MlProjectsLocationsStudiesTrialsSuggest
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the study that the trial belongs to.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudMlV1__SuggestTrialsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsLocationsStudiesTrialsSuggest' with the minimum fields required to make a request.
newMlProjectsLocationsStudiesTrialsSuggest ::
  -- |  Required. The name of the study that the trial belongs to. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudMlV1__SuggestTrialsRequest ->
  MlProjectsLocationsStudiesTrialsSuggest
newMlProjectsLocationsStudiesTrialsSuggest parent payload =
  MlProjectsLocationsStudiesTrialsSuggest
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
    MlProjectsLocationsStudiesTrialsSuggest
  where
  type
    Rs MlProjectsLocationsStudiesTrialsSuggest =
      GoogleLongrunning__Operation
  type
    Scopes MlProjectsLocationsStudiesTrialsSuggest =
      '[CloudPlatform'FullControl]
  requestClient
    MlProjectsLocationsStudiesTrialsSuggest {..} =
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
                  MlProjectsLocationsStudiesTrialsSuggestResource
            )
            Core.mempty
