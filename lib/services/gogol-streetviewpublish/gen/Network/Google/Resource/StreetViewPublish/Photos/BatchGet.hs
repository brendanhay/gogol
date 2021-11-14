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
-- Module      : Network.Google.Resource.StreetViewPublish.Photos.BatchGet
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the metadata of the specified Photo batch. Note that if
-- BatchGetPhotos fails, either critical fields are missing or there is an
-- authentication error. Even if BatchGetPhotos succeeds, individual photos
-- in the batch may have failures. These failures are specified in each
-- PhotoResponse.status in BatchGetPhotosResponse.results. See GetPhoto for
-- specific failures that can occur per photo.
--
-- /See:/ <https://developers.google.com/streetview/publish/ Street View Publish API Reference> for @streetviewpublish.photos.batchGet@.
module Network.Google.Resource.StreetViewPublish.Photos.BatchGet
    (
    -- * REST Resource
      PhotosBatchGetResource

    -- * Creating a Request
    , photosBatchGet
    , PhotosBatchGet

    -- * Request Lenses
    , pbgXgafv
    , pbgLanguageCode
    , pbgUploadProtocol
    , pbgAccessToken
    , pbgUploadType
    , pbgPhotoIds
    , pbgView
    , pbgCallback
    ) where

import Network.Google.Prelude
import Network.Google.StreetViewPublish.Types

-- | A resource alias for @streetviewpublish.photos.batchGet@ method which the
-- 'PhotosBatchGet' request conforms to.
type PhotosBatchGetResource =
     "v1" :>
       "photos:batchGet" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "languageCode" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParams "photoIds" Text :>
                     QueryParam "view" PhotosBatchGetView :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] BatchGetPhotosResponse

-- | Gets the metadata of the specified Photo batch. Note that if
-- BatchGetPhotos fails, either critical fields are missing or there is an
-- authentication error. Even if BatchGetPhotos succeeds, individual photos
-- in the batch may have failures. These failures are specified in each
-- PhotoResponse.status in BatchGetPhotosResponse.results. See GetPhoto for
-- specific failures that can occur per photo.
--
-- /See:/ 'photosBatchGet' smart constructor.
data PhotosBatchGet =
  PhotosBatchGet'
    { _pbgXgafv :: !(Maybe Xgafv)
    , _pbgLanguageCode :: !(Maybe Text)
    , _pbgUploadProtocol :: !(Maybe Text)
    , _pbgAccessToken :: !(Maybe Text)
    , _pbgUploadType :: !(Maybe Text)
    , _pbgPhotoIds :: !(Maybe [Text])
    , _pbgView :: !(Maybe PhotosBatchGetView)
    , _pbgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PhotosBatchGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbgXgafv'
--
-- * 'pbgLanguageCode'
--
-- * 'pbgUploadProtocol'
--
-- * 'pbgAccessToken'
--
-- * 'pbgUploadType'
--
-- * 'pbgPhotoIds'
--
-- * 'pbgView'
--
-- * 'pbgCallback'
photosBatchGet
    :: PhotosBatchGet
photosBatchGet =
  PhotosBatchGet'
    { _pbgXgafv = Nothing
    , _pbgLanguageCode = Nothing
    , _pbgUploadProtocol = Nothing
    , _pbgAccessToken = Nothing
    , _pbgUploadType = Nothing
    , _pbgPhotoIds = Nothing
    , _pbgView = Nothing
    , _pbgCallback = Nothing
    }


-- | V1 error format.
pbgXgafv :: Lens' PhotosBatchGet (Maybe Xgafv)
pbgXgafv = lens _pbgXgafv (\ s a -> s{_pbgXgafv = a})

-- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more
-- information, see
-- http:\/\/www.unicode.org\/reports\/tr35\/#Unicode_locale_identifier. If
-- language_code is unspecified, the user\'s language preference for Google
-- services is used.
pbgLanguageCode :: Lens' PhotosBatchGet (Maybe Text)
pbgLanguageCode
  = lens _pbgLanguageCode
      (\ s a -> s{_pbgLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pbgUploadProtocol :: Lens' PhotosBatchGet (Maybe Text)
pbgUploadProtocol
  = lens _pbgUploadProtocol
      (\ s a -> s{_pbgUploadProtocol = a})

-- | OAuth access token.
pbgAccessToken :: Lens' PhotosBatchGet (Maybe Text)
pbgAccessToken
  = lens _pbgAccessToken
      (\ s a -> s{_pbgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pbgUploadType :: Lens' PhotosBatchGet (Maybe Text)
pbgUploadType
  = lens _pbgUploadType
      (\ s a -> s{_pbgUploadType = a})

-- | Required. IDs of the Photos. For HTTP GET requests, the URL query
-- parameter should be \`photoIds=&photoIds=&...\`.
pbgPhotoIds :: Lens' PhotosBatchGet [Text]
pbgPhotoIds
  = lens _pbgPhotoIds (\ s a -> s{_pbgPhotoIds = a}) .
      _Default
      . _Coerce

-- | Required. Specifies if a download URL for the photo bytes should be
-- returned in the Photo response.
pbgView :: Lens' PhotosBatchGet (Maybe PhotosBatchGetView)
pbgView = lens _pbgView (\ s a -> s{_pbgView = a})

-- | JSONP
pbgCallback :: Lens' PhotosBatchGet (Maybe Text)
pbgCallback
  = lens _pbgCallback (\ s a -> s{_pbgCallback = a})

instance GoogleRequest PhotosBatchGet where
        type Rs PhotosBatchGet = BatchGetPhotosResponse
        type Scopes PhotosBatchGet =
             '["https://www.googleapis.com/auth/streetviewpublish"]
        requestClient PhotosBatchGet'{..}
          = go _pbgXgafv _pbgLanguageCode _pbgUploadProtocol
              _pbgAccessToken
              _pbgUploadType
              (_pbgPhotoIds ^. _Default)
              _pbgView
              _pbgCallback
              (Just AltJSON)
              streetViewPublishService
          where go
                  = buildClient (Proxy :: Proxy PhotosBatchGetResource)
                      mempty
