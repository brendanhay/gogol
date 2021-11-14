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
-- Module      : Network.Google.Resource.Ml.Projects.Locations.Studies.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the studies in a region for an associated project.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.list@.
module Network.Google.Resource.Ml.Projects.Locations.Studies.List
    (
    -- * REST Resource
      ProjectsLocationsStudiesListResource

    -- * Creating a Request
    , projectsLocationsStudiesList
    , ProjectsLocationsStudiesList

    -- * Request Lenses
    , plslParent
    , plslXgafv
    , plslUploadProtocol
    , plslAccessToken
    , plslUploadType
    , plslCallback
    ) where

import Network.Google.MachineLearning.Types
import Network.Google.Prelude

-- | A resource alias for @ml.projects.locations.studies.list@ method which the
-- 'ProjectsLocationsStudiesList' request conforms to.
type ProjectsLocationsStudiesListResource =
     "v1" :>
       Capture "parent" Text :>
         "studies" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] GoogleCloudMlV1__ListStudiesResponse

-- | Lists all the studies in a region for an associated project.
--
-- /See:/ 'projectsLocationsStudiesList' smart constructor.
data ProjectsLocationsStudiesList =
  ProjectsLocationsStudiesList'
    { _plslParent :: !Text
    , _plslXgafv :: !(Maybe Xgafv)
    , _plslUploadProtocol :: !(Maybe Text)
    , _plslAccessToken :: !(Maybe Text)
    , _plslUploadType :: !(Maybe Text)
    , _plslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsStudiesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plslParent'
--
-- * 'plslXgafv'
--
-- * 'plslUploadProtocol'
--
-- * 'plslAccessToken'
--
-- * 'plslUploadType'
--
-- * 'plslCallback'
projectsLocationsStudiesList
    :: Text -- ^ 'plslParent'
    -> ProjectsLocationsStudiesList
projectsLocationsStudiesList pPlslParent_ =
  ProjectsLocationsStudiesList'
    { _plslParent = pPlslParent_
    , _plslXgafv = Nothing
    , _plslUploadProtocol = Nothing
    , _plslAccessToken = Nothing
    , _plslUploadType = Nothing
    , _plslCallback = Nothing
    }


-- | Required. The project and location that the study belongs to. Format:
-- projects\/{project}\/locations\/{location}
plslParent :: Lens' ProjectsLocationsStudiesList Text
plslParent
  = lens _plslParent (\ s a -> s{_plslParent = a})

-- | V1 error format.
plslXgafv :: Lens' ProjectsLocationsStudiesList (Maybe Xgafv)
plslXgafv
  = lens _plslXgafv (\ s a -> s{_plslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plslUploadProtocol :: Lens' ProjectsLocationsStudiesList (Maybe Text)
plslUploadProtocol
  = lens _plslUploadProtocol
      (\ s a -> s{_plslUploadProtocol = a})

-- | OAuth access token.
plslAccessToken :: Lens' ProjectsLocationsStudiesList (Maybe Text)
plslAccessToken
  = lens _plslAccessToken
      (\ s a -> s{_plslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plslUploadType :: Lens' ProjectsLocationsStudiesList (Maybe Text)
plslUploadType
  = lens _plslUploadType
      (\ s a -> s{_plslUploadType = a})

-- | JSONP
plslCallback :: Lens' ProjectsLocationsStudiesList (Maybe Text)
plslCallback
  = lens _plslCallback (\ s a -> s{_plslCallback = a})

instance GoogleRequest ProjectsLocationsStudiesList
         where
        type Rs ProjectsLocationsStudiesList =
             GoogleCloudMlV1__ListStudiesResponse
        type Scopes ProjectsLocationsStudiesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsStudiesList'{..}
          = go _plslParent _plslXgafv _plslUploadProtocol
              _plslAccessToken
              _plslUploadType
              _plslCallback
              (Just AltJSON)
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsStudiesListResource)
                      mempty
