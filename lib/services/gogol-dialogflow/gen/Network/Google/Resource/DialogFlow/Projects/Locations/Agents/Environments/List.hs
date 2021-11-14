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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all environments in the specified Agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.environments.list@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Environments.List
    (
    -- * REST Resource
      ProjectsLocationsAgentsEnvironmentsListResource

    -- * Creating a Request
    , projectsLocationsAgentsEnvironmentsList
    , ProjectsLocationsAgentsEnvironmentsList

    -- * Request Lenses
    , plaelParent
    , plaelXgafv
    , plaelUploadProtocol
    , plaelAccessToken
    , plaelUploadType
    , plaelPageToken
    , plaelPageSize
    , plaelCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.environments.list@ method which the
-- 'ProjectsLocationsAgentsEnvironmentsList' request conforms to.
type ProjectsLocationsAgentsEnvironmentsListResource
     =
     "v3" :>
       Capture "parent" Text :>
         "environments" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON]
                             GoogleCloudDialogflowCxV3ListEnvironmentsResponse

-- | Returns the list of all environments in the specified Agent.
--
-- /See:/ 'projectsLocationsAgentsEnvironmentsList' smart constructor.
data ProjectsLocationsAgentsEnvironmentsList =
  ProjectsLocationsAgentsEnvironmentsList'
    { _plaelParent :: !Text
    , _plaelXgafv :: !(Maybe Xgafv)
    , _plaelUploadProtocol :: !(Maybe Text)
    , _plaelAccessToken :: !(Maybe Text)
    , _plaelUploadType :: !(Maybe Text)
    , _plaelPageToken :: !(Maybe Text)
    , _plaelPageSize :: !(Maybe (Textual Int32))
    , _plaelCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsEnvironmentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaelParent'
--
-- * 'plaelXgafv'
--
-- * 'plaelUploadProtocol'
--
-- * 'plaelAccessToken'
--
-- * 'plaelUploadType'
--
-- * 'plaelPageToken'
--
-- * 'plaelPageSize'
--
-- * 'plaelCallback'
projectsLocationsAgentsEnvironmentsList
    :: Text -- ^ 'plaelParent'
    -> ProjectsLocationsAgentsEnvironmentsList
projectsLocationsAgentsEnvironmentsList pPlaelParent_ =
  ProjectsLocationsAgentsEnvironmentsList'
    { _plaelParent = pPlaelParent_
    , _plaelXgafv = Nothing
    , _plaelUploadProtocol = Nothing
    , _plaelAccessToken = Nothing
    , _plaelUploadType = Nothing
    , _plaelPageToken = Nothing
    , _plaelPageSize = Nothing
    , _plaelCallback = Nothing
    }


-- | Required. The Agent to list all environments for. Format:
-- \`projects\/\/locations\/\/agents\/\`.
plaelParent :: Lens' ProjectsLocationsAgentsEnvironmentsList Text
plaelParent
  = lens _plaelParent (\ s a -> s{_plaelParent = a})

-- | V1 error format.
plaelXgafv :: Lens' ProjectsLocationsAgentsEnvironmentsList (Maybe Xgafv)
plaelXgafv
  = lens _plaelXgafv (\ s a -> s{_plaelXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaelUploadProtocol :: Lens' ProjectsLocationsAgentsEnvironmentsList (Maybe Text)
plaelUploadProtocol
  = lens _plaelUploadProtocol
      (\ s a -> s{_plaelUploadProtocol = a})

-- | OAuth access token.
plaelAccessToken :: Lens' ProjectsLocationsAgentsEnvironmentsList (Maybe Text)
plaelAccessToken
  = lens _plaelAccessToken
      (\ s a -> s{_plaelAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaelUploadType :: Lens' ProjectsLocationsAgentsEnvironmentsList (Maybe Text)
plaelUploadType
  = lens _plaelUploadType
      (\ s a -> s{_plaelUploadType = a})

-- | The next_page_token value returned from a previous list request.
plaelPageToken :: Lens' ProjectsLocationsAgentsEnvironmentsList (Maybe Text)
plaelPageToken
  = lens _plaelPageToken
      (\ s a -> s{_plaelPageToken = a})

-- | The maximum number of items to return in a single page. By default 20
-- and at most 100.
plaelPageSize :: Lens' ProjectsLocationsAgentsEnvironmentsList (Maybe Int32)
plaelPageSize
  = lens _plaelPageSize
      (\ s a -> s{_plaelPageSize = a})
      . mapping _Coerce

-- | JSONP
plaelCallback :: Lens' ProjectsLocationsAgentsEnvironmentsList (Maybe Text)
plaelCallback
  = lens _plaelCallback
      (\ s a -> s{_plaelCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsEnvironmentsList
         where
        type Rs ProjectsLocationsAgentsEnvironmentsList =
             GoogleCloudDialogflowCxV3ListEnvironmentsResponse
        type Scopes ProjectsLocationsAgentsEnvironmentsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsEnvironmentsList'{..}
          = go _plaelParent _plaelXgafv _plaelUploadProtocol
              _plaelAccessToken
              _plaelUploadType
              _plaelPageToken
              _plaelPageSize
              _plaelCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsAgentsEnvironmentsListResource)
                      mempty
