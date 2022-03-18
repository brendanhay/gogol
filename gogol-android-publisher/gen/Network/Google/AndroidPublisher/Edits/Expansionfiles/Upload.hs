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
-- Module      : Network.Google.AndroidPublisher.Edits.Expansionfiles.Upload
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads a new expansion file and attaches to the specified APK.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.expansionfiles.upload@.
module Network.Google.AndroidPublisher.Edits.Expansionfiles.Upload
  ( -- * Resource
    AndroidPublisherEditsExpansionfilesUploadResource,

    -- ** Constructing a Request
    newAndroidPublisherEditsExpansionfilesUpload,
    AndroidPublisherEditsExpansionfilesUpload,
  )
where

import Network.Google.AndroidPublisher.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @androidpublisher.edits.expansionfiles.upload@ method which the
-- 'AndroidPublisherEditsExpansionfilesUpload' request conforms to.
type AndroidPublisherEditsExpansionfilesUploadResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "edits"
    Core.:> Core.Capture "editId" Core.Text
    Core.:> "apks"
    Core.:> Core.Capture "apkVersionCode" Core.Int32
    Core.:> "expansionFiles"
    Core.:> Core.Capture
              "expansionFileType"
              EditsExpansionfilesUploadExpansionFileType
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post
              '[Core.JSON]
              ExpansionFilesUploadResponse
    Core.:<|> "upload"
      Core.:> "androidpublisher"
      Core.:> "v3"
      Core.:> "applications"
      Core.:> Core.Capture "packageName" Core.Text
      Core.:> "edits"
      Core.:> Core.Capture "editId" Core.Text
      Core.:> "apks"
      Core.:> Core.Capture "apkVersionCode" Core.Int32
      Core.:> "expansionFiles"
      Core.:> Core.Capture
                "expansionFileType"
                EditsExpansionfilesUploadExpansionFileType
      Core.:> Core.QueryParam "$.xgafv" Xgafv
      Core.:> Core.QueryParam "access_token" Core.Text
      Core.:> Core.QueryParam "callback" Core.Text
      Core.:> Core.QueryParam "uploadType" Core.Text
      Core.:> Core.QueryParam "upload_protocol" Core.Text
      Core.:> Core.QueryParam "alt" Core.AltJSON
      Core.:> Core.QueryParam
                "uploadType"
                Core.AltMedia
      Core.:> Core.AltMedia
      Core.:> Core.Post
                '[Core.JSON]
                ExpansionFilesUploadResponse

-- | Uploads a new expansion file and attaches to the specified APK.
--
-- /See:/ 'newAndroidPublisherEditsExpansionfilesUpload' smart constructor.
data AndroidPublisherEditsExpansionfilesUpload = AndroidPublisherEditsExpansionfilesUpload
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The version code of the APK whose expansion file configuration is being read or modified.
    apkVersionCode :: Core.Int32,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the edit.
    editId :: Core.Text,
    -- | The file type of the expansion file configuration which is being updated.
    expansionFileType :: EditsExpansionfilesUploadExpansionFileType,
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherEditsExpansionfilesUpload' with the minimum fields required to make a request.
newAndroidPublisherEditsExpansionfilesUpload ::
  -- |  The version code of the APK whose expansion file configuration is being read or modified. See 'apkVersionCode'.
  Core.Int32 ->
  -- |  Identifier of the edit. See 'editId'.
  Core.Text ->
  -- |  The file type of the expansion file configuration which is being updated. See 'expansionFileType'.
  EditsExpansionfilesUploadExpansionFileType ->
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  AndroidPublisherEditsExpansionfilesUpload
newAndroidPublisherEditsExpansionfilesUpload apkVersionCode editId expansionFileType packageName =
  AndroidPublisherEditsExpansionfilesUpload
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      apkVersionCode = apkVersionCode,
      callback = Core.Nothing,
      editId = editId,
      expansionFileType = expansionFileType,
      packageName = packageName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherEditsExpansionfilesUpload
  where
  type
    Rs AndroidPublisherEditsExpansionfilesUpload =
      ExpansionFilesUploadResponse
  type
    Scopes AndroidPublisherEditsExpansionfilesUpload =
      '["https://www.googleapis.com/auth/androidpublisher"]
  requestClient
    AndroidPublisherEditsExpansionfilesUpload {..} =
      go
        packageName
        editId
        apkVersionCode
        expansionFileType
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
                  AndroidPublisherEditsExpansionfilesUploadResource
            )
            Core.mempty

instance
  Core.GoogleRequest
    ( Core.MediaUpload
        AndroidPublisherEditsExpansionfilesUpload
    )
  where
  type
    Rs
      ( Core.MediaUpload
          AndroidPublisherEditsExpansionfilesUpload
      ) =
      ExpansionFilesUploadResponse
  type
    Scopes
      ( Core.MediaUpload
          AndroidPublisherEditsExpansionfilesUpload
      ) =
      Core.Scopes AndroidPublisherEditsExpansionfilesUpload
  requestClient
    ( Core.MediaUpload
        AndroidPublisherEditsExpansionfilesUpload {..}
        body
      ) =
      go
        packageName
        editId
        apkVersionCode
        expansionFileType
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
                  AndroidPublisherEditsExpansionfilesUploadResource
            )
            Core.mempty
