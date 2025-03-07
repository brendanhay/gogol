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
-- Module      : Gogol.DLP.Projects.JobTriggers.Activate
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Activate a job trigger. Causes the immediate execute of a trigger instead of waiting on the trigger event to occur.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.projects.jobTriggers.activate@.
module Gogol.DLP.Projects.JobTriggers.Activate
  ( -- * Resource
    DLPProjectsJobTriggersActivateResource,

    -- ** Constructing a Request
    DLPProjectsJobTriggersActivate (..),
    newDLPProjectsJobTriggersActivate,
  )
where

import Gogol.DLP.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dlp.projects.jobTriggers.activate@ method which the
-- 'DLPProjectsJobTriggersActivate' request conforms to.
type DLPProjectsJobTriggersActivateResource =
  "v2"
    Core.:> Core.CaptureMode "name" "activate" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GooglePrivacyDlpV2ActivateJobTriggerRequest
    Core.:> Core.Post '[Core.JSON] GooglePrivacyDlpV2DlpJob

-- | Activate a job trigger. Causes the immediate execute of a trigger instead of waiting on the trigger event to occur.
--
-- /See:/ 'newDLPProjectsJobTriggersActivate' smart constructor.
data DLPProjectsJobTriggersActivate = DLPProjectsJobTriggersActivate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the trigger to activate, for example @projects\/dlp-test-project\/jobTriggers\/53234423@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GooglePrivacyDlpV2ActivateJobTriggerRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsJobTriggersActivate' with the minimum fields required to make a request.
newDLPProjectsJobTriggersActivate ::
  -- |  Required. Resource name of the trigger to activate, for example @projects\/dlp-test-project\/jobTriggers\/53234423@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GooglePrivacyDlpV2ActivateJobTriggerRequest ->
  DLPProjectsJobTriggersActivate
newDLPProjectsJobTriggersActivate name payload =
  DLPProjectsJobTriggersActivate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DLPProjectsJobTriggersActivate where
  type Rs DLPProjectsJobTriggersActivate = GooglePrivacyDlpV2DlpJob
  type
    Scopes DLPProjectsJobTriggersActivate =
      '[CloudPlatform'FullControl]
  requestClient DLPProjectsJobTriggersActivate {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      dLPService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DLPProjectsJobTriggersActivateResource)
          Core.mempty
