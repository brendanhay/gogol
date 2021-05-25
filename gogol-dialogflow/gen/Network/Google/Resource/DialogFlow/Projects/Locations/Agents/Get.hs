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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.get@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Get
    (
    -- * REST Resource
      ProjectsLocationsAgentsGetResource

    -- * Creating a Request
    , projectsLocationsAgentsGet
    , ProjectsLocationsAgentsGet

    -- * Request Lenses
    , plagXgafv
    , plagUploadProtocol
    , plagAccessToken
    , plagUploadType
    , plagName
    , plagCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.get@ method which the
-- 'ProjectsLocationsAgentsGet' request conforms to.
type ProjectsLocationsAgentsGetResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GoogleCloudDialogflowCxV3Agent

-- | Retrieves the specified agent.
--
-- /See:/ 'projectsLocationsAgentsGet' smart constructor.
data ProjectsLocationsAgentsGet =
  ProjectsLocationsAgentsGet'
    { _plagXgafv :: !(Maybe Xgafv)
    , _plagUploadProtocol :: !(Maybe Text)
    , _plagAccessToken :: !(Maybe Text)
    , _plagUploadType :: !(Maybe Text)
    , _plagName :: !Text
    , _plagCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plagXgafv'
--
-- * 'plagUploadProtocol'
--
-- * 'plagAccessToken'
--
-- * 'plagUploadType'
--
-- * 'plagName'
--
-- * 'plagCallback'
projectsLocationsAgentsGet
    :: Text -- ^ 'plagName'
    -> ProjectsLocationsAgentsGet
projectsLocationsAgentsGet pPlagName_ =
  ProjectsLocationsAgentsGet'
    { _plagXgafv = Nothing
    , _plagUploadProtocol = Nothing
    , _plagAccessToken = Nothing
    , _plagUploadType = Nothing
    , _plagName = pPlagName_
    , _plagCallback = Nothing
    }


-- | V1 error format.
plagXgafv :: Lens' ProjectsLocationsAgentsGet (Maybe Xgafv)
plagXgafv
  = lens _plagXgafv (\ s a -> s{_plagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plagUploadProtocol :: Lens' ProjectsLocationsAgentsGet (Maybe Text)
plagUploadProtocol
  = lens _plagUploadProtocol
      (\ s a -> s{_plagUploadProtocol = a})

-- | OAuth access token.
plagAccessToken :: Lens' ProjectsLocationsAgentsGet (Maybe Text)
plagAccessToken
  = lens _plagAccessToken
      (\ s a -> s{_plagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plagUploadType :: Lens' ProjectsLocationsAgentsGet (Maybe Text)
plagUploadType
  = lens _plagUploadType
      (\ s a -> s{_plagUploadType = a})

-- | Required. The name of the agent. Format:
-- \`projects\/\/locations\/\/agents\/\`.
plagName :: Lens' ProjectsLocationsAgentsGet Text
plagName = lens _plagName (\ s a -> s{_plagName = a})

-- | JSONP
plagCallback :: Lens' ProjectsLocationsAgentsGet (Maybe Text)
plagCallback
  = lens _plagCallback (\ s a -> s{_plagCallback = a})

instance GoogleRequest ProjectsLocationsAgentsGet
         where
        type Rs ProjectsLocationsAgentsGet =
             GoogleCloudDialogflowCxV3Agent
        type Scopes ProjectsLocationsAgentsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsLocationsAgentsGet'{..}
          = go _plagName _plagXgafv _plagUploadProtocol
              _plagAccessToken
              _plagUploadType
              _plagCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsAgentsGetResource)
                      mempty
