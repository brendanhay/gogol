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
-- Module      : Gogol.StreetViewPublish.Photo.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- After the client finishes uploading the photo with the returned UploadRef, CreatePhoto publishes the uploaded Photo to Street View on Google Maps. Currently, the only way to set heading, pitch, and roll in CreatePhoto is through the <https://developers.google.com/streetview/spherical-metadata Photo Sphere XMP metadata> in the photo bytes. CreatePhoto ignores the @pose.heading@, @pose.pitch@, @pose.roll@, @pose.altitude@, and @pose.level@ fields in Pose. This method returns the following error codes: * google.rpc.Code.INVALID/ARGUMENT if the request is malformed or if the uploaded photo is not a 360 photo. * google.rpc.Code.NOT/FOUND if the upload reference does not exist. * google.rpc.Code.RESOURCE_EXHAUSTED if the account has reached the storage limit.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference> for @streetviewpublish.photo.create@.
module Gogol.StreetViewPublish.Photo.Create
  ( -- * Resource
    StreetViewPublishPhotoCreateResource,

    -- ** Constructing a Request
    StreetViewPublishPhotoCreate (..),
    newStreetViewPublishPhotoCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.StreetViewPublish.Types

-- | A resource alias for @streetviewpublish.photo.create@ method which the
-- 'StreetViewPublishPhotoCreate' request conforms to.
type StreetViewPublishPhotoCreateResource =
  "v1"
    Core.:> "photo"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Photo
    Core.:> Core.Post '[Core.JSON] Photo

-- | After the client finishes uploading the photo with the returned UploadRef, CreatePhoto publishes the uploaded Photo to Street View on Google Maps. Currently, the only way to set heading, pitch, and roll in CreatePhoto is through the <https://developers.google.com/streetview/spherical-metadata Photo Sphere XMP metadata> in the photo bytes. CreatePhoto ignores the @pose.heading@, @pose.pitch@, @pose.roll@, @pose.altitude@, and @pose.level@ fields in Pose. This method returns the following error codes: * google.rpc.Code.INVALID/ARGUMENT if the request is malformed or if the uploaded photo is not a 360 photo. * google.rpc.Code.NOT/FOUND if the upload reference does not exist. * google.rpc.Code.RESOURCE_EXHAUSTED if the account has reached the storage limit.
--
-- /See:/ 'newStreetViewPublishPhotoCreate' smart constructor.
data StreetViewPublishPhotoCreate = StreetViewPublishPhotoCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Photo,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreetViewPublishPhotoCreate' with the minimum fields required to make a request.
newStreetViewPublishPhotoCreate ::
  -- |  Multipart request metadata. See 'payload'.
  Photo ->
  StreetViewPublishPhotoCreate
newStreetViewPublishPhotoCreate payload =
  StreetViewPublishPhotoCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest StreetViewPublishPhotoCreate where
  type Rs StreetViewPublishPhotoCreate = Photo
  type
    Scopes StreetViewPublishPhotoCreate =
      '[Streetviewpublish'FullControl]
  requestClient StreetViewPublishPhotoCreate {..} =
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
          (Core.Proxy :: Core.Proxy StreetViewPublishPhotoCreateResource)
          Core.mempty
