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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified Environment.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.get@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.Get
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsGetResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsGet
    , ProjectsLocationsAgentsEnvironmentsGet

    -- * Request Lenses
    , plaegXgafv
    , plaegUploadProtocol
    , plaegAccessToken
    , plaegUploadType
    , plaegName
    , plaegCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.get@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsGet' request conforms to.
type ProjectsLocationsAgentsEnvironmentsGetResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GoogleCloudDialogflowCxV3Environment

-- | Retrieves the specified Environment.
--
-- /See:/ 'projectsLocationsAgentsEnvironmentsGet' smart constructor.
data ProjectsLocationsAgentsEnvironmentsGet =
  ProjectsLocationsAgentsEnvironmentsGet'
    { _plaegXgafv :: !(Maybe Xgafv)
    , _plaegUploadProtocol :: !(Maybe Text)
    , _plaegAccessToken :: !(Maybe Text)
    , _plaegUploadType :: !(Maybe Text)
    , _plaegName :: !Text
    , _plaegCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaegXgafv'
--
-- * 'plaegUploadProtocol'
--
-- * 'plaegAccessToken'
--
-- * 'plaegUploadType'
--
-- * 'plaegName'
--
-- * 'plaegCallback'
projectsLocationsAgentsEnvironmentsGet
    :: Text -- ^ 'plaegName'
    -> ProjectsLocationsAgentsEnvironmentsGet
projectsLocationsAgentsEnvironmentsGet pPlaegName_ =
  ProjectsLocationsAgentsEnvironmentsGet'
    { _plaegXgafv = Nothing
    , _plaegUploadProtocol = Nothing
    , _plaegAccessToken = Nothing
    , _plaegUploadType = Nothing
    , _plaegName = pPlaegName_
    , _plaegCallback = Nothing
    }


-- | V1 error format.
plaegXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsGet (Maybe Xgafv)
plaegXgafv
  = lens _plaegXgafv (\ s a -> s{_plaegXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaegUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsGet (Maybe Text)
plaegUploadProtocol
  = lens _plaegUploadProtocol
      (\ s a -> s{_plaegUploadProtocol = a})

-- | OAuth access token.
plaegAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsGet (Maybe Text)
plaegAccessToken
  = lens _plaegAccessToken
      (\ s a -> s{_plaegAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaegUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsGet (Maybe Text)
plaegUploadType
  = lens _plaegUploadType
      (\ s a -> s{_plaegUploadType = a})

-- | Required. The name of the Environment. Format:
-- \`projects\/\/locations\/\/agents\/\/environments\/\`.
plaegName :: Lens' ProjectsLocationsAgentsEnvironmentsGet Text
plaegName
  = lens _plaegName (\ s a -> s{_plaegName = a})

-- | JSONP
plaegCallback :: Lens' ProjectsLocationsAgentsEnvironmentsGet (Maybe Text)
plaegCallback
  = lens _plaegCallback
      (\ s a -> s{_plaegCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsGet
         where
        type Rs ProjectsLocationsAgentsEnvironmentsGet =
             GoogleCloudDialogflowCxV3Environment
        type Scopes ProjectsLocationsAgentsEnvironmentsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsGet'{..}
          = go _plaegName _plaegXgafv _plaegUploadProtocol
              _plaegAccessToken
              _plaegUploadType
              _plaegCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsEnvironmentsGetResource)
                      mempty
