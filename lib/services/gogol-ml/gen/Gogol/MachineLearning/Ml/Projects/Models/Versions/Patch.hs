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
-- Module      : Gogol.MachineLearning.Ml.Projects.Models.Versions.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified Version resource. Currently the only update-able fields are @description@, @requestLoggingConfig@, @autoScaling.minNodes@, and @manualScaling.nodes@.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.models.versions.patch@.
module Gogol.MachineLearning.Ml.Projects.Models.Versions.Patch
  ( -- * Resource
    MlProjectsModelsVersionsPatchResource,

    -- ** Constructing a Request
    MlProjectsModelsVersionsPatch (..),
    newMlProjectsModelsVersionsPatch,
  )
where

import Gogol.MachineLearning.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @ml.projects.models.versions.patch@ method which the
-- 'MlProjectsModelsVersionsPatch' request conforms to.
type MlProjectsModelsVersionsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleCloudMlV1__Version
    Core.:> Core.Patch '[Core.JSON] GoogleLongrunning__Operation

-- | Updates the specified Version resource. Currently the only update-able fields are @description@, @requestLoggingConfig@, @autoScaling.minNodes@, and @manualScaling.nodes@.
--
-- /See:/ 'newMlProjectsModelsVersionsPatch' smart constructor.
data MlProjectsModelsVersionsPatch = MlProjectsModelsVersionsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the model.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudMlV1__Version,
    -- | Required. Specifies the path, relative to @Version@, of the field to update. Must be present and non-empty. For example, to change the description of a version to \"foo\", the @update_mask@ parameter would be specified as @description@, and the @PATCH@ request body would specify the new value, as follows: @{ \"description\": \"foo\" }@ Currently the only supported update mask fields are @description@, @requestLoggingConfig@, @autoScaling.minNodes@, and @manualScaling.nodes@. However, you can only update @manualScaling.nodes@ if the version uses a </ml-engine/docs/machine-types-online-prediction Compute Engine (N1) machine type>.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsModelsVersionsPatch' with the minimum fields required to make a request.
newMlProjectsModelsVersionsPatch ::
  -- |  Required. The name of the model. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudMlV1__Version ->
  MlProjectsModelsVersionsPatch
newMlProjectsModelsVersionsPatch name payload =
  MlProjectsModelsVersionsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MlProjectsModelsVersionsPatch where
  type
    Rs MlProjectsModelsVersionsPatch =
      GoogleLongrunning__Operation
  type
    Scopes MlProjectsModelsVersionsPatch =
      '[CloudPlatform'FullControl]
  requestClient MlProjectsModelsVersionsPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      machineLearningService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy MlProjectsModelsVersionsPatchResource)
          Core.mempty
