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
-- Module      : Network.Google.Resource.Vision.Projects.Locations.Files.AsyncBatchAnnotate
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
-- /See:/ <https://cloud.google.com/vision/ Cloud Vision API Reference> for @vision.projects.locations.files.asyncBatchAnnotate@.
module Network.Google.Resource.Vision.Projects.Locations.Files.AsyncBatchAnnotate
    (
    -- * REST Resource
      ProjectsLocationsFilesAsyncBatchAnnotateResource

    -- * Creating a Request
    , projectsLocationsFilesAsyncBatchAnnotate
    , ProjectsLocationsFilesAsyncBatchAnnotate

    -- * Request Lenses
    , plfabaParent
    , plfabaXgafv
    , plfabaUploadProtocol
    , plfabaAccessToken
    , plfabaUploadType
    , plfabaPayload
    , plfabaCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vision.Types

-- | A resource alias for @vision.projects.locations.files.asyncBatchAnnotate@ method which the
-- 'ProjectsLocationsFilesAsyncBatchAnnotate' request conforms to.
type ProjectsLocationsFilesAsyncBatchAnnotateResource
     =
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
-- /See:/ 'projectsLocationsFilesAsyncBatchAnnotate' smart constructor.
data ProjectsLocationsFilesAsyncBatchAnnotate =
  ProjectsLocationsFilesAsyncBatchAnnotate'
    { _plfabaParent :: !Text
    , _plfabaXgafv :: !(Maybe Xgafv)
    , _plfabaUploadProtocol :: !(Maybe Text)
    , _plfabaAccessToken :: !(Maybe Text)
    , _plfabaUploadType :: !(Maybe Text)
    , _plfabaPayload :: !GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
    , _plfabaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsFilesAsyncBatchAnnotate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plfabaParent'
--
-- * 'plfabaXgafv'
--
-- * 'plfabaUploadProtocol'
--
-- * 'plfabaAccessToken'
--
-- * 'plfabaUploadType'
--
-- * 'plfabaPayload'
--
-- * 'plfabaCallback'
projectsLocationsFilesAsyncBatchAnnotate
    :: Text -- ^ 'plfabaParent'
    -> GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest -- ^ 'plfabaPayload'
    -> ProjectsLocationsFilesAsyncBatchAnnotate
projectsLocationsFilesAsyncBatchAnnotate pPlfabaParent_ pPlfabaPayload_ =
  ProjectsLocationsFilesAsyncBatchAnnotate'
    { _plfabaParent = pPlfabaParent_
    , _plfabaXgafv = Nothing
    , _plfabaUploadProtocol = Nothing
    , _plfabaAccessToken = Nothing
    , _plfabaUploadType = Nothing
    , _plfabaPayload = pPlfabaPayload_
    , _plfabaCallback = Nothing
    }


-- | Optional. Target project and location to make a call. Format:
-- \`projects\/{project-id}\/locations\/{location-id}\`. If no parent is
-- specified, a region will be chosen automatically. Supported
-- location-ids: \`us\`: USA country only, \`asia\`: East asia areas, like
-- Japan, Taiwan, \`eu\`: The European Union. Example:
-- \`projects\/project-A\/locations\/eu\`.
plfabaParent :: Lens' ProjectsLocationsFilesAsyncBatchAnnotate Text
plfabaParent
  = lens _plfabaParent (\ s a -> s{_plfabaParent = a})

-- | V1 error format.
plfabaXgafv :: Lens' ProjectsLocationsFilesAsyncBatchAnnotate (Maybe Xgafv)
plfabaXgafv
  = lens _plfabaXgafv (\ s a -> s{_plfabaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plfabaUploadProtocol :: Lens' ProjectsLocationsFilesAsyncBatchAnnotate (Maybe Text)
plfabaUploadProtocol
  = lens _plfabaUploadProtocol
      (\ s a -> s{_plfabaUploadProtocol = a})

-- | OAuth access token.
plfabaAccessToken :: Lens' ProjectsLocationsFilesAsyncBatchAnnotate (Maybe Text)
plfabaAccessToken
  = lens _plfabaAccessToken
      (\ s a -> s{_plfabaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plfabaUploadType :: Lens' ProjectsLocationsFilesAsyncBatchAnnotate (Maybe Text)
plfabaUploadType
  = lens _plfabaUploadType
      (\ s a -> s{_plfabaUploadType = a})

-- | Multipart request metadata.
plfabaPayload :: Lens' ProjectsLocationsFilesAsyncBatchAnnotate GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest
plfabaPayload
  = lens _plfabaPayload
      (\ s a -> s{_plfabaPayload = a})

-- | JSONP
plfabaCallback :: Lens' ProjectsLocationsFilesAsyncBatchAnnotate (Maybe Text)
plfabaCallback
  = lens _plfabaCallback
      (\ s a -> s{_plfabaCallback = a})

instance GoogleRequest
           ProjectsLocationsFilesAsyncBatchAnnotate
         where
        type Rs ProjectsLocationsFilesAsyncBatchAnnotate =
             Operation
        type Scopes ProjectsLocationsFilesAsyncBatchAnnotate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-vision"]
        requestClient
          ProjectsLocationsFilesAsyncBatchAnnotate'{..}
          = go _plfabaParent _plfabaXgafv _plfabaUploadProtocol
              _plfabaAccessToken
              _plfabaUploadType
              _plfabaCallback
              (Just AltJSON)
              _plfabaPayload
              visionService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsFilesAsyncBatchAnnotateResource)
                      mempty
