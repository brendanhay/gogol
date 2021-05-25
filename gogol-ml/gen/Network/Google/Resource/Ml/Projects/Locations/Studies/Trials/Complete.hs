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
-- Module      : Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Complete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Marks a trial as complete.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.trials.complete@.
module Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Complete
    (
    -- * REST Resource
      ProjectsLocationsStudiesTrialsCompleteResource

    -- * Creating a Request
    , projectsLocationsStudiesTrialsComplete
    , ProjectsLocationsStudiesTrialsComplete

    -- * Request Lenses
    , pXgafv
    , pUploadProtocol
    , pAccessToken
    , pUploadType
    , pPayload
    , pName
    , pCallback
    ) where

import Network.Google.MachineLearning.Types
import Network.Google.Prelude

-- | A resource alias for @ml.projects.locations.studies.trials.complete@ method which the
-- 'ProjectsLocationsStudiesTrialsComplete' request conforms to.
type ProjectsLocationsStudiesTrialsCompleteResource =
     "v1" :>
       CaptureMode "name" "complete" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] GoogleCloudMlV1__CompleteTrialRequest
                       :> Post '[JSON] GoogleCloudMlV1__Trial

-- | Marks a trial as complete.
--
-- /See:/ 'projectsLocationsStudiesTrialsComplete' smart constructor.
data ProjectsLocationsStudiesTrialsComplete =
  ProjectsLocationsStudiesTrialsComplete'
    { _pXgafv :: !(Maybe Xgafv)
    , _pUploadProtocol :: !(Maybe Text)
    , _pAccessToken :: !(Maybe Text)
    , _pUploadType :: !(Maybe Text)
    , _pPayload :: !GoogleCloudMlV1__CompleteTrialRequest
    , _pName :: !Text
    , _pCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsStudiesTrialsComplete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pXgafv'
--
-- * 'pUploadProtocol'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pPayload'
--
-- * 'pName'
--
-- * 'pCallback'
projectsLocationsStudiesTrialsComplete
    :: GoogleCloudMlV1__CompleteTrialRequest -- ^ 'pPayload'
    -> Text -- ^ 'pName'
    -> ProjectsLocationsStudiesTrialsComplete
projectsLocationsStudiesTrialsComplete pPPayload_ pPName_ =
  ProjectsLocationsStudiesTrialsComplete'
    { _pXgafv = Nothing
    , _pUploadProtocol = Nothing
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pPayload = pPPayload_
    , _pName = pPName_
    , _pCallback = Nothing
    }


-- | V1 error format.
pXgafv :: Lens' ProjectsLocationsStudiesTrialsComplete (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsLocationsStudiesTrialsComplete (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsLocationsStudiesTrialsComplete (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsLocationsStudiesTrialsComplete (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | Multipart request metadata.
pPayload :: Lens' ProjectsLocationsStudiesTrialsComplete GoogleCloudMlV1__CompleteTrialRequest
pPayload = lens _pPayload (\ s a -> s{_pPayload = a})

-- | Required. The trial name.metat
pName :: Lens' ProjectsLocationsStudiesTrialsComplete Text
pName = lens _pName (\ s a -> s{_pName = a})

-- | JSONP
pCallback :: Lens' ProjectsLocationsStudiesTrialsComplete (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest
           ProjectsLocationsStudiesTrialsComplete
         where
        type Rs ProjectsLocationsStudiesTrialsComplete =
             GoogleCloudMlV1__Trial
        type Scopes ProjectsLocationsStudiesTrialsComplete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsStudiesTrialsComplete'{..}
          = go _pName _pXgafv _pUploadProtocol _pAccessToken
              _pUploadType
              _pCallback
              (Just AltJSON)
              _pPayload
              machineLearningService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsStudiesTrialsCompleteResource)
                      mempty
