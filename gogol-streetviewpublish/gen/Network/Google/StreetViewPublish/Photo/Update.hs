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
-- Module      : Network.Google.StreetViewPublish.Photo.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the metadata of a Photo, such as pose, place association, connections, etc. Changing the pixels of a photo is not supported. Only the fields specified in the updateMask field are used. If @updateMask@ is not present, the update applies to all fields. This method returns the following error codes: * google.rpc.Code.PERMISSION/DENIED if the requesting user did not create the requested photo. * google.rpc.Code.INVALID/ARGUMENT if the request is malformed. * google.rpc.Code.NOT_FOUND if the requested photo does not exist. * google.rpc.Code.UNAVAILABLE if the requested Photo is still being indexed.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference> for @streetviewpublish.photo.update@.
module Network.Google.StreetViewPublish.Photo.Update
  ( -- * Resource
    StreetViewPublishPhotoUpdateResource,

    -- ** Constructing a Request
    newStreetViewPublishPhotoUpdate,
    StreetViewPublishPhotoUpdate,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.StreetViewPublish.Types

-- | A resource alias for @streetviewpublish.photo.update@ method which the
-- 'StreetViewPublishPhotoUpdate' request conforms to.
type StreetViewPublishPhotoUpdateResource =
  "v1"
    Core.:> "photo"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Photo
    Core.:> Core.Put '[Core.JSON] Photo

-- | Updates the metadata of a Photo, such as pose, place association, connections, etc. Changing the pixels of a photo is not supported. Only the fields specified in the updateMask field are used. If @updateMask@ is not present, the update applies to all fields. This method returns the following error codes: * google.rpc.Code.PERMISSION/DENIED if the requesting user did not create the requested photo. * google.rpc.Code.INVALID/ARGUMENT if the request is malformed. * google.rpc.Code.NOT_FOUND if the requested photo does not exist. * google.rpc.Code.UNAVAILABLE if the requested Photo is still being indexed.
--
-- /See:/ 'newStreetViewPublishPhotoUpdate' smart constructor.
data StreetViewPublishPhotoUpdate = StreetViewPublishPhotoUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A unique identifier for a photo.
    id :: Core.Text,
    -- | Multipart request metadata.
    payload :: Photo,
    -- | Required. Mask that identifies fields on the photo metadata to update. If not present, the old Photo metadata is entirely replaced with the new Photo metadata in this request. The update fails if invalid fields are specified. Multiple fields can be specified in a comma-delimited list. The following fields are valid: * @pose.heading@ * @pose.latLngPair@ * @pose.pitch@ * @pose.roll@ * @pose.level@ * @pose.altitude@ * @connections@ * @places@ > Note: When updateMask contains repeated fields, the entire set of repeated values get replaced with the new contents. For example, if updateMask contains @connections@ and @UpdatePhotoRequest.photo.connections@ is empty, all connections are removed.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreetViewPublishPhotoUpdate' with the minimum fields required to make a request.
newStreetViewPublishPhotoUpdate ::
  -- |  A unique identifier for a photo. See 'id'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Photo ->
  StreetViewPublishPhotoUpdate
newStreetViewPublishPhotoUpdate id payload =
  StreetViewPublishPhotoUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      id = id,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    StreetViewPublishPhotoUpdate
  where
  type Rs StreetViewPublishPhotoUpdate = Photo
  type
    Scopes StreetViewPublishPhotoUpdate =
      '["https://www.googleapis.com/auth/streetviewpublish"]
  requestClient StreetViewPublishPhotoUpdate {..} =
    go
      id
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      streetViewPublishService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StreetViewPublishPhotoUpdateResource
          )
          Core.mempty
