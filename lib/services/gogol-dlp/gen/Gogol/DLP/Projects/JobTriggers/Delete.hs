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
-- Module      : Gogol.DLP.Projects.JobTriggers.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a job trigger. See https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.jobTriggers.delete@.
module Gogol.DLP.Projects.JobTriggers.Delete
  ( -- * Resource
    DLPProjectsJobTriggersDeleteResource,

    -- ** Constructing a Request
    DLPProjectsJobTriggersDelete (..),
    newDLPProjectsJobTriggersDelete,
  )
where

import Gogol.DLP.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dlp.projects.jobTriggers.delete@ method which the
-- 'DLPProjectsJobTriggersDelete' request conforms to.
type DLPProjectsJobTriggersDeleteResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] GoogleProtobufEmpty

-- | Deletes a job trigger. See https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn more.
--
-- /See:/ 'newDLPProjectsJobTriggersDelete' smart constructor.
data DLPProjectsJobTriggersDelete = DLPProjectsJobTriggersDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the project and the triggeredJob, for example @projects\/dlp-test-project\/jobTriggers\/53234423@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsJobTriggersDelete' with the minimum fields required to make a request.
newDLPProjectsJobTriggersDelete ::
  -- |  Required. Resource name of the project and the triggeredJob, for example @projects\/dlp-test-project\/jobTriggers\/53234423@. See 'name'.
  Core.Text ->
  DLPProjectsJobTriggersDelete
newDLPProjectsJobTriggersDelete name =
  DLPProjectsJobTriggersDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DLPProjectsJobTriggersDelete
  where
  type
    Rs DLPProjectsJobTriggersDelete =
      GoogleProtobufEmpty
  type
    Scopes DLPProjectsJobTriggersDelete =
      '[CloudPlatform'FullControl]
  requestClient DLPProjectsJobTriggersDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dLPService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DLPProjectsJobTriggersDeleteResource
          )
          Core.mempty
