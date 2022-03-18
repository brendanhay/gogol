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
-- Module      : Gogol.StreetViewPublish.Photos.BatchGet
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the metadata of the specified Photo batch. Note that if BatchGetPhotos fails, either critical fields are missing or there is an authentication error. Even if BatchGetPhotos succeeds, individual photos in the batch may have failures. These failures are specified in each PhotoResponse.status in BatchGetPhotosResponse.results. See GetPhoto for specific failures that can occur per photo.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference> for @streetviewpublish.photos.batchGet@.
module Gogol.StreetViewPublish.Photos.BatchGet
  ( -- * Resource
    StreetViewPublishPhotosBatchGetResource,

    -- ** Constructing a Request
    newStreetViewPublishPhotosBatchGet,
    StreetViewPublishPhotosBatchGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.StreetViewPublish.Types

-- | A resource alias for @streetviewpublish.photos.batchGet@ method which the
-- 'StreetViewPublishPhotosBatchGet' request conforms to.
type StreetViewPublishPhotosBatchGetResource =
  "v1"
    Core.:> "photos:batchGet"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParams "photoIds" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "view" PhotosBatchGetView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] BatchGetPhotosResponse

-- | Gets the metadata of the specified Photo batch. Note that if BatchGetPhotos fails, either critical fields are missing or there is an authentication error. Even if BatchGetPhotos succeeds, individual photos in the batch may have failures. These failures are specified in each PhotoResponse.status in BatchGetPhotosResponse.results. See GetPhoto for specific failures that can occur per photo.
--
-- /See:/ 'newStreetViewPublishPhotosBatchGet' smart constructor.
data StreetViewPublishPhotosBatchGet = StreetViewPublishPhotosBatchGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier. If language_code is unspecified, the user\'s language preference for Google services is used.
    languageCode :: (Core.Maybe Core.Text),
    -- | Required. IDs of the Photos. For HTTP GET requests, the URL query parameter should be @photoIds=&photoIds=&...@.
    photoIds :: (Core.Maybe [Core.Text]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Required. Specifies if a download URL for the photo bytes should be returned in the Photo response.
    view :: (Core.Maybe PhotosBatchGetView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreetViewPublishPhotosBatchGet' with the minimum fields required to make a request.
newStreetViewPublishPhotosBatchGet ::
  StreetViewPublishPhotosBatchGet
newStreetViewPublishPhotosBatchGet =
  StreetViewPublishPhotosBatchGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      languageCode = Core.Nothing,
      photoIds = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance
  Core.GoogleRequest
    StreetViewPublishPhotosBatchGet
  where
  type
    Rs StreetViewPublishPhotosBatchGet =
      BatchGetPhotosResponse
  type
    Scopes StreetViewPublishPhotosBatchGet =
      '["https://www.googleapis.com/auth/streetviewpublish"]
  requestClient StreetViewPublishPhotosBatchGet {..} =
    go
      xgafv
      accessToken
      callback
      languageCode
      (photoIds Core.^. Core._Default)
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      streetViewPublishService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StreetViewPublishPhotosBatchGetResource
          )
          Core.mempty
