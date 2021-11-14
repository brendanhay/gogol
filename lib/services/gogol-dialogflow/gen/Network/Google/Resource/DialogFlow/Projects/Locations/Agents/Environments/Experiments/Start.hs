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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Experiments.Start
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts the specified Experiment. This rpc only changes the state of
-- experiment from PENDING to RUNNING.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.experiments.start@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Experiments.Start
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsExperimentsStartResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsExperimentsStart
    , ProjectsLocationsAgentsEnvironmentsExperimentsStart

    -- * Request Lenses
    , proXgafv
    , proUploadProtocol
    , proAccessToken
    , proUploadType
    , proPayload
    , proName
    , proCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.experiments.start@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsExperimentsStart' request conforms to.
type ProjectsLocationsAgentsEnvironmentsExperimentsStartResource
     =
     "v3" :>
       CaptureMode "name" "start" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudDialogflowCxV3StartExperimentRequest
                       :> Post '[JSON] GoogleCloudDialogflowCxV3Experiment

-- | Starts the specified Experiment. This rpc only changes the state of
-- experiment from PENDING to RUNNING.
--
-- /See:/ 'projectsLocationsAgentsEnvironmentsExperimentsStart' smart constructor.
data ProjectsLocationsAgentsEnvironmentsExperimentsStart =
  ProjectsLocationsAgentsEnvironmentsExperimentsStart'
    { _proXgafv :: !(Maybe Xgafv)
    , _proUploadProtocol :: !(Maybe Text)
    , _proAccessToken :: !(Maybe Text)
    , _proUploadType :: !(Maybe Text)
    , _proPayload :: !GoogleCloudDialogflowCxV3StartExperimentRequest
    , _proName :: !Text
    , _proCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsExperimentsStart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
-- * 'proName'
--
-- * 'proCallback'
projectsLocationsAgentsEnvironmentsExperimentsStart
    :: GoogleCloudDialogflowCxV3StartExperimentRequest -- ^ 'proPayload'
    -> Text -- ^ 'proName'
    -> ProjectsLocationsAgentsEnvironmentsExperimentsStart
projectsLocationsAgentsEnvironmentsExperimentsStart pProPayload_ pProName_ =
  ProjectsLocationsAgentsEnvironmentsExperimentsStart'
    { _proXgafv = Nothing
    , _proUploadProtocol = Nothing
    , _proAccessToken = Nothing
    , _proUploadType = Nothing
    , _proPayload = pProPayload_
    , _proName = pProName_
    , _proCallback = Nothing
    }


-- | V1 error format.
proXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsStart (Maybe Xgafv)
proXgafv = lens _proXgafv (\ s a -> s{_proXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
proUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsStart (Maybe Text)
proUploadProtocol
  = lens _proUploadProtocol
      (\ s a -> s{_proUploadProtocol = a})

-- | OAuth access token.
proAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsStart (Maybe Text)
proAccessToken
  = lens _proAccessToken
      (\ s a -> s{_proAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
proUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsStart (Maybe Text)
proUploadType
  = lens _proUploadType
      (\ s a -> s{_proUploadType = a})

-- | Multipart request metadata.
proPayload :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsStart GoogleCloudDialogflowCxV3StartExperimentRequest
proPayload
  = lens _proPayload (\ s a -> s{_proPayload = a})

-- | Required. Resource name of the experiment to start. Format:
-- \`projects\/\/locations\/\/agents\/\/environments\/\/experiments\/\`.
proName :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsStart Text
proName = lens _proName (\ s a -> s{_proName = a})

-- | JSONP
proCallback :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsStart (Maybe Text)
proCallback
  = lens _proCallback (\ s a -> s{_proCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsExperimentsStart
         where
        type Rs
               ProjectsLocationsAgentsEnvironmentsExperimentsStart
             = GoogleCloudDialogflowCxV3Experiment
        type Scopes
               ProjectsLocationsAgentsEnvironmentsExperimentsStart
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsExperimentsStart'{..}
          = go _proName _proXgafv _proUploadProtocol
              _proAccessToken
              _proUploadType
              _proCallback
              (Just AltJSON)
              _proPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEnvironmentsExperimentsStartResource)
                      mempty
