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
-- Module      : Gogol.DLP.Projects.DlpJobs.Cancel
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts asynchronous cancellation on a long-running DlpJob. The server makes a best effort to cancel the DlpJob, but success is not guaranteed. See https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage and https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.dlpJobs.cancel@.
module Gogol.DLP.Projects.DlpJobs.Cancel
  ( -- * Resource
    DLPProjectsDlpJobsCancelResource,

    -- ** Constructing a Request
    DLPProjectsDlpJobsCancel (..),
    newDLPProjectsDlpJobsCancel,
  )
where

import Gogol.DLP.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dlp.projects.dlpJobs.cancel@ method which the
-- 'DLPProjectsDlpJobsCancel' request conforms to.
type DLPProjectsDlpJobsCancelResource =
  "v2"
    Core.:> Core.CaptureMode "name" "cancel" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GooglePrivacyDlpV2CancelDlpJobRequest
    Core.:> Core.Post '[Core.JSON] GoogleProtobufEmpty

-- | Starts asynchronous cancellation on a long-running DlpJob. The server makes a best effort to cancel the DlpJob, but success is not guaranteed. See https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage and https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to learn more.
--
-- /See:/ 'newDLPProjectsDlpJobsCancel' smart constructor.
data DLPProjectsDlpJobsCancel = DLPProjectsDlpJobsCancel
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

-- | Creates a value of 'DLPProjectsDlpJobsCancel' with the minimum fields required to make a request.
newDLPProjectsDlpJobsCancel ::
  -- |  Required. The name of the DlpJob resource to be cancelled. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GooglePrivacyDlpV2CancelDlpJobRequest ->
  DLPProjectsDlpJobsCancel
newDLPProjectsDlpJobsCancel name payload =
  DLPProjectsDlpJobsCancel
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DLPProjectsDlpJobsCancel where
  type
    Rs DLPProjectsDlpJobsCancel =
      GoogleProtobufEmpty
  type
    Scopes DLPProjectsDlpJobsCancel =
      '[CloudPlatform'FullControl]
  requestClient DLPProjectsDlpJobsCancel {..} =
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
              Core.Proxy DLPProjectsDlpJobsCancelResource
          )
          Core.mempty
