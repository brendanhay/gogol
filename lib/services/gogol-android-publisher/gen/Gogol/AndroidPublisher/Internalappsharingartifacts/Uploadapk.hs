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
-- Module      : Gogol.AndroidPublisher.Internalappsharingartifacts.Uploadapk
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads an APK to internal app sharing. If you are using the Google API client libraries, please increase the timeout of the http request before calling this endpoint (a timeout of 2 minutes is recommended). See <https://developers.google.com/api-client-library/java/google-api-java-client/errors Timeouts and Errors> for an example in java.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.internalappsharingartifacts.uploadapk@.
module Gogol.AndroidPublisher.Internalappsharingartifacts.Uploadapk
  ( -- * Resource
    AndroidPublisherInternalappsharingartifactsUploadapkResource,

    -- ** Constructing a Request
    AndroidPublisherInternalappsharingartifactsUploadapk (..),
    newAndroidPublisherInternalappsharingartifactsUploadapk,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.internalappsharingartifacts.uploadapk@ method which the
-- 'AndroidPublisherInternalappsharingartifactsUploadapk' request conforms to.
type AndroidPublisherInternalappsharingartifactsUploadapkResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> "internalappsharing"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "artifacts"
    Core.:> "apk"
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
    Core.:> "apk"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.QueryParam "uploadType" Core.AltMedia
    Core.:> Core.AltMedia
    Core.:> Core.Post '[Core.JSON] InternalAppSharingArtifact

-- | Uploads an APK to internal app sharing. If you are using the Google API client libraries, please increase the timeout of the http request before calling this endpoint (a timeout of 2 minutes is recommended). See <https://developers.google.com/api-client-library/java/google-api-java-client/errors Timeouts and Errors> for an example in java.
--
-- /See:/ 'newAndroidPublisherInternalappsharingartifactsUploadapk' smart constructor.
data AndroidPublisherInternalappsharingartifactsUploadapk = AndroidPublisherInternalappsharingartifactsUploadapk
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

-- | Creates a value of 'AndroidPublisherInternalappsharingartifactsUploadapk' with the minimum fields required to make a request.
newAndroidPublisherInternalappsharingartifactsUploadapk ::
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  AndroidPublisherInternalappsharingartifactsUploadapk
newAndroidPublisherInternalappsharingartifactsUploadapk packageName =
  AndroidPublisherInternalappsharingartifactsUploadapk
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      packageName = packageName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherInternalappsharingartifactsUploadapk
  where
  type
    Rs AndroidPublisherInternalappsharingartifactsUploadapk =
      InternalAppSharingArtifact
  type
    Scopes AndroidPublisherInternalappsharingartifactsUploadapk =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherInternalappsharingartifactsUploadapk {..} =
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
                  AndroidPublisherInternalappsharingartifactsUploadapkResource
            )
            Core.mempty

instance
  Core.GoogleRequest
    ( Core.MediaUpload
        AndroidPublisherInternalappsharingartifactsUploadapk
    )
  where
  type
    Rs
      ( Core.MediaUpload
          AndroidPublisherInternalappsharingartifactsUploadapk
      ) =
      InternalAppSharingArtifact
  type
    Scopes
      ( Core.MediaUpload
          AndroidPublisherInternalappsharingartifactsUploadapk
      ) =
      Core.Scopes AndroidPublisherInternalappsharingartifactsUploadapk
  requestClient
    ( Core.MediaUpload
        AndroidPublisherInternalappsharingartifactsUploadapk {..}
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
                  AndroidPublisherInternalappsharingartifactsUploadapkResource
            )
            Core.mempty
