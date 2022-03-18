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
-- Module      : Gogol.DLP.Projects.Locations.JobTriggers.Activate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Activate a job trigger. Causes the immediate execute of a trigger instead of waiting on the trigger event to occur.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.jobTriggers.activate@.
module Gogol.DLP.Projects.Locations.JobTriggers.Activate
  ( -- * Resource
    DLPProjectsLocationsJobTriggersActivateResource,

    -- ** Constructing a Request
    newDLPProjectsLocationsJobTriggersActivate,
    DLPProjectsLocationsJobTriggersActivate,
  )
where

import Gogol.DLP.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dlp.projects.locations.jobTriggers.activate@ method which the
-- 'DLPProjectsLocationsJobTriggersActivate' request conforms to.
type DLPProjectsLocationsJobTriggersActivateResource =
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
-- /See:/ 'newDLPProjectsLocationsJobTriggersActivate' smart constructor.
data DLPProjectsLocationsJobTriggersActivate = DLPProjectsLocationsJobTriggersActivate
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

-- | Creates a value of 'DLPProjectsLocationsJobTriggersActivate' with the minimum fields required to make a request.
newDLPProjectsLocationsJobTriggersActivate ::
  -- |  Required. Resource name of the trigger to activate, for example @projects\/dlp-test-project\/jobTriggers\/53234423@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GooglePrivacyDlpV2ActivateJobTriggerRequest ->
  DLPProjectsLocationsJobTriggersActivate
newDLPProjectsLocationsJobTriggersActivate name payload =
  DLPProjectsLocationsJobTriggersActivate
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
    DLPProjectsLocationsJobTriggersActivate
  where
  type
    Rs DLPProjectsLocationsJobTriggersActivate =
      GooglePrivacyDlpV2DlpJob
  type
    Scopes DLPProjectsLocationsJobTriggersActivate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    DLPProjectsLocationsJobTriggersActivate {..} =
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
                  DLPProjectsLocationsJobTriggersActivateResource
            )
            Core.mempty
