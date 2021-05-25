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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Experiments.Stop
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops the specified Experiment. This rpc only changes the state of
-- experiment from RUNNING to DONE.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.experiments.stop@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Experiments.Stop
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsExperimentsStopResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsExperimentsStop
    , ProjectsLocationsAgentsEnvironmentsExperimentsStop

    -- * Request Lenses
    , plaeesXgafv
    , plaeesUploadProtocol
    , plaeesAccessToken
    , plaeesUploadType
    , plaeesPayload
    , plaeesName
    , plaeesCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.experiments.stop@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsExperimentsStop' request conforms to.
type ProjectsLocationsAgentsEnvironmentsExperimentsStopResource
     =
     "v3" :>
       CaptureMode "name" "stop" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleCloudDialogflowCxV3StopExperimentRequest
                       :> Post '[JSON] GoogleCloudDialogflowCxV3Experiment

-- | Stops the specified Experiment. This rpc only changes the state of
-- experiment from RUNNING to DONE.
--
-- /See:/ 'projectsLocationsAgentsEnvironmentsExperimentsStop' smart constructor.
data ProjectsLocationsAgentsEnvironmentsExperimentsStop =
  ProjectsLocationsAgentsEnvironmentsExperimentsStop'
    { _plaeesXgafv :: !(Maybe Xgafv)
    , _plaeesUploadProtocol :: !(Maybe Text)
    , _plaeesAccessToken :: !(Maybe Text)
    , _plaeesUploadType :: !(Maybe Text)
    , _plaeesPayload :: !GoogleCloudDialogflowCxV3StopExperimentRequest
    , _plaeesName :: !Text
    , _plaeesCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsExperimentsStop' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaeesXgafv'
--
-- * 'plaeesUploadProtocol'
--
-- * 'plaeesAccessToken'
--
-- * 'plaeesUploadType'
--
-- * 'plaeesPayload'
--
-- * 'plaeesName'
--
-- * 'plaeesCallback'
projectsLocationsAgentsEnvironmentsExperimentsStop
    :: GoogleCloudDialogflowCxV3StopExperimentRequest -- ^ 'plaeesPayload'
    -> Text -- ^ 'plaeesName'
    -> ProjectsLocationsAgentsEnvironmentsExperimentsStop
projectsLocationsAgentsEnvironmentsExperimentsStop pPlaeesPayload_ pPlaeesName_ =
  ProjectsLocationsAgentsEnvironmentsExperimentsStop'
    { _plaeesXgafv = Nothing
    , _plaeesUploadProtocol = Nothing
    , _plaeesAccessToken = Nothing
    , _plaeesUploadType = Nothing
    , _plaeesPayload = pPlaeesPayload_
    , _plaeesName = pPlaeesName_
    , _plaeesCallback = Nothing
    }


-- | V1 error format.
plaeesXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsStop (Maybe Xgafv)
plaeesXgafv
  = lens _plaeesXgafv (\ s a -> s{_plaeesXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaeesUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsStop (Maybe Text)
plaeesUploadProtocol
  = lens _plaeesUploadProtocol
      (\ s a -> s{_plaeesUploadProtocol = a})

-- | OAuth access token.
plaeesAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsStop (Maybe Text)
plaeesAccessToken
  = lens _plaeesAccessToken
      (\ s a -> s{_plaeesAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaeesUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsStop (Maybe Text)
plaeesUploadType
  = lens _plaeesUploadType
      (\ s a -> s{_plaeesUploadType = a})

-- | Multipart request metadata.
plaeesPayload :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsStop GoogleCloudDialogflowCxV3StopExperimentRequest
plaeesPayload
  = lens _plaeesPayload
      (\ s a -> s{_plaeesPayload = a})

-- | Required. Resource name of the experiment to stop. Format:
-- \`projects\/\/locations\/\/agents\/\/environments\/\/experiments\/\`.
plaeesName :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsStop Text
plaeesName
  = lens _plaeesName (\ s a -> s{_plaeesName = a})

-- | JSONP
plaeesCallback :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsStop (Maybe Text)
plaeesCallback
  = lens _plaeesCallback
      (\ s a -> s{_plaeesCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsExperimentsStop
         where
        type Rs
               ProjectsLocationsAgentsEnvironmentsExperimentsStop
             = GoogleCloudDialogflowCxV3Experiment
        type Scopes
               ProjectsLocationsAgentsEnvironmentsExperimentsStop
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsExperimentsStop'{..}
          = go _plaeesName _plaeesXgafv _plaeesUploadProtocol
              _plaeesAccessToken
              _plaeesUploadType
              _plaeesCallback
              (Just AltJSON)
              _plaeesPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEnvironmentsExperimentsStopResource)
                      mempty
