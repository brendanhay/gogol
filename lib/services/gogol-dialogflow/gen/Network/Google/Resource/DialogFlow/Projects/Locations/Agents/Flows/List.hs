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
-- Module      : Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of all flows in the specified agent.
--
-- /See:/ <https://cloud.google.com/dialogflow/ Dialogflow API Reference> for @dialogflow.projects.locations.agents.flows.list@.
module Network.Google.Resource.DialogFlow.Projects.Locations.Agents.Flows.List
    (
    -- * REST Resource
      ProjectsLocationsAgentsFlowsListResource

    -- * Creating a Request
    , projectsLocationsAgentsFlowsList
    , ProjectsLocationsAgentsFlowsList

    -- * Request Lenses
    , plaflParent
    , plaflXgafv
    , plaflLanguageCode
    , plaflUploadProtocol
    , plaflAccessToken
    , plaflUploadType
    , plaflPageToken
    , plaflPageSize
    , plaflCallback
    ) where

import Network.Google.DialogFlow.Types
import Network.Google.Prelude

-- | A resource alias for @dialogflow.projects.locations.agents.flows.list@ method which the
-- 'ProjectsLocationsAgentsFlowsList' request conforms to.
type ProjectsLocationsAgentsFlowsListResource =
     "v3" :>
       Capture "parent" Text :>
         "flows" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "languageCode" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON]
                               GoogleCloudDialogflowCxV3ListFlowsResponse

-- | Returns the list of all flows in the specified agent.
--
-- /See:/ 'projectsLocationsAgentsFlowsList' smart constructor.
data ProjectsLocationsAgentsFlowsList =
  ProjectsLocationsAgentsFlowsList'
    { _plaflParent :: !Text
    , _plaflXgafv :: !(Maybe Xgafv)
    , _plaflLanguageCode :: !(Maybe Text)
    , _plaflUploadProtocol :: !(Maybe Text)
    , _plaflAccessToken :: !(Maybe Text)
    , _plaflUploadType :: !(Maybe Text)
    , _plaflPageToken :: !(Maybe Text)
    , _plaflPageSize :: !(Maybe (Textual Int32))
    , _plaflCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsAgentsFlowsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaflParent'
--
-- * 'plaflXgafv'
--
-- * 'plaflLanguageCode'
--
-- * 'plaflUploadProtocol'
--
-- * 'plaflAccessToken'
--
-- * 'plaflUploadType'
--
-- * 'plaflPageToken'
--
-- * 'plaflPageSize'
--
-- * 'plaflCallback'
projectsLocationsAgentsFlowsList
    :: Text -- ^ 'plaflParent'
    -> ProjectsLocationsAgentsFlowsList
projectsLocationsAgentsFlowsList pPlaflParent_ =
  ProjectsLocationsAgentsFlowsList'
    { _plaflParent = pPlaflParent_
    , _plaflXgafv = Nothing
    , _plaflLanguageCode = Nothing
    , _plaflUploadProtocol = Nothing
    , _plaflAccessToken = Nothing
    , _plaflUploadType = Nothing
    , _plaflPageToken = Nothing
    , _plaflPageSize = Nothing
    , _plaflCallback = Nothing
    }


-- | Required. The agent containing the flows. Format:
-- \`projects\/\/locations\/\/agents\/\`.
plaflParent :: Lens' ProjectsLocationsAgentsFlowsList Text
plaflParent
  = lens _plaflParent (\ s a -> s{_plaflParent = a})

-- | V1 error format.
plaflXgafv :: Lens' ProjectsLocationsAgentsFlowsList (Maybe Xgafv)
plaflXgafv
  = lens _plaflXgafv (\ s a -> s{_plaflXgafv = a})

-- | The language to list flows for. The following fields are language
-- dependent: * \`Flow.event_handlers.trigger_fulfillment.messages\` *
-- \`Flow.event_handlers.trigger_fulfillment.conditional_cases\` *
-- \`Flow.transition_routes.trigger_fulfillment.messages\` *
-- \`Flow.transition_routes.trigger_fulfillment.conditional_cases\` If not
-- specified, the agent\'s default language is used. [Many
-- languages](https:\/\/cloud.google.com\/dialogflow\/cx\/docs\/reference\/language)
-- are supported. Note: languages must be enabled in the agent before they
-- can be used.
plaflLanguageCode :: Lens' ProjectsLocationsAgentsFlowsList (Maybe Text)
plaflLanguageCode
  = lens _plaflLanguageCode
      (\ s a -> s{_plaflLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plaflUploadProtocol :: Lens' ProjectsLocationsAgentsFlowsList (Maybe Text)
plaflUploadProtocol
  = lens _plaflUploadProtocol
      (\ s a -> s{_plaflUploadProtocol = a})

-- | OAuth access token.
plaflAccessToken :: Lens' ProjectsLocationsAgentsFlowsList (Maybe Text)
plaflAccessToken
  = lens _plaflAccessToken
      (\ s a -> s{_plaflAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plaflUploadType :: Lens' ProjectsLocationsAgentsFlowsList (Maybe Text)
plaflUploadType
  = lens _plaflUploadType
      (\ s a -> s{_plaflUploadType = a})

-- | The next_page_token value returned from a previous list request.
plaflPageToken :: Lens' ProjectsLocationsAgentsFlowsList (Maybe Text)
plaflPageToken
  = lens _plaflPageToken
      (\ s a -> s{_plaflPageToken = a})

-- | The maximum number of items to return in a single page. By default 100
-- and at most 1000.
plaflPageSize :: Lens' ProjectsLocationsAgentsFlowsList (Maybe Int32)
plaflPageSize
  = lens _plaflPageSize
      (\ s a -> s{_plaflPageSize = a})
      . mapping _Coerce

-- | JSONP
plaflCallback :: Lens' ProjectsLocationsAgentsFlowsList (Maybe Text)
plaflCallback
  = lens _plaflCallback
      (\ s a -> s{_plaflCallback = a})

instance GoogleRequest
           ProjectsLocationsAgentsFlowsList
         where
        type Rs ProjectsLocationsAgentsFlowsList =
             GoogleCloudDialogflowCxV3ListFlowsResponse
        type Scopes ProjectsLocationsAgentsFlowsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/dialogflow"]
        requestClient ProjectsLocationsAgentsFlowsList'{..}
          = go _plaflParent _plaflXgafv _plaflLanguageCode
              _plaflUploadProtocol
              _plaflAccessToken
              _plaflUploadType
              _plaflPageToken
              _plaflPageSize
              _plaflCallback
              (Just AltJSON)
              dialogFlowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsAgentsFlowsListResource)
                      mempty
