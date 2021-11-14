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
-- Module      : Network.Google.Resource.Vision.Projects.Locations.Files.Annotate
-- Copyright   : (c) 2015-2021 Brendan Hay
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
-- /See:/ <https://cloud.google.com/vision/ Cloud Vision API Reference> for @vision.projects.locations.files.annotate@.
module Network.Google.Resource.Vision.Projects.Locations.Files.Annotate
    (
    -- * REST Resource
      ProjectsLocationsFilesAnnotateResource

    -- * Creating a Request
    , projectsLocationsFilesAnnotate
    , ProjectsLocationsFilesAnnotate

    -- * Request Lenses
    , plfaParent
    , plfaXgafv
    , plfaUploadProtocol
    , plfaAccessToken
    , plfaUploadType
    , plfaPayload
    , plfaCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vision.Types

-- | A resource alias for @vision.projects.locations.files.annotate@ method which the
-- 'ProjectsLocationsFilesAnnotate' request conforms to.
type ProjectsLocationsFilesAnnotateResource =
     "v1p2beta1" :>
       Capture "parent" Text :>
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
-- /See:/ 'projectsLocationsFilesAnnotate' smart constructor.
data ProjectsLocationsFilesAnnotate =
  ProjectsLocationsFilesAnnotate'
    { _plfaParent :: !Text
    , _plfaXgafv :: !(Maybe Xgafv)
    , _plfaUploadProtocol :: !(Maybe Text)
    , _plfaAccessToken :: !(Maybe Text)
    , _plfaUploadType :: !(Maybe Text)
    , _plfaPayload :: !GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest
    , _plfaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsFilesAnnotate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plfaParent'
--
-- * 'plfaXgafv'
--
-- * 'plfaUploadProtocol'
--
-- * 'plfaAccessToken'
--
-- * 'plfaUploadType'
--
-- * 'plfaPayload'
--
-- * 'plfaCallback'
projectsLocationsFilesAnnotate
    :: Text -- ^ 'plfaParent'
    -> GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest -- ^ 'plfaPayload'
    -> ProjectsLocationsFilesAnnotate
projectsLocationsFilesAnnotate pPlfaParent_ pPlfaPayload_ =
  ProjectsLocationsFilesAnnotate'
    { _plfaParent = pPlfaParent_
    , _plfaXgafv = Nothing
    , _plfaUploadProtocol = Nothing
    , _plfaAccessToken = Nothing
    , _plfaUploadType = Nothing
    , _plfaPayload = pPlfaPayload_
    , _plfaCallback = Nothing
    }


-- | Optional. Target project and location to make a call. Format:
-- \`projects\/{project-id}\/locations\/{location-id}\`. If no parent is
-- specified, a region will be chosen automatically. Supported
-- location-ids: \`us\`: USA country only, \`asia\`: East asia areas, like
-- Japan, Taiwan, \`eu\`: The European Union. Example:
-- \`projects\/project-A\/locations\/eu\`.
plfaParent :: Lens' ProjectsLocationsFilesAnnotate Text
plfaParent
  = lens _plfaParent (\ s a -> s{_plfaParent = a})

-- | V1 error format.
plfaXgafv :: Lens' ProjectsLocationsFilesAnnotate (Maybe Xgafv)
plfaXgafv
  = lens _plfaXgafv (\ s a -> s{_plfaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plfaUploadProtocol :: Lens' ProjectsLocationsFilesAnnotate (Maybe Text)
plfaUploadProtocol
  = lens _plfaUploadProtocol
      (\ s a -> s{_plfaUploadProtocol = a})

-- | OAuth access token.
plfaAccessToken :: Lens' ProjectsLocationsFilesAnnotate (Maybe Text)
plfaAccessToken
  = lens _plfaAccessToken
      (\ s a -> s{_plfaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plfaUploadType :: Lens' ProjectsLocationsFilesAnnotate (Maybe Text)
plfaUploadType
  = lens _plfaUploadType
      (\ s a -> s{_plfaUploadType = a})

-- | Multipart request metadata.
plfaPayload :: Lens' ProjectsLocationsFilesAnnotate GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest
plfaPayload
  = lens _plfaPayload (\ s a -> s{_plfaPayload = a})

-- | JSONP
plfaCallback :: Lens' ProjectsLocationsFilesAnnotate (Maybe Text)
plfaCallback
  = lens _plfaCallback (\ s a -> s{_plfaCallback = a})

instance GoogleRequest ProjectsLocationsFilesAnnotate
         where
        type Rs ProjectsLocationsFilesAnnotate =
             GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse
        type Scopes ProjectsLocationsFilesAnnotate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-vision"]
        requestClient ProjectsLocationsFilesAnnotate'{..}
          = go _plfaParent _plfaXgafv _plfaUploadProtocol
              _plfaAccessToken
              _plfaUploadType
              _plfaCallback
              (Just AltJSON)
              _plfaPayload
              visionService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsFilesAnnotateResource)
                      mempty
