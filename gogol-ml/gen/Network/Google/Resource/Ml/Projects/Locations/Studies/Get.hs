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
-- Module      : Network.Google.Resource.Ml.Projects.Locations.Studies.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a study.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.get@.
module Network.Google.Resource.Ml.Projects.Locations.Studies.Get
    (
    -- * REST Resource
      ProjectsLocationsStudiesGetResource

    -- * Creating a Request
    , projectsLocationsStudiesGet
    , ProjectsLocationsStudiesGet

    -- * Request Lenses
    , plsgXgafv
    , plsgUploadProtocol
    , plsgAccessToken
    , plsgUploadType
    , plsgName
    , plsgCallback
    ) where

import Network.Google.MachineLearning.Types
import Network.Google.Prelude

-- | A resource alias for @ml.projects.locations.studies.get@ method which the
-- 'ProjectsLocationsStudiesGet' request conforms to.
type ProjectsLocationsStudiesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GoogleCloudMlV1__Study

-- | Gets a study.
--
-- /See:/ 'projectsLocationsStudiesGet' smart constructor.
data ProjectsLocationsStudiesGet =
  ProjectsLocationsStudiesGet'
    { _plsgXgafv :: !(Maybe Xgafv)
    , _plsgUploadProtocol :: !(Maybe Text)
    , _plsgAccessToken :: !(Maybe Text)
    , _plsgUploadType :: !(Maybe Text)
    , _plsgName :: !Text
    , _plsgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsStudiesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsgXgafv'
--
-- * 'plsgUploadProtocol'
--
-- * 'plsgAccessToken'
--
-- * 'plsgUploadType'
--
-- * 'plsgName'
--
-- * 'plsgCallback'
projectsLocationsStudiesGet
    :: Text -- ^ 'plsgName'
    -> ProjectsLocationsStudiesGet
projectsLocationsStudiesGet pPlsgName_ =
  ProjectsLocationsStudiesGet'
    { _plsgXgafv = Nothing
    , _plsgUploadProtocol = Nothing
    , _plsgAccessToken = Nothing
    , _plsgUploadType = Nothing
    , _plsgName = pPlsgName_
    , _plsgCallback = Nothing
    }


-- | V1 error format.
plsgXgafv :: Lens' ProjectsLocationsStudiesGet (Maybe Xgafv)
plsgXgafv
  = lens _plsgXgafv (\ s a -> s{_plsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsgUploadProtocol :: Lens' ProjectsLocationsStudiesGet (Maybe Text)
plsgUploadProtocol
  = lens _plsgUploadProtocol
      (\ s a -> s{_plsgUploadProtocol = a})

-- | OAuth access token.
plsgAccessToken :: Lens' ProjectsLocationsStudiesGet (Maybe Text)
plsgAccessToken
  = lens _plsgAccessToken
      (\ s a -> s{_plsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsgUploadType :: Lens' ProjectsLocationsStudiesGet (Maybe Text)
plsgUploadType
  = lens _plsgUploadType
      (\ s a -> s{_plsgUploadType = a})

-- | Required. The study name.
plsgName :: Lens' ProjectsLocationsStudiesGet Text
plsgName = lens _plsgName (\ s a -> s{_plsgName = a})

-- | JSONP
plsgCallback :: Lens' ProjectsLocationsStudiesGet (Maybe Text)
plsgCallback
  = lens _plsgCallback (\ s a -> s{_plsgCallback = a})

instance GoogleRequest ProjectsLocationsStudiesGet
         where
        type Rs ProjectsLocationsStudiesGet =
             GoogleCloudMlV1__Study
        type Scopes ProjectsLocationsStudiesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsStudiesGet'{..}
          = go _plsgName _plsgXgafv _plsgUploadProtocol
              _plsgAccessToken
              _plsgUploadType
              _plsgCallback
              (Just AltJSON)
              machineLearningService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsStudiesGetResource)
                      mempty
