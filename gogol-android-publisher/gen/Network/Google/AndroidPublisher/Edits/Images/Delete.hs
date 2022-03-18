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
-- Module      : Network.Google.AndroidPublisher.Edits.Images.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the image (specified by id) from the edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.images.delete@.
module Network.Google.AndroidPublisher.Edits.Images.Delete
  ( -- * Resource
    AndroidPublisherEditsImagesDeleteResource,

    -- ** Constructing a Request
    newAndroidPublisherEditsImagesDelete,
    AndroidPublisherEditsImagesDelete,
  )
where

import Network.Google.AndroidPublisher.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @androidpublisher.edits.images.delete@ method which the
-- 'AndroidPublisherEditsImagesDelete' request conforms to.
type AndroidPublisherEditsImagesDeleteResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "edits"
    Core.:> Core.Capture "editId" Core.Text
    Core.:> "listings"
    Core.:> Core.Capture "language" Core.Text
    Core.:> Core.Capture "imageType" EditsImagesDeleteImageType
    Core.:> Core.Capture "imageId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes the image (specified by id) from the edit.
--
-- /See:/ 'newAndroidPublisherEditsImagesDelete' smart constructor.
data AndroidPublisherEditsImagesDelete = AndroidPublisherEditsImagesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier of the edit.
    editId :: Core.Text,
    -- | Unique identifier an image within the set of images attached to this edit.
    imageId :: Core.Text,
    -- | Type of the Image.
    imageType :: EditsImagesDeleteImageType,
    -- | Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German).
    language :: Core.Text,
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherEditsImagesDelete' with the minimum fields required to make a request.
newAndroidPublisherEditsImagesDelete ::
  -- |  Identifier of the edit. See 'editId'.
  Core.Text ->
  -- |  Unique identifier an image within the set of images attached to this edit. See 'imageId'.
  Core.Text ->
  -- |  Type of the Image. See 'imageType'.
  EditsImagesDeleteImageType ->
  -- |  Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German). See 'language'.
  Core.Text ->
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  AndroidPublisherEditsImagesDelete
newAndroidPublisherEditsImagesDelete editId imageId imageType language packageName =
  AndroidPublisherEditsImagesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      editId = editId,
      imageId = imageId,
      imageType = imageType,
      language = language,
      packageName = packageName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherEditsImagesDelete
  where
  type Rs AndroidPublisherEditsImagesDelete = ()
  type
    Scopes AndroidPublisherEditsImagesDelete =
      '["https://www.googleapis.com/auth/androidpublisher"]
  requestClient AndroidPublisherEditsImagesDelete {..} =
    go
      packageName
      editId
      language
      imageType
      imageId
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
              Core.Proxy AndroidPublisherEditsImagesDeleteResource
          )
          Core.mempty
