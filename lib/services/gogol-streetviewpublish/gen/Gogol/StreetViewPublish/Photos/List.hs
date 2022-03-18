{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.StreetViewPublish.Photos.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the Photos that belong to the user. > Note: Recently created photos that are still being indexed are not returned in the response.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference> for @streetviewpublish.photos.list@.
module Gogol.StreetViewPublish.Photos.List
    (
    -- * Resource
      StreetViewPublishPhotosListResource

    -- ** Constructing a Request
    , newStreetViewPublishPhotosList
    , StreetViewPublishPhotosList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.StreetViewPublish.Types

-- | A resource alias for @streetviewpublish.photos.list@ method which the
-- 'StreetViewPublishPhotosList' request conforms to.
type StreetViewPublishPhotosListResource =
     "v1" Core.:>
       "photos" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "filter" Core.Text Core.:>
                 Core.QueryParam "languageCode" Core.Text Core.:>
                   Core.QueryParam "pageSize" Core.Int32 Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "view" PhotosListView Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] ListPhotosResponse

-- | Lists all the Photos that belong to the user. > Note: Recently created photos that are still being indexed are not returned in the response.
--
-- /See:/ 'newStreetViewPublishPhotosList' smart constructor.
data StreetViewPublishPhotosList = StreetViewPublishPhotosList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The filter expression. For example: @placeId=ChIJj61dQgK6j4AR4GeTYWZsKWw@. The filters supported are: @placeId@, @min_latitude@, @max_latitude@, @min_longitude@, and @max_longitude@. See https:\/\/google.aip.dev\/160 for more information.
    , filter :: (Core.Maybe Core.Text)
      -- | Optional. The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http:\/\/www.unicode.org\/reports\/tr35\/#Unicode/locale/identifier. If language_code is unspecified, the user\'s language preference for Google services is used.
    , languageCode :: (Core.Maybe Core.Text)
      -- | Optional. The maximum number of photos to return. @pageSize@ must be non-negative. If @pageSize@ is zero or is not provided, the default page size of 100 is used. The number of photos returned in the response may be less than @pageSize@ if the number of photos that belong to the user is less than @pageSize@.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. The nextPageToken value returned from a previous ListPhotos request, if any.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Required. Specifies if a download URL for the photos bytes should be returned in the Photos response.
    , view :: (Core.Maybe PhotosListView)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreetViewPublishPhotosList' with the minimum fields required to make a request.
newStreetViewPublishPhotosList 
    ::  StreetViewPublishPhotosList
newStreetViewPublishPhotosList =
  StreetViewPublishPhotosList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , languageCode = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , view = Core.Nothing
    }

instance Core.GoogleRequest
           StreetViewPublishPhotosList
         where
        type Rs StreetViewPublishPhotosList =
             ListPhotosResponse
        type Scopes StreetViewPublishPhotosList =
             '["https://www.googleapis.com/auth/streetviewpublish"]
        requestClient StreetViewPublishPhotosList{..}
          = go xgafv accessToken callback filter languageCode
              pageSize
              pageToken
              uploadType
              uploadProtocol
              view
              (Core.Just Core.AltJSON)
              streetViewPublishService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy StreetViewPublishPhotosListResource)
                      Core.mempty

