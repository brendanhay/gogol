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
-- Module      : Network.Google.StreetViewPublish.Photo.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Photo and its metadata. This method returns the following error codes: * google.rpc.Code.PERMISSION/DENIED if the requesting user did not create the requested photo. * google.rpc.Code.NOT/FOUND if the photo ID does not exist.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference> for @streetviewpublish.photo.delete@.
module Network.Google.StreetViewPublish.Photo.Delete
  ( -- * Resource
    StreetViewPublishPhotoDeleteResource,

    -- ** Constructing a Request
    newStreetViewPublishPhotoDelete,
    StreetViewPublishPhotoDelete,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.StreetViewPublish.Types

-- | A resource alias for @streetviewpublish.photo.delete@ method which the
-- 'StreetViewPublishPhotoDelete' request conforms to.
type StreetViewPublishPhotoDeleteResource =
  "v1"
    Core.:> "photo"
    Core.:> Core.Capture "photoId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a Photo and its metadata. This method returns the following error codes: * google.rpc.Code.PERMISSION/DENIED if the requesting user did not create the requested photo. * google.rpc.Code.NOT/FOUND if the photo ID does not exist.
--
-- /See:/ 'newStreetViewPublishPhotoDelete' smart constructor.
data StreetViewPublishPhotoDelete = StreetViewPublishPhotoDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. ID of the Photo.
    photoId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreetViewPublishPhotoDelete' with the minimum fields required to make a request.
newStreetViewPublishPhotoDelete ::
  -- |  Required. ID of the Photo. See 'photoId'.
  Core.Text ->
  StreetViewPublishPhotoDelete
newStreetViewPublishPhotoDelete photoId =
  StreetViewPublishPhotoDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      photoId = photoId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    StreetViewPublishPhotoDelete
  where
  type Rs StreetViewPublishPhotoDelete = Empty
  type
    Scopes StreetViewPublishPhotoDelete =
      '["https://www.googleapis.com/auth/streetviewpublish"]
  requestClient StreetViewPublishPhotoDelete {..} =
    go
      photoId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      streetViewPublishService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StreetViewPublishPhotoDeleteResource
          )
          Core.mempty
