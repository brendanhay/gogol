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
-- Module      : Gogol.DLP.Projects.Locations.DlpJobs.Cancel
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts asynchronous cancellation on a long-running DlpJob. The server makes a best effort to cancel the DlpJob, but success is not guaranteed. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/inspecting-storage and https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/compute-risk-analysis to learn more.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.projects.locations.dlpJobs.cancel@.
module Gogol.DLP.Projects.Locations.DlpJobs.Cancel
  ( -- * Resource
    DLPProjectsLocationsDlpJobsCancelResource,

    -- ** Constructing a Request
    DLPProjectsLocationsDlpJobsCancel (..),
    newDLPProjectsLocationsDlpJobsCancel,
  )
where

import Gogol.DLP.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dlp.projects.locations.dlpJobs.cancel@ method which the
-- 'DLPProjectsLocationsDlpJobsCancel' request conforms to.
type DLPProjectsLocationsDlpJobsCancelResource =
  "v2"
    Core.:> Core.CaptureMode "name" "cancel" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GooglePrivacyDlpV2CancelDlpJobRequest
    Core.:> Core.Post '[Core.JSON] GoogleProtobufEmpty

-- | Starts asynchronous cancellation on a long-running DlpJob. The server makes a best effort to cancel the DlpJob, but success is not guaranteed. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/inspecting-storage and https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/compute-risk-analysis to learn more.
--
-- /See:/ 'newDLPProjectsLocationsDlpJobsCancel' smart constructor.
data DLPProjectsLocationsDlpJobsCancel = DLPProjectsLocationsDlpJobsCancel
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the DlpJob resource to be cancelled.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GooglePrivacyDlpV2CancelDlpJobRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsLocationsDlpJobsCancel' with the minimum fields required to make a request.
newDLPProjectsLocationsDlpJobsCancel ::
  -- |  Required. The name of the DlpJob resource to be cancelled. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GooglePrivacyDlpV2CancelDlpJobRequest ->
  DLPProjectsLocationsDlpJobsCancel
newDLPProjectsLocationsDlpJobsCancel name payload =
  DLPProjectsLocationsDlpJobsCancel
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DLPProjectsLocationsDlpJobsCancel where
  type Rs DLPProjectsLocationsDlpJobsCancel = GoogleProtobufEmpty
  type
    Scopes DLPProjectsLocationsDlpJobsCancel =
      '[CloudPlatform'FullControl]
  requestClient DLPProjectsLocationsDlpJobsCancel {..} =
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
          ( Core.Proxy ::
              Core.Proxy DLPProjectsLocationsDlpJobsCancelResource
          )
          Core.mempty
