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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Experiments.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Experiment.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.experiments.delete@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Experiments.Delete
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsExperimentsDeleteResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsExperimentsDelete
    , ProjectsLocationsAgentsEnvironmentsExperimentsDelete

    -- * Request Lenses
    , plaeedXgafv
    , plaeedUploadProtocol
    , plaeedAccessToken
    , plaeedUploadType
    , plaeedName
    , plaeedCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.experiments.delete@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsExperimentsDelete' request conforms to.
type ProjectsLocationsAgentsEnvironmentsExperimentsDeleteResource
     =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes the specified Experiment.
--
-- /See:/ 'projectsLocationsAgentsEnvironmentsExperimentsDelete' smart constructor.
data ProjectsLocationsAgentsEnvironmentsExperimentsDelete =
  ProjectsLocationsAgentsEnvironmentsExperimentsDelete'
    { _plaeedXgafv :: !(Maybe Xgafv)
    , _plaeedUploadProtocol :: !(Maybe Text)
    , _plaeedAccessToken :: !(Maybe Text)
    , _plaeedUploadType :: !(Maybe Text)
    , _plaeedName :: !Text
    , _plaeedCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsExperimentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaeedXgafv'
--
-- * 'plaeedUploadProtocol'
--
-- * 'plaeedAccessToken'
--
-- * 'plaeedUploadType'
--
-- * 'plaeedName'
--
-- * 'plaeedCallback'
projectsLocationsAgentsEnvironmentsExperimentsDelete
    :: Text -- ^ 'plaeedName'
    -> ProjectsLocationsAgentsEnvironmentsExperimentsDelete
projectsLocationsAgentsEnvironmentsExperimentsDelete pPlaeedName_ =
  ProjectsLocationsAgentsEnvironmentsExperimentsDelete'
    { _plaeedXgafv = Nothing
    , _plaeedUploadProtocol = Nothing
    , _plaeedAccessToken = Nothing
    , _plaeedUploadType = Nothing
    , _plaeedName = pPlaeedName_
    , _plaeedCallback = Nothing
    }


-- | V1 error format.
plaeedXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsDelete (Maybe Xgafv)
plaeedXgafv
  = lens _plaeedXgafv (\ s a -> s{_plaeedXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaeedUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsDelete (Maybe Text)
plaeedUploadProtocol
  = lens _plaeedUploadProtocol
      (\ s a -> s{_plaeedUploadProtocol = a})

-- | OAuth access token.
plaeedAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsDelete (Maybe Text)
plaeedAccessToken
  = lens _plaeedAccessToken
      (\ s a -> s{_plaeedAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaeedUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsDelete (Maybe Text)
plaeedUploadType
  = lens _plaeedUploadType
      (\ s a -> s{_plaeedUploadType = a})

-- | Required. The name of the Environment to delete. Format:
-- \`projects\/\/locations\/\/agents\/\/environments\/\/experiments\/\`.
plaeedName :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsDelete Text
plaeedName
  = lens _plaeedName (\ s a -> s{_plaeedName = a})

-- | JSONP
plaeedCallback :: Lens' ProjectsLocationsAgentsEnvironmentsExperimentsDelete (Maybe Text)
plaeedCallback
  = lens _plaeedCallback
      (\ s a -> s{_plaeedCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsExperimentsDelete
         where
        type Rs
               ProjectsLocationsAgentsEnvironmentsExperimentsDelete
             = GoogleProtobufEmpty
        type Scopes
               ProjectsLocationsAgentsEnvironmentsExperimentsDelete
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsExperimentsDelete'{..}
          = go _plaeedName _plaeedXgafv _plaeedUploadProtocol
              _plaeedAccessToken
              _plaeedUploadType
              _plaeedCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEnvironmentsExperimentsDeleteResource)
                      mempty
