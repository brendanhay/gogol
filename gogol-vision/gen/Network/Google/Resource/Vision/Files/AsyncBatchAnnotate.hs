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
-- Module      : Network.Google.Resource.Vision.Files.AsyncBatchAnnotate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Run asynchronous image detection and annotation for a list of generic
-- files, such as PDF files, which may contain multiple pages and multiple
-- images per page. Progress and results can be retrieved through the
-- \`google.longrunning.Operations\` interface. \`Operation.metadata\`
-- contains \`OperationMetadata\` (metadata). \`Operation.response\`
-- contains \`AsyncBatchAnnotateFilesResponse\` (results).
--
-- /See:/ <https://cloud.google.com/vision/ Cloud Vision API Reference> for @vision.files.asyncBatchAnnotate@.
module Network.Google.Resource.Vision.Files.AsyncBatchAnnotate
    (
    -- * REST Resource
      FilesAsyncBatchAnnotateResource

    -- * Creating a Request
    , filesAsyncBatchAnnotate
    , FilesAsyncBatchAnnotate

    -- * Request Lenses
    , fabaXgafv
    , fabaUploadProtocol
    , fabaAccessToken
    , fabaUploadType
    , fabaPayload
    , fabaCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Vision.Types

-- | A resource alias for @vision.files.asyncBatchAnnotate@ method which the
-- 'FilesAsyncBatchAnnotate' request conforms to.
type FilesAsyncBatchAnnotateResource =
     "v1p2beta1" :>
       "files:asyncBatchAnnotate" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
                       :> Post '[JSON] Operation

-- | Run asynchronous image detection and annotation for a list of generic
-- files, such as PDF files, which may contain multiple pages and multiple
-- images per page. Progress and results can be retrieved through the
-- \`google.longrunning.Operations\` interface. \`Operation.metadata\`
-- contains \`OperationMetadata\` (metadata). \`Operation.response\`
-- contains \`AsyncBatchAnnotateFilesResponse\` (results).
--
-- /See:/ 'filesAsyncBatchAnnotate' smart constructor.
data FilesAsyncBatchAnnotate = FilesAsyncBatchAnnotate'
    { _fabaXgafv          :: !(Maybe Xgafv)
    , _fabaUploadProtocol :: !(Maybe Text)
    , _fabaAccessToken    :: !(Maybe Text)
    , _fabaUploadType     :: !(Maybe Text)
    , _fabaPayload        :: !GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
    , _fabaCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesAsyncBatchAnnotate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fabaXgafv'
--
-- * 'fabaUploadProtocol'
--
-- * 'fabaAccessToken'
--
-- * 'fabaUploadType'
--
-- * 'fabaPayload'
--
-- * 'fabaCallback'
filesAsyncBatchAnnotate
    :: GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest -- ^ 'fabaPayload'
    -> FilesAsyncBatchAnnotate
filesAsyncBatchAnnotate pFabaPayload_ =
    FilesAsyncBatchAnnotate'
    { _fabaXgafv = Nothing
    , _fabaUploadProtocol = Nothing
    , _fabaAccessToken = Nothing
    , _fabaUploadType = Nothing
    , _fabaPayload = pFabaPayload_
    , _fabaCallback = Nothing
    }

-- | V1 error format.
fabaXgafv :: Lens' FilesAsyncBatchAnnotate (Maybe Xgafv)
fabaXgafv
  = lens _fabaXgafv (\ s a -> s{_fabaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fabaUploadProtocol :: Lens' FilesAsyncBatchAnnotate (Maybe Text)
fabaUploadProtocol
  = lens _fabaUploadProtocol
      (\ s a -> s{_fabaUploadProtocol = a})

-- | OAuth access token.
fabaAccessToken :: Lens' FilesAsyncBatchAnnotate (Maybe Text)
fabaAccessToken
  = lens _fabaAccessToken
      (\ s a -> s{_fabaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fabaUploadType :: Lens' FilesAsyncBatchAnnotate (Maybe Text)
fabaUploadType
  = lens _fabaUploadType
      (\ s a -> s{_fabaUploadType = a})

-- | Multipart request metadata.
fabaPayload :: Lens' FilesAsyncBatchAnnotate GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
fabaPayload
  = lens _fabaPayload (\ s a -> s{_fabaPayload = a})

-- | JSONP
fabaCallback :: Lens' FilesAsyncBatchAnnotate (Maybe Text)
fabaCallback
  = lens _fabaCallback (\ s a -> s{_fabaCallback = a})

instance GoogleRequest FilesAsyncBatchAnnotate where
        type Rs FilesAsyncBatchAnnotate = Operation
        type Scopes FilesAsyncBatchAnnotate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-vision"]
        requestClient FilesAsyncBatchAnnotate'{..}
          = go _fabaXgafv _fabaUploadProtocol _fabaAccessToken
              _fabaUploadType
              _fabaCallback
              (Just AltJSON)
              _fabaPayload
              visionService
          where go
                  = buildClient
                      (Proxy :: Proxy FilesAsyncBatchAnnotateResource)
                      mempty
