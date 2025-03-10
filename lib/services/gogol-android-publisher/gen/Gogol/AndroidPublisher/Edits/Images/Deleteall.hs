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
-- Module      : Gogol.AndroidPublisher.Edits.Images.Deleteall
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all images for the specified language and image type. Returns an empty response if no images are found.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.images.deleteall@.
module Gogol.AndroidPublisher.Edits.Images.Deleteall
  ( -- * Resource
    AndroidPublisherEditsImagesDeleteallResource,

    -- ** Constructing a Request
    AndroidPublisherEditsImagesDeleteall (..),
    newAndroidPublisherEditsImagesDeleteall,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.edits.images.deleteall@ method which the
-- 'AndroidPublisherEditsImagesDeleteall' request conforms to.
type AndroidPublisherEditsImagesDeleteallResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "edits"
    Core.:> Core.Capture "editId" Core.Text
    Core.:> "listings"
    Core.:> Core.Capture "language" Core.Text
    Core.:> Core.Capture "imageType" EditsImagesDeleteallImageType
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ImagesDeleteAllResponse

-- | Deletes all images for the specified language and image type. Returns an empty response if no images are found.
--
-- /See:/ 'newAndroidPublisherEditsImagesDeleteall' smart constructor.
data AndroidPublisherEditsImagesDeleteall = AndroidPublisherEditsImagesDeleteall
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the edit.
    editId :: Core.Text,
    -- | Type of the Image. Providing an image type that refers to no images is a no-op.
    imageType :: EditsImagesDeleteallImageType,
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

-- | Creates a value of 'AndroidPublisherEditsImagesDeleteall' with the minimum fields required to make a request.
newAndroidPublisherEditsImagesDeleteall ::
  -- |  Identifier of the edit. See 'editId'.
  Core.Text ->
  -- |  Type of the Image. Providing an image type that refers to no images is a no-op. See 'imageType'.
  EditsImagesDeleteallImageType ->
  -- |  Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German). Providing a language that is not supported by the App is a no-op. See 'language'.
  Core.Text ->
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  AndroidPublisherEditsImagesDeleteall
newAndroidPublisherEditsImagesDeleteall
  editId
  imageType
  language
  packageName =
    AndroidPublisherEditsImagesDeleteall
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

instance Core.GoogleRequest AndroidPublisherEditsImagesDeleteall where
  type
    Rs AndroidPublisherEditsImagesDeleteall =
      ImagesDeleteAllResponse
  type
    Scopes AndroidPublisherEditsImagesDeleteall =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherEditsImagesDeleteall {..} =
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
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidPublisherEditsImagesDeleteallResource
          )
          Core.mempty
