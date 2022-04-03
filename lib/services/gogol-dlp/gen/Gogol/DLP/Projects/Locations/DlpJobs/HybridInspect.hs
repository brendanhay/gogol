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
-- Module      : Gogol.DLP.Projects.Locations.DlpJobs.HybridInspect
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inspect hybrid content and store findings to a job. To review the findings, inspect the job. Inspection will occur asynchronously.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.dlpJobs.hybridInspect@.
module Gogol.DLP.Projects.Locations.DlpJobs.HybridInspect
  ( -- * Resource
    DLPProjectsLocationsDlpJobsHybridInspectResource,

    -- ** Constructing a Request
    DLPProjectsLocationsDlpJobsHybridInspect (..),
    newDLPProjectsLocationsDlpJobsHybridInspect,
  )
where

import Gogol.DLP.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dlp.projects.locations.dlpJobs.hybridInspect@ method which the
-- 'DLPProjectsLocationsDlpJobsHybridInspect' request conforms to.
type DLPProjectsLocationsDlpJobsHybridInspectResource =
  "v2"
    Core.:> Core.CaptureMode "name" "hybridInspect" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GooglePrivacyDlpV2HybridInspectDlpJobRequest
    Core.:> Core.Post
              '[Core.JSON]
              GooglePrivacyDlpV2HybridInspectResponse

-- | Inspect hybrid content and store findings to a job. To review the findings, inspect the job. Inspection will occur asynchronously.
--
-- /See:/ 'newDLPProjectsLocationsDlpJobsHybridInspect' smart constructor.
data DLPProjectsLocationsDlpJobsHybridInspect = DLPProjectsLocationsDlpJobsHybridInspect
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the job to execute a hybrid inspect on, for example @projects\/dlp-test-project\/dlpJob\/53234423@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GooglePrivacyDlpV2HybridInspectDlpJobRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsLocationsDlpJobsHybridInspect' with the minimum fields required to make a request.
newDLPProjectsLocationsDlpJobsHybridInspect ::
  -- |  Required. Resource name of the job to execute a hybrid inspect on, for example @projects\/dlp-test-project\/dlpJob\/53234423@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GooglePrivacyDlpV2HybridInspectDlpJobRequest ->
  DLPProjectsLocationsDlpJobsHybridInspect
newDLPProjectsLocationsDlpJobsHybridInspect name payload =
  DLPProjectsLocationsDlpJobsHybridInspect
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
    DLPProjectsLocationsDlpJobsHybridInspect
  where
  type
    Rs DLPProjectsLocationsDlpJobsHybridInspect =
      GooglePrivacyDlpV2HybridInspectResponse
  type
    Scopes DLPProjectsLocationsDlpJobsHybridInspect =
      '[CloudPlatform'FullControl]
  requestClient
    DLPProjectsLocationsDlpJobsHybridInspect {..} =
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
                Core.Proxy
                  DLPProjectsLocationsDlpJobsHybridInspectResource
            )
            Core.mempty
