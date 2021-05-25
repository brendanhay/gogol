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
-- Module      : Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.CheckEarlyStoppingState
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks whether a trial should stop or not. Returns a long-running
-- operation. When the operation is successful, it will contain a
-- CheckTrialEarlyStoppingStateResponse.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.trials.checkEarlyStoppingState@.
module Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.CheckEarlyStoppingState
    (
    -- * REST Resource
      ProjectsLocationsStudiesTrialsCheckEarlyStoppingStateResource

    -- * Creating a Request
    , projectsLocationsStudiesTrialsCheckEarlyStoppingState
    , ProjectsLocationsStudiesTrialsCheckEarlyStoppingState

    -- * Request Lenses
    , plstcessXgafv
    , plstcessUploadProtocol
    , plstcessAccessToken
    , plstcessUploadType
    , plstcessPayload
    , plstcessName
    , plstcessCallback
    ) where

import Network.Google.MachineLearning.Types
import Network.Google.Prelude

-- | A resource alias for @ml.projects.locations.studies.trials.checkEarlyStoppingState@ method which the
-- 'ProjectsLocationsStudiesTrialsCheckEarlyStoppingState' request conforms to.
type ProjectsLocationsStudiesTrialsCheckEarlyStoppingStateResource
     =
     "v1" :>
       CaptureMode "name" "checkEarlyStoppingState" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest
                       :> Post '[JSON] GoogleLongrunning__Operation

-- | Checks whether a trial should stop or not. Returns a long-running
-- operation. When the operation is successful, it will contain a
-- CheckTrialEarlyStoppingStateResponse.
--
-- /See:/ 'projectsLocationsStudiesTrialsCheckEarlyStoppingState' smart constructor.
data ProjectsLocationsStudiesTrialsCheckEarlyStoppingState =
  ProjectsLocationsStudiesTrialsCheckEarlyStoppingState'
    { _plstcessXgafv :: !(Maybe Xgafv)
    , _plstcessUploadProtocol :: !(Maybe Text)
    , _plstcessAccessToken :: !(Maybe Text)
    , _plstcessUploadType :: !(Maybe Text)
    , _plstcessPayload :: !GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest
    , _plstcessName :: !Text
    , _plstcessCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsStudiesTrialsCheckEarlyStoppingState' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plstcessXgafv'
--
-- * 'plstcessUploadProtocol'
--
-- * 'plstcessAccessToken'
--
-- * 'plstcessUploadType'
--
-- * 'plstcessPayload'
--
-- * 'plstcessName'
--
-- * 'plstcessCallback'
projectsLocationsStudiesTrialsCheckEarlyStoppingState
    :: GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest -- ^ 'plstcessPayload'
    -> Text -- ^ 'plstcessName'
    -> ProjectsLocationsStudiesTrialsCheckEarlyStoppingState
projectsLocationsStudiesTrialsCheckEarlyStoppingState pPlstcessPayload_ pPlstcessName_ =
  ProjectsLocationsStudiesTrialsCheckEarlyStoppingState'
    { _plstcessXgafv = Nothing
    , _plstcessUploadProtocol = Nothing
    , _plstcessAccessToken = Nothing
    , _plstcessUploadType = Nothing
    , _plstcessPayload = pPlstcessPayload_
    , _plstcessName = pPlstcessName_
    , _plstcessCallback = Nothing
    }


-- | V1 error format.
plstcessXgafv :: Lens' ProjectsLocationsStudiesTrialsCheckEarlyStoppingState (Maybe Xgafv)
plstcessXgafv
  = lens _plstcessXgafv
      (\ s a -> s{_plstcessXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plstcessUploadProtocol :: Lens' ProjectsLocationsStudiesTrialsCheckEarlyStoppingState (Maybe Text)
plstcessUploadProtocol
  = lens _plstcessUploadProtocol
      (\ s a -> s{_plstcessUploadProtocol = a})

-- | OAuth access token.
plstcessAccessToken :: Lens' ProjectsLocationsStudiesTrialsCheckEarlyStoppingState (Maybe Text)
plstcessAccessToken
  = lens _plstcessAccessToken
      (\ s a -> s{_plstcessAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plstcessUploadType :: Lens' ProjectsLocationsStudiesTrialsCheckEarlyStoppingState (Maybe Text)
plstcessUploadType
  = lens _plstcessUploadType
      (\ s a -> s{_plstcessUploadType = a})

-- | Multipart request metadata.
plstcessPayload :: Lens' ProjectsLocationsStudiesTrialsCheckEarlyStoppingState GoogleCloudMlV1__CheckTrialEarlyStoppingStateRequest
plstcessPayload
  = lens _plstcessPayload
      (\ s a -> s{_plstcessPayload = a})

-- | Required. The trial name.
plstcessName :: Lens' ProjectsLocationsStudiesTrialsCheckEarlyStoppingState Text
plstcessName
  = lens _plstcessName (\ s a -> s{_plstcessName = a})

-- | JSONP
plstcessCallback :: Lens' ProjectsLocationsStudiesTrialsCheckEarlyStoppingState (Maybe Text)
plstcessCallback
  = lens _plstcessCallback
      (\ s a -> s{_plstcessCallback = a})

instance GoogleRequest
           ProjectsLocationsStudiesTrialsCheckEarlyStoppingState
         where
        type Rs
               ProjectsLocationsStudiesTrialsCheckEarlyStoppingState
             = GoogleLongrunning__Operation
        type Scopes
               ProjectsLocationsStudiesTrialsCheckEarlyStoppingState
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsStudiesTrialsCheckEarlyStoppingState'{..}
          = go _plstcessName _plstcessXgafv
              _plstcessUploadProtocol
              _plstcessAccessToken
              _plstcessUploadType
              _plstcessCallback
              (Just AltJSON)
              _plstcessPayload
              machineLearningService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsStudiesTrialsCheckEarlyStoppingStateResource)
                      mempty
