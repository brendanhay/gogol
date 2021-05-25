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
-- Module      : Network.Google.Resource.Vision.Files.Annotate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Service that performs image detection and annotation for a batch of
-- files. Now only \"application\/pdf\", \"image\/tiff\" and \"image\/gif\"
-- are supported. This service will extract at most 5 (customers can
-- specify which 5 in AnnotateFileRequest.pages) frames (gif) or pages (pdf
-- or tiff) from each file provided and perform detection and annotation
-- for each image extracted.
--
-- /See:/ <https://cloud.google.com/vision/ Cloud Vision API Reference> for @vision.files.annotate@.
module Network.Google.Resource.Vision.Files.Annotate
    (
    -- * REST Resource
      FilesAnnotateResource

    -- * Creating a Request
    , filesAnnotate
    , FilesAnnotate

    -- * Request Lenses
    , faXgafv
    , faUploadProtocol
    , faAccessToken
    , faUploadType
    , faPayload
    , faCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vision.Types

-- | A resource alias for @vision.files.annotate@ method which the
-- 'FilesAnnotate' request conforms to.
type FilesAnnotateResource =
     "v1p2beta1" :>
       "files:annotate" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest
                       :>
                       Post '[JSON]
                         GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse

-- | Service that performs image detection and annotation for a batch of
-- files. Now only \"application\/pdf\", \"image\/tiff\" and \"image\/gif\"
-- are supported. This service will extract at most 5 (customers can
-- specify which 5 in AnnotateFileRequest.pages) frames (gif) or pages (pdf
-- or tiff) from each file provided and perform detection and annotation
-- for each image extracted.
--
-- /See:/ 'filesAnnotate' smart constructor.
data FilesAnnotate =
  FilesAnnotate'
    { _faXgafv :: !(Maybe Xgafv)
    , _faUploadProtocol :: !(Maybe Text)
    , _faAccessToken :: !(Maybe Text)
    , _faUploadType :: !(Maybe Text)
    , _faPayload :: !GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest
    , _faCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FilesAnnotate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faXgafv'
--
-- * 'faUploadProtocol'
--
-- * 'faAccessToken'
--
-- * 'faUploadType'
--
-- * 'faPayload'
--
-- * 'faCallback'
filesAnnotate
    :: GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest -- ^ 'faPayload'
    -> FilesAnnotate
filesAnnotate pFaPayload_ =
  FilesAnnotate'
    { _faXgafv = Nothing
    , _faUploadProtocol = Nothing
    , _faAccessToken = Nothing
    , _faUploadType = Nothing
    , _faPayload = pFaPayload_
    , _faCallback = Nothing
    }


-- | V1 error format.
faXgafv :: Lens' FilesAnnotate (Maybe Xgafv)
faXgafv = lens _faXgafv (\ s a -> s{_faXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
faUploadProtocol :: Lens' FilesAnnotate (Maybe Text)
faUploadProtocol
  = lens _faUploadProtocol
      (\ s a -> s{_faUploadProtocol = a})

-- | OAuth access token.
faAccessToken :: Lens' FilesAnnotate (Maybe Text)
faAccessToken
  = lens _faAccessToken
      (\ s a -> s{_faAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
faUploadType :: Lens' FilesAnnotate (Maybe Text)
faUploadType
  = lens _faUploadType (\ s a -> s{_faUploadType = a})

-- | Multipart request metadata.
faPayload :: Lens' FilesAnnotate GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest
faPayload
  = lens _faPayload (\ s a -> s{_faPayload = a})

-- | JSONP
faCallback :: Lens' FilesAnnotate (Maybe Text)
faCallback
  = lens _faCallback (\ s a -> s{_faCallback = a})

instance GoogleRequest FilesAnnotate where
        type Rs FilesAnnotate =
             GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse
        type Scopes FilesAnnotate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-vision"]
        requestClient FilesAnnotate'{..}
          = go _faXgafv _faUploadProtocol _faAccessToken
              _faUploadType
              _faCallback
              (Just AltJSON)
              _faPayload
              visionService
          where go
                  = buildClient (Proxy :: Proxy FilesAnnotateResource)
                      mempty
