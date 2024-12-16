{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.StreetViewPublish.Photos.BatchDelete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a list of Photos and their metadata. Note that if BatchDeletePhotos fails, either critical fields are missing or there is an authentication error. Even if BatchDeletePhotos succeeds, individual photos in the batch may have failures. These failures are specified in each PhotoResponse.status in BatchDeletePhotosResponse.results. See DeletePhoto for specific failures that can occur per photo.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference> for @streetviewpublish.photos.batchDelete@.
module Gogol.StreetViewPublish.Photos.BatchDelete
    (
    -- * Resource
      StreetViewPublishPhotosBatchDeleteResource

    -- ** Constructing a Request
    , StreetViewPublishPhotosBatchDelete (..)
    , newStreetViewPublishPhotosBatchDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.StreetViewPublish.Types

-- | A resource alias for @streetviewpublish.photos.batchDelete@ method which the
-- 'StreetViewPublishPhotosBatchDelete' request conforms to.
type StreetViewPublishPhotosBatchDeleteResource =
     "v1" Core.:>
       "photos:batchDelete" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] BatchDeletePhotosRequest
                       Core.:>
                       Core.Post '[Core.JSON] BatchDeletePhotosResponse

-- | Deletes a list of Photos and their metadata. Note that if BatchDeletePhotos fails, either critical fields are missing or there is an authentication error. Even if BatchDeletePhotos succeeds, individual photos in the batch may have failures. These failures are specified in each PhotoResponse.status in BatchDeletePhotosResponse.results. See DeletePhoto for specific failures that can occur per photo.
--
-- /See:/ 'newStreetViewPublishPhotosBatchDelete' smart constructor.
data StreetViewPublishPhotosBatchDelete = StreetViewPublishPhotosBatchDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: BatchDeletePhotosRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StreetViewPublishPhotosBatchDelete' with the minimum fields required to make a request.
newStreetViewPublishPhotosBatchDelete 
    ::  BatchDeletePhotosRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> StreetViewPublishPhotosBatchDelete
newStreetViewPublishPhotosBatchDelete payload =
  StreetViewPublishPhotosBatchDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           StreetViewPublishPhotosBatchDelete
         where
        type Rs StreetViewPublishPhotosBatchDelete =
             BatchDeletePhotosResponse
        type Scopes StreetViewPublishPhotosBatchDelete =
             '[Streetviewpublish'FullControl]
        requestClient StreetViewPublishPhotosBatchDelete{..}
          = go xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              streetViewPublishService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           StreetViewPublishPhotosBatchDeleteResource)
                      Core.mempty

