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
-- Module      : Network.Google.MachineLearning.Ml.Projects.Models.Versions.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a model version. Each model can have multiple versions deployed and in use at any given time. Use this method to remove a single version. Note: You cannot delete the version that is set as the default version of the model unless it is the only remaining version.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.models.versions.delete@.
module Network.Google.MachineLearning.Ml.Projects.Models.Versions.Delete
  ( -- * Resource
    MlProjectsModelsVersionsDeleteResource,

    -- ** Constructing a Request
    newMlProjectsModelsVersionsDelete,
    MlProjectsModelsVersionsDelete,
  )
where

import Network.Google.MachineLearning.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @ml.projects.models.versions.delete@ method which the
-- 'MlProjectsModelsVersionsDelete' request conforms to.
type MlProjectsModelsVersionsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] GoogleLongrunning__Operation

-- | Deletes a model version. Each model can have multiple versions deployed and in use at any given time. Use this method to remove a single version. Note: You cannot delete the version that is set as the default version of the model unless it is the only remaining version.
--
-- /See:/ 'newMlProjectsModelsVersionsDelete' smart constructor.
data MlProjectsModelsVersionsDelete = MlProjectsModelsVersionsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the version. You can get the names of all the versions of a model by calling projects.models.versions.list.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsModelsVersionsDelete' with the minimum fields required to make a request.
newMlProjectsModelsVersionsDelete ::
  -- |  Required. The name of the version. You can get the names of all the versions of a model by calling projects.models.versions.list. See 'name'.
  Core.Text ->
  MlProjectsModelsVersionsDelete
newMlProjectsModelsVersionsDelete name =
  MlProjectsModelsVersionsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MlProjectsModelsVersionsDelete
  where
  type
    Rs MlProjectsModelsVersionsDelete =
      GoogleLongrunning__Operation
  type
    Scopes MlProjectsModelsVersionsDelete =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient MlProjectsModelsVersionsDelete {..} =
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
              Core.Proxy MlProjectsModelsVersionsDeleteResource
          )
          Core.mempty
