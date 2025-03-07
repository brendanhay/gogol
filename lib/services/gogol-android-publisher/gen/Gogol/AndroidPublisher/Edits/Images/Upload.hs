{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.AndroidPublisher.Edits.Images.Upload
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads an image of the specified language and image type, and adds to the edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.images.upload@.
module Gogol.AndroidPublisher.Edits.Images.Upload
  ( -- * Resource
    AndroidPublisherEditsImagesUploadResource,

    -- ** Constructing a Request
    AndroidPublisherEditsImagesUpload (..),
    newAndroidPublisherEditsImagesUpload,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.edits.images.upload@ method which the
-- 'AndroidPublisherEditsImagesUpload' request conforms to.
type AndroidPublisherEditsImagesUploadResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "edits"
    Core.:> Core.Capture "editId" Core.Text
    Core.:> "listings"
    Core.:> Core.Capture "language" Core.Text
    Core.:> Core.Capture "imageType" EditsImagesUploadImageType
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ImagesUploadResponse
    Core.:<|> "upload"
    Core.:> "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "edits"
    Core.:> Core.Capture "editId" Core.Text
    Core.:> "listings"
    Core.:> Core.Capture "language" Core.Text
    Core.:> Core.Capture "imageType" EditsImagesUploadImageType
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.QueryParam "uploadType" Core.AltMedia
    Core.:> Core.AltMedia
    Core.:> Core.Post '[Core.JSON] ImagesUploadResponse

-- | Uploads an image of the specified language and image type, and adds to the edit.
--
-- /See:/ 'newAndroidPublisherEditsImagesUpload' smart constructor.
data AndroidPublisherEditsImagesUpload = AndroidPublisherEditsImagesUpload
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the edit.
    editId :: Core.Text,
    -- | Type of the Image.
    imageType :: EditsImagesUploadImageType,
    -- | Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German). Providing a language that is not supported by the App is a no-op.
    language :: Core.Text,
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherEditsImagesUpload' with the minimum fields required to make a request.
newAndroidPublisherEditsImagesUpload ::
  -- |  Identifier of the edit. See 'editId'.
  Core.Text ->
  -- |  Type of the Image. See 'imageType'.
  EditsImagesUploadImageType ->
  -- |  Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German). Providing a language that is not supported by the App is a no-op. See 'language'.
  Core.Text ->
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  AndroidPublisherEditsImagesUpload
newAndroidPublisherEditsImagesUpload
  editId
  imageType
  language
  packageName =
    AndroidPublisherEditsImagesUpload
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        editId = editId,
        imageType = imageType,
        language = language,
        packageName = packageName,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest AndroidPublisherEditsImagesUpload where
  type Rs AndroidPublisherEditsImagesUpload = ImagesUploadResponse
  type
    Scopes AndroidPublisherEditsImagesUpload =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherEditsImagesUpload {..} =
    go
      packageName
      editId
      language
      imageType
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
              Core.Proxy AndroidPublisherEditsImagesUploadResource
          )
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload AndroidPublisherEditsImagesUpload)
  where
  type
    Rs (Core.MediaUpload AndroidPublisherEditsImagesUpload) =
      ImagesUploadResponse
  type
    Scopes (Core.MediaUpload AndroidPublisherEditsImagesUpload) =
      Core.Scopes AndroidPublisherEditsImagesUpload
  requestClient
    (Core.MediaUpload AndroidPublisherEditsImagesUpload {..} body) =
      go
        packageName
        editId
        language
        imageType
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
                Core.Proxy AndroidPublisherEditsImagesUploadResource
            )
            Core.mempty
