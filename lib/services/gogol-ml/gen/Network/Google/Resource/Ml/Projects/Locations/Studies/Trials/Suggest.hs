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
-- Module      : Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Suggest
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds one or more trials to a study, with parameter values suggested by
-- AI Platform Vizier. Returns a long-running operation associated with the
-- generation of trial suggestions. When this long-running operation
-- succeeds, it will contain a SuggestTrialsResponse.
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.trials.suggest@.
module Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.Suggest
    (
    -- * REST Resource
      ProjectsLocationsStudiesTrialsSuggestResource

    -- * Creating a Request
    , projectsLocationsStudiesTrialsSuggest
    , ProjectsLocationsStudiesTrialsSuggest

    -- * Request Lenses
    , proParent
    , proXgafv
    , proUploadProtocol
    , proAccessToken
    , proUploadType
    , proPayload
    , proCallback
    ) where

import Network.Google.MachineLearning.Types
import Network.Google.Prelude

-- | A resource alias for @ml.projects.locations.studies.trials.suggest@ method which the
-- 'ProjectsLocationsStudiesTrialsSuggest' request conforms to.
type ProjectsLocationsStudiesTrialsSuggestResource =
     "v1" :>
       Capture "parent" Text :>
         "trials:suggest" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GoogleCloudMlV1__SuggestTrialsRequest
                         :> Post '[JSON] GoogleLongrunning__Operation

-- | Adds one or more trials to a study, with parameter values suggested by
-- AI Platform Vizier. Returns a long-running operation associated with the
-- generation of trial suggestions. When this long-running operation
-- succeeds, it will contain a SuggestTrialsResponse.
--
-- /See:/ 'projectsLocationsStudiesTrialsSuggest' smart constructor.
data ProjectsLocationsStudiesTrialsSuggest =
  ProjectsLocationsStudiesTrialsSuggest'
    { _proParent :: !Text
    , _proXgafv :: !(Maybe Xgafv)
    , _proUploadProtocol :: !(Maybe Text)
    , _proAccessToken :: !(Maybe Text)
    , _proUploadType :: !(Maybe Text)
    , _proPayload :: !GoogleCloudMlV1__SuggestTrialsRequest
    , _proCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsStudiesTrialsSuggest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proParent'
--
-- * 'proXgafv'
--
-- * 'proUploadProtocol'
--
-- * 'proAccessToken'
--
-- * 'proUploadType'
--
-- * 'proPayload'
--
-- * 'proCallback'
projectsLocationsStudiesTrialsSuggest
    :: Text -- ^ 'proParent'
    -> GoogleCloudMlV1__SuggestTrialsRequest -- ^ 'proPayload'
    -> ProjectsLocationsStudiesTrialsSuggest
projectsLocationsStudiesTrialsSuggest pProParent_ pProPayload_ =
  ProjectsLocationsStudiesTrialsSuggest'
    { _proParent = pProParent_
    , _proXgafv = Nothing
    , _proUploadProtocol = Nothing
    , _proAccessToken = Nothing
    , _proUploadType = Nothing
    , _proPayload = pProPayload_
    , _proCallback = Nothing
    }


-- | Required. The name of the study that the trial belongs to.
proParent :: Lens' ProjectsLocationsStudiesTrialsSuggest Text
proParent
  = lens _proParent (\ s a -> s{_proParent = a})

-- | V1 error format.
proXgafv :: Lens' ProjectsLocationsStudiesTrialsSuggest (Maybe Xgafv)
proXgafv = lens _proXgafv (\ s a -> s{_proXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
proUploadProtocol :: Lens' ProjectsLocationsStudiesTrialsSuggest (Maybe Text)
proUploadProtocol
  = lens _proUploadProtocol
      (\ s a -> s{_proUploadProtocol = a})

-- | OAuth access token.
proAccessToken :: Lens' ProjectsLocationsStudiesTrialsSuggest (Maybe Text)
proAccessToken
  = lens _proAccessToken
      (\ s a -> s{_proAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
proUploadType :: Lens' ProjectsLocationsStudiesTrialsSuggest (Maybe Text)
proUploadType
  = lens _proUploadType
      (\ s a -> s{_proUploadType = a})

-- | Multipart request metadata.
proPayload :: Lens' ProjectsLocationsStudiesTrialsSuggest GoogleCloudMlV1__SuggestTrialsRequest
proPayload
  = lens _proPayload (\ s a -> s{_proPayload = a})

-- | JSONP
proCallback :: Lens' ProjectsLocationsStudiesTrialsSuggest (Maybe Text)
proCallback
  = lens _proCallback (\ s a -> s{_proCallback = a})

instance GoogleRequest
           ProjectsLocationsStudiesTrialsSuggest
         where
        type Rs ProjectsLocationsStudiesTrialsSuggest =
             GoogleLongrunning__Operation
        type Scopes ProjectsLocationsStudiesTrialsSuggest =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsStudiesTrialsSuggest'{..}
          = go _proParent _proXgafv _proUploadProtocol
              _proAccessToken
              _proUploadType
              _proCallback
              (Just AltJSON)
              _proPayload
              machineLearningService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsStudiesTrialsSuggestResource)
                      mempty
