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
-- Module      : Gogol.DLP.Projects.Locations.JobTriggers.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a job trigger to run DLP actions such as scanning storage for sensitive information on a set schedule. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/creating-job-triggers to learn more.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.projects.locations.jobTriggers.create@.
module Gogol.DLP.Projects.Locations.JobTriggers.Create
  ( -- * Resource
    DLPProjectsLocationsJobTriggersCreateResource,

    -- ** Constructing a Request
    DLPProjectsLocationsJobTriggersCreate (..),
    newDLPProjectsLocationsJobTriggersCreate,
  )
where

import Gogol.DLP.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dlp.projects.locations.jobTriggers.create@ method which the
-- 'DLPProjectsLocationsJobTriggersCreate' request conforms to.
type DLPProjectsLocationsJobTriggersCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "jobTriggers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GooglePrivacyDlpV2CreateJobTriggerRequest
    Core.:> Core.Post '[Core.JSON] GooglePrivacyDlpV2JobTrigger

-- | Creates a job trigger to run DLP actions such as scanning storage for sensitive information on a set schedule. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/creating-job-triggers to learn more.
--
-- /See:/ 'newDLPProjectsLocationsJobTriggersCreate' smart constructor.
data DLPProjectsLocationsJobTriggersCreate = DLPProjectsLocationsJobTriggersCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Parent resource name. The format of this value varies depending on whether you have <https://cloud.google.com/sensitive-data-protection/docs/specifying-location specified a processing location>: + Projects scope, location specified: @projects\/{project_id}\/locations\/{location_id}@ + Projects scope, no location specified (defaults to global): @projects\/{project_id}@ The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GooglePrivacyDlpV2CreateJobTriggerRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsLocationsJobTriggersCreate' with the minimum fields required to make a request.
newDLPProjectsLocationsJobTriggersCreate ::
  -- |  Required. Parent resource name. The format of this value varies depending on whether you have <https://cloud.google.com/sensitive-data-protection/docs/specifying-location specified a processing location>: + Projects scope, location specified: @projects\/{project_id}\/locations\/{location_id}@ + Projects scope, no location specified (defaults to global): @projects\/{project_id}@ The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3 See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GooglePrivacyDlpV2CreateJobTriggerRequest ->
  DLPProjectsLocationsJobTriggersCreate
newDLPProjectsLocationsJobTriggersCreate parent payload =
  DLPProjectsLocationsJobTriggersCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DLPProjectsLocationsJobTriggersCreate where
  type
    Rs DLPProjectsLocationsJobTriggersCreate =
      GooglePrivacyDlpV2JobTrigger
  type
    Scopes DLPProjectsLocationsJobTriggersCreate =
      '[CloudPlatform'FullControl]
  requestClient DLPProjectsLocationsJobTriggersCreate {..} =
    go
      parent
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
              Core.Proxy DLPProjectsLocationsJobTriggersCreateResource
          )
          Core.mempty
