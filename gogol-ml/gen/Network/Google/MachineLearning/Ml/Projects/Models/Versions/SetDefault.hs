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
-- Module      : Network.Google.MachineLearning.Ml.Projects.Models.Versions.SetDefault
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Designates a version to be the default for the model. The default version is used for prediction requests made against the model that don\'t specify a version. The first version to be created for a model is automatically set as the default. You must make any subsequent changes to the default version setting manually using this method.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.models.versions.setDefault@.
module Network.Google.MachineLearning.Ml.Projects.Models.Versions.SetDefault
  ( -- * Resource
    MlProjectsModelsVersionsSetDefaultResource,

    -- ** Constructing a Request
    newMlProjectsModelsVersionsSetDefault,
    MlProjectsModelsVersionsSetDefault,
  )
where

import Network.Google.MachineLearning.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @ml.projects.models.versions.setDefault@ method which the
-- 'MlProjectsModelsVersionsSetDefault' request conforms to.
type MlProjectsModelsVersionsSetDefaultResource =
  "v1"
    Core.:> Core.CaptureMode "name" "setDefault" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudMlV1__SetDefaultVersionRequest
    Core.:> Core.Post '[Core.JSON] GoogleCloudMlV1__Version

-- | Designates a version to be the default for the model. The default version is used for prediction requests made against the model that don\'t specify a version. The first version to be created for a model is automatically set as the default. You must make any subsequent changes to the default version setting manually using this method.
--
-- /See:/ 'newMlProjectsModelsVersionsSetDefault' smart constructor.
data MlProjectsModelsVersionsSetDefault = MlProjectsModelsVersionsSetDefault
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the version to make the default for the model. You can get the names of all the versions of a model by calling projects.models.versions.list.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudMlV1__SetDefaultVersionRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsModelsVersionsSetDefault' with the minimum fields required to make a request.
newMlProjectsModelsVersionsSetDefault ::
  -- |  Required. The name of the version to make the default for the model. You can get the names of all the versions of a model by calling projects.models.versions.list. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudMlV1__SetDefaultVersionRequest ->
  MlProjectsModelsVersionsSetDefault
newMlProjectsModelsVersionsSetDefault name payload =
  MlProjectsModelsVersionsSetDefault
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    MlProjectsModelsVersionsSetDefault
  where
  type
    Rs MlProjectsModelsVersionsSetDefault =
      GoogleCloudMlV1__Version
  type
    Scopes MlProjectsModelsVersionsSetDefault =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient MlProjectsModelsVersionsSetDefault {..} =
    go
      name
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
                MlProjectsModelsVersionsSetDefaultResource
          )
          Core.mempty
