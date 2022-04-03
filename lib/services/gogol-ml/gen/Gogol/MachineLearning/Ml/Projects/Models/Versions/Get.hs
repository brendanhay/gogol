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
-- Module      : Gogol.MachineLearning.Ml.Projects.Models.Versions.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a model version. Models can have multiple versions. You can call projects.models.versions.list to get the same information that this method returns for all of the versions of a model.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.models.versions.get@.
module Gogol.MachineLearning.Ml.Projects.Models.Versions.Get
  ( -- * Resource
    MlProjectsModelsVersionsGetResource,

    -- ** Constructing a Request
    MlProjectsModelsVersionsGet (..),
    newMlProjectsModelsVersionsGet,
  )
where

import Gogol.MachineLearning.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @ml.projects.models.versions.get@ method which the
-- 'MlProjectsModelsVersionsGet' request conforms to.
type MlProjectsModelsVersionsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleCloudMlV1__Version

-- | Gets information about a model version. Models can have multiple versions. You can call projects.models.versions.list to get the same information that this method returns for all of the versions of a model.
--
-- /See:/ 'newMlProjectsModelsVersionsGet' smart constructor.
data MlProjectsModelsVersionsGet = MlProjectsModelsVersionsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the version.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsModelsVersionsGet' with the minimum fields required to make a request.
newMlProjectsModelsVersionsGet ::
  -- |  Required. The name of the version. See 'name'.
  Core.Text ->
  MlProjectsModelsVersionsGet
newMlProjectsModelsVersionsGet name =
  MlProjectsModelsVersionsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MlProjectsModelsVersionsGet
  where
  type
    Rs MlProjectsModelsVersionsGet =
      GoogleCloudMlV1__Version
  type
    Scopes MlProjectsModelsVersionsGet =
      '[CloudPlatform'FullControl]
  requestClient MlProjectsModelsVersionsGet {..} =
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
          ( Core.Proxy ::
              Core.Proxy MlProjectsModelsVersionsGetResource
          )
          Core.mempty
