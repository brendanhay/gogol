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
-- Module      : Gogol.AndroidPublisher.Internalappsharingartifacts.Uploadbundle
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads an app bundle to internal app sharing. If you are using the Google API client libraries, please increase the timeout of the http request before calling this endpoint (a timeout of 2 minutes is recommended). See <https://developers.google.com/api-client-library/java/google-api-java-client/errors Timeouts and Errors> for an example in java.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.internalappsharingartifacts.uploadbundle@.
module Gogol.AndroidPublisher.Internalappsharingartifacts.Uploadbundle
  ( -- * Resource
    AndroidPublisherInternalappsharingartifactsUploadbundleResource,

    -- ** Constructing a Request
    newAndroidPublisherInternalappsharingartifactsUploadbundle,
    AndroidPublisherInternalappsharingartifactsUploadbundle,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.internalappsharingartifacts.uploadbundle@ method which the
-- 'AndroidPublisherInternalappsharingartifactsUploadbundle' request conforms to.
type AndroidPublisherInternalappsharingartifactsUploadbundleResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> "internalappsharing"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "artifacts"
    Core.:> "bundle"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] InternalAppSharingArtifact
    Core.:<|> "upload"
      Core.:> "androidpublisher"
      Core.:> "v3"
      Core.:> "applications"
      Core.:> "internalappsharing"
      Core.:> Core.Capture "packageName" Core.Text
      Core.:> "artifacts"
      Core.:> "bundle"
      Core.:> Core.QueryParam "$.xgafv" Xgafv
      Core.:> Core.QueryParam "access_token" Core.Text
      Core.:> Core.QueryParam "callback" Core.Text
      Core.:> Core.QueryParam "uploadType" Core.Text
      Core.:> Core.QueryParam "upload_protocol" Core.Text
      Core.:> Core.QueryParam "alt" Core.AltJSON
      Core.:> Core.QueryParam "uploadType" Core.AltMedia
      Core.:> Core.AltMedia
      Core.:> Core.Post
                '[Core.JSON]
                InternalAppSharingArtifact

-- | Uploads an app bundle to internal app sharing. If you are using the Google API client libraries, please increase the timeout of the http request before calling this endpoint (a timeout of 2 minutes is recommended). See <https://developers.google.com/api-client-library/java/google-api-java-client/errors Timeouts and Errors> for an example in java.
--
-- /See:/ 'newAndroidPublisherInternalappsharingartifactsUploadbundle' smart constructor.
data AndroidPublisherInternalappsharingartifactsUploadbundle = AndroidPublisherInternalappsharingartifactsUploadbundle
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherInternalappsharingartifactsUploadbundle' with the minimum fields required to make a request.
newAndroidPublisherInternalappsharingartifactsUploadbundle ::
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  AndroidPublisherInternalappsharingartifactsUploadbundle
newAndroidPublisherInternalappsharingartifactsUploadbundle packageName =
  AndroidPublisherInternalappsharingartifactsUploadbundle
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      packageName = packageName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherInternalappsharingartifactsUploadbundle
  where
  type
    Rs
      AndroidPublisherInternalappsharingartifactsUploadbundle =
      InternalAppSharingArtifact
  type
    Scopes
      AndroidPublisherInternalappsharingartifactsUploadbundle =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherInternalappsharingartifactsUploadbundle {..} =
      go
        packageName
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        androidPublisherService
      where
        go Core.:<|> _ =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidPublisherInternalappsharingartifactsUploadbundleResource
            )
            Core.mempty

instance
  Core.GoogleRequest
    ( Core.MediaUpload
        AndroidPublisherInternalappsharingartifactsUploadbundle
    )
  where
  type
    Rs
      ( Core.MediaUpload
          AndroidPublisherInternalappsharingartifactsUploadbundle
      ) =
      InternalAppSharingArtifact
  type
    Scopes
      ( Core.MediaUpload
          AndroidPublisherInternalappsharingartifactsUploadbundle
      ) =
      Core.Scopes
        AndroidPublisherInternalappsharingartifactsUploadbundle
  requestClient
    ( Core.MediaUpload
        AndroidPublisherInternalappsharingartifactsUploadbundle {..}
        body
      ) =
      go
        packageName
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        (Core.Just Core.AltMedia)
        body
        androidPublisherService
      where
        _ Core.:<|> go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidPublisherInternalappsharingartifactsUploadbundleResource
            )
            Core.mempty
