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
-- Module      : Gogol.MachineLearning.Ml.Projects.Models.Versions.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new version of a model from a trained TensorFlow model. If the version created in the cloud by this call is the first deployed version of the specified model, it will be made the default version of the model. When you add a version to a model that already has one or more versions, the default version does not automatically change. If you want a new version to be the default, you must call projects.models.versions.setDefault.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.models.versions.create@.
module Gogol.MachineLearning.Ml.Projects.Models.Versions.Create
  ( -- * Resource
    MlProjectsModelsVersionsCreateResource,

    -- ** Constructing a Request
    MlProjectsModelsVersionsCreate (..),
    newMlProjectsModelsVersionsCreate,
  )
where

import Gogol.MachineLearning.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @ml.projects.models.versions.create@ method which the
-- 'MlProjectsModelsVersionsCreate' request conforms to.
type MlProjectsModelsVersionsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "versions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleCloudMlV1__Version
    Core.:> Core.Post '[Core.JSON] GoogleLongrunning__Operation

-- | Creates a new version of a model from a trained TensorFlow model. If the version created in the cloud by this call is the first deployed version of the specified model, it will be made the default version of the model. When you add a version to a model that already has one or more versions, the default version does not automatically change. If you want a new version to be the default, you must call projects.models.versions.setDefault.
--
-- /See:/ 'newMlProjectsModelsVersionsCreate' smart constructor.
data MlProjectsModelsVersionsCreate = MlProjectsModelsVersionsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the model.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudMlV1__Version,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsModelsVersionsCreate' with the minimum fields required to make a request.
newMlProjectsModelsVersionsCreate ::
  -- |  Required. The name of the model. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudMlV1__Version ->
  MlProjectsModelsVersionsCreate
newMlProjectsModelsVersionsCreate parent payload =
  MlProjectsModelsVersionsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MlProjectsModelsVersionsCreate where
  type
    Rs MlProjectsModelsVersionsCreate =
      GoogleLongrunning__Operation
  type
    Scopes MlProjectsModelsVersionsCreate =
      '[CloudPlatform'FullControl]
  requestClient MlProjectsModelsVersionsCreate {..} =
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
          (Core.Proxy :: Core.Proxy MlProjectsModelsVersionsCreateResource)
          Core.mempty
