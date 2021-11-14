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
-- Module      : Network.Google.Resource.Vision.Projects.Locations.Images.Annotate
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Run image detection and annotation for a batch of images.
--
-- /See:/ <https://cloud.google.com/vision/ Cloud Vision API Reference> for @vision.projects.locations.images.annotate@.
module Network.Google.Resource.Vision.Projects.Locations.Images.Annotate
    (
    -- * REST Resource
      ProjectsLocationsImagesAnnotateResource

    -- * Creating a Request
    , projectsLocationsImagesAnnotate
    , ProjectsLocationsImagesAnnotate

    -- * Request Lenses
    , pliaParent
    , pliaXgafv
    , pliaUploadProtocol
    , pliaAccessToken
    , pliaUploadType
    , pliaPayload
    , pliaCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vision.Types

-- | A resource alias for @vision.projects.locations.images.annotate@ method which the
-- 'ProjectsLocationsImagesAnnotate' request conforms to.
type ProjectsLocationsImagesAnnotateResource =
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
-- /See:/ 'projectsLocationsImagesAnnotate' smart constructor.
data ProjectsLocationsImagesAnnotate =
  ProjectsLocationsImagesAnnotate'
    { _pliaParent :: !Text
    , _pliaXgafv :: !(Maybe Xgafv)
    , _pliaUploadProtocol :: !(Maybe Text)
    , _pliaAccessToken :: !(Maybe Text)
    , _pliaUploadType :: !(Maybe Text)
    , _pliaPayload :: !GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest
    , _pliaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsImagesAnnotate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pliaParent'
--
-- * 'pliaXgafv'
--
-- * 'pliaUploadProtocol'
--
-- * 'pliaAccessToken'
--
-- * 'pliaUploadType'
--
-- * 'pliaPayload'
--
-- * 'pliaCallback'
projectsLocationsImagesAnnotate
    :: Text -- ^ 'pliaParent'
    -> GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest -- ^ 'pliaPayload'
    -> ProjectsLocationsImagesAnnotate
projectsLocationsImagesAnnotate pPliaParent_ pPliaPayload_ =
  ProjectsLocationsImagesAnnotate'
    { _pliaParent = pPliaParent_
    , _pliaXgafv = Nothing
    , _pliaUploadProtocol = Nothing
    , _pliaAccessToken = Nothing
    , _pliaUploadType = Nothing
    , _pliaPayload = pPliaPayload_
    , _pliaCallback = Nothing
    }


-- | Optional. Target project and location to make a call. Format:
-- \`projects\/{project-id}\/locations\/{location-id}\`. If no parent is
-- specified, a region will be chosen automatically. Supported
-- location-ids: \`us\`: USA country only, \`asia\`: East asia areas, like
-- Japan, Taiwan, \`eu\`: The European Union. Example:
-- \`projects\/project-A\/locations\/eu\`.
pliaParent :: Lens' ProjectsLocationsImagesAnnotate Text
pliaParent
  = lens _pliaParent (\ s a -> s{_pliaParent = a})

-- | V1 error format.
pliaXgafv :: Lens' ProjectsLocationsImagesAnnotate (Maybe Xgafv)
pliaXgafv
  = lens _pliaXgafv (\ s a -> s{_pliaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pliaUploadProtocol :: Lens' ProjectsLocationsImagesAnnotate (Maybe Text)
pliaUploadProtocol
  = lens _pliaUploadProtocol
      (\ s a -> s{_pliaUploadProtocol = a})

-- | OAuth access token.
pliaAccessToken :: Lens' ProjectsLocationsImagesAnnotate (Maybe Text)
pliaAccessToken
  = lens _pliaAccessToken
      (\ s a -> s{_pliaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pliaUploadType :: Lens' ProjectsLocationsImagesAnnotate (Maybe Text)
pliaUploadType
  = lens _pliaUploadType
      (\ s a -> s{_pliaUploadType = a})

-- | Multipart request metadata.
pliaPayload :: Lens' ProjectsLocationsImagesAnnotate GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest
pliaPayload
  = lens _pliaPayload (\ s a -> s{_pliaPayload = a})

-- | JSONP
pliaCallback :: Lens' ProjectsLocationsImagesAnnotate (Maybe Text)
pliaCallback
  = lens _pliaCallback (\ s a -> s{_pliaCallback = a})

instance GoogleRequest
           ProjectsLocationsImagesAnnotate
         where
        type Rs ProjectsLocationsImagesAnnotate =
             GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse
        type Scopes ProjectsLocationsImagesAnnotate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-vision"]
        requestClient ProjectsLocationsImagesAnnotate'{..}
          = go _pliaParent _pliaXgafv _pliaUploadProtocol
              _pliaAccessToken
              _pliaUploadType
              _pliaCallback
              (Just AltJSON)
              _pliaPayload
              visionService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsImagesAnnotateResource)
                      mempty
