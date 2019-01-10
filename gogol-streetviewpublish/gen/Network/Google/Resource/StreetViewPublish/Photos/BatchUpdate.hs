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
-- Module      : Network.Google.Resource.StreetViewPublish.Photos.BatchUpdate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the metadata of Photos, such as pose, place association,
-- connections, etc. Changing the pixels of photos is not supported. Note
-- that if BatchUpdatePhotos fails, either critical fields are missing or
-- there was an authentication error. Even if BatchUpdatePhotos succeeds,
-- there may have been failures for single photos in the batch. These
-- failures will be specified in each PhotoResponse.status in
-- BatchUpdatePhotosResponse.results. See UpdatePhoto for specific failures
-- that can occur per photo. Only the fields specified in updateMask field
-- are used. If \`updateMask\` is not present, the update applies to all
-- fields. The number of UpdatePhotoRequest messages in a
-- BatchUpdatePhotosRequest must not exceed 20.
-- __Note:__ To update Pose.altitude, Pose.latLngPair has to be filled as
-- well. Otherwise, the request will fail.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference> for @streetviewpublish.photos.batchUpdate@.
module Network.Google.Resource.StreetViewPublish.Photos.BatchUpdate
    (
    -- * REST Resource
      PhotosBatchUpdateResource

    -- * Creating a Request
    , photosBatchUpdate
    , PhotosBatchUpdate

    -- * Request Lenses
    , pbuXgafv
    , pbuUploadProtocol
    , pbuAccessToken
    , pbuUploadType
    , pbuPayload
    , pbuCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.StreetViewPublish.Types

-- | A resource alias for @streetviewpublish.photos.batchUpdate@ method which the
-- 'PhotosBatchUpdate' request conforms to.
type PhotosBatchUpdateResource =
     "v1" :>
       "photos:batchUpdate" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] BatchUpdatePhotosRequest :>
                       Post '[JSON] BatchUpdatePhotosResponse

-- | Updates the metadata of Photos, such as pose, place association,
-- connections, etc. Changing the pixels of photos is not supported. Note
-- that if BatchUpdatePhotos fails, either critical fields are missing or
-- there was an authentication error. Even if BatchUpdatePhotos succeeds,
-- there may have been failures for single photos in the batch. These
-- failures will be specified in each PhotoResponse.status in
-- BatchUpdatePhotosResponse.results. See UpdatePhoto for specific failures
-- that can occur per photo. Only the fields specified in updateMask field
-- are used. If \`updateMask\` is not present, the update applies to all
-- fields. The number of UpdatePhotoRequest messages in a
-- BatchUpdatePhotosRequest must not exceed 20.
-- __Note:__ To update Pose.altitude, Pose.latLngPair has to be filled as
-- well. Otherwise, the request will fail.
--
-- /See:/ 'photosBatchUpdate' smart constructor.
data PhotosBatchUpdate = PhotosBatchUpdate'
    { _pbuXgafv          :: !(Maybe Xgafv)
    , _pbuUploadProtocol :: !(Maybe Text)
    , _pbuAccessToken    :: !(Maybe Text)
    , _pbuUploadType     :: !(Maybe Text)
    , _pbuPayload        :: !BatchUpdatePhotosRequest
    , _pbuCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PhotosBatchUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbuXgafv'
--
-- * 'pbuUploadProtocol'
--
-- * 'pbuAccessToken'
--
-- * 'pbuUploadType'
--
-- * 'pbuPayload'
--
-- * 'pbuCallback'
photosBatchUpdate
    :: BatchUpdatePhotosRequest -- ^ 'pbuPayload'
    -> PhotosBatchUpdate
photosBatchUpdate pPbuPayload_ =
    PhotosBatchUpdate'
    { _pbuXgafv = Nothing
    , _pbuUploadProtocol = Nothing
    , _pbuAccessToken = Nothing
    , _pbuUploadType = Nothing
    , _pbuPayload = pPbuPayload_
    , _pbuCallback = Nothing
    }

-- | V1 error format.
pbuXgafv :: Lens' PhotosBatchUpdate (Maybe Xgafv)
pbuXgafv = lens _pbuXgafv (\ s a -> s{_pbuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pbuUploadProtocol :: Lens' PhotosBatchUpdate (Maybe Text)
pbuUploadProtocol
  = lens _pbuUploadProtocol
      (\ s a -> s{_pbuUploadProtocol = a})

-- | OAuth access token.
pbuAccessToken :: Lens' PhotosBatchUpdate (Maybe Text)
pbuAccessToken
  = lens _pbuAccessToken
      (\ s a -> s{_pbuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pbuUploadType :: Lens' PhotosBatchUpdate (Maybe Text)
pbuUploadType
  = lens _pbuUploadType
      (\ s a -> s{_pbuUploadType = a})

-- | Multipart request metadata.
pbuPayload :: Lens' PhotosBatchUpdate BatchUpdatePhotosRequest
pbuPayload
  = lens _pbuPayload (\ s a -> s{_pbuPayload = a})

-- | JSONP
pbuCallback :: Lens' PhotosBatchUpdate (Maybe Text)
pbuCallback
  = lens _pbuCallback (\ s a -> s{_pbuCallback = a})

instance GoogleRequest PhotosBatchUpdate where
        type Rs PhotosBatchUpdate = BatchUpdatePhotosResponse
        type Scopes PhotosBatchUpdate =
             '["https://www.googleapis.com/auth/streetviewpublish"]
        requestClient PhotosBatchUpdate'{..}
          = go _pbuXgafv _pbuUploadProtocol _pbuAccessToken
              _pbuUploadType
              _pbuCallback
              (Just AltJSON)
              _pbuPayload
              streetViewPublishService
          where go
                  = buildClient
                      (Proxy :: Proxy PhotosBatchUpdateResource)
                      mempty
