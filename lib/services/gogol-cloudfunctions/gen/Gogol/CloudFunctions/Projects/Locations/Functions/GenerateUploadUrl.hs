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
-- Module      : Gogol.CloudFunctions.Projects.Locations.Functions.GenerateUploadUrl
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a signed URL for uploading a function source code. For more information about the signed URL usage see: https:\/\/cloud.google.com\/storage\/docs\/access-control\/signed-urls. Once the function source code upload is complete, the used signed URL should be provided in CreateFunction or UpdateFunction request as a reference to the function source code. When uploading source code to the generated signed URL, please follow these restrictions: * Source file type should be a zip file. * No credentials should be attached - the signed URLs provide access to the target bucket using internal service identity; if credentials were attached, the identity from the credentials would be used, but that identity does not have permissions to upload files to the URL. When making a HTTP PUT request, these two headers need to be specified: * @content-type: application\/zip@ And this header SHOULD NOT be specified: * @Authorization: Bearer YOUR_TOKEN@
--
-- /See:/ <https://cloud.google.com/functions Cloud Functions API Reference> for @cloudfunctions.projects.locations.functions.generateUploadUrl@.
module Gogol.CloudFunctions.Projects.Locations.Functions.GenerateUploadUrl
  ( -- * Resource
    CloudFunctionsProjectsLocationsFunctionsGenerateUploadUrlResource,

    -- ** Constructing a Request
    newCloudFunctionsProjectsLocationsFunctionsGenerateUploadUrl,
    CloudFunctionsProjectsLocationsFunctionsGenerateUploadUrl,
  )
where

import Gogol.CloudFunctions.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudfunctions.projects.locations.functions.generateUploadUrl@ method which the
-- 'CloudFunctionsProjectsLocationsFunctionsGenerateUploadUrl' request conforms to.
type CloudFunctionsProjectsLocationsFunctionsGenerateUploadUrlResource =
  "v2beta"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "functions:generateUploadUrl"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GenerateUploadUrlRequest
    Core.:> Core.Post '[Core.JSON] GenerateUploadUrlResponse

-- | Returns a signed URL for uploading a function source code. For more information about the signed URL usage see: https:\/\/cloud.google.com\/storage\/docs\/access-control\/signed-urls. Once the function source code upload is complete, the used signed URL should be provided in CreateFunction or UpdateFunction request as a reference to the function source code. When uploading source code to the generated signed URL, please follow these restrictions: * Source file type should be a zip file. * No credentials should be attached - the signed URLs provide access to the target bucket using internal service identity; if credentials were attached, the identity from the credentials would be used, but that identity does not have permissions to upload files to the URL. When making a HTTP PUT request, these two headers need to be specified: * @content-type: application\/zip@ And this header SHOULD NOT be specified: * @Authorization: Bearer YOUR_TOKEN@
--
-- /See:/ 'newCloudFunctionsProjectsLocationsFunctionsGenerateUploadUrl' smart constructor.
data CloudFunctionsProjectsLocationsFunctionsGenerateUploadUrl = CloudFunctionsProjectsLocationsFunctionsGenerateUploadUrl
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The project and location in which the Google Cloud Storage signed URL should be generated, specified in the format @projects\/*\/locations\/*@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GenerateUploadUrlRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudFunctionsProjectsLocationsFunctionsGenerateUploadUrl' with the minimum fields required to make a request.
newCloudFunctionsProjectsLocationsFunctionsGenerateUploadUrl ::
  -- |  Required. The project and location in which the Google Cloud Storage signed URL should be generated, specified in the format @projects\/*\/locations\/*@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GenerateUploadUrlRequest ->
  CloudFunctionsProjectsLocationsFunctionsGenerateUploadUrl
newCloudFunctionsProjectsLocationsFunctionsGenerateUploadUrl parent payload =
  CloudFunctionsProjectsLocationsFunctionsGenerateUploadUrl
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
    CloudFunctionsProjectsLocationsFunctionsGenerateUploadUrl
  where
  type
    Rs
      CloudFunctionsProjectsLocationsFunctionsGenerateUploadUrl =
      GenerateUploadUrlResponse
  type
    Scopes
      CloudFunctionsProjectsLocationsFunctionsGenerateUploadUrl =
      '[CloudPlatform'FullControl]
  requestClient
    CloudFunctionsProjectsLocationsFunctionsGenerateUploadUrl {..} =
      go
        parent
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
                  CloudFunctionsProjectsLocationsFunctionsGenerateUploadUrlResource
            )
            Core.mempty
