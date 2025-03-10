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
-- Module      : Gogol.AndroidPublisher.Edits.Deobfuscationfiles.Upload
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads a new deobfuscation file and attaches to the specified APK.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.deobfuscationfiles.upload@.
module Gogol.AndroidPublisher.Edits.Deobfuscationfiles.Upload
  ( -- * Resource
    AndroidPublisherEditsDeobfuscationfilesUploadResource,

    -- ** Constructing a Request
    AndroidPublisherEditsDeobfuscationfilesUpload (..),
    newAndroidPublisherEditsDeobfuscationfilesUpload,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.edits.deobfuscationfiles.upload@ method which the
-- 'AndroidPublisherEditsDeobfuscationfilesUpload' request conforms to.
type AndroidPublisherEditsDeobfuscationfilesUploadResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "edits"
    Core.:> Core.Capture "editId" Core.Text
    Core.:> "apks"
    Core.:> Core.Capture "apkVersionCode" Core.Int32
    Core.:> "deobfuscationFiles"
    Core.:> Core.Capture
              "deobfuscationFileType"
              EditsDeobfuscationfilesUploadDeobfuscationFileType
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] DeobfuscationFilesUploadResponse
    Core.:<|> "upload"
    Core.:> "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "edits"
    Core.:> Core.Capture "editId" Core.Text
    Core.:> "apks"
    Core.:> Core.Capture "apkVersionCode" Core.Int32
    Core.:> "deobfuscationFiles"
    Core.:> Core.Capture
              "deobfuscationFileType"
              EditsDeobfuscationfilesUploadDeobfuscationFileType
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.QueryParam "uploadType" Core.AltMedia
    Core.:> Core.AltMedia
    Core.:> Core.Post '[Core.JSON] DeobfuscationFilesUploadResponse

-- | Uploads a new deobfuscation file and attaches to the specified APK.
--
-- /See:/ 'newAndroidPublisherEditsDeobfuscationfilesUpload' smart constructor.
data AndroidPublisherEditsDeobfuscationfilesUpload = AndroidPublisherEditsDeobfuscationfilesUpload
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The version code of the APK whose Deobfuscation File is being uploaded.
    apkVersionCode :: Core.Int32,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The type of the deobfuscation file.
    deobfuscationFileType :: EditsDeobfuscationfilesUploadDeobfuscationFileType,
    -- | Unique identifier for this edit.
    editId :: Core.Text,
    -- | Unique identifier for the Android app.
    packageName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherEditsDeobfuscationfilesUpload' with the minimum fields required to make a request.
newAndroidPublisherEditsDeobfuscationfilesUpload ::
  -- |  The version code of the APK whose Deobfuscation File is being uploaded. See 'apkVersionCode'.
  Core.Int32 ->
  -- |  The type of the deobfuscation file. See 'deobfuscationFileType'.
  EditsDeobfuscationfilesUploadDeobfuscationFileType ->
  -- |  Unique identifier for this edit. See 'editId'.
  Core.Text ->
  -- |  Unique identifier for the Android app. See 'packageName'.
  Core.Text ->
  AndroidPublisherEditsDeobfuscationfilesUpload
newAndroidPublisherEditsDeobfuscationfilesUpload
  apkVersionCode
  deobfuscationFileType
  editId
  packageName =
    AndroidPublisherEditsDeobfuscationfilesUpload
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        apkVersionCode = apkVersionCode,
        callback = Core.Nothing,
        deobfuscationFileType = deobfuscationFileType,
        editId = editId,
        packageName = packageName,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AndroidPublisherEditsDeobfuscationfilesUpload
  where
  type
    Rs AndroidPublisherEditsDeobfuscationfilesUpload =
      DeobfuscationFilesUploadResponse
  type
    Scopes AndroidPublisherEditsDeobfuscationfilesUpload =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherEditsDeobfuscationfilesUpload {..} =
    go
      packageName
      editId
      apkVersionCode
      deobfuscationFileType
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
              Core.Proxy AndroidPublisherEditsDeobfuscationfilesUploadResource
          )
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload AndroidPublisherEditsDeobfuscationfilesUpload)
  where
  type
    Rs
      (Core.MediaUpload AndroidPublisherEditsDeobfuscationfilesUpload) =
      DeobfuscationFilesUploadResponse
  type
    Scopes
      (Core.MediaUpload AndroidPublisherEditsDeobfuscationfilesUpload) =
      Core.Scopes AndroidPublisherEditsDeobfuscationfilesUpload
  requestClient
    ( Core.MediaUpload
        AndroidPublisherEditsDeobfuscationfilesUpload {..}
        body
      ) =
      go
        packageName
        editId
        apkVersionCode
        deobfuscationFileType
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
                Core.Proxy AndroidPublisherEditsDeobfuscationfilesUploadResource
            )
            Core.mempty
