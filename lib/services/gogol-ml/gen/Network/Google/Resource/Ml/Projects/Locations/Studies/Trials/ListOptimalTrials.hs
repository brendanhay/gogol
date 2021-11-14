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
-- Module      : Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.ListOptimalTrials
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the pareto-optimal trials for multi-objective study or the optimal
-- trials for single-objective study. The definition of pareto-optimal can
-- be checked in wiki page.
-- https:\/\/en.wikipedia.org\/wiki\/Pareto_efficiency
--
-- /See:/ <https://cloud.google.com/ml/ AI Platform Training & Prediction API Reference> for @ml.projects.locations.studies.trials.listOptimalTrials@.
module Network.Google.Resource.Ml.Projects.Locations.Studies.Trials.ListOptimalTrials
    (
    -- * REST Resource
      ProjectsLocationsStudiesTrialsListOptimalTrialsResource

    -- * Creating a Request
    , projectsLocationsStudiesTrialsListOptimalTrials
    , ProjectsLocationsStudiesTrialsListOptimalTrials

    -- * Request Lenses
    , plstlotParent
    , plstlotXgafv
    , plstlotUploadProtocol
    , plstlotAccessToken
    , plstlotUploadType
    , plstlotPayload
    , plstlotCallback
    ) where

import Network.Google.MachineLearning.Types
import Network.Google.Prelude

-- | A resource alias for @ml.projects.locations.studies.trials.listOptimalTrials@ method which the
-- 'ProjectsLocationsStudiesTrialsListOptimalTrials' request conforms to.
type ProjectsLocationsStudiesTrialsListOptimalTrialsResource
     =
     "v1" :>
       Capture "parent" Text :>
         "trials:listOptimalTrials" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GoogleCloudMlV1__ListOptimalTrialsRequest
                         :>
                         Post '[JSON]
                           GoogleCloudMlV1__ListOptimalTrialsResponse

-- | Lists the pareto-optimal trials for multi-objective study or the optimal
-- trials for single-objective study. The definition of pareto-optimal can
-- be checked in wiki page.
-- https:\/\/en.wikipedia.org\/wiki\/Pareto_efficiency
--
-- /See:/ 'projectsLocationsStudiesTrialsListOptimalTrials' smart constructor.
data ProjectsLocationsStudiesTrialsListOptimalTrials =
  ProjectsLocationsStudiesTrialsListOptimalTrials'
    { _plstlotParent :: !Text
    , _plstlotXgafv :: !(Maybe Xgafv)
    , _plstlotUploadProtocol :: !(Maybe Text)
    , _plstlotAccessToken :: !(Maybe Text)
    , _plstlotUploadType :: !(Maybe Text)
    , _plstlotPayload :: !GoogleCloudMlV1__ListOptimalTrialsRequest
    , _plstlotCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsStudiesTrialsListOptimalTrials' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plstlotParent'
--
-- * 'plstlotXgafv'
--
-- * 'plstlotUploadProtocol'
--
-- * 'plstlotAccessToken'
--
-- * 'plstlotUploadType'
--
-- * 'plstlotPayload'
--
-- * 'plstlotCallback'
projectsLocationsStudiesTrialsListOptimalTrials
    :: Text -- ^ 'plstlotParent'
    -> GoogleCloudMlV1__ListOptimalTrialsRequest -- ^ 'plstlotPayload'
    -> ProjectsLocationsStudiesTrialsListOptimalTrials
projectsLocationsStudiesTrialsListOptimalTrials pPlstlotParent_ pPlstlotPayload_ =
  ProjectsLocationsStudiesTrialsListOptimalTrials'
    { _plstlotParent = pPlstlotParent_
    , _plstlotXgafv = Nothing
    , _plstlotUploadProtocol = Nothing
    , _plstlotAccessToken = Nothing
    , _plstlotUploadType = Nothing
    , _plstlotPayload = pPlstlotPayload_
    , _plstlotCallback = Nothing
    }


-- | Required. The name of the study that the pareto-optimal trial belongs
-- to.
plstlotParent :: Lens' ProjectsLocationsStudiesTrialsListOptimalTrials Text
plstlotParent
  = lens _plstlotParent
      (\ s a -> s{_plstlotParent = a})

-- | V1 error format.
plstlotXgafv :: Lens' ProjectsLocationsStudiesTrialsListOptimalTrials (Maybe Xgafv)
plstlotXgafv
  = lens _plstlotXgafv (\ s a -> s{_plstlotXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plstlotUploadProtocol :: Lens' ProjectsLocationsStudiesTrialsListOptimalTrials (Maybe Text)
plstlotUploadProtocol
  = lens _plstlotUploadProtocol
      (\ s a -> s{_plstlotUploadProtocol = a})

-- | OAuth access token.
plstlotAccessToken :: Lens' ProjectsLocationsStudiesTrialsListOptimalTrials (Maybe Text)
plstlotAccessToken
  = lens _plstlotAccessToken
      (\ s a -> s{_plstlotAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plstlotUploadType :: Lens' ProjectsLocationsStudiesTrialsListOptimalTrials (Maybe Text)
plstlotUploadType
  = lens _plstlotUploadType
      (\ s a -> s{_plstlotUploadType = a})

-- | Multipart request metadata.
plstlotPayload :: Lens' ProjectsLocationsStudiesTrialsListOptimalTrials GoogleCloudMlV1__ListOptimalTrialsRequest
plstlotPayload
  = lens _plstlotPayload
      (\ s a -> s{_plstlotPayload = a})

-- | JSONP
plstlotCallback :: Lens' ProjectsLocationsStudiesTrialsListOptimalTrials (Maybe Text)
plstlotCallback
  = lens _plstlotCallback
      (\ s a -> s{_plstlotCallback = a})

instance GoogleRequest
           ProjectsLocationsStudiesTrialsListOptimalTrials
         where
        type Rs
               ProjectsLocationsStudiesTrialsListOptimalTrials
             = GoogleCloudMlV1__ListOptimalTrialsResponse
        type Scopes
               ProjectsLocationsStudiesTrialsListOptimalTrials
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsStudiesTrialsListOptimalTrials'{..}
          = go _plstlotParent _plstlotXgafv
              _plstlotUploadProtocol
              _plstlotAccessToken
              _plstlotUploadType
              _plstlotCallback
              (Just AltJSON)
              _plstlotPayload
              machineLearningService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsStudiesTrialsListOptimalTrialsResource)
                      mempty
