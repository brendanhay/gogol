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
-- Module      : Network.Google.Resource.Vision.Projects.Files.AsyncBatchAnnotate
-- Copyright   : (c) 2015-2021 Brendan Hay
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
-- /See:/ <https://cloud.google.com/vision/ Cloud Vision API Reference> for @vision.projects.files.asyncBatchAnnotate@.
module Network.Google.Resource.Vision.Projects.Files.AsyncBatchAnnotate
    (
    -- * REST Resource
      ProjectsFilesAsyncBatchAnnotateResource

    -- * Creating a Request
    , projectsFilesAsyncBatchAnnotate
    , ProjectsFilesAsyncBatchAnnotate

    -- * Request Lenses
    , pfabaParent
    , pfabaXgafv
    , pfabaUploadProtocol
    , pfabaAccessToken
    , pfabaUploadType
    , pfabaPayload
    , pfabaCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vision.Types

-- | A resource alias for @vision.projects.files.asyncBatchAnnotate@ method which the
-- 'ProjectsFilesAsyncBatchAnnotate' request conforms to.
type ProjectsFilesAsyncBatchAnnotateResource =
     "v1p2beta1" :>
       Capture "parent" Text :>
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
-- /See:/ 'projectsFilesAsyncBatchAnnotate' smart constructor.
data ProjectsFilesAsyncBatchAnnotate =
  ProjectsFilesAsyncBatchAnnotate'
    { _pfabaParent :: !Text
    , _pfabaXgafv :: !(Maybe Xgafv)
    , _pfabaUploadProtocol :: !(Maybe Text)
    , _pfabaAccessToken :: !(Maybe Text)
    , _pfabaUploadType :: !(Maybe Text)
    , _pfabaPayload :: !GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
    , _pfabaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsFilesAsyncBatchAnnotate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfabaParent'
--
-- * 'pfabaXgafv'
--
-- * 'pfabaUploadProtocol'
--
-- * 'pfabaAccessToken'
--
-- * 'pfabaUploadType'
--
-- * 'pfabaPayload'
--
-- * 'pfabaCallback'
projectsFilesAsyncBatchAnnotate
    :: Text -- ^ 'pfabaParent'
    -> GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest -- ^ 'pfabaPayload'
    -> ProjectsFilesAsyncBatchAnnotate
projectsFilesAsyncBatchAnnotate pPfabaParent_ pPfabaPayload_ =
  ProjectsFilesAsyncBatchAnnotate'
    { _pfabaParent = pPfabaParent_
    , _pfabaXgafv = Nothing
    , _pfabaUploadProtocol = Nothing
    , _pfabaAccessToken = Nothing
    , _pfabaUploadType = Nothing
    , _pfabaPayload = pPfabaPayload_
    , _pfabaCallback = Nothing
    }


-- | Optional. Target project and location to make a call. Format:
-- \`projects\/{project-id}\/locations\/{location-id}\`. If no parent is
-- specified, a region will be chosen automatically. Supported
-- location-ids: \`us\`: USA country only, \`asia\`: East asia areas, like
-- Japan, Taiwan, \`eu\`: The European Union. Example:
-- \`projects\/project-A\/locations\/eu\`.
pfabaParent :: Lens' ProjectsFilesAsyncBatchAnnotate Text
pfabaParent
  = lens _pfabaParent (\ s a -> s{_pfabaParent = a})

-- | V1 error format.
pfabaXgafv :: Lens' ProjectsFilesAsyncBatchAnnotate (Maybe Xgafv)
pfabaXgafv
  = lens _pfabaXgafv (\ s a -> s{_pfabaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pfabaUploadProtocol :: Lens' ProjectsFilesAsyncBatchAnnotate (Maybe Text)
pfabaUploadProtocol
  = lens _pfabaUploadProtocol
      (\ s a -> s{_pfabaUploadProtocol = a})

-- | OAuth access token.
pfabaAccessToken :: Lens' ProjectsFilesAsyncBatchAnnotate (Maybe Text)
pfabaAccessToken
  = lens _pfabaAccessToken
      (\ s a -> s{_pfabaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pfabaUploadType :: Lens' ProjectsFilesAsyncBatchAnnotate (Maybe Text)
pfabaUploadType
  = lens _pfabaUploadType
      (\ s a -> s{_pfabaUploadType = a})

-- | Multipart request metadata.
pfabaPayload :: Lens' ProjectsFilesAsyncBatchAnnotate GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
pfabaPayload
  = lens _pfabaPayload (\ s a -> s{_pfabaPayload = a})

-- | JSONP
pfabaCallback :: Lens' ProjectsFilesAsyncBatchAnnotate (Maybe Text)
pfabaCallback
  = lens _pfabaCallback
      (\ s a -> s{_pfabaCallback = a})

instance GoogleRequest
           ProjectsFilesAsyncBatchAnnotate
         where
        type Rs ProjectsFilesAsyncBatchAnnotate = Operation
        type Scopes ProjectsFilesAsyncBatchAnnotate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-vision"]
        requestClient ProjectsFilesAsyncBatchAnnotate'{..}
          = go _pfabaParent _pfabaXgafv _pfabaUploadProtocol
              _pfabaAccessToken
              _pfabaUploadType
              _pfabaCallback
              (Just AltJSON)
              _pfabaPayload
              visionService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsFilesAsyncBatchAnnotateResource)
                      mempty
