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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Webhooks.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all webhooks in the specified agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.webhooks.list@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Webhooks.List
    (
    -- * REST Resource
      ProjectsLocationsAgentsWebhooksListResource

    -- * Creating a Request
    , projectsLocationsAgentsWebhooksList
    , ProjectsLocationsAgentsWebhooksList

    -- * Request Lenses
    , plawlParent
    , plawlXgafv
    , plawlUploadProtocol
    , plawlAccessToken
    , plawlUploadType
    , plawlPageToken
    , plawlPageSize
    , plawlCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.webhooks.list@ method which the
-- 'ProjectsLocationsAgentsWebhooksList' request conforms to.
type ProjectsLocationsAgentsWebhooksListResource =
     "v3" :>
       Capture "parent" Text :>
         "webhooks" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON]
                             GoogleCloudDialogflowCxV3ListWebhooksResponse

-- | Returns the list of all webhooks in the specified agent.
--
-- /See:/ 'projectsLocationsAgentsWebhooksList' smart constructor.
data ProjectsLocationsAgentsWebhooksList =
  ProjectsLocationsAgentsWebhooksList'
    { _plawlParent :: !Text
    , _plawlXgafv :: !(Maybe Xgafv)
    , _plawlUploadProtocol :: !(Maybe Text)
    , _plawlAccessToken :: !(Maybe Text)
    , _plawlUploadType :: !(Maybe Text)
    , _plawlPageToken :: !(Maybe Text)
    , _plawlPageSize :: !(Maybe (Textual Int32))
    , _plawlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsWebhooksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plawlParent'
--
-- * 'plawlXgafv'
--
-- * 'plawlUploadProtocol'
--
-- * 'plawlAccessToken'
--
-- * 'plawlUploadType'
--
-- * 'plawlPageToken'
--
-- * 'plawlPageSize'
--
-- * 'plawlCallback'
projectsLocationsAgentsWebhooksList
    :: Text -- ^ 'plawlParent'
    -> ProjectsLocationsAgentsWebhooksList
projectsLocationsAgentsWebhooksList pPlawlParent_ =
  ProjectsLocationsAgentsWebhooksList'
    { _plawlParent = pPlawlParent_
    , _plawlXgafv = Nothing
    , _plawlUploadProtocol = Nothing
    , _plawlAccessToken = Nothing
    , _plawlUploadType = Nothing
    , _plawlPageToken = Nothing
    , _plawlPageSize = Nothing
    , _plawlCallback = Nothing
    }


-- | Required. The agent to list all webhooks for. Format:
-- \`projects\/\/locations\/\/agents\/\`.
plawlParent :: Lens' ProjectsLocationsAgentsWebhooksList Text
plawlParent
  = lens _plawlParent (\ s a -> s{_plawlParent = a})

-- | V1 error format.
plawlXgafv :: Lens' ProjectsLocationsAgentsWebhooksList (Maybe Xgafv)
plawlXgafv
  = lens _plawlXgafv (\ s a -> s{_plawlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plawlUploadProtocol :: Lens' ProjectsLocationsAgentsWebhooksList (Maybe Text)
plawlUploadProtocol
  = lens _plawlUploadProtocol
      (\ s a -> s{_plawlUploadProtocol = a})

-- | OAuth access token.
plawlAccessToken :: Lens' ProjectsLocationsAgentsWebhooksList (Maybe Text)
plawlAccessToken
  = lens _plawlAccessToken
      (\ s a -> s{_plawlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plawlUploadType :: Lens' ProjectsLocationsAgentsWebhooksList (Maybe Text)
plawlUploadType
  = lens _plawlUploadType
      (\ s a -> s{_plawlUploadType = a})

-- | The next_page_token value returned from a previous list request.
plawlPageToken :: Lens' ProjectsLocationsAgentsWebhooksList (Maybe Text)
plawlPageToken
  = lens _plawlPageToken
      (\ s a -> s{_plawlPageToken = a})

-- | The maximum number of items to return in a single page. By default 100
-- and at most 1000.
plawlPageSize :: Lens' ProjectsLocationsAgentsWebhooksList (Maybe Int32)
plawlPageSize
  = lens _plawlPageSize
      (\ s a -> s{_plawlPageSize = a})
      . mapping _Coerce

-- | JSONP
plawlCallback :: Lens' ProjectsLocationsAgentsWebhooksList (Maybe Text)
plawlCallback
  = lens _plawlCallback
      (\ s a -> s{_plawlCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsWebhooksList
         where
        type Rs ProjectsLocationsAgentsWebhooksList =
             GoogleCloudDialogflowCxV3ListWebhooksResponse
        type Scopes ProjectsLocationsAgentsWebhooksList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient
          ProjectsLocationsAgentsWebhooksList'{..}
          = go _plawlParent _plawlXgafv _plawlUploadProtocol
              _plawlAccessToken
              _plawlUploadType
              _plawlPageToken
              _plawlPageSize
              _plawlCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsWebhooksListResource)
                      mempty
