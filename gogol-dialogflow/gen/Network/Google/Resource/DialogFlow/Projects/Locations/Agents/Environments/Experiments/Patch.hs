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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Experiments.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified Experiment.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.experiments.patch@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Experiments.Patch
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsExperimentsPatchResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsExperimentsPatch
    , ProjectsLocationsAgentsEnvironmentsExperimentsPatch

    -- * Request Lenses
    , plaeepXgafv
    , plaeepUploadProtocol
    , plaeepUpdateMask
    , plaeepAccessToken
    , plaeepUploadType
    , plaeepPayload
    , plaeepName
    , plaeepCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.experiments.patch@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsExperimentsPatch' request conforms to.
type ProjectsLocationsAgentsEnvironmentsExperimentsPatchResource
     =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GoogleCloudDialogflowCxV3Experiment
                         :> Patch '[JSON] GoogleCloudDialogflowCxV3Experiment

-- | Updates the specified Experiment.
--
-- /See:/ 'projectsLocationsAgentsEnvironmentsExperimentsPatch' smart constructor.
data ProjectsLocationsAgentsEnvironmentsExperimentsPatch =
  ProjectsLocationsAgentsEnvironmentsExperimentsPatch'
    { _plaeepXgafv :: !(Maybe Xgafv)
    , _plaeepUploadProtocol :: !(Maybe Text)
    , _plaeepUpdateMask :: !(Maybe GFieldMask)
    , _plaeepAccessToken :: !(Maybe Text)
    , _plaeepUploadType :: !(Maybe Text)
    , _plaeepPayload :: !GoogleCloudDialogflowCxV3Experiment
    , _plaeepName :: !Text
    , _plaeepCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsExperimentsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaeepXgafv'
--
-- * 'plaeepUploadProtocol'
--
-- * 'plaeepUpdateMask'
--
-- * 'plaeepAccessToken'
--
-- * 'plaeepUploadType'
--
-- * 'plaeepPayload'
--
-- * 'plaeepName'
--
-- * 'plaeepCallback'
projectsLocationsAgentsEnvironmentsExperimentsPatch
    :: GoogleCloudDialogflowCxV3Experiment -- ^ 'plaeepPayload'
    -> Text -- ^ 'plaeepName'
    -> ProjectsLocationsAgentsEnvironmentsExperimentsPatch
projectsLocationsAgentsEnvironmentsExperimentsPatch pPlaeepPayload_ pPlaeepName_ =
  ProjectsLocationsAgentsEnvironmentsExperimentsPatch'
    { _plaeepXgafv = Nothing
    , _plaeepUploadProtocol = Nothing
    , _plaeepUpdateMask = Nothing
    , _plaeepAccessToken = Nothing
    , _plaeepUploadType = Nothing
    , _plaeepPayload = pPlaeepPayload_
    , _plaeepName = pPlaeepName_
    , _plaeepCallback = Nothing
    }


-- | V1 error format.
plaeepXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsPatch (Maybe Xgafv)
plaeepXgafv
  = lens _plaeepXgafv (\ s a -> s{_plaeepXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaeepUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsPatch (Maybe Text)
plaeepUploadProtocol
  = lens _plaeepUploadProtocol
      (\ s a -> s{_plaeepUploadProtocol = a})

-- | Required. The mask to control which fields get updated.
plaeepUpdateMask :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsPatch (Maybe GFieldMask)
plaeepUpdateMask
  = lens _plaeepUpdateMask
      (\ s a -> s{_plaeepUpdateMask = a})

-- | OAuth access token.
plaeepAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsPatch (Maybe Text)
plaeepAccessToken
  = lens _plaeepAccessToken
      (\ s a -> s{_plaeepAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaeepUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsPatch (Maybe Text)
plaeepUploadType
  = lens _plaeepUploadType
      (\ s a -> s{_plaeepUploadType = a})

-- | Multipart request metadata.
plaeepPayload :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsPatch GoogleCloudDialogflowCxV3Experiment
plaeepPayload
  = lens _plaeepPayload
      (\ s a -> s{_plaeepPayload = a})

-- | The name of the experiment. Format:
-- projects\/\/locations\/\/agents\/\/environments\/\/experiments\/..
plaeepName :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsPatch Text
plaeepName
  = lens _plaeepName (\ s a -> s{_plaeepName = a})

-- | JSONP
plaeepCallback :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsPatch (Maybe Text)
plaeepCallback
  = lens _plaeepCallback
      (\ s a -> s{_plaeepCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsExperimentsPatch
         where
        type Rs
               ProjectsLocationsAgentsEnvironmentsExperimentsPatch
             = GoogleCloudDialogflowCxV3Experiment
        type Scopes
               ProjectsLocationsAgentsEnvironmentsExperimentsPatch
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsExperimentsPatch'{..}
          = go _plaeepName _plaeepXgafv _plaeepUploadProtocol
              _plaeepUpdateMask
              _plaeepAccessToken
              _plaeepUploadType
              _plaeepCallback
              (Just AltJSON)
              _plaeepPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEnvironmentsExperimentsPatchResource)
                      mempty
