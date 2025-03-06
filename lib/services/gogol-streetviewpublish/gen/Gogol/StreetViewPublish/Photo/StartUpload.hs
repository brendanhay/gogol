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
-- Module      : Gogol.StreetViewPublish.Photo.StartUpload
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an upload session to start uploading photo bytes. The method uses the upload URL of the returned UploadRef to upload the bytes for the Photo. In addition to the photo requirements shown in https:\/\/support.google.com\/maps\/answer\/7012050?ref/topic=6275604, the photo must meet the following requirements: * Photo Sphere XMP metadata must be included in the photo metadata. See https:\/\/developers.google.com\/streetview\/spherical-metadata for the required fields. * The pixel size of the photo must meet the size requirements listed in https:\/\/support.google.com\/maps\/answer\/7012050?ref/topic=6275604, and the photo must be a full 360 horizontally. After the upload completes, the method uses UploadRef with CreatePhoto to create the Photo object entry.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference> for @streetviewpublish.photo.startUpload@.
module Gogol.StreetViewPublish.Photo.StartUpload
  ( -- * Resource
    StreetViewPublishPhotoStartUploadResource,

    -- ** Constructing a Request
    StreetViewPublishPhotoStartUpload (..),
    newStreetViewPublishPhotoStartUpload,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.StreetViewPublish.Types

-- | A resource alias for @streetviewpublish.photo.startUpload@ method which the
-- 'StreetViewPublishPhotoStartUpload' request conforms to.
type StreetViewPublishPhotoStartUploadResource =
  "v1"
    Core.:> "photo:startUpload"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Empty
    Core.:> Core.Post '[Core.JSON] UploadRef

-- | Creates an upload session to start uploading photo bytes. The method uses the upload URL of the returned UploadRef to upload the bytes for the Photo. In addition to the photo requirements shown in https:\/\/support.google.com\/maps\/answer\/7012050?ref/topic=6275604, the photo must meet the following requirements: * Photo Sphere XMP metadata must be included in the photo metadata. See https:\/\/developers.google.com\/streetview\/spherical-metadata for the required fields. * The pixel size of the photo must meet the size requirements listed in https:\/\/support.google.com\/maps\/answer\/7012050?ref/topic=6275604, and the photo must be a full 360 horizontally. After the upload completes, the method uses UploadRef with CreatePhoto to create the Photo object entry.
--
-- /See:/ 'newStreetViewPublishPhotoStartUpload' smart constructor.
data StreetViewPublishPhotoStartUpload = StreetViewPublishPhotoStartUpload
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Empty,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreetViewPublishPhotoStartUpload' with the minimum fields required to make a request.
newStreetViewPublishPhotoStartUpload ::
  -- |  Multipart request metadata. See 'payload'.
  Empty ->
  StreetViewPublishPhotoStartUpload
newStreetViewPublishPhotoStartUpload payload =
  StreetViewPublishPhotoStartUpload
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest StreetViewPublishPhotoStartUpload where
  type Rs StreetViewPublishPhotoStartUpload = UploadRef
  type
    Scopes StreetViewPublishPhotoStartUpload =
      '[Streetviewpublish'FullControl]
  requestClient StreetViewPublishPhotoStartUpload {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      streetViewPublishService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StreetViewPublishPhotoStartUploadResource
          )
          Core.mempty
