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
-- Module      : Gogol.DLP.Projects.Locations.JobTriggers.HybridInspect
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inspect hybrid content and store findings to a trigger. The inspection will be processed asynchronously. To review the findings monitor the jobs within the trigger.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.jobTriggers.hybridInspect@.
module Gogol.DLP.Projects.Locations.JobTriggers.HybridInspect
  ( -- * Resource
    DLPProjectsLocationsJobTriggersHybridInspectResource,

    -- ** Constructing a Request
    DLPProjectsLocationsJobTriggersHybridInspect (..),
    newDLPProjectsLocationsJobTriggersHybridInspect,
  )
where

import Gogol.DLP.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dlp.projects.locations.jobTriggers.hybridInspect@ method which the
-- 'DLPProjectsLocationsJobTriggersHybridInspect' request conforms to.
type DLPProjectsLocationsJobTriggersHybridInspectResource =
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
              GooglePrivacyDlpV2HybridInspectJobTriggerRequest
    Core.:> Core.Post
              '[Core.JSON]
              GooglePrivacyDlpV2HybridInspectResponse

-- | Inspect hybrid content and store findings to a trigger. The inspection will be processed asynchronously. To review the findings monitor the jobs within the trigger.
--
-- /See:/ 'newDLPProjectsLocationsJobTriggersHybridInspect' smart constructor.
data DLPProjectsLocationsJobTriggersHybridInspect = DLPProjectsLocationsJobTriggersHybridInspect
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the trigger to execute a hybrid inspect on, for example @projects\/dlp-test-project\/jobTriggers\/53234423@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GooglePrivacyDlpV2HybridInspectJobTriggerRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsLocationsJobTriggersHybridInspect' with the minimum fields required to make a request.
newDLPProjectsLocationsJobTriggersHybridInspect ::
  -- |  Required. Resource name of the trigger to execute a hybrid inspect on, for example @projects\/dlp-test-project\/jobTriggers\/53234423@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GooglePrivacyDlpV2HybridInspectJobTriggerRequest ->
  DLPProjectsLocationsJobTriggersHybridInspect
newDLPProjectsLocationsJobTriggersHybridInspect name payload =
  DLPProjectsLocationsJobTriggersHybridInspect
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
    DLPProjectsLocationsJobTriggersHybridInspect
  where
  type
    Rs DLPProjectsLocationsJobTriggersHybridInspect =
      GooglePrivacyDlpV2HybridInspectResponse
  type
    Scopes
      DLPProjectsLocationsJobTriggersHybridInspect =
      '[CloudPlatform'FullControl]
  requestClient
    DLPProjectsLocationsJobTriggersHybridInspect {..} =
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
                  DLPProjectsLocationsJobTriggersHybridInspectResource
            )
            Core.mempty
