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
-- Module      : Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the trials associated with a study.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.trials.list@.
module Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.List
    (
    -- * REST Resource
      ProjectsLocationsStudiesTrialsListResource

    -- * Creating a Request
    , projectsLocationsStudiesTrialsList
    , ProjectsLocationsStudiesTrialsList

    -- * Request Lenses
    , plstlParent
    , plstlXgafv
    , plstlUploadProtocol
    , plstlAccessToken
    , plstlUploadType
    , plstlCallback
    ) where

import Network.Google.MachineLearning.Types
import Network.Google.Prelude

-- | A resource alias for @ml.projects.locations.studies.trials.list@ method which the
-- 'ProjectsLocationsStudiesTrialsList' request conforms to.
type ProjectsLocationsStudiesTrialsListResource =
     "v1" :>
       Capture "parent" Text :>
         "trials" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] GoogleCloudMlV1__ListTrialsResponse

-- | Lists the trials associated with a study.
--
-- /See:/ 'projectsLocationsStudiesTrialsList' smart constructor.
data ProjectsLocationsStudiesTrialsList =
  ProjectsLocationsStudiesTrialsList'
    { _plstlParent :: !Text
    , _plstlXgafv :: !(Maybe Xgafv)
    , _plstlUploadProtocol :: !(Maybe Text)
    , _plstlAccessToken :: !(Maybe Text)
    , _plstlUploadType :: !(Maybe Text)
    , _plstlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsStudiesTrialsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plstlParent'
--
-- * 'plstlXgafv'
--
-- * 'plstlUploadProtocol'
--
-- * 'plstlAccessToken'
--
-- * 'plstlUploadType'
--
-- * 'plstlCallback'
projectsLocationsStudiesTrialsList
    :: Text -- ^ 'plstlParent'
    -> ProjectsLocationsStudiesTrialsList
projectsLocationsStudiesTrialsList pPlstlParent_ =
  ProjectsLocationsStudiesTrialsList'
    { _plstlParent = pPlstlParent_
    , _plstlXgafv = Nothing
    , _plstlUploadProtocol = Nothing
    , _plstlAccessToken = Nothing
    , _plstlUploadType = Nothing
    , _plstlCallback = Nothing
    }


-- | Required. The name of the study that the trial belongs to.
plstlParent :: Lens' ProjectsLocationsStudiesTrialsList Text
plstlParent
  = lens _plstlParent (\ s a -> s{_plstlParent = a})

-- | V1 error format.
plstlXgafv :: Lens' ProjectsLocationsStudiesTrialsList (Maybe Xgafv)
plstlXgafv
  = lens _plstlXgafv (\ s a -> s{_plstlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plstlUploadProtocol :: Lens' ProjectsLocationsStudiesTrialsList (Maybe Text)
plstlUploadProtocol
  = lens _plstlUploadProtocol
      (\ s a -> s{_plstlUploadProtocol = a})

-- | OAuth access token.
plstlAccessToken :: Lens' ProjectsLocationsStudiesTrialsList (Maybe Text)
plstlAccessToken
  = lens _plstlAccessToken
      (\ s a -> s{_plstlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plstlUploadType :: Lens' ProjectsLocationsStudiesTrialsList (Maybe Text)
plstlUploadType
  = lens _plstlUploadType
      (\ s a -> s{_plstlUploadType = a})

-- | JSONP
plstlCallback :: Lens' ProjectsLocationsStudiesTrialsList (Maybe Text)
plstlCallback
  = lens _plstlCallback
      (\ s a -> s{_plstlCallback = a})

instance GoogleRequest
           ProjectsLocationsStudiesTrialsList
         where
        type Rs ProjectsLocationsStudiesTrialsList =
             GoogleCloudMlV1__ListTrialsResponse
        type Scopes ProjectsLocationsStudiesTrialsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsStudiesTrialsList'{..}
          = go _plstlParent _plstlXgafv _plstlUploadProtocol
              _plstlAccessToken
              _plstlUploadType
              _plstlCallback
              (Just AltJSON)
              machineLearningService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsStudiesTrialsListResource)
                      mempty
