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
-- Module      : Network.Google.Resource.Vision.Images.AsyncBatchAnnotate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Run asynchronous image detection and annotation for a list of images.
-- Progress and results can be retrieved through the
-- \`google.longrunning.Operations\` interface. \`Operation.metadata\`
-- contains \`OperationMetadata\` (metadata). \`Operation.response\`
-- contains \`AsyncBatchAnnotateImagesResponse\` (results). This service
-- will write image annotation outputs to json files in customer GCS
-- bucket, each json file containing BatchAnnotateImagesResponse proto.
--
-- /See:/ <https://cloud.google.com/vision/ Cloud Vision API Reference> for @vision.images.asyncBatchAnnotate@.
module Network.Google.Resource.Vision.Images.AsyncBatchAnnotate
    (
    -- * REST Resource
      ImagesAsyncBatchAnnotateResource

    -- * Creating a Request
    , imagesAsyncBatchAnnotate
    , ImagesAsyncBatchAnnotate

    -- * Request Lenses
    , iabaXgafv
    , iabaUploadProtocol
    , iabaAccessToken
    , iabaUploadType
    , iabaPayload
    , iabaCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vision.Types

-- | A resource alias for @vision.images.asyncBatchAnnotate@ method which the
-- 'ImagesAsyncBatchAnnotate' request conforms to.
type ImagesAsyncBatchAnnotateResource =
     "v1p2beta1" :>
       "images:asyncBatchAnnotate" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
                       :> Post '[JSON] Operation

-- | Run asynchronous image detection and annotation for a list of images.
-- Progress and results can be retrieved through the
-- \`google.longrunning.Operations\` interface. \`Operation.metadata\`
-- contains \`OperationMetadata\` (metadata). \`Operation.response\`
-- contains \`AsyncBatchAnnotateImagesResponse\` (results). This service
-- will write image annotation outputs to json files in customer GCS
-- bucket, each json file containing BatchAnnotateImagesResponse proto.
--
-- /See:/ 'imagesAsyncBatchAnnotate' smart constructor.
data ImagesAsyncBatchAnnotate =
  ImagesAsyncBatchAnnotate'
    { _iabaXgafv :: !(Maybe Xgafv)
    , _iabaUploadProtocol :: !(Maybe Text)
    , _iabaAccessToken :: !(Maybe Text)
    , _iabaUploadType :: !(Maybe Text)
    , _iabaPayload :: !GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
    , _iabaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImagesAsyncBatchAnnotate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iabaXgafv'
--
-- * 'iabaUploadProtocol'
--
-- * 'iabaAccessToken'
--
-- * 'iabaUploadType'
--
-- * 'iabaPayload'
--
-- * 'iabaCallback'
imagesAsyncBatchAnnotate
    :: GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest -- ^ 'iabaPayload'
    -> ImagesAsyncBatchAnnotate
imagesAsyncBatchAnnotate pIabaPayload_ =
  ImagesAsyncBatchAnnotate'
    { _iabaXgafv = Nothing
    , _iabaUploadProtocol = Nothing
    , _iabaAccessToken = Nothing
    , _iabaUploadType = Nothing
    , _iabaPayload = pIabaPayload_
    , _iabaCallback = Nothing
    }


-- | V1 error format.
iabaXgafv :: Lens' ImagesAsyncBatchAnnotate (Maybe Xgafv)
iabaXgafv
  = lens _iabaXgafv (\ s a -> s{_iabaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iabaUploadProtocol :: Lens' ImagesAsyncBatchAnnotate (Maybe Text)
iabaUploadProtocol
  = lens _iabaUploadProtocol
      (\ s a -> s{_iabaUploadProtocol = a})

-- | OAuth access token.
iabaAccessToken :: Lens' ImagesAsyncBatchAnnotate (Maybe Text)
iabaAccessToken
  = lens _iabaAccessToken
      (\ s a -> s{_iabaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iabaUploadType :: Lens' ImagesAsyncBatchAnnotate (Maybe Text)
iabaUploadType
  = lens _iabaUploadType
      (\ s a -> s{_iabaUploadType = a})

-- | Multipart request metadata.
iabaPayload :: Lens' ImagesAsyncBatchAnnotate GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
iabaPayload
  = lens _iabaPayload (\ s a -> s{_iabaPayload = a})

-- | JSONP
iabaCallback :: Lens' ImagesAsyncBatchAnnotate (Maybe Text)
iabaCallback
  = lens _iabaCallback (\ s a -> s{_iabaCallback = a})

instance GoogleRequest ImagesAsyncBatchAnnotate where
        type Rs ImagesAsyncBatchAnnotate = Operation
        type Scopes ImagesAsyncBatchAnnotate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-vision"]
        requestClient ImagesAsyncBatchAnnotate'{..}
          = go _iabaXgafv _iabaUploadProtocol _iabaAccessToken
              _iabaUploadType
              _iabaCallback
              (Just AltJSON)
              _iabaPayload
              visionService
          where go
                  = buildClient
                      (Proxy :: Proxy ImagesAsyncBatchAnnotateResource)
                      mempty
