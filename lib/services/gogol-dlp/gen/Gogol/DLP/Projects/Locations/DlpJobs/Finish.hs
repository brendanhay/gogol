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
-- Module      : Gogol.DLP.Projects.Locations.DlpJobs.Finish
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finish a running hybrid DlpJob. Triggers the finalization steps and running of any enabled actions that have not yet run.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.dlpJobs.finish@.
module Gogol.DLP.Projects.Locations.DlpJobs.Finish
  ( -- * Resource
    DLPProjectsLocationsDlpJobsFinishResource,

    -- ** Constructing a Request
    DLPProjectsLocationsDlpJobsFinish (..),
    newDLPProjectsLocationsDlpJobsFinish,
  )
where

import Gogol.DLP.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dlp.projects.locations.dlpJobs.finish@ method which the
-- 'DLPProjectsLocationsDlpJobsFinish' request conforms to.
type DLPProjectsLocationsDlpJobsFinishResource =
  "v2"
    Core.:> Core.CaptureMode "name" "finish" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GooglePrivacyDlpV2FinishDlpJobRequest
    Core.:> Core.Post '[Core.JSON] GoogleProtobufEmpty

-- | Finish a running hybrid DlpJob. Triggers the finalization steps and running of any enabled actions that have not yet run.
--
-- /See:/ 'newDLPProjectsLocationsDlpJobsFinish' smart constructor.
data DLPProjectsLocationsDlpJobsFinish = DLPProjectsLocationsDlpJobsFinish
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the DlpJob resource to be cancelled.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GooglePrivacyDlpV2FinishDlpJobRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsLocationsDlpJobsFinish' with the minimum fields required to make a request.
newDLPProjectsLocationsDlpJobsFinish ::
  -- |  Required. The name of the DlpJob resource to be cancelled. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GooglePrivacyDlpV2FinishDlpJobRequest ->
  DLPProjectsLocationsDlpJobsFinish
newDLPProjectsLocationsDlpJobsFinish name payload =
  DLPProjectsLocationsDlpJobsFinish
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
    DLPProjectsLocationsDlpJobsFinish
  where
  type
    Rs DLPProjectsLocationsDlpJobsFinish =
      GoogleProtobufEmpty
  type
    Scopes DLPProjectsLocationsDlpJobsFinish =
      '[CloudPlatform'FullControl]
  requestClient DLPProjectsLocationsDlpJobsFinish {..} =
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
              Core.Proxy DLPProjectsLocationsDlpJobsFinishResource
          )
          Core.mempty
