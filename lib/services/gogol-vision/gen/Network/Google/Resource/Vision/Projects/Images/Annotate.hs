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
-- Module      : Network.Google.Resource.Vision.Projects.Images.Annotate
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Run image detection and annotation for a batch of images.
--
-- /See:/ <https://cloud.google.com/vision/ Cloud Vision API Reference> for @vision.projects.images.annotate@.
module Network.Google.Resource.Vision.Projects.Images.Annotate
    (
    -- * REST Resource
      ProjectsImagesAnnotateResource

    -- * Creating a Request
    , projectsImagesAnnotate
    , ProjectsImagesAnnotate

    -- * Request Lenses
    , piaParent
    , piaXgafv
    , piaUploadProtocol
    , piaAccessToken
    , piaUploadType
    , piaPayload
    , piaCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vision.Types

-- | A resource alias for @vision.projects.images.annotate@ method which the
-- 'ProjectsImagesAnnotate' request conforms to.
type ProjectsImagesAnnotateResource =
     "v1p2beta1" :>
       Capture "parent" Text :>
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
-- /See:/ 'projectsImagesAnnotate' smart constructor.
data ProjectsImagesAnnotate =
  ProjectsImagesAnnotate'
    { _piaParent :: !Text
    , _piaXgafv :: !(Maybe Xgafv)
    , _piaUploadProtocol :: !(Maybe Text)
    , _piaAccessToken :: !(Maybe Text)
    , _piaUploadType :: !(Maybe Text)
    , _piaPayload :: !GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest
    , _piaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsImagesAnnotate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piaParent'
--
-- * 'piaXgafv'
--
-- * 'piaUploadProtocol'
--
-- * 'piaAccessToken'
--
-- * 'piaUploadType'
--
-- * 'piaPayload'
--
-- * 'piaCallback'
projectsImagesAnnotate
    :: Text -- ^ 'piaParent'
    -> GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest -- ^ 'piaPayload'
    -> ProjectsImagesAnnotate
projectsImagesAnnotate pPiaParent_ pPiaPayload_ =
  ProjectsImagesAnnotate'
    { _piaParent = pPiaParent_
    , _piaXgafv = Nothing
    , _piaUploadProtocol = Nothing
    , _piaAccessToken = Nothing
    , _piaUploadType = Nothing
    , _piaPayload = pPiaPayload_
    , _piaCallback = Nothing
    }


-- | Optional. Target project and location to make a call. Format:
-- \`projects\/{project-id}\/locations\/{location-id}\`. If no parent is
-- specified, a region will be chosen automatically. Supported
-- location-ids: \`us\`: USA country only, \`asia\`: East asia areas, like
-- Japan, Taiwan, \`eu\`: The European Union. Example:
-- \`projects\/project-A\/locations\/eu\`.
piaParent :: Lens' ProjectsImagesAnnotate Text
piaParent
  = lens _piaParent (\ s a -> s{_piaParent = a})

-- | V1 error format.
piaXgafv :: Lens' ProjectsImagesAnnotate (Maybe Xgafv)
piaXgafv = lens _piaXgafv (\ s a -> s{_piaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piaUploadProtocol :: Lens' ProjectsImagesAnnotate (Maybe Text)
piaUploadProtocol
  = lens _piaUploadProtocol
      (\ s a -> s{_piaUploadProtocol = a})

-- | OAuth access token.
piaAccessToken :: Lens' ProjectsImagesAnnotate (Maybe Text)
piaAccessToken
  = lens _piaAccessToken
      (\ s a -> s{_piaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piaUploadType :: Lens' ProjectsImagesAnnotate (Maybe Text)
piaUploadType
  = lens _piaUploadType
      (\ s a -> s{_piaUploadType = a})

-- | Multipart request metadata.
piaPayload :: Lens' ProjectsImagesAnnotate GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest
piaPayload
  = lens _piaPayload (\ s a -> s{_piaPayload = a})

-- | JSONP
piaCallback :: Lens' ProjectsImagesAnnotate (Maybe Text)
piaCallback
  = lens _piaCallback (\ s a -> s{_piaCallback = a})

instance GoogleRequest ProjectsImagesAnnotate where
        type Rs ProjectsImagesAnnotate =
             GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse
        type Scopes ProjectsImagesAnnotate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-vision"]
        requestClient ProjectsImagesAnnotate'{..}
          = go _piaParent _piaXgafv _piaUploadProtocol
              _piaAccessToken
              _piaUploadType
              _piaCallback
              (Just AltJSON)
              _piaPayload
              visionService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsImagesAnnotateResource)
                      mempty
