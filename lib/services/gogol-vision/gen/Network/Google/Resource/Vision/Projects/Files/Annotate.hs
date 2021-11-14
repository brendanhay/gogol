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
-- Module      : Network.Google.Resource.Vision.Projects.Files.Annotate
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
-- /See:/ <https://cloud.google.com/vision/ Cloud Vision API Reference> for @vision.projects.files.annotate@.
module Network.Google.Resource.Vision.Projects.Files.Annotate
    (
    -- * REST Resource
      ProjectsFilesAnnotateResource

    -- * Creating a Request
    , projectsFilesAnnotate
    , ProjectsFilesAnnotate

    -- * Request Lenses
    , pfaParent
    , pfaXgafv
    , pfaUploadProtocol
    , pfaAccessToken
    , pfaUploadType
    , pfaPayload
    , pfaCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vision.Types

-- | A resource alias for @vision.projects.files.annotate@ method which the
-- 'ProjectsFilesAnnotate' request conforms to.
type ProjectsFilesAnnotateResource =
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
-- /See:/ 'projectsFilesAnnotate' smart constructor.
data ProjectsFilesAnnotate =
  ProjectsFilesAnnotate'
    { _pfaParent :: !Text
    , _pfaXgafv :: !(Maybe Xgafv)
    , _pfaUploadProtocol :: !(Maybe Text)
    , _pfaAccessToken :: !(Maybe Text)
    , _pfaUploadType :: !(Maybe Text)
    , _pfaPayload :: !GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest
    , _pfaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsFilesAnnotate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfaParent'
--
-- * 'pfaXgafv'
--
-- * 'pfaUploadProtocol'
--
-- * 'pfaAccessToken'
--
-- * 'pfaUploadType'
--
-- * 'pfaPayload'
--
-- * 'pfaCallback'
projectsFilesAnnotate
    :: Text -- ^ 'pfaParent'
    -> GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest -- ^ 'pfaPayload'
    -> ProjectsFilesAnnotate
projectsFilesAnnotate pPfaParent_ pPfaPayload_ =
  ProjectsFilesAnnotate'
    { _pfaParent = pPfaParent_
    , _pfaXgafv = Nothing
    , _pfaUploadProtocol = Nothing
    , _pfaAccessToken = Nothing
    , _pfaUploadType = Nothing
    , _pfaPayload = pPfaPayload_
    , _pfaCallback = Nothing
    }


-- | Optional. Target project and location to make a call. Format:
-- \`projects\/{project-id}\/locations\/{location-id}\`. If no parent is
-- specified, a region will be chosen automatically. Supported
-- location-ids: \`us\`: USA country only, \`asia\`: East asia areas, like
-- Japan, Taiwan, \`eu\`: The European Union. Example:
-- \`projects\/project-A\/locations\/eu\`.
pfaParent :: Lens' ProjectsFilesAnnotate Text
pfaParent
  = lens _pfaParent (\ s a -> s{_pfaParent = a})

-- | V1 error format.
pfaXgafv :: Lens' ProjectsFilesAnnotate (Maybe Xgafv)
pfaXgafv = lens _pfaXgafv (\ s a -> s{_pfaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pfaUploadProtocol :: Lens' ProjectsFilesAnnotate (Maybe Text)
pfaUploadProtocol
  = lens _pfaUploadProtocol
      (\ s a -> s{_pfaUploadProtocol = a})

-- | OAuth access token.
pfaAccessToken :: Lens' ProjectsFilesAnnotate (Maybe Text)
pfaAccessToken
  = lens _pfaAccessToken
      (\ s a -> s{_pfaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pfaUploadType :: Lens' ProjectsFilesAnnotate (Maybe Text)
pfaUploadType
  = lens _pfaUploadType
      (\ s a -> s{_pfaUploadType = a})

-- | Multipart request metadata.
pfaPayload :: Lens' ProjectsFilesAnnotate GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest
pfaPayload
  = lens _pfaPayload (\ s a -> s{_pfaPayload = a})

-- | JSONP
pfaCallback :: Lens' ProjectsFilesAnnotate (Maybe Text)
pfaCallback
  = lens _pfaCallback (\ s a -> s{_pfaCallback = a})

instance GoogleRequest ProjectsFilesAnnotate where
        type Rs ProjectsFilesAnnotate =
             GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse
        type Scopes ProjectsFilesAnnotate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-vision"]
        requestClient ProjectsFilesAnnotate'{..}
          = go _pfaParent _pfaXgafv _pfaUploadProtocol
              _pfaAccessToken
              _pfaUploadType
              _pfaCallback
              (Just AltJSON)
              _pfaPayload
              visionService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsFilesAnnotateResource)
                      mempty
