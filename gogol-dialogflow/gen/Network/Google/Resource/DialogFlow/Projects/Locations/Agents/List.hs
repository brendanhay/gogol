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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all agents in the specified location.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.list@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.List
    (
    -- * REST Resource
      ProjectsLocationsAgentsListResource

    -- * Creating a Request
    , projectsLocationsAgentsList
    , ProjectsLocationsAgentsList

    -- * Request Lenses
    , plalParent
    , plalXgafv
    , plalUploadProtocol
    , plalAccessToken
    , plalUploadType
    , plalPageToken
    , plalPageSize
    , plalCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.list@ method which the
-- 'ProjectsLocationsAgentsList' request conforms to.
type ProjectsLocationsAgentsListResource =
     "v3" :>
       Capture "parent" Text :>
         "agents" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON]
                             GoogleCloudDialogflowCxV3ListAgentsResponse

-- | Returns the list of all agents in the specified location.
--
-- /See:/ 'projectsLocationsAgentsList' smart constructor.
data ProjectsLocationsAgentsList =
  ProjectsLocationsAgentsList'
    { _plalParent :: !Text
    , _plalXgafv :: !(Maybe Xgafv)
    , _plalUploadProtocol :: !(Maybe Text)
    , _plalAccessToken :: !(Maybe Text)
    , _plalUploadType :: !(Maybe Text)
    , _plalPageToken :: !(Maybe Text)
    , _plalPageSize :: !(Maybe (Textual Int32))
    , _plalCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plalParent'
--
-- * 'plalXgafv'
--
-- * 'plalUploadProtocol'
--
-- * 'plalAccessToken'
--
-- * 'plalUploadType'
--
-- * 'plalPageToken'
--
-- * 'plalPageSize'
--
-- * 'plalCallback'
projectsLocationsAgentsList
    :: Text -- ^ 'plalParent'
    -> ProjectsLocationsAgentsList
projectsLocationsAgentsList pPlalParent_ =
  ProjectsLocationsAgentsList'
    { _plalParent = pPlalParent_
    , _plalXgafv = Nothing
    , _plalUploadProtocol = Nothing
    , _plalAccessToken = Nothing
    , _plalUploadType = Nothing
    , _plalPageToken = Nothing
    , _plalPageSize = Nothing
    , _plalCallback = Nothing
    }


-- | Required. The location to list all agents for. Format:
-- \`projects\/\/locations\/\`.
plalParent :: Lens' ProjectsLocationsAgentsList Text
plalParent
  = lens _plalParent (\ s a -> s{_plalParent = a})

-- | V1 error format.
plalXgafv :: Lens' ProjectsLocationsAgentsList (Maybe Xgafv)
plalXgafv
  = lens _plalXgafv (\ s a -> s{_plalXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plalUploadProtocol :: Lens' ProjectsLocationsAgentsList (Maybe Text)
plalUploadProtocol
  = lens _plalUploadProtocol
      (\ s a -> s{_plalUploadProtocol = a})

-- | OAuth access token.
plalAccessToken :: Lens' ProjectsLocationsAgentsList (Maybe Text)
plalAccessToken
  = lens _plalAccessToken
      (\ s a -> s{_plalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plalUploadType :: Lens' ProjectsLocationsAgentsList (Maybe Text)
plalUploadType
  = lens _plalUploadType
      (\ s a -> s{_plalUploadType = a})

-- | The next_page_token value returned from a previous list request.
plalPageToken :: Lens' ProjectsLocationsAgentsList (Maybe Text)
plalPageToken
  = lens _plalPageToken
      (\ s a -> s{_plalPageToken = a})

-- | The maximum number of items to return in a single page. By default 100
-- and at most 1000.
plalPageSize :: Lens' ProjectsLocationsAgentsList (Maybe Int32)
plalPageSize
  = lens _plalPageSize (\ s a -> s{_plalPageSize = a})
      . mapping _Coerce

-- | JSONP
plalCallback :: Lens' ProjectsLocationsAgentsList (Maybe Text)
plalCallback
  = lens _plalCallback (\ s a -> s{_plalCallback = a})

instance GoogleRequest ProjectsLocationsAgentsList
         where
        type Rs ProjectsLocationsAgentsList =
             GoogleCloudDialogflowCxV3ListAgentsResponse
        type Scopes ProjectsLocationsAgentsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsLocationsAgentsList'{..}
          = go _plalParent _plalXgafv _plalUploadProtocol
              _plalAccessToken
              _plalUploadType
              _plalPageToken
              _plalPageSize
              _plalCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLocationsAgentsListResource)
                      mempty
