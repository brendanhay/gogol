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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Experiments.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified Experiment.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.experiments.get@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Experiments.Get
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsExperimentsGetResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsExperimentsGet
    , ProjectsLocationsAgentsEnvironmentsExperimentsGet

    -- * Request Lenses
    , plaeegXgafv
    , plaeegUploadProtocol
    , plaeegAccessToken
    , plaeegUploadType
    , plaeegName
    , plaeegCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.experiments.get@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsExperimentsGet' request conforms to.
type ProjectsLocationsAgentsEnvironmentsExperimentsGetResource
     =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GoogleCloudDialogflowCxV3Experiment

-- | Retrieves the specified Experiment.
--
-- /See:/ 'projectsLocationsAgentsEnvironmentsExperimentsGet' smart constructor.
data ProjectsLocationsAgentsEnvironmentsExperimentsGet =
  ProjectsLocationsAgentsEnvironmentsExperimentsGet'
    { _plaeegXgafv :: !(Maybe Xgafv)
    , _plaeegUploadProtocol :: !(Maybe Text)
    , _plaeegAccessToken :: !(Maybe Text)
    , _plaeegUploadType :: !(Maybe Text)
    , _plaeegName :: !Text
    , _plaeegCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsExperimentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaeegXgafv'
--
-- * 'plaeegUploadProtocol'
--
-- * 'plaeegAccessToken'
--
-- * 'plaeegUploadType'
--
-- * 'plaeegName'
--
-- * 'plaeegCallback'
projectsLocationsAgentsEnvironmentsExperimentsGet
    :: Text -- ^ 'plaeegName'
    -> ProjectsLocationsAgentsEnvironmentsExperimentsGet
projectsLocationsAgentsEnvironmentsExperimentsGet pPlaeegName_ =
  ProjectsLocationsAgentsEnvironmentsExperimentsGet'
    { _plaeegXgafv = Nothing
    , _plaeegUploadProtocol = Nothing
    , _plaeegAccessToken = Nothing
    , _plaeegUploadType = Nothing
    , _plaeegName = pPlaeegName_
    , _plaeegCallback = Nothing
    }


-- | V1 error format.
plaeegXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsGet (Maybe Xgafv)
plaeegXgafv
  = lens _plaeegXgafv (\ s a -> s{_plaeegXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaeegUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsGet (Maybe Text)
plaeegUploadProtocol
  = lens _plaeegUploadProtocol
      (\ s a -> s{_plaeegUploadProtocol = a})

-- | OAuth access token.
plaeegAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsGet (Maybe Text)
plaeegAccessToken
  = lens _plaeegAccessToken
      (\ s a -> s{_plaeegAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaeegUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsGet (Maybe Text)
plaeegUploadType
  = lens _plaeegUploadType
      (\ s a -> s{_plaeegUploadType = a})

-- | Required. The name of the Environment. Format:
-- \`projects\/\/locations\/\/agents\/\/environments\/\/experiments\/\`.
plaeegName :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsGet Text
plaeegName
  = lens _plaeegName (\ s a -> s{_plaeegName = a})

-- | JSONP
plaeegCallback :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsGet (Maybe Text)
plaeegCallback
  = lens _plaeegCallback
      (\ s a -> s{_plaeegCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsExperimentsGet
         where
        type Rs
               ProjectsLocationsAgentsEnvironmentsExperimentsGet
             = GoogleCloudDialogflowCxV3Experiment
        type Scopes
               ProjectsLocationsAgentsEnvironmentsExperimentsGet
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsExperimentsGet'{..}
          = go _plaeegName _plaeegXgafv _plaeegUploadProtocol
              _plaeegAccessToken
              _plaeegUploadType
              _plaeegCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEnvironmentsExperimentsGetResource)
                      mempty
