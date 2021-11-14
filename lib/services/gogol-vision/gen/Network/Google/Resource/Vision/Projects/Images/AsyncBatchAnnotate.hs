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
-- Module      : Network.Google.Resource.Vision.Projects.Images.AsyncBatchAnnotate
-- Copyright   : (c) 2015-2021 Brendan Hay
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
-- /See:/ <https://cloud.google.com/vision/ Cloud Vision API Reference> for @vision.projects.images.asyncBatchAnnotate@.
module Network.Google.Resource.Vision.Projects.Images.AsyncBatchAnnotate
    (
    -- * REST Resource
      ProjectsImagesAsyncBatchAnnotateResource

    -- * Creating a Request
    , projectsImagesAsyncBatchAnnotate
    , ProjectsImagesAsyncBatchAnnotate

    -- * Request Lenses
    , piabaParent
    , piabaXgafv
    , piabaUploadProtocol
    , piabaAccessToken
    , piabaUploadType
    , piabaPayload
    , piabaCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vision.Types

-- | A resource alias for @vision.projects.images.asyncBatchAnnotate@ method which the
-- 'ProjectsImagesAsyncBatchAnnotate' request conforms to.
type ProjectsImagesAsyncBatchAnnotateResource =
     "v1p2beta1" :>
       Capture "parent" Text :>
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
-- /See:/ 'projectsImagesAsyncBatchAnnotate' smart constructor.
data ProjectsImagesAsyncBatchAnnotate =
  ProjectsImagesAsyncBatchAnnotate'
    { _piabaParent :: !Text
    , _piabaXgafv :: !(Maybe Xgafv)
    , _piabaUploadProtocol :: !(Maybe Text)
    , _piabaAccessToken :: !(Maybe Text)
    , _piabaUploadType :: !(Maybe Text)
    , _piabaPayload :: !GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
    , _piabaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsImagesAsyncBatchAnnotate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piabaParent'
--
-- * 'piabaXgafv'
--
-- * 'piabaUploadProtocol'
--
-- * 'piabaAccessToken'
--
-- * 'piabaUploadType'
--
-- * 'piabaPayload'
--
-- * 'piabaCallback'
projectsImagesAsyncBatchAnnotate
    :: Text -- ^ 'piabaParent'
    -> GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest -- ^ 'piabaPayload'
    -> ProjectsImagesAsyncBatchAnnotate
projectsImagesAsyncBatchAnnotate pPiabaParent_ pPiabaPayload_ =
  ProjectsImagesAsyncBatchAnnotate'
    { _piabaParent = pPiabaParent_
    , _piabaXgafv = Nothing
    , _piabaUploadProtocol = Nothing
    , _piabaAccessToken = Nothing
    , _piabaUploadType = Nothing
    , _piabaPayload = pPiabaPayload_
    , _piabaCallback = Nothing
    }


-- | Optional. Target project and location to make a call. Format:
-- \`projects\/{project-id}\/locations\/{location-id}\`. If no parent is
-- specified, a region will be chosen automatically. Supported
-- location-ids: \`us\`: USA country only, \`asia\`: East asia areas, like
-- Japan, Taiwan, \`eu\`: The European Union. Example:
-- \`projects\/project-A\/locations\/eu\`.
piabaParent :: Lens' ProjectsImagesAsyncBatchAnnotate Text
piabaParent
  = lens _piabaParent (\ s a -> s{_piabaParent = a})

-- | V1 error format.
piabaXgafv :: Lens' ProjectsImagesAsyncBatchAnnotate (Maybe Xgafv)
piabaXgafv
  = lens _piabaXgafv (\ s a -> s{_piabaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piabaUploadProtocol :: Lens' ProjectsImagesAsyncBatchAnnotate (Maybe Text)
piabaUploadProtocol
  = lens _piabaUploadProtocol
      (\ s a -> s{_piabaUploadProtocol = a})

-- | OAuth access token.
piabaAccessToken :: Lens' ProjectsImagesAsyncBatchAnnotate (Maybe Text)
piabaAccessToken
  = lens _piabaAccessToken
      (\ s a -> s{_piabaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piabaUploadType :: Lens' ProjectsImagesAsyncBatchAnnotate (Maybe Text)
piabaUploadType
  = lens _piabaUploadType
      (\ s a -> s{_piabaUploadType = a})

-- | Multipart request metadata.
piabaPayload :: Lens' ProjectsImagesAsyncBatchAnnotate GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
piabaPayload
  = lens _piabaPayload (\ s a -> s{_piabaPayload = a})

-- | JSONP
piabaCallback :: Lens' ProjectsImagesAsyncBatchAnnotate (Maybe Text)
piabaCallback
  = lens _piabaCallback
      (\ s a -> s{_piabaCallback = a})

instance GoogleRequest
           ProjectsImagesAsyncBatchAnnotate
         where
        type Rs ProjectsImagesAsyncBatchAnnotate = Operation
        type Scopes ProjectsImagesAsyncBatchAnnotate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-vision"]
        requestClient ProjectsImagesAsyncBatchAnnotate'{..}
          = go _piabaParent _piabaXgafv _piabaUploadProtocol
              _piabaAccessToken
              _piabaUploadType
              _piabaCallback
              (Just AltJSON)
              _piabaPayload
              visionService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsImagesAsyncBatchAnnotateResource)
                      mempty
