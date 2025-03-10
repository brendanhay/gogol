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
-- Module      : Gogol.AndroidPublisher.Generatedapks.Download
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Downloads a single signed APK generated from an app bundle.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.generatedapks.download@.
module Gogol.AndroidPublisher.Generatedapks.Download
  ( -- * Resource
    AndroidPublisherGeneratedapksDownloadResource,

    -- ** Constructing a Request
    AndroidPublisherGeneratedapksDownload (..),
    newAndroidPublisherGeneratedapksDownload,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.generatedapks.download@ method which the
-- 'AndroidPublisherGeneratedapksDownload' request conforms to.
type AndroidPublisherGeneratedapksDownloadResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "generatedApks"
    Core.:> Core.Capture "versionCode" Core.Int32
    Core.:> "downloads"
    Core.:> Core.CaptureMode "downloadId" "download" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ()
    Core.:<|> "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "generatedApks"
    Core.:> Core.Capture "versionCode" Core.Int32
    Core.:> "downloads"
    Core.:> Core.CaptureMode "downloadId" "download" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltMedia
    Core.:> Core.Get '[Core.OctetStream] Core.Stream

-- | Downloads a single signed APK generated from an app bundle.
--
-- /See:/ 'newAndroidPublisherGeneratedapksDownload' smart constructor.
data AndroidPublisherGeneratedapksDownload = AndroidPublisherGeneratedapksDownload
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Download ID, which uniquely identifies the APK to download. Can be obtained from the response of @generatedapks.list@ method.
    downloadId :: Core.Text,
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Version code of the app bundle.
    versionCode :: Core.Int32
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherGeneratedapksDownload' with the minimum fields required to make a request.
newAndroidPublisherGeneratedapksDownload ::
  -- |  Download ID, which uniquely identifies the APK to download. Can be obtained from the response of @generatedapks.list@ method. See 'downloadId'.
  Core.Text ->
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  -- |  Version code of the app bundle. See 'versionCode'.
  Core.Int32 ->
  AndroidPublisherGeneratedapksDownload
newAndroidPublisherGeneratedapksDownload
  downloadId
  packageName
  versionCode =
    AndroidPublisherGeneratedapksDownload
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        downloadId = downloadId,
        packageName = packageName,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing,
        versionCode = versionCode
      }

instance Core.GoogleRequest AndroidPublisherGeneratedapksDownload where
  type Rs AndroidPublisherGeneratedapksDownload = ()
  type
    Scopes AndroidPublisherGeneratedapksDownload =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherGeneratedapksDownload {..} =
    go
      packageName
      versionCode
      downloadId
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
              Core.Proxy AndroidPublisherGeneratedapksDownloadResource
          )
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaDownload AndroidPublisherGeneratedapksDownload)
  where
  type
    Rs (Core.MediaDownload AndroidPublisherGeneratedapksDownload) =
      Core.Stream
  type
    Scopes
      (Core.MediaDownload AndroidPublisherGeneratedapksDownload) =
      Core.Scopes AndroidPublisherGeneratedapksDownload
  requestClient
    (Core.MediaDownload AndroidPublisherGeneratedapksDownload {..}) =
      go
        packageName
        versionCode
        downloadId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltMedia)
        androidPublisherService
      where
        _ Core.:<|> go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy AndroidPublisherGeneratedapksDownloadResource
            )
            Core.mempty
