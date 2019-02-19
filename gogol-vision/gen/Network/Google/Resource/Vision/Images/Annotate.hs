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
    , iaAccessToken
    , iaUploadType
    , iaPayload
    , iaCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Vision.Types

-- | A resource alias for @vision.images.annotate@ method which the
-- 'ImagesAnnotate' request conforms to.
type ImagesAnnotateResource =
     "v1p2beta1" :>
       "images:annotate" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest
                       :>
                       Post '[JSON]
                         GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse

-- | Run image detection and annotation for a batch of images.
--
-- /See:/ 'imagesAnnotate' smart constructor.
data ImagesAnnotate =
  ImagesAnnotate'
    { _iaXgafv          :: !(Maybe Xgafv)
    , _iaUploadProtocol :: !(Maybe Text)
    , _iaAccessToken    :: !(Maybe Text)
    , _iaUploadType     :: !(Maybe Text)
    , _iaPayload        :: !GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest
    , _iaCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImagesAnnotate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaXgafv'
--
-- * 'iaUploadProtocol'
--
-- * 'iaAccessToken'
--
-- * 'iaUploadType'
--
-- * 'iaPayload'
--
-- * 'iaCallback'
imagesAnnotate
    :: GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest -- ^ 'iaPayload'
    -> ImagesAnnotate
imagesAnnotate pIaPayload_ =
  ImagesAnnotate'
    { _iaXgafv = Nothing
    , _iaUploadProtocol = Nothing
    , _iaAccessToken = Nothing
    , _iaUploadType = Nothing
    , _iaPayload = pIaPayload_
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
iaPayload :: Lens' ImagesAnnotate GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest
iaPayload
  = lens _iaPayload (\ s a -> s{_iaPayload = a})

-- | JSONP
iaCallback :: Lens' ImagesAnnotate (Maybe Text)
iaCallback
  = lens _iaCallback (\ s a -> s{_iaCallback = a})

instance GoogleRequest ImagesAnnotate where
        type Rs ImagesAnnotate =
             GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse
        type Scopes ImagesAnnotate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-vision"]
        requestClient ImagesAnnotate'{..}
          = go _iaXgafv _iaUploadProtocol _iaAccessToken
              _iaUploadType
              _iaCallback
              (Just AltJSON)
              _iaPayload
              visionService
          where go
                  = buildClient (Proxy :: Proxy ImagesAnnotateResource)
                      mempty
