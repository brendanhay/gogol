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
-- Module      : Network.Google.MachineLearning.Ml.Projects.Explain
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs explanation on the data in the request. {% dynamic include \"\/ai-platform\/includes\/___explain-request\" %}
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.explain@.
module Network.Google.MachineLearning.Ml.Projects.Explain
  ( -- * Resource
    MlProjectsExplainResource,

    -- ** Constructing a Request
    newMlProjectsExplain,
    MlProjectsExplain,
  )
where

import Network.Google.MachineLearning.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @ml.projects.explain@ method which the
-- 'MlProjectsExplain' request conforms to.
type MlProjectsExplainResource =
  "v1"
    Core.:> Core.CaptureMode "name" "explain" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleCloudMlV1__ExplainRequest
    Core.:> Core.Post '[Core.JSON] GoogleApi__HttpBody

-- | Performs explanation on the data in the request. {% dynamic include \"\/ai-platform\/includes\/___explain-request\" %}
--
-- /See:/ 'newMlProjectsExplain' smart constructor.
data MlProjectsExplain = MlProjectsExplain
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of a model or a version. Authorization: requires the @predict@ permission on the specified resource.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudMlV1__ExplainRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsExplain' with the minimum fields required to make a request.
newMlProjectsExplain ::
  -- |  Required. The resource name of a model or a version. Authorization: requires the @predict@ permission on the specified resource. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudMlV1__ExplainRequest ->
  MlProjectsExplain
newMlProjectsExplain name payload =
  MlProjectsExplain
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MlProjectsExplain where
  type Rs MlProjectsExplain = GoogleApi__HttpBody
  type
    Scopes MlProjectsExplain =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient MlProjectsExplain {..} =
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
          (Core.Proxy :: Core.Proxy MlProjectsExplainResource)
          Core.mempty
