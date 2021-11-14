{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.StreetViewPublish.Photos.BatchDelete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a list of Photos and their metadata. Note that if
-- BatchDeletePhotos fails, either critical fields are missing or there is
-- an authentication error. Even if BatchDeletePhotos succeeds, individual
-- photos in the batch may have failures. These failures are specified in
-- each PhotoResponse.status in BatchDeletePhotosResponse.results. See
-- DeletePhoto for specific failures that can occur per photo.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference> for @streetviewpublish.photos.batchDelete@.
module Network.Google.Resource.StreetViewPublish.Photos.BatchDelete
    (
    -- * REST Resource
      PhotosBatchDeleteResource

    -- * Creating a Request
    , photosBatchDelete
    , PhotosBatchDelete

    -- * Request Lenses
    , pbdXgafv
    , pbdUploadProtocol
    , pbdAccessToken
    , pbdUploadType
    , pbdPayload
    , pbdCallback
    ) where

import Network.Google.Prelude
import Network.Google.StreetViewPublish.Types

-- | A resource alias for @streetviewpublish.photos.batchDelete@ method which the
-- 'PhotosBatchDelete' request conforms to.
type PhotosBatchDeleteResource =
     "v1" :>
       "photos:batchDelete" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] BatchDeletePhotosRequest :>
                       Post '[JSON] BatchDeletePhotosResponse

-- | Deletes a list of Photos and their metadata. Note that if
-- BatchDeletePhotos fails, either critical fields are missing or there is
-- an authentication error. Even if BatchDeletePhotos succeeds, individual
-- photos in the batch may have failures. These failures are specified in
-- each PhotoResponse.status in BatchDeletePhotosResponse.results. See
-- DeletePhoto for specific failures that can occur per photo.
--
-- /See:/ 'photosBatchDelete' smart constructor.
data PhotosBatchDelete =
  PhotosBatchDelete'
    { _pbdXgafv :: !(Maybe Xgafv)
    , _pbdUploadProtocol :: !(Maybe Text)
    , _pbdAccessToken :: !(Maybe Text)
    , _pbdUploadType :: !(Maybe Text)
    , _pbdPayload :: !BatchDeletePhotosRequest
    , _pbdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PhotosBatchDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbdXgafv'
--
-- * 'pbdUploadProtocol'
--
-- * 'pbdAccessToken'
--
-- * 'pbdUploadType'
--
-- * 'pbdPayload'
--
-- * 'pbdCallback'
photosBatchDelete
    :: BatchDeletePhotosRequest -- ^ 'pbdPayload'
    -> PhotosBatchDelete
photosBatchDelete pPbdPayload_ =
  PhotosBatchDelete'
    { _pbdXgafv = Nothing
    , _pbdUploadProtocol = Nothing
    , _pbdAccessToken = Nothing
    , _pbdUploadType = Nothing
    , _pbdPayload = pPbdPayload_
    , _pbdCallback = Nothing
    }


-- | V1 error format.
pbdXgafv :: Lens' PhotosBatchDelete (Maybe Xgafv)
pbdXgafv = lens _pbdXgafv (\ s a -> s{_pbdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pbdUploadProtocol :: Lens' PhotosBatchDelete (Maybe Text)
pbdUploadProtocol
  = lens _pbdUploadProtocol
      (\ s a -> s{_pbdUploadProtocol = a})

-- | OAuth access token.
pbdAccessToken :: Lens' PhotosBatchDelete (Maybe Text)
pbdAccessToken
  = lens _pbdAccessToken
      (\ s a -> s{_pbdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pbdUploadType :: Lens' PhotosBatchDelete (Maybe Text)
pbdUploadType
  = lens _pbdUploadType
      (\ s a -> s{_pbdUploadType = a})

-- | Multipart request metadata.
pbdPayload :: Lens' PhotosBatchDelete BatchDeletePhotosRequest
pbdPayload
  = lens _pbdPayload (\ s a -> s{_pbdPayload = a})

-- | JSONP
pbdCallback :: Lens' PhotosBatchDelete (Maybe Text)
pbdCallback
  = lens _pbdCallback (\ s a -> s{_pbdCallback = a})

instance GoogleRequest PhotosBatchDelete where
        type Rs PhotosBatchDelete = BatchDeletePhotosResponse
        type Scopes PhotosBatchDelete =
             '["https://www.googleapis.com/auth/streetviewpublish"]
        requestClient PhotosBatchDelete'{..}
          = go _pbdXgafv _pbdUploadProtocol _pbdAccessToken
              _pbdUploadType
              _pbdCallback
              (Just AltJSON)
              _pbdPayload
              streetViewPublishService
          where go
                  = buildClient
                      (Proxy :: Proxy PhotosBatchDeleteResource)
                      mempty
