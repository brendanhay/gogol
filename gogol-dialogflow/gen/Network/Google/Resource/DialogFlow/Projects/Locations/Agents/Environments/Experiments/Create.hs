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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Experiments.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Experiment in the specified Environment.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.experiments.create@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Experiments.Create
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsExperimentsCreateResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsExperimentsCreate
    , ProjectsLocationsAgentsEnvironmentsExperimentsCreate

    -- * Request Lenses
    , plaeecParent
    , plaeecXgafv
    , plaeecUploadProtocol
    , plaeecAccessToken
    , plaeecUploadType
    , plaeecPayload
    , plaeecCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.experiments.create@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsExperimentsCreate' request conforms to.
type ProjectsLocationsAgentsEnvironmentsExperimentsCreateResource
     =
     "v3" :>
       Capture "parent" Text :>
         "experiments" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GoogleCloudDialogflowCxV3Experiment
                         :> Post '[JSON] GoogleCloudDialogflowCxV3Experiment

-- | Creates an Experiment in the specified Environment.
--
-- /See:/ 'projectsLocationsAgentsEnvironmentsExperimentsCreate' smart constructor.
data ProjectsLocationsAgentsEnvironmentsExperimentsCreate =
  ProjectsLocationsAgentsEnvironmentsExperimentsCreate'
    { _plaeecParent :: !Text
    , _plaeecXgafv :: !(Maybe Xgafv)
    , _plaeecUploadProtocol :: !(Maybe Text)
    , _plaeecAccessToken :: !(Maybe Text)
    , _plaeecUploadType :: !(Maybe Text)
    , _plaeecPayload :: !GoogleCloudDialogflowCxV3Experiment
    , _plaeecCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsExperimentsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaeecParent'
--
-- * 'plaeecXgafv'
--
-- * 'plaeecUploadProtocol'
--
-- * 'plaeecAccessToken'
--
-- * 'plaeecUploadType'
--
-- * 'plaeecPayload'
--
-- * 'plaeecCallback'
projectsLocationsAgentsEnvironmentsExperimentsCreate
    :: Text -- ^ 'plaeecParent'
    -> GoogleCloudDialogflowCxV3Experiment -- ^ 'plaeecPayload'
    -> ProjectsLocationsAgentsEnvironmentsExperimentsCreate
projectsLocationsAgentsEnvironmentsExperimentsCreate pPlaeecParent_ pPlaeecPayload_ =
  ProjectsLocationsAgentsEnvironmentsExperimentsCreate'
    { _plaeecParent = pPlaeecParent_
    , _plaeecXgafv = Nothing
    , _plaeecUploadProtocol = Nothing
    , _plaeecAccessToken = Nothing
    , _plaeecUploadType = Nothing
    , _plaeecPayload = pPlaeecPayload_
    , _plaeecCallback = Nothing
    }


-- | Required. The Agent to create an Environment for. Format:
-- \`projects\/\/locations\/\/agents\/\/environments\/\`.
plaeecParent :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsCreate Text
plaeecParent
  = lens _plaeecParent (\ s a -> s{_plaeecParent = a})

-- | V1 error format.
plaeecXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsCreate (Maybe Xgafv)
plaeecXgafv
  = lens _plaeecXgafv (\ s a -> s{_plaeecXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaeecUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsCreate (Maybe Text)
plaeecUploadProtocol
  = lens _plaeecUploadProtocol
      (\ s a -> s{_plaeecUploadProtocol = a})

-- | OAuth access token.
plaeecAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsCreate (Maybe Text)
plaeecAccessToken
  = lens _plaeecAccessToken
      (\ s a -> s{_plaeecAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaeecUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsCreate (Maybe Text)
plaeecUploadType
  = lens _plaeecUploadType
      (\ s a -> s{_plaeecUploadType = a})

-- | Multipart request metadata.
plaeecPayload :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsCreate GoogleCloudDialogflowCxV3Experiment
plaeecPayload
  = lens _plaeecPayload
      (\ s a -> s{_plaeecPayload = a})

-- | JSONP
plaeecCallback :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsCreate (Maybe Text)
plaeecCallback
  = lens _plaeecCallback
      (\ s a -> s{_plaeecCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsExperimentsCreate
         where
        type Rs
               ProjectsLocationsAgentsEnvironmentsExperimentsCreate
             = GoogleCloudDialogflowCxV3Experiment
        type Scopes
               ProjectsLocationsAgentsEnvironmentsExperimentsCreate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsExperimentsCreate'{..}
          = go _plaeecParent _plaeecXgafv _plaeecUploadProtocol
              _plaeecAccessToken
              _plaeecUploadType
              _plaeecCallback
              (Just AltJSON)
              _plaeecPayload
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEnvironmentsExperimentsCreateResource)
                      mempty
