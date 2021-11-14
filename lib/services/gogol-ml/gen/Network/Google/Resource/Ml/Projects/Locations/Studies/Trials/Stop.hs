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
-- Module      : Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Stop
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a trial.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.trials.stop@.
module Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Stop
    (
    -- * REST Resource
      ProjectsLocationsStudiesTrialsStopResource

    -- * Creating a Request
    , projectsLocationsStudiesTrialsStop
    , ProjectsLocationsStudiesTrialsStop

    -- * Request Lenses
    , plstsXgafv
    , plstsUploadProtocol
    , plstsAccessToken
    , plstsUploadType
    , plstsPayload
    , plstsName
    , plstsCallback
    ) where

import Network.Google.MachineLearning.Types
import Network.Google.Prelude

-- | A resource alias for @ml.projects.locations.studies.trials.stop@ method which the
-- 'ProjectsLocationsStudiesTrialsStop' request conforms to.
type ProjectsLocationsStudiesTrialsStopResource =
     "v1" :>
       CaptureMode "name" "stop" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GoogleCloudMlV1__StopTrialRequest :>
                       Post '[JSON] GoogleCloudMlV1__Trial

-- | Stops a trial.
--
-- /See:/ 'projectsLocationsStudiesTrialsStop' smart constructor.
data ProjectsLocationsStudiesTrialsStop =
  ProjectsLocationsStudiesTrialsStop'
    { _plstsXgafv :: !(Maybe Xgafv)
    , _plstsUploadProtocol :: !(Maybe Text)
    , _plstsAccessToken :: !(Maybe Text)
    , _plstsUploadType :: !(Maybe Text)
    , _plstsPayload :: !GoogleCloudMlV1__StopTrialRequest
    , _plstsName :: !Text
    , _plstsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsStudiesTrialsStop' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plstsXgafv'
--
-- * 'plstsUploadProtocol'
--
-- * 'plstsAccessToken'
--
-- * 'plstsUploadType'
--
-- * 'plstsPayload'
--
-- * 'plstsName'
--
-- * 'plstsCallback'
projectsLocationsStudiesTrialsStop
    :: GoogleCloudMlV1__StopTrialRequest -- ^ 'plstsPayload'
    -> Text -- ^ 'plstsName'
    -> ProjectsLocationsStudiesTrialsStop
projectsLocationsStudiesTrialsStop pPlstsPayload_ pPlstsName_ =
  ProjectsLocationsStudiesTrialsStop'
    { _plstsXgafv = Nothing
    , _plstsUploadProtocol = Nothing
    , _plstsAccessToken = Nothing
    , _plstsUploadType = Nothing
    , _plstsPayload = pPlstsPayload_
    , _plstsName = pPlstsName_
    , _plstsCallback = Nothing
    }


-- | V1 error format.
plstsXgafv :: Lens' ProjectsLocationsStudiesTrialsStop (Maybe Xgafv)
plstsXgafv
  = lens _plstsXgafv (\ s a -> s{_plstsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plstsUploadProtocol :: Lens' ProjectsLocationsStudiesTrialsStop (Maybe Text)
plstsUploadProtocol
  = lens _plstsUploadProtocol
      (\ s a -> s{_plstsUploadProtocol = a})

-- | OAuth access token.
plstsAccessToken :: Lens' ProjectsLocationsStudiesTrialsStop (Maybe Text)
plstsAccessToken
  = lens _plstsAccessToken
      (\ s a -> s{_plstsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plstsUploadType :: Lens' ProjectsLocationsStudiesTrialsStop (Maybe Text)
plstsUploadType
  = lens _plstsUploadType
      (\ s a -> s{_plstsUploadType = a})

-- | Multipart request metadata.
plstsPayload :: Lens' ProjectsLocationsStudiesTrialsStop GoogleCloudMlV1__StopTrialRequest
plstsPayload
  = lens _plstsPayload (\ s a -> s{_plstsPayload = a})

-- | Required. The trial name.
plstsName :: Lens' ProjectsLocationsStudiesTrialsStop Text
plstsName
  = lens _plstsName (\ s a -> s{_plstsName = a})

-- | JSONP
plstsCallback :: Lens' ProjectsLocationsStudiesTrialsStop (Maybe Text)
plstsCallback
  = lens _plstsCallback
      (\ s a -> s{_plstsCallback = a})

instance GoogleRequest
           ProjectsLocationsStudiesTrialsStop
         where
        type Rs ProjectsLocationsStudiesTrialsStop =
             GoogleCloudMlV1__Trial
        type Scopes ProjectsLocationsStudiesTrialsStop =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsLocationsStudiesTrialsStop'{..}
          = go _plstsName _plstsXgafv _plstsUploadProtocol
              _plstsAccessToken
              _plstsUploadType
              _plstsCallback
              (Just AltJSON)
              _plstsPayload
              machineLearningService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsStudiesTrialsStopResource)
                      mempty
