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
-- Module      : Gogol.StreetViewPublish.Photo.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the metadata of the specified Photo. This method returns the following error codes: * google.rpc.Code.PERMISSION/DENIED if the requesting user did not create the requested Photo. * google.rpc.Code.NOT/FOUND if the requested Photo does not exist. * google.rpc.Code.UNAVAILABLE if the requested Photo is still being indexed.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference> for @streetviewpublish.photo.get@.
module Gogol.StreetViewPublish.Photo.Get
  ( -- * Resource
    StreetViewPublishPhotoGetResource,

    -- ** Constructing a Request
    StreetViewPublishPhotoGet (..),
    newStreetViewPublishPhotoGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.StreetViewPublish.Types

-- | A resource alias for @streetviewpublish.photo.get@ method which the
-- 'StreetViewPublishPhotoGet' request conforms to.
type StreetViewPublishPhotoGetResource =
  "v1"
    Core.:> "photo"
    Core.:> Core.Capture "photoId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" PhotoGetView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Photo

-- | Gets the metadata of the specified Photo. This method returns the following error codes: * google.rpc.Code.PERMISSION/DENIED if the requesting user did not create the requested Photo. * google.rpc.Code.NOT/FOUND if the requested Photo does not exist. * google.rpc.Code.UNAVAILABLE if the requested Photo is still being indexed.
--
-- /See:/ 'newStreetViewPublishPhotoGet' smart constructor.
data StreetViewPublishPhotoGet = StreetViewPublishPhotoGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier. If language_code is unspecified, the user\'s language preference for Google services is used.
    languageCode :: (Core.Maybe Core.Text),
    -- | Required. ID of the Photo.
    photoId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Required. Specifies if a download URL for the photo bytes should be returned in the Photo response.
    view :: (Core.Maybe PhotoGetView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreetViewPublishPhotoGet' with the minimum fields required to make a request.
newStreetViewPublishPhotoGet ::
  -- |  Required. ID of the Photo. See 'photoId'.
  Core.Text ->
  StreetViewPublishPhotoGet
newStreetViewPublishPhotoGet photoId =
  StreetViewPublishPhotoGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      languageCode = Core.Nothing,
      photoId = photoId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest StreetViewPublishPhotoGet where
  type Rs StreetViewPublishPhotoGet = Photo
  type
    Scopes StreetViewPublishPhotoGet =
      '[Streetviewpublish'FullControl]
  requestClient StreetViewPublishPhotoGet {..} =
    go
      photoId
      xgafv
      accessToken
      callback
      languageCode
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      streetViewPublishService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StreetViewPublishPhotoGetResource)
          Core.mempty
