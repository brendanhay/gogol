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
-- Module      : Network.Google.MachineLearning.Ml.Projects.Models.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the models in a project. Each project can contain multiple models, and each model can have multiple versions. If there are no models that match the request parameters, the list request returns an empty response body: {}.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.models.list@.
module Network.Google.MachineLearning.Ml.Projects.Models.List
  ( -- * Resource
    MlProjectsModelsListResource,

    -- ** Constructing a Request
    newMlProjectsModelsList,
    MlProjectsModelsList,
  )
where

import Network.Google.MachineLearning.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @ml.projects.models.list@ method which the
-- 'MlProjectsModelsList' request conforms to.
type MlProjectsModelsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "models"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleCloudMlV1__ListModelsResponse

-- | Lists the models in a project. Each project can contain multiple models, and each model can have multiple versions. If there are no models that match the request parameters, the list request returns an empty response body: {}.
--
-- /See:/ 'newMlProjectsModelsList' smart constructor.
data MlProjectsModelsList = MlProjectsModelsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Specifies the subset of models to retrieve.
    filter :: (Core.Maybe Core.Text),
    -- | Optional. The number of models to retrieve per \"page\" of results. If there are more remaining results than this number, the response message will contain a valid value in the @next_page_token@ field. The default value is 20, and the maximum page size is 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A page token to request the next page of results. You get the token from the @next_page_token@ field of the response from the previous call.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The name of the project whose models are to be listed.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsModelsList' with the minimum fields required to make a request.
newMlProjectsModelsList ::
  -- |  Required. The name of the project whose models are to be listed. See 'parent'.
  Core.Text ->
  MlProjectsModelsList
newMlProjectsModelsList parent =
  MlProjectsModelsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MlProjectsModelsList where
  type
    Rs MlProjectsModelsList =
      GoogleCloudMlV1__ListModelsResponse
  type
    Scopes MlProjectsModelsList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only"
       ]
  requestClient MlProjectsModelsList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      filter
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      machineLearningService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy MlProjectsModelsListResource
          )
          Core.mempty
