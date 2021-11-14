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
-- Module      : Network.Google.Resource.Vision.Projects.Locations.Images.AsyncBatchAnnotate
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
-- /See:/ <https://cloud.google.com/vision/ Cloud Vision API Reference> for @vision.projects.locations.images.asyncBatchAnnotate@.
module Network.Google.Resource.Vision.Projects.Locations.Images.AsyncBatchAnnotate
    (
    -- * REST Resource
      ProjectsLocationsImagesAsyncBatchAnnotateResource

    -- * Creating a Request
    , projectsLocationsImagesAsyncBatchAnnotate
    , ProjectsLocationsImagesAsyncBatchAnnotate

    -- * Request Lenses
    , pliabaParent
    , pliabaXgafv
    , pliabaUploadProtocol
    , pliabaAccessToken
    , pliabaUploadType
    , pliabaPayload
    , pliabaCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vision.Types

-- | A resource alias for @vision.projects.locations.images.asyncBatchAnnotate@ method which the
-- 'ProjectsLocationsImagesAsyncBatchAnnotate' request conforms to.
type ProjectsLocationsImagesAsyncBatchAnnotateResource
     =
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
-- /See:/ 'projectsLocationsImagesAsyncBatchAnnotate' smart constructor.
data ProjectsLocationsImagesAsyncBatchAnnotate =
  ProjectsLocationsImagesAsyncBatchAnnotate'
    { _pliabaParent :: !Text
    , _pliabaXgafv :: !(Maybe Xgafv)
    , _pliabaUploadProtocol :: !(Maybe Text)
    , _pliabaAccessToken :: !(Maybe Text)
    , _pliabaUploadType :: !(Maybe Text)
    , _pliabaPayload :: !GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
    , _pliabaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsImagesAsyncBatchAnnotate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pliabaParent'
--
-- * 'pliabaXgafv'
--
-- * 'pliabaUploadProtocol'
--
-- * 'pliabaAccessToken'
--
-- * 'pliabaUploadType'
--
-- * 'pliabaPayload'
--
-- * 'pliabaCallback'
projectsLocationsImagesAsyncBatchAnnotate
    :: Text -- ^ 'pliabaParent'
    -> GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest -- ^ 'pliabaPayload'
    -> ProjectsLocationsImagesAsyncBatchAnnotate
projectsLocationsImagesAsyncBatchAnnotate pPliabaParent_ pPliabaPayload_ =
  ProjectsLocationsImagesAsyncBatchAnnotate'
    { _pliabaParent = pPliabaParent_
    , _pliabaXgafv = Nothing
    , _pliabaUploadProtocol = Nothing
    , _pliabaAccessToken = Nothing
    , _pliabaUploadType = Nothing
    , _pliabaPayload = pPliabaPayload_
    , _pliabaCallback = Nothing
    }


-- | Optional. Target project and location to make a call. Format:
-- \`projects\/{project-id}\/locations\/{location-id}\`. If no parent is
-- specified, a region will be chosen automatically. Supported
-- location-ids: \`us\`: USA country only, \`asia\`: East asia areas, like
-- Japan, Taiwan, \`eu\`: The European Union. Example:
-- \`projects\/project-A\/locations\/eu\`.
pliabaParent :: Lens' ProjectsLocationsImagesAsyncBatchAnnotate Text
pliabaParent
  = lens _pliabaParent (\ s a -> s{_pliabaParent = a})

-- | V1 error format.
pliabaXgafv :: Lens' ProjectsLocationsImagesAsyncBatchAnnotate (Maybe Xgafv)
pliabaXgafv
  = lens _pliabaXgafv (\ s a -> s{_pliabaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pliabaUploadProtocol :: Lens' ProjectsLocationsImagesAsyncBatchAnnotate (Maybe Text)
pliabaUploadProtocol
  = lens _pliabaUploadProtocol
      (\ s a -> s{_pliabaUploadProtocol = a})

-- | OAuth access token.
pliabaAccessToken :: Lens' ProjectsLocationsImagesAsyncBatchAnnotate (Maybe Text)
pliabaAccessToken
  = lens _pliabaAccessToken
      (\ s a -> s{_pliabaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pliabaUploadType :: Lens' ProjectsLocationsImagesAsyncBatchAnnotate (Maybe Text)
pliabaUploadType
  = lens _pliabaUploadType
      (\ s a -> s{_pliabaUploadType = a})

-- | Multipart request metadata.
pliabaPayload :: Lens' ProjectsLocationsImagesAsyncBatchAnnotate GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest
pliabaPayload
  = lens _pliabaPayload
      (\ s a -> s{_pliabaPayload = a})

-- | JSONP
pliabaCallback :: Lens' ProjectsLocationsImagesAsyncBatchAnnotate (Maybe Text)
pliabaCallback
  = lens _pliabaCallback
      (\ s a -> s{_pliabaCallback = a})

instance GoogleRequest
           ProjectsLocationsImagesAsyncBatchAnnotate
         where
        type Rs ProjectsLocationsImagesAsyncBatchAnnotate =
             Operation
        type Scopes ProjectsLocationsImagesAsyncBatchAnnotate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-vision"]
        requestClient
          ProjectsLocationsImagesAsyncBatchAnnotate'{..}
          = go _pliabaParent _pliabaXgafv _pliabaUploadProtocol
              _pliabaAccessToken
              _pliabaUploadType
              _pliabaCallback
              (Just AltJSON)
              _pliabaPayload
              visionService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsImagesAsyncBatchAnnotateResource)
                      mempty
