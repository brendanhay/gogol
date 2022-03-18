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
-- Module      : Gogol.DLP.Projects.Content.Deidentify
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- De-identifies potentially sensitive info from a ContentItem. This method has limits on input size and output size. See https:\/\/cloud.google.com\/dlp\/docs\/deidentify-sensitive-data to learn more. When no InfoTypes or CustomInfoTypes are specified in this request, the system will automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.content.deidentify@.
module Gogol.DLP.Projects.Content.Deidentify
  ( -- * Resource
    DLPProjectsContentDeidentifyResource,

    -- ** Constructing a Request
    newDLPProjectsContentDeidentify,
    DLPProjectsContentDeidentify,
  )
where

import Gogol.DLP.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dlp.projects.content.deidentify@ method which the
-- 'DLPProjectsContentDeidentify' request conforms to.
type DLPProjectsContentDeidentifyResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "content:deidentify"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GooglePrivacyDlpV2DeidentifyContentRequest
    Core.:> Core.Post
              '[Core.JSON]
              GooglePrivacyDlpV2DeidentifyContentResponse

-- | De-identifies potentially sensitive info from a ContentItem. This method has limits on input size and output size. See https:\/\/cloud.google.com\/dlp\/docs\/deidentify-sensitive-data to learn more. When no InfoTypes or CustomInfoTypes are specified in this request, the system will automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated.
--
-- /See:/ 'newDLPProjectsContentDeidentify' smart constructor.
data DLPProjectsContentDeidentify = DLPProjectsContentDeidentify
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Parent resource name. The format of this value varies depending on whether you have <https://cloud.google.com/dlp/docs/specifying-location specified a processing location>: + Projects scope, location specified: @projects\/@PROJECT/ID@\/locations\/@LOCATION/ID + Projects scope, no location specified (defaults to global): @projects\/@PROJECT_ID The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GooglePrivacyDlpV2DeidentifyContentRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsContentDeidentify' with the minimum fields required to make a request.
newDLPProjectsContentDeidentify ::
  -- |  Parent resource name. The format of this value varies depending on whether you have <https://cloud.google.com/dlp/docs/specifying-location specified a processing location>: + Projects scope, location specified: @projects\/@PROJECT/ID@\/locations\/@LOCATION/ID + Projects scope, no location specified (defaults to global): @projects\/@PROJECT_ID The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3 See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GooglePrivacyDlpV2DeidentifyContentRequest ->
  DLPProjectsContentDeidentify
newDLPProjectsContentDeidentify parent payload =
  DLPProjectsContentDeidentify
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DLPProjectsContentDeidentify
  where
  type
    Rs DLPProjectsContentDeidentify =
      GooglePrivacyDlpV2DeidentifyContentResponse
  type
    Scopes DLPProjectsContentDeidentify =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient DLPProjectsContentDeidentify {..} =
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
              Core.Proxy DLPProjectsContentDeidentifyResource
          )
          Core.mempty
