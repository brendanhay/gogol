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
-- Module      : Gogol.MachineLearning.Ml.Projects.Locations.Studies.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the studies in a region for an associated project.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.list@.
module Gogol.MachineLearning.Ml.Projects.Locations.Studies.List
  ( -- * Resource
    MlProjectsLocationsStudiesListResource,

    -- ** Constructing a Request
    newMlProjectsLocationsStudiesList,
    MlProjectsLocationsStudiesList,
  )
where

import Gogol.MachineLearning.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @ml.projects.locations.studies.list@ method which the
-- 'MlProjectsLocationsStudiesList' request conforms to.
type MlProjectsLocationsStudiesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "studies"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleCloudMlV1__ListStudiesResponse

-- | Lists all the studies in a region for an associated project.
--
-- /See:/ 'newMlProjectsLocationsStudiesList' smart constructor.
data MlProjectsLocationsStudiesList = MlProjectsLocationsStudiesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The project and location that the study belongs to. Format: projects\/{project}\/locations\/{location}
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsLocationsStudiesList' with the minimum fields required to make a request.
newMlProjectsLocationsStudiesList ::
  -- |  Required. The project and location that the study belongs to. Format: projects\/{project}\/locations\/{location} See 'parent'.
  Core.Text ->
  MlProjectsLocationsStudiesList
newMlProjectsLocationsStudiesList parent =
  MlProjectsLocationsStudiesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MlProjectsLocationsStudiesList
  where
  type
    Rs MlProjectsLocationsStudiesList =
      GoogleCloudMlV1__ListStudiesResponse
  type
    Scopes MlProjectsLocationsStudiesList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient MlProjectsLocationsStudiesList {..} =
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
              Core.Proxy MlProjectsLocationsStudiesListResource
          )
          Core.mempty
