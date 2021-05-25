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
-- Module      : Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a trial.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.trials.get@.
module Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Get
    (
    -- * REST Resource
      ProjectsLocationsStudiesTrialsGetResource

    -- * Creating a Request
    , projectsLocationsStudiesTrialsGet
    , ProjectsLocationsStudiesTrialsGet

    -- * Request Lenses
    , plstgXgafv
    , plstgUploadProtocol
    , plstgAccessToken
    , plstgUploadType
    , plstgName
    , plstgCallback
    ) where

import Network.Google.MachineLearning.Types
import Network.Google.Prelude

-- | A resource alias for @ml.projects.locations.studies.trials.get@ method which the
-- 'ProjectsLocationsStudiesTrialsGet' request conforms to.
type ProjectsLocationsStudiesTrialsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GoogleCloudMlV1__Trial

-- | Gets a trial.
--
-- /See:/ 'projectsLocationsStudiesTrialsGet' smart constructor.
data ProjectsLocationsStudiesTrialsGet =
  ProjectsLocationsStudiesTrialsGet'
    { _plstgXgafv :: !(Maybe Xgafv)
    , _plstgUploadProtocol :: !(Maybe Text)
    , _plstgAccessToken :: !(Maybe Text)
    , _plstgUploadType :: !(Maybe Text)
    , _plstgName :: !Text
    , _plstgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsStudiesTrialsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plstgXgafv'
--
-- * 'plstgUploadProtocol'
--
-- * 'plstgAccessToken'
--
-- * 'plstgUploadType'
--
-- * 'plstgName'
--
-- * 'plstgCallback'
projectsLocationsStudiesTrialsGet
    :: Text -- ^ 'plstgName'
    -> ProjectsLocationsStudiesTrialsGet
projectsLocationsStudiesTrialsGet pPlstgName_ =
  ProjectsLocationsStudiesTrialsGet'
    { _plstgXgafv = Nothing
    , _plstgUploadProtocol = Nothing
    , _plstgAccessToken = Nothing
    , _plstgUploadType = Nothing
    , _plstgName = pPlstgName_
    , _plstgCallback = Nothing
    }


-- | V1 error format.
plstgXgafv :: Lens' ProjectsLocationsStudiesTrialsGet (Maybe Xgafv)
plstgXgafv
  = lens _plstgXgafv (\ s a -> s{_plstgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plstgUploadProtocol :: Lens' ProjectsLocationsStudiesTrialsGet (Maybe Text)
plstgUploadProtocol
  = lens _plstgUploadProtocol
      (\ s a -> s{_plstgUploadProtocol = a})

-- | OAuth access token.
plstgAccessToken :: Lens' ProjectsLocationsStudiesTrialsGet (Maybe Text)
plstgAccessToken
  = lens _plstgAccessToken
      (\ s a -> s{_plstgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plstgUploadType :: Lens' ProjectsLocationsStudiesTrialsGet (Maybe Text)
plstgUploadType
  = lens _plstgUploadType
      (\ s a -> s{_plstgUploadType = a})

-- | Required. The trial name.
plstgName :: Lens' ProjectsLocationsStudiesTrialsGet Text
plstgName
  = lens _plstgName (\ s a -> s{_plstgName = a})

-- | JSONP
plstgCallback :: Lens' ProjectsLocationsStudiesTrialsGet (Maybe Text)
plstgCallback
  = lens _plstgCallback
      (\ s a -> s{_plstgCallback = a})

instance GoogleRequest
           ProjectsLocationsStudiesTrialsGet
         where
        type Rs ProjectsLocationsStudiesTrialsGet =
             GoogleCloudMlV1__Trial
        type Scopes ProjectsLocationsStudiesTrialsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsStudiesTrialsGet'{..}
          = go _plstgName _plstgXgafv _plstgUploadProtocol
              _plstgAccessToken
              _plstgUploadType
              _plstgCallback
              (Just AltJSON)
              machineLearningService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsStudiesTrialsGetResource)
                      mempty
