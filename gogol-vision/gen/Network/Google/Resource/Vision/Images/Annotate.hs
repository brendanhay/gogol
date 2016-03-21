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
-- Module      : Network.Google.Resource.Vision.Images.Annotate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Run image detection and annotation for a batch of images.
--
-- /See:/ <https://cloud.google.com/vision/ Cloud Vision API Reference> for @vision.images.annotate@.
module Network.Google.Resource.Vision.Images.Annotate
    (
    -- * REST Resource
      ImagesAnnotateResource

    -- * Creating a Request
    , imagesAnnotate
    , ImagesAnnotate

    -- * Request Lenses
    , iaXgafv
    , iaUploadProtocol
    , iaPp
    , iaAccessToken
    , iaUploadType
    , iaPayload
    , iaBearerToken
    , iaCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Vision.Types

-- | A resource alias for @vision.images.annotate@ method which the
-- 'ImagesAnnotate' request conforms to.
type ImagesAnnotateResource =
     "v1" :>
       "images:annotate" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] BatchAnnotateImagesRequest :>
                           Post '[JSON] BatchAnnotateImagesResponse

-- | Run image detection and annotation for a batch of images.
--
-- /See:/ 'imagesAnnotate' smart constructor.
data ImagesAnnotate = ImagesAnnotate'
    { _iaXgafv          :: !(Maybe Xgafv)
    , _iaUploadProtocol :: !(Maybe Text)
    , _iaPp             :: !Bool
    , _iaAccessToken    :: !(Maybe Text)
    , _iaUploadType     :: !(Maybe Text)
    , _iaPayload        :: !BatchAnnotateImagesRequest
    , _iaBearerToken    :: !(Maybe Text)
    , _iaCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesAnnotate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaXgafv'
--
-- * 'iaUploadProtocol'
--
-- * 'iaPp'
--
-- * 'iaAccessToken'
--
-- * 'iaUploadType'
--
-- * 'iaPayload'
--
-- * 'iaBearerToken'
--
-- * 'iaCallback'
imagesAnnotate
    :: BatchAnnotateImagesRequest -- ^ 'iaPayload'
    -> ImagesAnnotate
imagesAnnotate pIaPayload_ =
    ImagesAnnotate'
    { _iaXgafv = Nothing
    , _iaUploadProtocol = Nothing
    , _iaPp = True
    , _iaAccessToken = Nothing
    , _iaUploadType = Nothing
    , _iaPayload = pIaPayload_
    , _iaBearerToken = Nothing
    , _iaCallback = Nothing
    }

-- | V1 error format.
iaXgafv :: Lens' ImagesAnnotate (Maybe Xgafv)
iaXgafv = lens _iaXgafv (\ s a -> s{_iaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iaUploadProtocol :: Lens' ImagesAnnotate (Maybe Text)
iaUploadProtocol
  = lens _iaUploadProtocol
      (\ s a -> s{_iaUploadProtocol = a})

-- | Pretty-print response.
iaPp :: Lens' ImagesAnnotate Bool
iaPp = lens _iaPp (\ s a -> s{_iaPp = a})

-- | OAuth access token.
iaAccessToken :: Lens' ImagesAnnotate (Maybe Text)
iaAccessToken
  = lens _iaAccessToken
      (\ s a -> s{_iaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iaUploadType :: Lens' ImagesAnnotate (Maybe Text)
iaUploadType
  = lens _iaUploadType (\ s a -> s{_iaUploadType = a})

-- | Multipart request metadata.
iaPayload :: Lens' ImagesAnnotate BatchAnnotateImagesRequest
iaPayload
  = lens _iaPayload (\ s a -> s{_iaPayload = a})

-- | OAuth bearer token.
iaBearerToken :: Lens' ImagesAnnotate (Maybe Text)
iaBearerToken
  = lens _iaBearerToken
      (\ s a -> s{_iaBearerToken = a})

-- | JSONP
iaCallback :: Lens' ImagesAnnotate (Maybe Text)
iaCallback
  = lens _iaCallback (\ s a -> s{_iaCallback = a})

instance GoogleRequest ImagesAnnotate where
        type Rs ImagesAnnotate = BatchAnnotateImagesResponse
        type Scopes ImagesAnnotate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ImagesAnnotate'{..}
          = go _iaXgafv _iaUploadProtocol (Just _iaPp)
              _iaAccessToken
              _iaUploadType
              _iaBearerToken
              _iaCallback
              (Just AltJSON)
              _iaPayload
              visionService
          where go
                  = buildClient (Proxy :: Proxy ImagesAnnotateResource)
                      mempty
