{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.MachineLearning.Ml.Projects.Models.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a model, including its name, the description (if set), and the default version (if at least one version of the model has been deployed).
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.models.get@.
module Gogol.MachineLearning.Ml.Projects.Models.Get
  ( -- * Resource
    MlProjectsModelsGetResource,

    -- ** Constructing a Request
    MlProjectsModelsGet (..),
    newMlProjectsModelsGet,
  )
where

import Gogol.MachineLearning.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @ml.projects.models.get@ method which the
-- 'MlProjectsModelsGet' request conforms to.
type MlProjectsModelsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleCloudMlV1__Model

-- | Gets information about a model, including its name, the description (if set), and the default version (if at least one version of the model has been deployed).
--
-- /See:/ 'newMlProjectsModelsGet' smart constructor.
data MlProjectsModelsGet = MlProjectsModelsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the model.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsModelsGet' with the minimum fields required to make a request.
newMlProjectsModelsGet ::
  -- |  Required. The name of the model. See 'name'.
  Core.Text ->
  MlProjectsModelsGet
newMlProjectsModelsGet name =
  MlProjectsModelsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MlProjectsModelsGet where
  type Rs MlProjectsModelsGet = GoogleCloudMlV1__Model
  type
    Scopes MlProjectsModelsGet =
      '[CloudPlatform'FullControl, CloudPlatform'ReadOnly]
  requestClient MlProjectsModelsGet {..} =
    go
      name
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
          (Core.Proxy :: Core.Proxy MlProjectsModelsGetResource)
          Core.mempty
