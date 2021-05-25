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
-- Module      : Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.AddMeasurement
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a measurement of the objective metrics to a trial. This measurement
-- is assumed to have been taken before the trial is complete.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.trials.addMeasurement@.
module Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.AddMeasurement
    (
    -- * REST Resource
      ProjectsLocationsStudiesTrialsAddMeasurementResource

    -- * Creating a Request
    , projectsLocationsStudiesTrialsAddMeasurement
    , ProjectsLocationsStudiesTrialsAddMeasurement

    -- * Request Lenses
    , plstamXgafv
    , plstamUploadProtocol
    , plstamAccessToken
    , plstamUploadType
    , plstamPayload
    , plstamName
    , plstamCallback
    ) where

import Network.Google.MachineLearning.Types
import Network.Google.Prelude

-- | A resource alias for @ml.projects.locations.studies.trials.addMeasurement@ method which the
-- 'ProjectsLocationsStudiesTrialsAddMeasurement' request conforms to.
type ProjectsLocationsStudiesTrialsAddMeasurementResource
     =
     "v1" :>
       CaptureMode "name" "addMeasurement" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudMlV1__AddTrialMeasurementRequest
                       :> Post '[JSON] GoogleCloudMlV1__Trial

-- | Adds a measurement of the objective metrics to a trial. This measurement
-- is assumed to have been taken before the trial is complete.
--
-- /See:/ 'projectsLocationsStudiesTrialsAddMeasurement' smart constructor.
data ProjectsLocationsStudiesTrialsAddMeasurement =
  ProjectsLocationsStudiesTrialsAddMeasurement'
    { _plstamXgafv :: !(Maybe Xgafv)
    , _plstamUploadProtocol :: !(Maybe Text)
    , _plstamAccessToken :: !(Maybe Text)
    , _plstamUploadType :: !(Maybe Text)
    , _plstamPayload :: !GoogleCloudMlV1__AddTrialMeasurementRequest
    , _plstamName :: !Text
    , _plstamCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsStudiesTrialsAddMeasurement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plstamXgafv'
--
-- * 'plstamUploadProtocol'
--
-- * 'plstamAccessToken'
--
-- * 'plstamUploadType'
--
-- * 'plstamPayload'
--
-- * 'plstamName'
--
-- * 'plstamCallback'
projectsLocationsStudiesTrialsAddMeasurement
    :: GoogleCloudMlV1__AddTrialMeasurementRequest -- ^ 'plstamPayload'
    -> Text -- ^ 'plstamName'
    -> ProjectsLocationsStudiesTrialsAddMeasurement
projectsLocationsStudiesTrialsAddMeasurement pPlstamPayload_ pPlstamName_ =
  ProjectsLocationsStudiesTrialsAddMeasurement'
    { _plstamXgafv = Nothing
    , _plstamUploadProtocol = Nothing
    , _plstamAccessToken = Nothing
    , _plstamUploadType = Nothing
    , _plstamPayload = pPlstamPayload_
    , _plstamName = pPlstamName_
    , _plstamCallback = Nothing
    }


-- | V1 error format.
plstamXgafv :: Lens' ProjectsLocationsStudiesTrialsAddMeasurement (Maybe Xgafv)
plstamXgafv
  = lens _plstamXgafv (\ s a -> s{_plstamXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plstamUploadProtocol :: Lens' ProjectsLocationsStudiesTrialsAddMeasurement (Maybe Text)
plstamUploadProtocol
  = lens _plstamUploadProtocol
      (\ s a -> s{_plstamUploadProtocol = a})

-- | OAuth access token.
plstamAccessToken :: Lens' ProjectsLocationsStudiesTrialsAddMeasurement (Maybe Text)
plstamAccessToken
  = lens _plstamAccessToken
      (\ s a -> s{_plstamAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plstamUploadType :: Lens' ProjectsLocationsStudiesTrialsAddMeasurement (Maybe Text)
plstamUploadType
  = lens _plstamUploadType
      (\ s a -> s{_plstamUploadType = a})

-- | Multipart request metadata.
plstamPayload :: Lens' ProjectsLocationsStudiesTrialsAddMeasurement GoogleCloudMlV1__AddTrialMeasurementRequest
plstamPayload
  = lens _plstamPayload
      (\ s a -> s{_plstamPayload = a})

-- | Required. The trial name.
plstamName :: Lens' ProjectsLocationsStudiesTrialsAddMeasurement Text
plstamName
  = lens _plstamName (\ s a -> s{_plstamName = a})

-- | JSONP
plstamCallback :: Lens' ProjectsLocationsStudiesTrialsAddMeasurement (Maybe Text)
plstamCallback
  = lens _plstamCallback
      (\ s a -> s{_plstamCallback = a})

instance GoogleRequest
           ProjectsLocationsStudiesTrialsAddMeasurement
         where
        type Rs ProjectsLocationsStudiesTrialsAddMeasurement
             = GoogleCloudMlV1__Trial
        type Scopes
               ProjectsLocationsStudiesTrialsAddMeasurement
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsStudiesTrialsAddMeasurement'{..}
          = go _plstamName _plstamXgafv _plstamUploadProtocol
              _plstamAccessToken
              _plstamUploadType
              _plstamCallback
              (Just AltJSON)
              _plstamPayload
              machineLearningService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsStudiesTrialsAddMeasurementResource)
                      mempty
