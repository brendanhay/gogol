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
-- Module      : Gogol.MachineLearning.Ml.Projects.Models.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a specific model resource. Currently the only supported fields to update are @description@ and @default_version.name@.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.models.patch@.
module Gogol.MachineLearning.Ml.Projects.Models.Patch
  ( -- * Resource
    MlProjectsModelsPatchResource,

    -- ** Constructing a Request
    MlProjectsModelsPatch (..),
    newMlProjectsModelsPatch,
  )
where

import Gogol.MachineLearning.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @ml.projects.models.patch@ method which the
-- 'MlProjectsModelsPatch' request conforms to.
type MlProjectsModelsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleCloudMlV1__Model
    Core.:> Core.Patch '[Core.JSON] GoogleLongrunning__Operation

-- | Updates a specific model resource. Currently the only supported fields to update are @description@ and @default_version.name@.
--
-- /See:/ 'newMlProjectsModelsPatch' smart constructor.
data MlProjectsModelsPatch = MlProjectsModelsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The project name.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudMlV1__Model,
    -- | Required. Specifies the path, relative to @Model@, of the field to update. For example, to change the description of a model to \"foo\" and set its default version to \"version/1\", the @update_mask@ parameter would be specified as @description@, @default_version.name@, and the @PATCH@ request body would specify the new value, as follows: { \"description\": \"foo\", \"defaultVersion\": { \"name\":\"version/1\" } } Currently the supported update masks are @description@ and @default_version.name@.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsModelsPatch' with the minimum fields required to make a request.
newMlProjectsModelsPatch ::
  -- |  Required. The project name. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudMlV1__Model ->
  MlProjectsModelsPatch
newMlProjectsModelsPatch name payload =
  MlProjectsModelsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MlProjectsModelsPatch where
  type
    Rs MlProjectsModelsPatch =
      GoogleLongrunning__Operation
  type
    Scopes MlProjectsModelsPatch =
      '[CloudPlatform'FullControl]
  requestClient MlProjectsModelsPatch {..} =
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
          ( Core.Proxy ::
              Core.Proxy MlProjectsModelsPatchResource
          )
          Core.mempty
