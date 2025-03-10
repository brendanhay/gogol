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
-- Module      : Gogol.CloudFunctions.Projects.Locations.Functions.GenerateDownloadUrl
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a signed URL for downloading deployed function source code. The URL is only valid for a limited period and should be used within 30 minutes of generation. For more information about the signed URL usage see: https:\/\/cloud.google.com\/storage\/docs\/access-control\/signed-urls
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.generateDownloadUrl@.
module Gogol.CloudFunctions.Projects.Locations.Functions.GenerateDownloadUrl
  ( -- * Resource
    CloudFunctionsProjectsLocationsFunctionsGenerateDownloadUrlResource,

    -- ** Constructing a Request
    CloudFunctionsProjectsLocationsFunctionsGenerateDownloadUrl (..),
    newCloudFunctionsProjectsLocationsFunctionsGenerateDownloadUrl,
  )
where

import Gogol.CloudFunctions.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudfunctions.projects.locations.functions.generateDownloadUrl@ method which the
-- 'CloudFunctionsProjectsLocationsFunctionsGenerateDownloadUrl' request conforms to.
type CloudFunctionsProjectsLocationsFunctionsGenerateDownloadUrlResource =
  "v2"
    Core.:> Core.CaptureMode "name" "generateDownloadUrl" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GenerateDownloadUrlRequest
    Core.:> Core.Post '[Core.JSON] GenerateDownloadUrlResponse

-- | Returns a signed URL for downloading deployed function source code. The URL is only valid for a limited period and should be used within 30 minutes of generation. For more information about the signed URL usage see: https:\/\/cloud.google.com\/storage\/docs\/access-control\/signed-urls
--
-- /See:/ 'newCloudFunctionsProjectsLocationsFunctionsGenerateDownloadUrl' smart constructor.
data CloudFunctionsProjectsLocationsFunctionsGenerateDownloadUrl = CloudFunctionsProjectsLocationsFunctionsGenerateDownloadUrl
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of function for which source code Google Cloud Storage signed URL should be generated.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GenerateDownloadUrlRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudFunctionsProjectsLocationsFunctionsGenerateDownloadUrl' with the minimum fields required to make a request.
newCloudFunctionsProjectsLocationsFunctionsGenerateDownloadUrl ::
  -- |  Required. The name of function for which source code Google Cloud Storage signed URL should be generated. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GenerateDownloadUrlRequest ->
  CloudFunctionsProjectsLocationsFunctionsGenerateDownloadUrl
newCloudFunctionsProjectsLocationsFunctionsGenerateDownloadUrl
  name
  payload =
    CloudFunctionsProjectsLocationsFunctionsGenerateDownloadUrl
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    CloudFunctionsProjectsLocationsFunctionsGenerateDownloadUrl
  where
  type
    Rs CloudFunctionsProjectsLocationsFunctionsGenerateDownloadUrl =
      GenerateDownloadUrlResponse
  type
    Scopes
      CloudFunctionsProjectsLocationsFunctionsGenerateDownloadUrl =
      '[CloudPlatform'FullControl]
  requestClient
    CloudFunctionsProjectsLocationsFunctionsGenerateDownloadUrl {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        cloudFunctionsService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudFunctionsProjectsLocationsFunctionsGenerateDownloadUrlResource
            )
            Core.mempty
