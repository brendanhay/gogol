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
-- Module      : Gogol.MachineLearning.Ml.Projects.Jobs.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a specific job resource. Currently the only supported fields to update are @labels@.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.jobs.patch@.
module Gogol.MachineLearning.Ml.Projects.Jobs.Patch
  ( -- * Resource
    MlProjectsJobsPatchResource,

    -- ** Constructing a Request
    newMlProjectsJobsPatch,
    MlProjectsJobsPatch,
  )
where

import Gogol.MachineLearning.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @ml.projects.jobs.patch@ method which the
-- 'MlProjectsJobsPatch' request conforms to.
type MlProjectsJobsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleCloudMlV1__Job
    Core.:> Core.Patch '[Core.JSON] GoogleCloudMlV1__Job

-- | Updates a specific job resource. Currently the only supported fields to update are @labels@.
--
-- /See:/ 'newMlProjectsJobsPatch' smart constructor.
data MlProjectsJobsPatch = MlProjectsJobsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The job name.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudMlV1__Job,
    -- | Required. Specifies the path, relative to @Job@, of the field to update. To adopt etag mechanism, include @etag@ field in the mask, and include the @etag@ value in your job resource. For example, to change the labels of a job, the @update_mask@ parameter would be specified as @labels@, @etag@, and the @PATCH@ request body would specify the new value, as follows: { \"labels\": { \"owner\": \"Google\", \"color\": \"Blue\" } \"etag\": \"33a64df551425fcc55e4d42a148795d9f25f89d4\" } If @etag@ matches the one on the server, the labels of the job will be replaced with the given ones, and the server end @etag@ will be recalculated. Currently the only supported update masks are @labels@ and @etag@.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MlProjectsJobsPatch' with the minimum fields required to make a request.
newMlProjectsJobsPatch ::
  -- |  Required. The job name. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudMlV1__Job ->
  MlProjectsJobsPatch
newMlProjectsJobsPatch name payload =
  MlProjectsJobsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest MlProjectsJobsPatch where
  type Rs MlProjectsJobsPatch = GoogleCloudMlV1__Job
  type
    Scopes MlProjectsJobsPatch =
      '[CloudPlatform'FullControl]
  requestClient MlProjectsJobsPatch {..} =
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
              Core.Proxy MlProjectsJobsPatchResource
          )
          Core.mempty
